# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require_relative 'network_shared'
require_relative 'subnet_shared'
require_relative 'public_ip_addresses_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network


describe NetworkInterfaces do
  before(:all) do
    @client = NETWORK_CLIENT.network_interfaces
    @resource_group = create_resource_group
    @location = 'westus'
    @virtual_network = create_virtual_network @resource_group.name
    @subnet = create_subnet(@virtual_network, @resource_group, NETWORK_CLIENT.subnets)
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create network interface' do
    params = build_network_interface_param
    result = @client.create_or_update(@resource_group.name, params.name, params).value!
    expect(result.response.status).to eq(201)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(params.name)
  end

  it 'should get network interface' do
    network_interface = create_network_interface
    result = @client.get(@resource_group.name, network_interface.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(network_interface.name)
  end

  it 'should delete network interface' do
    network_interface = create_network_interface
    result = @client.delete(@resource_group.name, network_interface.name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should list all the networkInterfaces in a subscription' do
    result = @client.list_all.value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_all_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should list all the networkInterfaces in a resource group' do
    result = @client.list(@resource_group.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  def create_network_interface
    params = build_network_interface_param
    @client.create_or_update(@resource_group.name, params.name, params).value!.body
  end

  def build_network_interface_param
    params = Models::NetworkInterface.new
    params.location = @location
    network_interface_name = get_random_name('nic')
    ip_config_name = get_random_name('ip_name')
    params.name = network_interface_name
    props = Models::NetworkInterfacePropertiesFormat.new
    ip_configuration = Models::NetworkInterfaceIpConfiguration.new
    params.properties = props
    props.ip_configurations = [ip_configuration]
    ip_configuration_properties = Models::NetworkInterfaceIpConfigurationPropertiesFormat.new
    ip_configuration.properties = ip_configuration_properties
    ip_configuration.name = ip_config_name
    ip_configuration_properties.private_ipallocation_method = 'Dynamic'
    ip_configuration_properties.public_ipaddress = create_public_ip_address(@location, @resource_group)
    ip_configuration_properties.subnet = @subnet
    params
  end
end