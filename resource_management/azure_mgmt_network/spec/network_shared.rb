# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

def build_virtual_network_params(location)
  params = Models::VirtualNetwork.new
  props = Models::VirtualNetworkPropertiesFormat.new
  params.location = location
  address_space = Models::AddressSpace.new
  address_space.address_prefixes = ['10.0.0.0/16']
  props.address_space = address_space
  dhcp_options = Models::DhcpOptions.new
  dhcp_options.dns_servers = %w(10.1.1.1 10.1.2.4)
  props.dhcp_options = dhcp_options
  sub2 = Models::Subnet.new
  sub2_prop = Models::SubnetPropertiesFormat.new
  sub2.name = get_random_name('subnet')
  sub2_prop.address_prefix = '10.0.2.0/24'
  sub2.properties = sub2_prop
  props.subnets = [sub2]
  params.properties = props
  params
end

def create_virtual_network(resource_group_name)
  virtualNetworkName = get_random_name("vnet")
  params = build_virtual_network_params('westus')
  NETWORK_CLIENT.virtual_networks.create_or_update(resource_group_name, virtualNetworkName, params).value!.body
end