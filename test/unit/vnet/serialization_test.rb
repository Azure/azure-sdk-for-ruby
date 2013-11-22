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
require 'test_helper'

describe Azure::VirtualNetworkManagement::Serialization do
  subject { Azure::VirtualNetworkManagement::Serialization }

  let(:virtual_networks_xml) do
    Nokogiri::XML Fixtures['list_virtual_networks']
  end
  let(:virtual_networks_string) { Fixtures ['list_virtual_networks'] }

  let(:vnet_name) { 'test-vnet-name' }
  let(:affinity_group) { 'test-affinity-group' }
  let(:address_space) { ['172.16.0.0/12', '10.0.0.1/12'] }

  input_options = {
      subnet: [
          {
            name: 'vnet-test-unit-subnet-1',
            ip_address: '172.16.0.0',
            cidr: 12
          }, {
            name: 'vnet-test-unit-subnet-2',
            ip_address: '192.168.0.0',
            cidr: 12
          }
      ],
      dns: [
          {
            name: 'vnet-test-unit-dns-1',
            ip_address: '1.2.3.4'
          }, {
            name: 'vnet-test-unit-dns-2',
            ip_address: '2.3.4.5'
          }
      ]
  }

  describe '#virtual_network_from_xml' do
    it 'accepts an XML string as input' do
      subject.virtual_network_from_xml virtual_networks_xml
    end

    it 'returns an Array of VirtualNetwork instances' do
      result = subject.virtual_network_from_xml virtual_networks_xml
      result.must_be_kind_of Array
      result.length.must_equal 3
    end

    it 'returns a virtual network with all attributes populated' do
      virtual_network = subject.virtual_network_from_xml(
        virtual_networks_xml
      ).first

      # Verify global properties
      virtual_network.name.must_equal 'test-virtual-network'
      virtual_network.affinity_group.must_equal 'Test'
      virtual_network.id.must_equal 'afd3a393-8fe2-4127-a834-1b2b920729fe'
      virtual_network.state.must_equal 'Created'

      # Verify address_space
      virtual_network.address_space.must_be_kind_of Array
      virtual_network.address_space.length.must_equal 1
      virtual_network.address_space.first.must_be_kind_of String
      virtual_network.address_space.first.must_equal '10.0.0.0/8'

      # Verify subnets
      virtual_network.subnets.must_be_kind_of Array
      virtual_network.subnets.length.must_equal 1
      virtual_network.subnets.first[:name].must_equal 'Subnet-1'
      virtual_network.subnets.first[:address_prefix].must_equal '10.0.0.0/11'

      # Verify DNS Servers
      virtual_network.dns_servers.must_be_kind_of Array
      virtual_network.dns_servers.length.must_equal 2
      virtual_network.dns_servers.first[:name].must_equal 'dns-server-1'
      virtual_network.dns_servers.first[:ip_address].must_equal '1.2.3.4'
    end
  end

  describe '#virtual_network_to_xml' do
    before do
      ManagementHttpRequest.any_instance.expects(
        :call
      ).returns(virtual_networks_xml)
    end

    let(:result_string) do
      subject.virtual_network_to_xml(vnet_name,
                                     affinity_group,
                                     address_space,
                                     input_options)
    end
    let(:result) { Nokogiri::XML result_string }
    let(:virtual_network) do
      result.css('VirtualNetworkSites VirtualNetworkSite').last
    end

    it 'accepts parameters without providing subnet/dns' do
      subject.virtual_network_to_xml(vnet_name, affinity_group, address_space)
    end

    it 'accepts parameters including subnet/dns' do
      subject.virtual_network_to_xml(vnet_name,
                                     affinity_group,
                                     address_space,
                                     input_options)
    end

    it 'appends the new VirtualNetwork to the existing' do
      result_string.must_be_kind_of String
      result.css('VirtualNetworkSites VirtualNetworkSite').size.must_equal 4
    end

    it 'sets the name and affinity group for the new VirtualNetwork' do
      virtual_network.attr('name').must_equal vnet_name
      virtual_network.attr('AffinityGroup').must_equal affinity_group
    end

    it 'adds new dns servers on the top of existing dns servers' do
      # Verify DnsServers
      dns_servers = result.css 'DnsServers DnsServer'

      dns_servers.size.must_equal 4
      dns_servers[0].attr('name').must_equal(input_options[:dns][0][:name])
      dns_servers[0].attr('IPAddress').must_equal(
        input_options[:dns][0][:ip_address]
      )
      dns_servers[1].attr('name').must_equal(
        input_options[:dns][1][:name]
      )
      dns_servers[1].attr('IPAddress').must_equal(
        input_options[:dns][1][:ip_address]
      )
    end

    it 'adds DnsServerRef to VirtualNetworkSite' do
      # Verify DnsServerRef
      vnet_dns_servers = virtual_network.css 'DnsServersRef DnsServerRef'
      vnet_dns_servers.size.must_equal 2
      vnet_dns_servers[0].attr('name').must_equal(
        input_options[:dns][0][:name]
      )
      vnet_dns_servers[1].attr('name').must_equal(
        input_options[:dns][1][:name]
      )
    end

    it 'adds Subnets to VirtualNetworkSite' do
      # Verify Subnets
      vnet_subnets = virtual_network.css 'Subnets Subnet'
      vnet_subnets.size.must_equal 2
      vnet_subnets[0].attr('name').must_equal(input_options[:subnet][0][:name])
      vnet_subnets[0].css('AddressPrefix')[0].content.must_equal(
        "#{input_options[:subnet][0][:ip_address]}/"\
        "#{input_options[:subnet][0][:cidr]}"
      )
      vnet_subnets[1].attr('name').must_equal(input_options[:subnet][1][:name])
      vnet_subnets[1].css('AddressPrefix')[0].content.must_equal(
        "#{input_options[:subnet][1][:ip_address]}/"\
        "#{input_options[:subnet][1][:cidr]}"
      )
    end

    it 'adds AddressPrefix to VirtualNetworkSite' do
      # Verify AddressSpaces
      vnet_address_space = virtual_network.css 'AddressSpace AddressPrefix'
      vnet_address_space.size.must_equal 2
      vnet_address_space[0].content.must_equal address_space[0]
      vnet_address_space[1].content.must_equal address_space[1]
    end
  end

end
