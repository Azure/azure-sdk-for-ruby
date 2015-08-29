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
  
  describe '#create_blob_snapshot' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_name) { "blobname" }
    let(:content) { content = ""; 1024.times.each{|i| content << "@" }; content }
    let(:metadata) { { "CustomMetadataProperty"=>"CustomMetadataValue" } }
    let(:options) { { :blob_content_type=>"application/foo", :metadata => metadata } }

    before { 
      subject.create_container container_name
      subject.create_block_blob container_name, blob_name, content, options
    }

    it 'errors if the container does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_blob_snapshot ContainerNameHelper.name, blob_name
      end
    end

    it 'errors if the blob does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_blob_snapshot container_name, "unknown-blob"
      end
    end

    it 'creates a snapshot of blob contents, metadata, and properties' do
      snapshot = subject.create_blob_snapshot container_name, blob_name

      content2= ""
      1024.times.each{|i| content2 << "!" }
      options2 = options.dup
      options2[:metadata] = options[:metadata].dup
      options2[:blob_content_type] = "application/bar"
      options2[:metadata]["CustomMetadataValue1"] = "NewMetadata"
      subject.create_block_blob container_name, blob_name, content2, options2

      # content/properties/metadata in blob is new version
      blob, returned_content = subject.get_blob container_name, blob_name, { :start_range => 0, :end_range => 511 }
      returned_content.length.must_equal 512
      returned_content.must_equal content2[0..511]
      blob.properties[:content_type].must_equal options2[:blob_content_type]
      options2[:metadata].each { |k,v|
        blob.metadata.must_include k.downcase
        blob.metadata[k.downcase].must_equal v
      }

      # content/properties/metadata in snapshot is old version
      blob, returned_content = subject.get_blob container_name, blob_name, { :start_range => 0, :end_range => 511, :snapshot => snapshot }

      returned_content.length.must_equal 512
      returned_content.must_equal content[0..511]
      blob.properties[:content_type].must_equal options[:blob_content_type]
      options[:metadata].each { |k,v|
        blob.metadata.must_include k.downcase
        blob.metadata[k.downcase].must_equal v
      }

    end
  end
end
