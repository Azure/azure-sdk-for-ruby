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
require 'azure/sql_database_management/sql_database'

module Azure
  module SqlDatabaseManagement
    module Serialization

      def self.database_to_xml(login, password, location)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.Server('xmlns'=>'http://schemas.microsoft.com/sqlazure/2010/12/') {
            xml.AdministratorLogin login
            xml.AdministratorLoginPassword password
            xml.Location location
          }
        end
        builder.doc.to_xml
      end

      def self.databases_from_xml(databasesXML)
        databases = []
        databases_servicesXML = databasesXML.css('Servers  Server')
        databases_servicesXML.each do |database_xml|
          database = SqlDatabase.new
          database.name = xml_content(database_xml, 'Name')
          database.administrator_login = xml_content(database_xml, 'AdministratorLogin')
          database.location = xml_content(database_xml, 'Location')
          database.feature_name = xml_content(database_xml, 'Features Feature Name')
          database.feature_value = xml_content(database_xml, 'Features Feature Value')
          databases << database
        end
        databases.compact
      end

      def self.server_name_from_xml(response_xml, login, location)
        server_name = xml_content(response_xml, 'ServerName')
        SqlDatabase.new do |db|
          db.name = server_name
          db.location = location
          db.administrator_login = login
        end
      end

      def self.reset_password_to_xml(password)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.AdministratorLoginPassword(password, {'xmlns'=>'http://schemas.microsoft.com/sqlazure/2010/12/'})
        end
        builder.doc.to_xml
      end

      def self.firewall_rule_to_xml(options)
        # Need to revisit and implement RDFE request XML.
        # Currently Azure is throwing Internal Server Error when executing the
        # API
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.FirewallRule('xmlns'=>'http://schemas.microsoft.com/sqlazure/2010/12/',
            'xmlns:xsi'=>'http://www.w3.org/2001/XMLSchema-instance',
            'xsi:schemaLocation'=>'http://schemas.microsoft.com/sqlazure/2010/12/ FirewallRule.xsd') {
            xml.StartIpAddress options[:start_ip_address]
            xml.EndIpAddress options[:end_ip_address]
          }
        end
        builder.doc.to_xml
      end

      def self.database_firewall_from_xml(response_xml)
        firewalls = []
        if Azure.config.sql_database_authentication_mode == :sql_server
          database_firewallXML = response_xml.css('FirewallRules  FirewallRule')
          database_firewallXML.each do |firewall_xml|
            firewall = {
              :rule => xml_content(firewall_xml, 'Name'),
              :start_ip_address => xml_content(firewall_xml, 'StartIpAddress'),
              :end_ip_address => xml_content(firewall_xml, 'EndIpAddress')
            }
            firewalls << firewall
          end
        else
          service_resources = response_xml.css(
            'ServiceResources ServiceResource'
          )
          service_resources.each do |resource|
            type = xml_content(resource, 'Type')
            if type == 'Microsoft.SqlAzure.FirewallRule'
              firewall = {
                rule: xml_content(resource, 'Name'),
                start_ip_address: xml_content(resource, 'StartIPAddress'),
                end_ip_address: xml_content(resource, 'EndIPAddress')
              }
              firewalls << firewall
            end
          end
        end
        firewalls.compact
      end

    end
  end
end
