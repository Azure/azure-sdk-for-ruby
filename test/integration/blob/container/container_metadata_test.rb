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
  
  describe '#set/get_container_metadata' do
    let(:container_name) { ContainerNameHelper.name }
    let(:metadata) { { "CustomMetadataProperty"=>"CustomMetadataValue" } }
    before { 
      subject.create_container container_name
    }

    it 'sets and gets custom metadata for the container' do
      result = subject.set_container_metadata container_name, metadata
      result.must_be_nil
      container = subject.get_container_metadata container_name
      container.wont_be_nil
      container.name.must_equal container_name
      metadata.each { |k,v|
        container.metadata.must_include k.downcase
        container.metadata[k.downcase].must_equal v
      }
    end

    it 'errors if the container does not exist' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.get_container_metadata ContainerNameHelper.name
      end
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.set_container_metadata ContainerNameHelper.name, metadata
      end
    end
  end
end
