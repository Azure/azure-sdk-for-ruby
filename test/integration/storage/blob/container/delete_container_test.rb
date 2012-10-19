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
  
  describe '#delete_container' do
    let(:container_name) { ContainerNameHelper.name }
    before { 
      subject.create_container container_name
    }
    after { TableNameHelper.clean }

    it 'deletes the container' do
      assert subject.delete_container container_name
    end

    it 'errors if the container does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_container ContainerNameHelper.name
      end
    end
  end
end
