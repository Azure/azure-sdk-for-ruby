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
require_relative 'public_ip_addresses_shared'

def create_virtual_network_gateway(location, resource_group,name = nil)
  params = build_virtual_network_gateway_params(location, resource_group)
  params.name = name.nil? ? params.name : name
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