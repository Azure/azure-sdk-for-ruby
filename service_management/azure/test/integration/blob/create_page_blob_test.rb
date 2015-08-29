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

describe Azure::Blob::BlobService do
  subject { Azure::Blob::BlobService.new }
  after { TableNameHelper.clean }
  
  describe '#create_page_blob' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_name) { "blobname" }
    let(:complex_blob_name) { 'qa-872053-/*"\'&.({[<+ ' + [ 0x7D, 0xEB, 0x8B, 0xA4].pack('U*') + '_' + "0" }
    let(:length) { 1024 }
    before { 
      subject.create_container container_name
    }

    it 'creates a page blob' do
      blob = subject.create_page_blob container_name, blob_name, length
      blob.name.must_equal blob_name
    end

    it 'creates a page blob with complex name' do
      blob = subject.create_page_blob container_name, complex_blob_name, length
      blob.name.must_equal complex_blob_name

      complex_blob_name.force_encoding("UTF-8")
      found_complex_name = false
      result = subject.list_blobs container_name
      result.each { |blob|
        found_complex_name = true if blob.name == complex_blob_name
      }

      found_complex_name.must_equal true
    end

    it 'sets additional properties when the options hash is used' do
      options = {
        :content_type=>"application/xml",
        :content_encoding=>"utf-8",
        :content_language=>"en-US",
        :cache_control=>"max-age=1296000",
        :metadata => { "CustomMetadataProperty"=>"CustomMetadataValue"}
      }

      blob = subject.create_page_blob container_name, blob_name, length, options
      blob = subject.get_blob_properties container_name, blob_name
      blob.name.must_equal blob_name
      blob.properties[:content_type].must_equal options[:content_type]
      blob.properties[:content_encoding].must_equal options[:content_encoding]
      blob.properties[:cache_control].must_equal options[:cache_control]

      blob = subject.get_blob_metadata container_name, blob_name
      blob.name.must_equal blob_name
      blob.metadata["custommetadataproperty"].must_equal "CustomMetadataValue"
    end

    it 'errors if the container does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_page_blob ContainerNameHelper.name, blob_name, length
      end
    end

    it 'errors if the length is not 512 byte aligned' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_page_blob container_name, blob_name, length + 1
      end
    end
  end
end
