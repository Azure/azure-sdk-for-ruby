#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "integration/test_helper"
require "azure/blob/blob_service"

describe 'Blob GB-18030' do
  subject { Azure::Blob::BlobService.new }
  after { ContainerNameHelper.clean }

  let(:container_name) { ContainerNameHelper.name }
  let(:blob_name) { "blobname" }
  let(:length) { 1024 }

  before {
    subject.create_container container_name
    subject.create_page_blob container_name, blob_name, length
  }

  it 'Read/Write Blob Container Name UTF-8' do
    # Expected results: Failure, because the Blob
    # container name can only contain ASCII
    # characters, per the Blob Service spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_container container_name + v.encode("UTF-8")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write Blob Container Name GB-18030' do
    # Expected results: Failure, because the Blob
    # container name can only contain ASCII
    # characters, per the Blob Service spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_container container_name + v.encode("GB18030")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write Blob Name UTF-8' do
    container_name = ContainerNameHelper.name
    subject.create_container container_name
    GB18030TestStrings.get.each { |k,v|
      # The Blob service does not support characters from extended plains.
      if k != 'ChineseExtB' then
        test_name = container_name + v.encode("UTF-8")
        subject.create_block_blob container_name, test_name, "hi"
        blobs = subject.list_blobs container_name
        blobs.each { |value|
          value.name.must_equal test_name
        }
        subject.delete_blob container_name, test_name
      end
    }
  end

  # Fails because of https://github.com/appfog/azure-sdk-for-ruby/issues/293
  it 'Read/Write Blob Name GB18030' do
    container_name = ContainerNameHelper.name
    subject.create_container container_name
    GB18030TestStrings.get.each { |k,v|
      # The Blob service does not support characters from extended plains.
      if k != 'ChineseExtB' then
        test_name = container_name + v.encode("GB18030")
        subject.create_block_blob container_name, test_name, "hi"
        blobs = subject.list_blobs container_name
        blobs.each { |value|
          value.name.encode("UTF-8").must_equal test_name.encode("UTF-8")
        }
        subject.delete_blob container_name, test_name
      end
    }
  end

  it 'Read/Write Blob Metadata UTF-8 key' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" + v.encode("UTF-8") => "CustomMetadataValue" }
        subject.set_blob_metadata container_name, blob_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write Blob Metadata GB-18030 key' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" + v.encode("GB18030") => "CustomMetadataValue" }
        subject.set_blob_metadata container_name, blob_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write Blob Metadata UTF-8 value' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" => "CustomMetadataValue" + v.encode("UTF-8")}
        subject.set_blob_metadata container_name, blob_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        # TODO: Error should really be 400
        error.status_code.must_equal 403
      end
    }
  end

  it 'Read/Write Blob Metadata GB-18030 value' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" => "CustomMetadataValue" + v.encode("GB18030")}
        subject.set_blob_metadata container_name, blob_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        # TODO: Error should really be 400
        error.status_code.must_equal 403
      end
    }
  end

  it 'Read/Write Blob Block Content UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      blob_name = 'Read/Write Block Blob Content UTF-8 for ' + k
      content = v.encode("UTF-8")

      subject.create_block_blob container_name, blob_name, content
      blob, returned_content = subject.get_blob container_name, blob_name

      returned_content.must_equal content
    }
  end

  it 'Read/Write Blob Block Content GB18030' do
    GB18030TestStrings.get.each { |k,v|
      blob_name = 'Read/Write Block Blob Content GB18030 for ' + k
      content = v.encode("GB18030")
      options = { :content_encoding=>"GB18030" }
      subject.create_block_blob container_name, blob_name, content, options
      blob, returned_content = subject.get_blob container_name, blob_name
      returned_content.force_encoding(blob.properties[:content_encoding])
      returned_content.must_equal content
    }
  end

  it 'Read/Write Blob Page Content UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      blob_name = 'Read/Write Page Blob Content UTF-8 for ' + k
      options = { :content_encoding=>"UTF-8" }
      content = v.encode("UTF-8")
      while content.bytesize < 512 do
        content << "X"
      end
      subject.create_page_blob container_name, blob_name, 512, options
      subject.create_blob_pages container_name, blob_name, 0, 511, content
      blob, returned_content = subject.get_blob container_name, blob_name
      returned_content.force_encoding(blob.properties[:content_encoding])
      returned_content.must_equal content
    }
  end

  it 'Read/Write Blob Page Content GB18030' do
    GB18030TestStrings.get.each { |k,v|
      blob_name = 'Read/Write Page Blob Content GB18030 for ' + k
      options = { :content_encoding=>"GB18030" }
      content = v.encode("GB18030")
      while content.bytesize < 512 do
        content << "X"
      end
      subject.create_page_blob container_name, blob_name, 512, options
      subject.create_blob_pages container_name, blob_name, 0, 511, content
      blob, returned_content = subject.get_blob container_name, blob_name
      returned_content.force_encoding(blob.properties[:content_encoding])
      returned_content.must_equal content
    }
  end
end
