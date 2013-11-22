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
require 'azure/virtual_network_management/virtual_network'

module Azure
  module VirtualNetworkManagement
    module Serialization
      def self.virtual_network_from_xml(network_xml)
        virtual_networks = []
        virtual_network_services_xml = network_xml.css(
          'VirtualNetworkSites VirtualNetworkSite'
        )

        virtual_network_services_xml.each do |virtual_network_service_xml|
          virtual_network = VirtualNetwork.new
          virtual_network.name = xml_content(
            virtual_network_service_xml,
            'Name'
          )
          virtual_network.id = xml_content(
            virtual_network_service_xml,
            'Id'
          )
          virtual_network.affinity_group = xml_content(
            virtual_network_service_xml,
            'AffinityGroup'
          )
          virtual_network.state = xml_content(
            virtual_network_service_xml,
            'State'
          )
          address_prefixes = virtual_network_service_xml.css(
            'AddressSpace AddressPrefixes AddressPrefix'
          )
          virtual_network.address_space = address_prefixes.map do |ap|
            ap.content
          end
          subnets_xml = virtual_network_service_xml.css('Subnets Subnet')
          virtual_network.subnets = subnets_xml.map do |sn|
            {
              name: xml_content(sn, 'Name'),
              address_prefix: xml_content(sn, 'AddressPrefix')
            }
          end
          dns_servers_xml = virtual_network_service_xml.css(
            'Dns DnsServers DnsServer'
          )
          virtual_network.dns_servers = dns_servers_xml.map do |dns|
            {
              name: xml_content(dns, 'Name'),
              ip_address: xml_content(dns, 'Address')
            }
          end

          virtual_networks << virtual_network
        end
        virtual_networks.compact
      end

      def self.virtual_network_to_xml(vnet_name,
                                      affinity_group,
                                      address_spaces,
                                      options = {})
        options[:dns] ||= {}
        options[:subnet] ||= {}
        options[:subnet].each do |subnet|
          IPAddr.validate_ip_and_prefix(subnet[:ip_address], subnet[:cidr])
        end
        address_spaces = address_spaces.compact.uniq.reject(&:empty?)
        address_spaces.each do |address_space|
          IPAddr.validate_address_space(address_space)
        end
        vnet_service = Azure::VirtualNetworkManagementService.new
        vnets = vnet_service.list_virtual_networks
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.NetworkConfiguration(
            'xmlns' => 'http://schemas.microsoft.com/ServiceHosting'\
                       '/2011/07/NetworkConfiguration') do
            xml.VirtualNetworkConfiguration do
              xml.Dns do
                xml.DnsServers do
                  dns = vnets.map(&:dns_servers)
                  dns.flatten! unless dns.empty?
                  dns_server_to_xml(xml, dns, options[:dns])
                end
              end
              xml.VirtualNetworkSites do
                vnets.each do |vnet|
                  if vnet.name != vnet_name
                    others = {
                      subnet: vnet.subnets, dns: vnet.dns_servers
                    }
                    virtual_network_site(xml,
                                         vnet.name,
                                         vnet.affinity_group,
                                         vnet.address_space,
                                         others)
                  end
                end
                virtual_network_site(xml,
                                     vnet_name,
                                     affinity_group,
                                     address_spaces,
                                     options)
              end
            end
          end
        end
        builder.doc.to_xml
      end

      private

      def self.virtual_network_site(xml,
                                    vnet_name,
                                    affinity_group,
                                    address_spaces,
                                    options)
        xml.VirtualNetworkSite(
          'name' => vnet_name,
          'AffinityGroup' => affinity_group
        ) do
          xml.DnsServersRef do
            options[:dns].each do |dns|
              xml.DnsServerRef('name' => dns[:name])
            end
          end
          xml.Subnets do
            options[:subnet].each do |subnet|
              xml.Subnet('name' => subnet[:name]) do
                if subnet.key?(:cidr)
                  address_prefix = IPAddr.address_prefix(subnet[:ip_address],
                                                         subnet[:cidr])
                else
                  address_prefix = subnet[:address_prefix]
                end
                xml.AddressPrefix address_prefix
              end
            end
          end
          xml.AddressSpace do
            address_spaces.each do |address_space|
              xml.AddressPrefix address_space
            end
          end
        end
      end

      def self.dns_server_to_xml(xml, dns_servers, new_dns_servers)
        dns_names = []

        dns_list = {}
        dns_list.merge!(merge_dns(new_dns_servers))
        dns_list.merge!(merge_dns(dns_servers))
        
        dns_list.each do |name, ip_address|
          xml.DnsServer('name' => name, 'IPAddress' => ip_address)
        end
      end

      def self.merge_dns(dns_list)
        new_dns_list = {}
        
        dns_list.each do |dns|
          unless dns_list.include?(dns[:name])
            new_dns_list.merge!(dns[:name] => dns[:ip_address])
          end
        end

        new_dns_list
      end
    end
  end
end
