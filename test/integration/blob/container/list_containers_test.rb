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
  
  describe '#list_containers' do
    let(:container_names) { [ContainerNameHelper.name, ContainerNameHelper.name] }
    let(:metadata) { { "CustomMetadataProperty"=>"CustomMetadataValue" } }
    before { 
      container_names.each { |c|
        subject.create_container c, { :metadata => metadata }
      }
    }

    it 'lists the containers for the account' do
      result =  subject.list_containers

      found = 0
      result.each { |c|
        found += 1 if container_names.include? c.name
      }
      found.must_equal container_names.length
    end

    it 'lists the containers for the account with prefix' do
      result =  subject.list_containers({ :prefix => container_names[0] })

      found = 0
      result.each { |c|
        found += 1 if container_names.include? c.name
      }

      found.must_equal 1
    end

    it 'lists the containers for the account with max results' do
      result =  subject.list_containers({ :max_results => 1 })
      result.length.must_equal 1
      first_container = result[0]
      result.continuation_token.wont_equal("")

      result =  subject.list_containers({ :max_results => 1, :marker => result.continuation_token })
      result.length.must_equal 1
      result[0].name.wont_equal first_container.name
    end

    it 'returns metadata if the :metadata=>true option is used' do
      result = subject.list_containers({ :metadata => true })

      found = 0
      result.each { |c|
        if container_names.include? c.name
          found += 1 
          metadata.each { |k,v|
            c.metadata.must_include k.downcase
            c.metadata[k.downcase].must_equal v
          }
        end
      }
      found.must_equal container_names.length
    end
  end
end
