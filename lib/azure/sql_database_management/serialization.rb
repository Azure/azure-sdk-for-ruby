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
require 'azure/sql_database_management/sql_server'
require 'azure/sql_database_management/firewall_rule'

module Azure
  module SqlDatabaseManagement
    module Serialization
      extend Azure::Core::Utility

      def self.server_to_xml(login, password, location, version = 12.0)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.Server('xmlns' => 'http://schemas.microsoft.com/sqlazure/2010/12/') {
            xml.AdministratorLogin login
            xml.AdministratorLoginPassword password
            xml.Location location
            xml.Version version
          }
        end
        builder.doc.to_xml
      end

      def self.servers_from_xml(wrapper_XML)
        servers_XML = wrapper_XML.css('Servers  Server')
        servers_XML.map do |server_xml|
          server = SqlServer.new
          server.name = xml_content(server_xml, 'Name')
          server.administrator_login = xml_content(server_xml, 'AdministratorLogin')
          server.location = xml_content(server_xml, 'Location')
          server.version = xml_content(server_xml, 'Version')
          server.state = xml_content(server_xml, 'State')
          server.fully_qualified_domain_name = xml_content(server_xml, 'FullyQualifiedDomainName')
          server
        end
      end

      def self.server_name_from_xml(response_xml, login, location, version)
        server_name = xml_content(response_xml, 'ServerName')
        SqlServer.new do |db|
          db.name = server_name
          db.location = location
          db.administrator_login = login
          db.version = version
          db.fully_qualified_domain_name = response_xml.css('ServerName').first['FullyQualifiedDomainName']
        end
      end

      def self.reset_password_to_xml(password)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.AdministratorLoginPassword(password, {'xmlns' => 'http://schemas.microsoft.com/sqlazure/2010/12/'})
        end
        builder.doc.to_xml
      end

      # Serialize a firewall rule to xml
      # @param rule [Azure::SqlDatabaseManagement::FirewallRule] The firewall rule to serialize
      # @return [String] xml document contain the firewall rule
      def self.firewall_rule_to_xml(rule)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.ServiceResource('xmlns' => 'http://schemas.microsoft.com/windowsazure') {
            xml.Name rule.name
            xml.StartIPAddress rule.start_ip_address
            xml.EndIPAddress rule.end_ip_address
          }
        end
        builder.doc.to_xml
      end

      # Create a list of firewall hashes from xml
      # @param response_xml The xml containing the list of ServiceResources (firewall rules)
      # @return [Array<Azure::SqlDatabaseManagement::FirewallRule>]
      def self.database_firewall_from_xml(response_xml)
        service_resources = response_xml.css(
            'ServiceResources ServiceResource'
        )
        service_resources.map do |resource|
          FirewallRule.new do |rule|
            rule.name = xml_content(resource, 'Name')
            rule.type = xml_content(resource, 'Type')
            rule.start_ip_address = xml_content(resource, 'StartIPAddress')
            rule.end_ip_address = xml_content(resource, 'EndIPAddress')
          end
        end
      end
    end
  end
end
