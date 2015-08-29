# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require_relative 'public_ip_addresses_shared'

def create_virtual_network_gateway(location, resource_group,name = nil)
  params = build_virtual_network_gateway_params(location, resource_group)
  params.name = name || params.name
  NETWORK_CLIENT.virtual_network_gateways.create_or_update(resource_group.name, params.name, params).value!.body
end

def build_virtual_network_gateway_params(location, resource_group)
  params = Models::VirtualNetworkGateway.new
  params.location = location
  params.name = get_random_name('vnet_gateway')
  props = Models::VirtualNetworkGatewayPropertiesFormat.new
  params.properties = props
  props.enable_bgp = false
  props.gateway_type = 'Vpn'
  props.vpn_type = 'RouteBased'
  ip_config = Models::VirtualNetworkGatewayIpConfiguration.new
  props.ip_configurations = [ip_config]
  ip_config.name = get_random_name('ip_config')
  ip_config_props = Models::VirtualNetworkGatewayIpConfigurationPropertiesFormat.new
  ip_config.properties = ip_config_props
  ip_config_props.private_ipallocation_method = 'Dynamic'
  vnet = create_virtual_network(resource_group.name)
  public_ip = create_public_ip_address(location, resource_group)
  subnet_params = build_subnet_params
  subnet_params.name = 'GatewaySubnet'
  subnet = NETWORK_CLIENT.subnets.create_or_update(resource_group.name, vnet.name, subnet_params.name, subnet_params).value!.body
  ip_config_props.public_ipaddress = public_ip
  ip_config_props.subnet = subnet
  params
end