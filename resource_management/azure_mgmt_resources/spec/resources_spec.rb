# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @client = RESOURCES_CLIENT.resources
    @resource_group = create_resource_group
    @resource_type = 'sites'
    @resource_provider = 'Microsoft.Web'
    @resource_api_version = '2015-07-01'
    @resource_identity = 'Microsoft.Web/sites'
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create resource' do
    resource_name = get_random_name('res', 20)
    params = build_resource_params(resource_name)

    result = @client.create_or_update(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource_name,
        @resource_api_version,
        params
    ).value!
    expect(result.response.status).to eq(200)
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

  it 'should raise an error when attempting to get resource without any parameters' do
    expect{@client.get(nil, nil, nil, nil, nil, nil)}.to raise_error(ArgumentError)
  end

  it 'should check existence of resource' do
    pending('Skip for now since this method isn\'t supported by server - HTTP 405 is returned')
    resource = create_resource

    result = @client.check_existence(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource.name,
        @resource_api_version
    ).value!
    expect(result.body).to be_truthy
  end

  it 'should raise an error when attempting invoke get, create_or_update, check_existence or delete without api version' do
    resource_name = get_random_name('res', 20)
    params = build_resource_params(resource_name)

    expect{@client.create_or_update(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource_name,
        nil,
        params)}.to raise_error(ArgumentError)

    expect{@client.get(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource_name,
        nil
    )}.to raise_error(ArgumentError)

    expect{@client.check_existence(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource_name,
        nil
    )}.to raise_error(ArgumentError)

    expect{@client.delete(
        @resource_group.name,
        @resource_provider,
        '',
        @resource_type,
        resource_name,
        nil
    )}.to raise_error(ArgumentError)
  end

  it 'should list resources' do
    result = @client.list().value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while !result.body.next_link.nil? && !result.body.next_link.empty?  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should filter resources and work with top parameter' do
    filter = "tagName eq 'tagName' and tagValue eq 'tagValue'"

    result = @client.list(filter, 1).value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while !result.body.next_link.nil? && !result.body.next_link.empty?.empty? do
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
    expect(result.response.status).to eq(202)

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
    expect(result.response.status).to eq(200)
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
    params.location = 'WestUS'
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
    while RESOURCES_CLIENT.resource_groups.get(@resource_group.name).value!.body.properties.provisioning_state == 'MovingResources'
      sleep(1)
    end
  end
end
