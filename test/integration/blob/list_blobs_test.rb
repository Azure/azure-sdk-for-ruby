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

  describe '#list_blobs' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_names) { ["blobname0","blobname1","blobname2","blobname3"] }
    let(:content) { content = ""; 1024.times.each{|i| content << "@" }; content }
    let(:metadata) { { "CustomMetadataProperty"=>"CustomMetadataValue" } }
    let(:options) { { :blob_content_type=>"application/foo", :metadata => metadata } }

    before { 
      subject.create_container container_name
      blob_names.each { |blob_name|
        subject.create_block_blob container_name, blob_name, content, options
      }
    }

    it 'lists the available blobs' do
      result = subject.list_blobs container_name
      result.length.must_equal blob_names.length
      expected_blob_names = blob_names.each
      result.each { |blob|
        blob.name.must_equal expected_blob_names.next
        blob.properties[:content_length].must_equal content.length
      }
    end

    it 'lists the available blobs with prefix' do
      result = subject.list_blobs container_name, { :prefix => "blobname0" }
      result.length.must_equal 1
    end

    it 'lists the available blobs with max results and marker ' do
      result = subject.list_blobs container_name, { :max_results => 2 }
      result.length.must_equal 2
      first_blob = result[0]
      result.continuation_token.wont_equal("")

      result = subject.list_blobs container_name, { :max_results => 2, :marker => result.continuation_token }
      result.length.must_equal 2
      result[0].name.wont_equal first_blob.name
    end

    describe 'when options hash is used' do
      it 'if :metadata is set true, also returns custom metadata for the blobs' do
        result = subject.list_blobs container_name, { :metadata => true }
        result.length.must_equal blob_names.length
        expected_blob_names = blob_names.each

        result.each { |blob|
          blob.name.must_equal expected_blob_names.next
          blob.properties[:content_length].must_equal content.length

          metadata.each { |k,v|
            blob.metadata.must_include k.downcase
            blob.metadata[k.downcase].must_equal v
          }
        }
      end

      it 'if :snapshots is set true, also returns snapshots' do
        snapshot = subject.create_blob_snapshot container_name, blob_names[0]

        # verify snapshots aren't returned on a normal call
        result = subject.list_blobs container_name
        result.length.must_equal blob_names.length

        result = subject.list_blobs container_name, { :snapshots => true }
        result.length.must_equal blob_names.length + 1
        found_snapshot = false
        result.each { |blob|
          found_snapshot = true if blob.name == blob_names[0] and blob.snapshot == snapshot
        }
        found_snapshot.must_equal true
      end

      it 'if :uncommittedblobs is set true, also returns blobs with uploaded, uncommitted blocks' do
        # uncommited blob/block
        subject.create_blob_block container_name, "blockblobname", "blockid", content

        # verify uncommitted blobs aren't returned on a normal call
        result = subject.list_blobs container_name
        result.length.must_equal blob_names.length

        result = subject.list_blobs container_name, { :uncommittedblobs => true }
        result.length.must_equal blob_names.length + 1
        found_uncommitted = true
        result.each { |blob|
          found_uncommitted = true if blob.name == "blockblobname"
        }
        found_uncommitted.must_equal true
      end
    end
  end
end
