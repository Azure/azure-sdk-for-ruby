# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require_relative 'deployment_shared'

include MsRestAzure
include Azure::ARM::Resources

describe Deployments do

  before(:all) do
    @client = RESOURCES_CLIENT.deployments
    @resource_group = create_resource_group
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create template deployment' do
    deployment_name = get_random_name('Deployment_')
    result = @client.create_or_update(@resource_group.name, deployment_name, build_deployment_params).value!

    expect(result.body.id).not_to be_nil
    expect(result.body.name).to eq(deployment_name)
  end

  it 'should raise error when attempting to create with invalid parameters' do
    expect{@client.create_or_update(nil, 'bar', build_deployment_params)}.to raise_error(ArgumentError)
    expect{@client.create_or_update('foo', nil, build_deployment_params)}.to raise_error(ArgumentError)
    expect{@client.create_or_update('foo', 'bar', nil)}.to raise_error(ArgumentError)
    expect{@client.create_or_update('~`123', 'bar', build_deployment_params).value!}.to raise_error(MsRestAzure::AzureOperationError)
  end

  it 'should cancel running template deployment' do
    deployment = create_deployment(@resource_group.name)
    result = @client.cancel(@resource_group.name, deployment.name).value!

    expect(result.body).to be_nil
    expect(result.response.status).to eq(204)
  end

  it 'should raise error when attempting cancel deployment with invalid parameters' do
    expect{@client.cancel(nil, 'bar')}.to raise_error(ArgumentError)
    expect{@client.cancel('foo', nil)}.to raise_error(ArgumentError)
  end

  it 'should get a deployment' do
    deployment = create_deployment(@resource_group.name)

    result = @client.get(@resource_group.name, deployment.name).value!

    expect(result.body.name).to eq(deployment.name)
  end

  it 'should raise error when attempting to get deployment with using invalid parameters' do
    expect{@client.get(nil, 'bar')}.to raise_error(ArgumentError)
    expect{@client.get('foo', nil)}.to raise_error(ArgumentError)
    expect{@client.get('~`123', 'bar').value!}.to raise_error(MsRestAzure::AzureOperationError)
  end

  it 'should validate a deployment' do
    deployment = create_deployment(@resource_group.name)
    wait_for_deployment(@resource_group.name, deployment.name, build_deployment_params)

    result = @client.validate(@resource_group.name, deployment.name, build_deployment_params).value!
    expect(result.response.status).to eq(200)
  end

  it 'should raise error when attempting validate with invalid parameters' do
    expect{@client.validate(nil, 'bar', build_deployment_params)}.to raise_error(ArgumentError)
    expect{@client.validate('foo', 'bar', nil)}.to raise_error(ArgumentError)
    expect(@client.validate('~`123', 'bar', build_deployment_params).value!.response.status).to eq(400)
  end

  it 'should get a list of deployments' do
    result = @client.list(@resource_group.name).value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while !result.body.next_link.nil? && !result.body.next_link.empty?  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should list filtered results restricted with top parameter' do
    filter = "provisioningState eq 'Running'"
    result = @client.list(@resource_group.name, filter, 1).value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while !result.body.next_link.nil? && !result.body.next_link.empty?.empty?  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

end
