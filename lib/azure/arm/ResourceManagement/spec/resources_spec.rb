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

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @client = Client.resources
    @resource_group = create_resource_group
    @resource_type = 'sites'
    @resource_provider = 'Microsoft.Web'
    @resource_api_version = '2014-04-01'
    @resource_identity = 'Microsoft.Web/sites'
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create resource' do
    resourceName = get_random_name('res', 20)
    params = build_resource_params(resourceName)

    result = @client.create_or_update(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resourceName,
        @resource_api_version,
        params
    ).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
    expect(result.body).not_to be_nil
    expect(result.body.location).to eq(params.location)
    expect(result.body.type).to eq(@resource_identity)
  end

  it 'should get resource' do
    resource = create_resource

    result = @client.get(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource.name,
        @resource_api_version
    ).value!
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(resource.name)
    expect(result.body.type).to eq(@resource_identity)
  end

  # it 'should check existence of resource' do
  #   resource = create_resource
  #
  #   result = @client.check_existence(
  #       @resource_group.name,
  #       @resource_provider,
  #       '',
  #       @resource_type,
  #       resource.name,
  #       @resource_api_version
  #   ).value!
  #   expect(result.body).to be_truthy
  # end

  it 'should list resources' do
    result = @client.list().value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while result.body.next_link  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should move resources' do
    target_group = create_resource_group

    resource = create_resource

    params = Models::ResourcesMoveInfo.new()
    params.target_resource_group = target_group.id
    params.resources = [resource.id]

    result = @client.move_resources(@resource_group.name, params).value!
    expect(result.response).to be_an_instance_of(Net::HTTPAccepted)

    wait_resource_move
    delete_resource_group(target_group.name)
  end

  it 'should delete resource' do
    resource = create_resource

    result = @client.delete(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource.name,
        @resource_api_version
    ).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  def create_resource
    resourceName = get_random_name('res', 20)

    @client.create_or_update(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resourceName,
        @resource_api_version,
        build_resource_params(resourceName)
    ).value!.body
  end

  def build_resource_params(name)
    params = Models::GenericResource.new()
    params.location = 'westus'
    params.properties = {
        'name' => name,
        'siteMode' => 'Limited',
        'computeMode' => 'Shared',
        'sku' => 'Free',
        'workerSize'=> 0
    }

    params
  end

  def wait_resource_move
    while Client.resource_groups.get(@resource_group.name).value!.body.properties.provisioning_state == 'MovingResources'
      sleep(1)
    end
  end
end
