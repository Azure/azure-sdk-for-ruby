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
require 'base64'
require 'azure/storage_management/storage_account'

module Azure
  module StorageManagement
    # Storage management serialization module is responsible for converting
    # the objects to XML and vice versa.
    module Serialization
      def self.storage_services_to_xml(name, options = {})
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CreateStorageServiceInput(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.ServiceName(name)
            label = options[:label] || name
            xml.Label(Base64.encode64(label))
            xml.Description options[:description]\
              || 'Explicitly created storage service'
            unless options[:affinity_group_name].nil?
              xml.AffinityGroup options[:affinity_group_name]
            else
              xml.Location options[:location]
            end
            add_options_to_xml(xml, options)
          end
        end
        builder.doc.to_xml
      end

      def self.storage_services_from_xml(storage_xml)
        storage_accounts = []
        storage_services_xml = storage_xml.css('StorageService')
        storage_services_xml.each do |storage_service_xml|
          storage_account = StorageAccount.new

          storage_account.url = xml_content(storage_service_xml, 'Url')
          storage_account.name = xml_content(
            storage_service_xml, 'ServiceName'
          )

          storage_service_properties = storage_service_xml.css(
            'StorageServiceProperties'
          )

          storage_account.description = xml_content(
            storage_service_properties, 'Description'
          )
          storage_account.affinity_group = xml_content(
            storage_service_properties, 'AffinityGroup'
          )
          storage_account.location = xml_content(
            storage_service_properties, 'Location'
          )
          storage_account.label = Base64.decode64(
            xml_content(storage_service_properties, 'Label')
          )
          storage_account.status = xml_content(
            storage_service_properties, 'Status'
          )
          storage_account.endpoints = storage_service_properties.css(
            'Endpoints Endpoint'
          ).map { |endpoint| endpoint.content }
          storage_account.geo_replication_enabled = xml_content(
            storage_service_properties, 'GeoReplicationEnabled'
          )
          storage_account.geo_primary_region = xml_content(
            storage_service_properties, 'GeoPrimaryRegion'
          )
          storage_account.status_of_primary = xml_content(
            storage_service_properties, 'StatusOfPrimary'
          )
          storage_account.last_geo_failover_time = xml_content(
            storage_service_properties, 'LastGeoFailoverTime'
          )
          storage_account.geo_secondary_region = xml_content(
            storage_service_properties, 'GeoSecondaryRegion'
          )
          storage_account.status_of_secondary = xml_content(
            storage_service_properties, 'StatusOfSecondary'
          )
          storage_account.creation_time = xml_content(
            storage_service_properties, 'CreationTime'
          )
          storage_account.extended_properties = storage_service_xml.css(
            'ExtendedProperties ExtendedProperty'
          ).map do |prop|
            {
              name: xml_content(prop, 'Name'),
              value: xml_content(prop, 'Value')
            }
          end

          storage_accounts << storage_account
        end

        storage_accounts.compact
      end

      def self.storage_update_to_xml(options)
        # Cannot update if options is nil or empty
        fail 'No options specified' if options.nil? || options.empty?

        # Either one of Label, or Description is required.
        if (options[:label].nil? || options[:label].empty?) &&
           (options[:description].nil? || options[:description].empty?)
          fail 'Either one of Label or Description'\
                ' has to be provided. Both cannot be empty'
        end

        # The input param may not be nil or empty, but the values inside may
        # be. Check if atleast one value exists before proceeding.
        is_empty = true
        options.each do |option, value|
          case option
          when :description, :label
            is_empty = value.nil? || value.empty?
          when :geo_replication_enabled
            is_empty = !(value.kind_of?(TrueClass)\
              || value.kind_of?(FalseClass))
          when :extended_properties
            value.each do |p, v|
              is_empty = ((p.nil? || p.empty?) || (v.nil? || v.empty?))
              break unless is_empty
            end
          end

          break unless is_empty
        end

        # Raise a RuntimeError if no options were provided
        fail 'No Options Specified' if is_empty

        builder = Nokogiri::XML::Builder.new do |xml|
          xml.UpdateStorageServiceInput(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            # Check if label is nil. Use description only if label is nil
            if options[:label].nil? || options[:label].empty?
              desc = options[:description]
              xml.Description(desc) unless desc.nil? || desc.empty?
            else
              label = Base64.encode64(options[:label])
              xml.Label(label) unless label.nil? || label.empty?
            end
            add_options_to_xml(xml, options)
          end
        end
        builder.to_xml
      end

      def self.add_options_to_xml(xml, options = {})
        gre = options[:geo_replication_enabled]
        xml.GeoReplicationEnabled(
          gre
        ) unless gre.nil?\
          || !(gre.kind_of?(TrueClass) || gre.kind_of?(FalseClass))
        xml.ExtendedProperties do
          options[:extended_properties].each do |name, value|
            xml.ExtendedProperty do
              xml.Name name
              xml.Value value
            end unless (name.nil? || name.empty?)\
              || (value.nil? || value.empty?)
          end
        end unless options[:extended_properties].nil?\
          || options[:extended_properties].empty?
      end
    end
  end
end
