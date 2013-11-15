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

      def self.virtual_network_from_xml(networkXML)
        virtual_networks = []
        virtual_network_services_xml = networkXML.css('VirtualNetworkSites VirtualNetworkSite')
        virtual_network_services_xml.each do |virtual_network_service_xml|
          virtual_network = VirtualNetwork.new
          virtual_network.name = xml_content(virtual_network_service_xml, 'Name')
          virtual_network.id = xml_content(virtual_network_service_xml, 'Id')
          virtual_network.affinity_group = xml_content(virtual_network_service_xml, 'AffinityGroup')
          virtual_network.state = xml_content(virtual_network_service_xml, 'State')
          address_prefixes = virtual_network_service_xml.css('AddressSpace AddressPrefixes AddressPrefix')
          virtual_network.address_space = address_prefixes.collect { |ap| ap.content }
          subnets_xml = virtual_network_service_xml.css('Subnets Subnet')
          virtual_network.subnets = subnets_xml.collect { |sn| { :name => xml_content(sn, 'Name'), :address_prefix => xml_content(sn, 'AddressPrefix') } }
          dns_servers_xml = virtual_network_service_xml.css('Dns DnsServers DnsServer')
          virtual_network.dns_servers = dns_servers_xml.collect { |dns| { :name => xml_content(dns, 'Name'), :ip_address => xml_content(dns, 'Address') } }
          virtual_networks << virtual_network
        end
        virtual_networks.compact
      end

      def self.virtual_network_to_xml(vnet_name, affinity_group, address_spaces, options = {})
        options[:dns] ||= {}
        options[:subnet] ||= {}
        options[:subnet].each { |subnet| IPAddr.validate_ip_and_prefix(subnet[:ip_address], subnet[:cidr]) }
        address_spaces = address_spaces.compact.uniq.reject(&:empty?)
        address_spaces.each { |address_space| IPAddr.validate_address_space(address_space) }
        vnets = Azure::VirtualNetworkManagementService.new.list_virtual_networks
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.NetworkConfiguration('xmlns' => 'http://schemas.microsoft.com/ServiceHosting/2011/07/NetworkConfiguration') {
            xml.VirtualNetworkConfiguration {
              xml.Dns {
                xml.DnsServers {
                  dns_server_to_xml(xml, vnets.collect(&:dns_servers).empty? ? vnets.collect(&:dns_servers) : vnets.collect(&:dns_servers).flatten!, options[:dns])
                }
              }
              xml.VirtualNetworkSites {
                vnets.each do |vnet|
                  if vnet.name != vnet_name
                    others = { :subnet => vnet.subnets, :dns => vnet.dns_servers }
                    virtual_network_site(xml, vnet.name, vnet.affinity_group, vnet.address_space, others)
                  end
                end
                virtual_network_site(xml, vnet_name, affinity_group, address_spaces, options)
              }
            }
          }
        end
        builder.doc.to_xml
      end

      private

      def self.virtual_network_site(xml, vnet_name, affinity_group, address_spaces, options)
        xml.VirtualNetworkSite('name' => vnet_name, 'AffinityGroup' => affinity_group) {
          xml.DnsServersRef {
            options[:dns].each do |dns|
              xml.DnsServerRef('name' => dns[:name])
            end
          }
          xml.Subnets {
            options[:subnet].each do |subnet|
              xml.Subnet('name' => subnet[:name]) {
                address_prefix = subnet.has_key?(:cidr) ? IPAddr.address_prefix(subnet[:ip_address], subnet[:cidr]) : subnet[:address_prefix]
                xml.AddressPrefix address_prefix
              }
            end
          }
          xml.AddressSpace {
            address_spaces.each do |address_space|
              xml.AddressPrefix address_space
            end
          }
        }
      end

      def self.dns_server_to_xml(xml, dns_servers, new_dns_servers)
        dns_names = []
        new_dns_servers.each do |dns|
          dns_names << dns[:name]
          xml.DnsServer('name' => dns[:name], 'IPAddress' => dns[:ip_address])
        end
        dns_servers.each do |dns|
          xml.DnsServer('name' => dns[:name], 'IPAddress' => dns[:ip_address]) unless dns_names.include?(dns[:name])
        end
      end

    end
  end
end
