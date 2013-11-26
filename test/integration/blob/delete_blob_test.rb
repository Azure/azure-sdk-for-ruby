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

  describe '#delete_blob' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_name) { "blobname" }
    let(:length) { 1024 }
    before { 
      subject.create_container container_name
      subject.create_page_blob container_name, blob_name, length
    }

    it 'deletes a blob' do
      subject.delete_blob container_name, blob_name
    end

    it 'errors if the container does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_blob ContainerNameHelper.name, blob_name
      end
    end

    it 'errors if the blob does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_blob container_name, "unknown-blob"
      end
    end

    describe 'when a blob has snapshots' do
      let(:snapshot) {
        subject.create_blob_snapshot container_name, blob_name
      }

      # ensure snapshot gets created before tests run. silly.
      before { s = snapshot }

      it 'deletes the blob, and all the snapshots for the blob, if optional paramters are not used' do
        # verify snapshot exists
        result = subject.list_blobs(container_name, { :snapshots=> true })

        snapshot_exists = false
        result.each { |b|
          snapshot_exists = true if b.name == blob_name and b.snapshot == snapshot
        }
        snapshot_exists.must_equal true

        # delete blob
        subject.delete_blob container_name, blob_name

        # verify blob is gone and snapshot remains
        result = subject.list_blobs(container_name, { :snapshots=> true })
        result.length.must_equal 0
      end

      it 'the snapshot parameter deletes a specific blob snapshot' do
        # create a second snapshot
        second_snapshot = subject.create_blob_snapshot container_name, blob_name

        # verify two snapshots exist

        result = subject.list_blobs(container_name, { :snapshots=> true })

        snapshots = 0
        result.each { |b|
          snapshots += 1 if b.name == blob_name and b.snapshot != nil
        }
        snapshots.must_equal 2

        subject.delete_blob container_name, blob_name, { :snapshot => snapshot }

        # verify first snapshot is gone and blob remains
        result = subject.list_blobs(container_name, { :snapshots=> true })
        
        snapshots = 0
        blob_exists = false
        result.each { |b|
          blob_exists = true if b.name == blob_name and b.snapshot == nil
          snapshots += 1 if b.name == blob_name and b.snapshot == second_snapshot 
        }
        blob_exists.must_equal true
        snapshots.must_equal 1
      end

      it 'errors if the snapshot id provided does not exist' do
        assert_raises(Azure::Core::Http::HTTPError) do
          subject.delete_blob container_name, blob_name, { :snapshot => "thissnapshotidisinvalid" }
        end
      end

      describe 'when :only is provided in the delete_snapshots parameter' do
        let(:delete_snapshots) { :only }
        it 'deletes all the snapshots for the blob, keeping the blob' do
          # verify snapshot exists
          result = subject.list_blobs(container_name, { :snapshots=> true })

          snapshot_exists = false
          result.each { |b|
            snapshot_exists = true if b.name == blob_name and b.snapshot == snapshot
          }
          snapshot_exists.must_equal true

          # delete snapshots
          subject.delete_blob container_name, blob_name, { :snapshot => nil, :delete_snapshots => :only }

          # verify snapshot is gone and blob remains
          result = subject.list_blobs(container_name, { :snapshots=> true })
          
          snapshot_exists = false
          blob_exists = false
          result.each { |b|
            blob_exists = true if b.name == blob_name and b.snapshot == nil
            snapshot_exists = true if b.name == blob_name and b.snapshot == snapshot
          }
          blob_exists.must_equal true
          snapshot_exists.must_equal false
        end
      end

      describe 'when :include is provided in the delete_snapshots parameter' do
        let(:delete_snapshots) { :include }
        it 'deletes the blob and all of the snapshots for the blob' do
          # verify snapshot exists
          result = subject.list_blobs(container_name, { :snapshots=> true })

          snapshot_exists = false
          result.each { |b|
            snapshot_exists = true if b.name == blob_name and b.snapshot == snapshot
          }
          snapshot_exists.must_equal true

          # delete snapshots
          subject.delete_blob container_name, blob_name, { :snapshot => nil, :delete_snapshots => :include }

          # verify snapshot is gone and blob remains
          result = subject.list_blobs(container_name, { :snapshots=> true })
          result.length.must_equal 0
        end
      end
    end
  end
end
