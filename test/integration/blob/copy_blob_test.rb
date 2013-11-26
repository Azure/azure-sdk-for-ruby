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
  describe '#copy_blob' do
    let(:source_container_name) { ContainerNameHelper.name }
    let(:source_blob_name) { "audio+video%25.mp4" }
    let(:content) { content = ""; 512.times.each{|i| content << "@" }; content }
    let(:metadata){ {"custommetadata" => "CustomMetadataValue"} }

    let(:dest_container_name) { ContainerNameHelper.name }
    let(:dest_blob_name) { "destaudio+video%25.mp4" }

    before { 
      subject.create_container source_container_name
      subject.create_block_blob source_container_name, source_blob_name, content

      subject.create_container dest_container_name
    }

    it 'copies an existing blob to a new storage location' do
      copy_id, copy_status = subject.copy_blob dest_container_name, dest_blob_name, source_container_name, source_blob_name
      copy_id.wont_be_nil

      blob, returned_content = subject.get_blob dest_container_name, dest_blob_name

      blob.name.must_equal dest_blob_name
      returned_content.must_equal content
    end

    it 'returns a copyid which can be used to monitor status of the asynchronous copy operation' do
      copy_id, copy_status = subject.copy_blob dest_container_name, dest_blob_name, source_container_name, source_blob_name
      copy_id.wont_be_nil

      counter = 0
      finished = false
      while(counter < 10 and not finished)
        sleep(1)
        blob = subject.get_blob_properties dest_container_name, dest_blob_name
        blob.properties[:copy_id].must_equal copy_id
        finished = blob.properties[:copy_status] == "success"
        counter +=1
      end
      finished.must_equal true

      blob, returned_content = subject.get_blob dest_container_name, dest_blob_name

      blob.name.must_equal dest_blob_name
      returned_content.must_equal content
    end

    describe 'when a snapshot is specified' do
      it 'creates a copy of the snapshot' do
        snapshot = subject.create_blob_snapshot source_container_name, source_blob_name

        # verify blob is updated, and content is different than snapshot
        subject.create_block_blob source_container_name, source_blob_name, content + "more content"
        blob, returned_content = subject.get_blob source_container_name, source_blob_name
        returned_content.must_equal content + "more content"

        # do copy against, snapshot
        subject.copy_blob dest_container_name, dest_blob_name, source_container_name, source_blob_name, { :source_snapshot => snapshot }
        
        blob, returned_content = subject.get_blob dest_container_name, dest_blob_name

        # verify copied content is old content 
        returned_content.must_equal content
      end
    end
   
    describe 'when a options hash is used' do
      it 'replaces source metadata on the copy with provided Hash in :metadata property' do
        copy_id, copy_status = subject.copy_blob dest_container_name, dest_blob_name, source_container_name, source_blob_name, { :metadata => metadata }
        copy_id.wont_be_nil

        blob, returned_content = subject.get_blob dest_container_name, dest_blob_name

        blob.name.must_equal dest_blob_name
        returned_content.must_equal content

        blob = subject.get_blob_metadata dest_container_name, dest_blob_name

        metadata.each { |k,v|
          blob.metadata.must_include k
          blob.metadata[k].must_equal v
        }
      end

      it 'can specify ETag matching behaviours' do
        # invalid if match
        assert_raises(Azure::Core::Http::HTTPError) do
          subject.copy_blob dest_container_name, dest_blob_name, source_container_name, source_blob_name, { :source_if_match => "fake" }
        end
      end
    end
  end
end
