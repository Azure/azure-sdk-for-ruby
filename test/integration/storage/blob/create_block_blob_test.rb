#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "azure/storage/blob/blob_service"

describe Azure::Storage::Blob::BlobService do
  subject { Azure::Storage::Blob::BlobService.new }
  let(:container_name) { ContainerNameHelper.name }
  let(:blob_name) { "blobname" }
  let(:content) { content = ""; 512.times.each{|i| content << "@" }; content }
  before { 
    subject.create_container container_name
  }
  after { TableNameHelper.clean }
  
  describe '#create_block_blob' do
    it 'creates a page blob' do
      blob = subject.create_block_blob container_name, blob_name, content
      blob.name.must_equal blob_name
    end

    it 'sets additional properties when the options hash is used' do
      options = {
        :content_type=>"application/xml",
        :content_encoding=>"utf-8",
        :content_language=>"en-US",
        :cache_control=>"max-age=1296000",
        :metadata => { "CustomMetadataProperty"=>"CustomMetadataValue"}
      }

      blob = subject.create_block_blob container_name, blob_name, content, options
      blob = subject.get_blob_properties container_name, blob_name
      blob.name.must_equal blob_name
      blob.properties.content_type.must_equal options[:content_type]
      blob.properties.content_encoding.must_equal options[:content_encoding]
      blob.properties.cache_control.must_equal options[:cache_control]

      blob = subject.get_blob_metadata container_name, blob_name
      blob.name.must_equal blob_name
      blob.metadata["custommetadataproperty"].must_equal "CustomMetadataValue"
    end

    it 'errors if the container does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_block_blob ContainerNameHelper.name, blob_name, content
      end
    end
  end

  describe '#create_blob_block' do
    require 'base64'
    let(:blockid) { Base64.strict_encode64("anyblockid") }
    #before { subject.create_block_blob container_name, blob_name, content }

    it 'creates a block as part of a block blob' do
      subject.create_blob_block container_name, blob_name, blockid, content

      # verify
      block_list = subject.list_blob_blocks container_name, blob_name
      block = block_list[:uncommitted][0]
      block.type.must_equal :uncommitted
      block.size.must_equal 512
      block.name.must_equal blockid
    end
  end
end
