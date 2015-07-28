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
require_relative 'deployment_shared'

include MsRestAzure
include Azure::ARM::Resources

describe DeploymentOperations do

  before(:all) do
    @client = RESOURCES_CLIENT.deployment_operations
    @resource_group = create_resource_group
  end

  before do
    @deployment = create_deployment(@resource_group.name)
    wait_for_deployment(@resource_group.name, @deployment.name, build_deployment_params)
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should get a list of deployment operations' do
    result = @client.list(@resource_group.name, @deployment.name).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while result.body.next_link  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should get a deployment operation' do
    operations = @client.list(@resource_group.name, @deployment.name).value!.body.value

    result = @client.get(@resource_group.name, @deployment.name, operations[0].operation_id).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
    expect(result.body.operation_id).to eq(operations[0].operation_id)
    expect(result.body.id).not_to be_nil
    expect(result.body.properties).to be_an_instance_of(Models::DeploymentOperationProperties)
  end

end
