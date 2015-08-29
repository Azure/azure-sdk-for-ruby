# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require_relative 'network_shared'
require_relative 'subnet_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

describe Subnets do

  before(:all) do
    @client = NETWORK_CLIENT.subnets
    @resource_group = create_resource_group
  end
  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create subnet' do
    virtual_network = create_virtual_network(@resource_group.name)
    subnet_name = get_random_name('subnet')
    params = build_subnet_params
    result = @client.create_or_update(@resource_group.name, virtual_network.name, subnet_name, params).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(subnet_name)
  end

  it 'should get subnet' do
    virtual_network = create_virtual_network(@resource_group.name)
    subnet = create_subnet(virtual_network, @resource_group, @client)
    result = @client.get(@resource_group.name, virtual_network.name, subnet.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(subnet.name)
  end

  it 'should list subnets in virtual network' do
    virtual_network = create_virtual_network(@resource_group.name)
    result = @client.list(@resource_group.name, virtual_network.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_all_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should delete subnet from virtual network' do
    virtual_network = create_virtual_network(@resource_group.name)
    subnet = create_subnet(virtual_network, @resource_group, @client)
    result = @client.delete(@resource_group.name, virtual_network.name, subnet.name).value!
    expect(result.response.status).to eq(200)
  end


end