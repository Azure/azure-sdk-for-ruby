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