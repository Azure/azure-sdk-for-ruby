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
require 'base64'

describe Azure::Blob::BlobService do
  subject { Azure::Blob::BlobService.new }
  after { TableNameHelper.clean }

  let(:container_name) { ContainerNameHelper.name }
  let(:blob_name) { "blobname" }
  let(:content) { content = ""; 512.times.each{|i| content << "@" }; content }
  before { 
    subject.create_container container_name
  }
  
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
      blob.properties[:content_type].must_equal options[:content_type]
      blob.properties[:content_encoding].must_equal options[:content_encoding]
      blob.properties[:cache_control].must_equal options[:cache_control]

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
    let(:blockid) {"anyblockid1" }

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

  describe '#commit_blob_blocks' do
    let(:blocklist) { [["anyblockid0"], ["anyblockid1"]] }
    before { 
      blocklist.each { |block_entry|
        subject.create_blob_block container_name, blob_name, block_entry[0], content
      }
    }

    it 'commits a list of blocks to blob' do
      # verify starting state
      block_list = subject.list_blob_blocks container_name, blob_name

      (0..1).each { |i|
        block = block_list[:uncommitted][i]
        block.type.must_equal :uncommitted
        block.size.must_equal 512
        block.name.must_equal blocklist[i][0]
      }

      assert_raises(Azure::Core::Http::HTTPError) do
        subject.get_blob container_name, blob_name
      end

      # commit blocks
      result = subject.commit_blob_blocks container_name, blob_name, blocklist
      result.must_be_nil

      blob, returned_content = subject.get_blob container_name, blob_name
      blob.properties[:content_length].must_equal (content.length * 2)
      returned_content.must_equal (content + content)
    end
  end

  describe '#list_blob_blocks' do
    let(:blocklist) { [["anyblockid0"], ["anyblockid1"], ["anyblockid2"], ["anyblockid3"]] }
    before { 
      
      subject.create_blob_block container_name, blob_name, blocklist[0][0], content
      subject.create_blob_block container_name, blob_name, blocklist[1][0], content

      # two committed blocks, two uncommitted blocks
      result = subject.commit_blob_blocks container_name, blob_name, blocklist.slice(0..1)
      result.must_be_nil

      subject.create_blob_block container_name, blob_name, blocklist[2][0], content
      subject.create_blob_block container_name, blob_name, blocklist[3][0], content
    }

    it 'lists blocks in a blob, including their status' do
      result = subject.list_blob_blocks container_name, blob_name

      committed = result[:committed]
      committed.length.must_equal 2

      expected_blocks = blocklist.slice(0..1).each

      committed.each { |block|
        block.name.must_equal expected_blocks.next[0]
        block.type.must_equal :committed
        block.size.must_equal 512
      }

      uncommitted = result[:uncommitted]
      uncommitted.length.must_equal 2
      
      expected_blocks = blocklist.slice(2..3).each

      uncommitted.each { |block|
        block.name.must_equal expected_blocks.next[0]
        block.type.must_equal :uncommitted
        block.size.must_equal 512
      }
    end

    describe 'when blocklist_type parameter is used' do
      it 'lists uncommitted blocks only if :uncommitted is passed' do
        result = subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :uncommitted }

        committed = result[:committed]
        committed.length.must_equal 0
   
        uncommitted = result[:uncommitted]
        uncommitted.length.must_equal 2
        
        expected_blocks = blocklist.slice(2..3).each

        uncommitted.each { |block|
          block.name.must_equal expected_blocks.next[0]
          block.type.must_equal :uncommitted
          block.size.must_equal 512
        }
      end
      
      it 'lists committed blocks only if :committed is passed' do
        result = subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :committed }

        committed = result[:committed]
        committed.length.must_equal 2
        
        expected_blocks = blocklist.slice(0..1).each

        committed.each { |block|
          block.name.must_equal expected_blocks.next[0]
          block.type.must_equal :committed
          block.size.must_equal 512
        }

        uncommitted = result[:uncommitted]
        uncommitted.length.must_equal 0
      end

      it 'lists committed and uncommitted blocks if :all is passed' do
        result = subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :all }

        committed = result[:committed]
        committed.length.must_equal 2

        expected_blocks = blocklist.slice(0..1).each

        committed.each { |block|
          block.name.must_equal expected_blocks.next[0]
          block.type.must_equal :committed
          block.size.must_equal 512
        }

        uncommitted = result[:uncommitted]
        uncommitted.length.must_equal 2

        expected_blocks = blocklist.slice(2..3).each

        uncommitted.each { |block|
          block.name.must_equal expected_blocks.next[0]
          block.type.must_equal :uncommitted
          block.size.must_equal 512
        }
      end
    end

    describe 'when snapshot parameter is used' do
      it 'lists blocks for the blob snapshot' do
        snapshot = subject.create_blob_snapshot container_name, blob_name

        result = subject.commit_blob_blocks container_name, blob_name, blocklist
        result.must_be_nil
        result = subject.list_blob_blocks container_name, blob_name

        committed = result[:committed]
        committed.length.must_equal 4
        expected_blocks = blocklist.each

        committed.each { |block|
          block.name.must_equal expected_blocks.next[0]
          block.type.must_equal :committed
          block.size.must_equal 512
        }

        result = subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :all, :snapshot => snapshot }

        committed = result[:committed]
        committed.length.must_equal 2

        expected_blocks = blocklist.slice(0..1).each

        committed.each { |block|
          block.name.must_equal expected_blocks.next[0]
          block.type.must_equal :committed
          block.size.must_equal 512
        }

        # uncommitted blobs aren't copied in a snapshot.
        uncommitted = result[:uncommitted]
        uncommitted.length.must_equal 0
      end
    end
  end
end
