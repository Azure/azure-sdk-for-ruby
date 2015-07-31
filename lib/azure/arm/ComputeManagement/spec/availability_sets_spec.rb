#-------------------------------------------------------------------------
# Copyright 2015 Microsoft Open Technologies, Inc.
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

require_relative 'test_helper'
require_relative 'availability_sets_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Compute

describe ComputeManagementClient do

  before(:all) do
    @client = COMPUTE_CLIENT.availability_sets
    @resource_group = create_resource_group
    @resource_identity = 'Microsoft.Compute/availabilitySets'
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end
  it 'should create availability set' do
    availabilitySetName = get_random_name("avail")
    params = build_availability_set_parameters
    result = @client.create_or_update(@resource_group.name, availabilitySetName, params).value!
    expect(result.response).to be_an_instance_of Net::HTTPOK
    expect(result.body).not_to be_nil
    expect(result.body.location).to eq(params.location)
    expect(result.body.type).to eq(@resource_identity)
    expect(result.body.name).to eq(availabilitySetName)
  end



  it 'should get availability set' do
    resource = create_availability_set(@client, @resource_group)

    result = @client.get(
        @resource_group.name,
        resource.name,
    ).value!
    expect(result.response).to be_an_instance_of Net::HTTPOK
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(resource.name)
    expect(result.body.type).to eq(@resource_identity)
  end


  it 'should list availability sets' do
    result = @client.list(@resource_group.name).value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)
  end


  it 'should delete availability set' do
    resource = create_availability_set(@client, @resource_group)

    result = @client.delete(
        @resource_group.name,
        resource.name
    ).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should list available sizes' do
    resource = create_availability_set(@client, @resource_group)
    result = @client.list_available_sizes(@resource_group.name, resource.name).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a Array
  end

end
