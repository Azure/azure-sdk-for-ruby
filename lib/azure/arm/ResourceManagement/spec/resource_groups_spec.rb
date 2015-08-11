# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'test_helper'

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @client = RESOURCES_CLIENT.resource_groups
    @resource_group = create_resource_group
    @created_groups = [@resource_group.name]
  end

  after(:all) do
    @created_groups.each do |item|
      if @client.check_existence(item).value!.body
        delete_resource_group(item)
      end
    end
  end

  it 'should create resource group' do
    name = get_random_name('RubySDKTest_')
    @created_groups.push(name)

    params = Models::ResourceGroup.new()
    params.location = 'westus'
    params.tags = { 'tag1' => 'val1', 'tag2' => 'val2' }

    result = @client.create_or_update(name, params).value!

    expect(result.body).not_to be_nil
    expect(result.body.id).not_to be_nil
    expect(result.body.name).to eq(name)
    expect(result.body.location).to eq('westus')
    expect(result.body.tags).not_to be_nil
    expect(result.body.tags['tag1']).to eq('val1')
    expect(result.body.tags['tag2']).to eq('val2')
  end

  it 'should get resource group' do
    result = @client.get(@resource_group.name).value!

    expect(result.body).not_to be_nil
    expect(result.body.id).not_to be_nil
    expect(result.body.name).to eq(@resource_group.name)
    expect(result.body.location).to eq('westus')
    expect(result.body.tags).to be_nil
  end

  it 'should list resource groups' do
    result = @client.list().value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while result.body.next_link  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should list resources of resource group' do
    result = @client.list_resources(@resource_group.name).value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while result.body.next_link  do
      result = @client.list_resources_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should check resource group exists' do
    result = @client.check_existence(@resource_group.name).value!.body
    expect(result).to be_truthy
  end

  it 'should delete resource group' do
    result = @client.delete(@resource_group.name).value!
    expect(result.response.status).to eq(200)
  end

end
