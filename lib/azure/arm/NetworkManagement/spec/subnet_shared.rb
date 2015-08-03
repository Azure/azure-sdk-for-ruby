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
require_relative 'network_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

### WARNING use different virtual networks as a parameter, because of fixed address_prefix
### from build_subnet_params method, all subnet's address_prefixes from one virtual network
### should be different
def create_subnet(virtual_network, resource_group, subnet_client)
  subnet_name = get_random_name('subnet')
  params = build_subnet_params
  subnet_client.create_or_update(resource_group.name, virtual_network.name, subnet_name, params).value!.body
end

def build_subnet_params
  params = Models::Subnet.new
  prop = Models::SubnetPropertiesFormat.new
  params.properties = prop
  prop.address_prefix = '10.0.1.0/24'
  params
end