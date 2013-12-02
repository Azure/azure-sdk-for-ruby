#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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

class VirtualNetworkHelper
  def self.check_config(virtual_networks,
                        in_vnet_name,
                        in_affinity_name,
                        created_state,
                        in_address_space,
                        inputoptions)
    virtual_networks.wont_be_nil
    virtual_networks.must_be_kind_of Array
    virtual_networks[0].must_be_kind_of(
      Azure::VirtualNetworkManagement::VirtualNetwork
    )

    created_virtual_network = virtual_networks.select do |x|
      x.name == in_vnet_name
    end

    created_virtual_network.wont_be_nil
    created_virtual_network.size.must_equal 1
    created_virtual_network[0].must_be_kind_of(
      Azure::VirtualNetworkManagement::VirtualNetwork
    )

    # Verify global properties
    created_virtual_network[0].name.must_equal in_vnet_name
    created_virtual_network[0].affinity_group.must_equal in_affinity_name
    created_virtual_network[0].state.must_equal created_state

    # Verify address_space
    created_virtual_network[0].address_space.must_be_kind_of Array
    created_virtual_network[0].address_space.length.must_equal 1
    created_virtual_network[0].address_space.first.must_be_kind_of String
    created_virtual_network[0].address_space.first.must_equal(
      in_address_space[0]
    )

    # Verify subnets
    created_virtual_network[0].subnets.must_be_kind_of Array
    created_virtual_network[0].subnets.length.must_equal 1
    created_virtual_network[0].subnets.first[:name].must_equal(
      inputoptions[:subnet][0][:name]
    )
    created_virtual_network[0].subnets.first[:address_prefix].must_equal(
      "#{inputoptions[:subnet][0][:ip_address]}/"\
      "#{inputoptions[:subnet][0][:cidr]}"
    )

    # Verify DNS Servers
    created_virtual_network[0].dns_servers.must_be_kind_of Array
    created_virtual_network[0].dns_servers.length.must_equal 1
    created_virtual_network[0].dns_servers.first[:name].must_equal(
      inputoptions[:dns][0][:name]
    )
    created_virtual_network[0].dns_servers.first[:ip_address].must_equal(
      inputoptions[:dns][0][:ip_address]
    )
  end
end
