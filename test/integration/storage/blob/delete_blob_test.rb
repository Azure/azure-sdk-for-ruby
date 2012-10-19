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
  
  describe '#delete_blob' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_name) { "blobname" }
    let(:length) { 1024 }
    before { 
      subject.create_container container_name
      subject.create_page_blob container_name, blob_name, length
    }
    after { TableNameHelper.clean }

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

    it 'deletes blob snapshot' do
      skip "TODO"
    end

    it 'deletes the snapshots for the blob, keeping the blob' do
      skip "TODO"
    end
  end
end
