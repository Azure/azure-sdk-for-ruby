# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

def create_local_network_gateway(resource_group, location, name = nil)
  params = build_local_network_gateway_params(location)
  params.name = name.nil? ? params.name : name
  NETWORK_CLIENT.local_network_gateways.create_or_update(resource_group.name, params.name, params).value!.body
end

def build_local_network_gateway_params(location)
  params = Models::LocalNetworkGateway.new
  params.location = location
  params.name = get_random_name('local_gateway')
  props = Models::LocalNetworkGatewayPropertiesFormat.new
  params.properties = props
  props.gateway_ip_address = "192.168.3.#{rand(9)}"
  address_space = Models::AddressSpace.new
  props.local_network_address_space = address_space
  address_space.address_prefixes = %w(192.168.0.0/16)
  params
end