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
require 'support/virtual_network_helper'

describe Azure::VirtualNetworkManagement::VirtualNetwork do
  let(:in_vnet_name) { 'newvnet' }
  let(:in_affinity_name) { 'integration-test-affinity-group' }
  let(:in_address_space) { ['172.16.0.0/12'] }
  let(:invalid_address_space) { ['', ''] }
  let(:invalid_cidr_address_space) { ['10.0.0.0'] }
  let(:created_state) { 'Created' }
  let(:xml_err_msg) { 'XML Schema validation error in network configuration' }

  inputoptions = {
      subnet: [{ name: 'Subnet-1', ip_address: '172.16.0.0', cidr: 12 }],
      dns: [{ name: 'DNS', ip_address: '1.2.3.4' }]
  }

  subject { Azure::VirtualNetworkManagementService.new }

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)

    affinity_group_service = Azure::BaseManagementService.new
    affinity_group_service.create_affinity_group(in_affinity_name,
                                                 WindowsImageLocation,
                                                 'Label'
                                                ) rescue nil
  end

  describe 'Create virtual network valid params' do
    it 'Create virtual network with valid params' do
      subject.set_network_configuration(in_vnet_name,
                                        in_affinity_name,
                                        in_address_space,
                                        inputoptions)

      VirtualNetworkHelper.check_config(subject.list_virtual_networks,
                                        in_vnet_name,
                                        in_affinity_name,
                                        created_state,
                                        in_address_space,
                                        inputoptions)
    end
  end

  describe 'Create virtual network with invalid subnet' do
    it 'checks for invalid subnet and throws an exception' do
      options = {
          subnet: [{ name: 'Subnet-1', ip_address: '10.0.0.0/8', cidr: 12 }],
          dns: [{ name: 'demodns', ip_address: '2.3.4.5' }]
      }

      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration(in_vnet_name,
                                          in_affinity_name,
                                          in_address_space,
                                          options)
      end
      #assert_match(xml_err_msg, exception.message)
    end
  end

  describe 'Create virtual network with no address space provided options ' do
    it 'Create virtual network with invalid options' do
      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration(in_vnet_name,
                                          in_affinity_name,
                                          invalid_address_space,
                                          inputoptions)
      end
      assert_match(xml_err_msg, exception.message)
    end
  end

  describe 'Update virtual network valid params ' do
    it 'Update virtual network with valid params' do
      update_address_space = ['10.0.0.0/8']
      update_options = {
          subnet: [{ name: 'Subnet-1', ip_address: '10.0.0.0', cidr: 16 }],
          dns: [{ name: 'DNS', ip_address: '1.2.3.4' }]
      }

      subject.set_network_configuration(in_vnet_name,
                                        in_affinity_name,
                                        update_address_space,
                                        update_options)
      VirtualNetworkHelper.check_config(subject.list_virtual_networks,
                                        in_vnet_name,
                                        in_affinity_name,
                                        created_state,
                                        update_address_space,
                                        update_options)
    end
  end

  describe 'Create virtual network invalid cidr' do
    it 'Create virtual network with invalid options' do
      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration(in_vnet_name,
                                          in_affinity_name,
                                          invalid_cidr_address_space,
                                          inputoptions)
      end
      assert_match("Cidr is invalid for IP #{invalid_cidr_address_space[0]}",
                   exception.message)
    end
  end
end
