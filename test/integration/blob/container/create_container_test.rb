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
require "azure/core/http/http_error"

describe Azure::Blob::BlobService do
  subject { Azure::Blob::BlobService.new }
  after { TableNameHelper.clean }

  describe '#create_container' do
    let(:container_name) { ContainerNameHelper.name }

    it 'creates the container' do
      container = subject.create_container container_name
      container.name.must_equal container_name
    end

    it 'creates the container with custom metadata' do
      metadata = { "CustomMetadataProperty"=>"CustomMetadataValue" }

      container = subject.create_container container_name, { :metadata => metadata }
      
      container.name.must_equal container_name
      container.metadata.must_equal metadata
      container = subject.get_container_metadata container_name

      metadata.each { |k,v|
        container.metadata.must_include k.downcase
        container.metadata[k.downcase].must_equal v
      }
    end

    it 'errors if the container already exists' do
      container = subject.create_container container_name
      
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_container container_name
      end
    end
    
    it 'errors if the container name is invalid' do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_container "this_container.cannot-exist!"
      end
    end
  end
end
