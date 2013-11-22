#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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
require 'integration/test_helper'

describe Azure::VirtualNetworkManagement::VirtualNetwork do

  subject { Azure::VirtualNetworkManagementService.new }

  let(:affinity_group_name) { 'my-affinity-group' }
  let(:location) { 'West US' }
  let(:vnet_name) { 'vnet-integration-test' }

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
    affinity_group_service = Azure::BaseManagementService.new
    affinity_group_service.create_affinity_group(affinity_group_name,
                                                 location,
                                                 'Label Name'
                                                ) rescue nil
    address_space = %w(172.16.0.0/12 10.0.0.0/8 192.168.0.0/24)
    unless subject.list_virtual_networks.map(&:name).include?(vnet_name)
      subject.set_network_configuration(
        vnet_name,
        affinity_group_name,
        address_space
      )
    end
  end

  describe '#list_virtual_networks' do
    it 'Gets a list of virtual networks for the current subscription.' do
      virtual_networks = subject.list_virtual_networks
      virtual_networks.wont_be_nil
      virtual_networks.must_be_kind_of Array
      virtual_networks.first.must_be_kind_of(
        Azure::VirtualNetworkManagement::VirtualNetwork
      )
      assert_operator virtual_networks.size, :>=, 1
    end
  end
end
