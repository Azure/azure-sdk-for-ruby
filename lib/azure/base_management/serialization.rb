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

module Azure
  module BaseManagement
    module Serialization
      def self.locations_from_xml(locationXML)
        location_objs = []
        xml = locationXML.css('Locations Location')
        xml.each do |meta_node|
          loc = Location.new
          loc.name = xml_content(meta_node, 'Name')
          available_services = meta_node.css('AvailableServices').children
          loc.available_services = available_services.to_ary.join(', ')
          location_objs << loc
        end
        location_objs
      end

      def self.affinity_group_to_xml(name, location, label, options = {})
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CreateAffinityGroup(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.Name name
            xml.Label Base64.encode64(label).strip
            xml.Description options[:description]
            xml.Location location
          end
        end
        builder.doc.to_xml
      end

      def self.affinity_groups_from_xml(affinity_xml)
        affinity_groups = []
        affinity_group_services_xml = affinity_xml.css(
          'AffinityGroups  AffinityGroup'
        )

        affinity_group_services_xml.each do |ag_xml|
          affinity_group = AffinityGroup.new
          affinity_group.name = xml_content(ag_xml, 'Name')
          affinity_group.label = Base64.decode64(xml_content(ag_xml, 'Label'))
          affinity_group.description = xml_content(ag_xml, 'Description')
          affinity_group.location = xml_content(ag_xml, 'Location')

          capabilities = ag_xml.css('Capabilities Capability')
          affinity_group.capability = capabilities.map { |x|  x.content }
          affinity_groups << affinity_group
        end
        affinity_groups.compact
      end

      def self.affinity_group_from_xml(affinity_xml)
        hosted_services_xml = affinity_xml.css(
          'AffinityGroup HostedServices HostedService'
        )

        storage_services_xml = affinity_xml.css(
          'AffinityGroup StorageServices StorageService'
        )

        capability_xml = affinity_xml.css(
          'AffinityGroup Capabilities Capability'
        )

        AffinityGroup.new do |affinity_group|
          affinity_group.name = xml_content(
            affinity_xml,
            'AffinityGroup Name'
          )
          affinity_group.label = Base64.decode64(
            xml_content(
              affinity_xml,
              'AffinityGroup Label'
            )
          )
          affinity_group.description = xml_content(
            affinity_xml,
            'AffinityGroup Description'
          )
          affinity_group.location = xml_content(
            affinity_xml,
            'AffinityGroup Location'
          )
          affinity_group.hosted_services = []
          hosted_services_xml.each do |hosted_service_xml|
            affinity_group.hosted_services << {
              url: xml_content(hosted_service_xml, 'Url'),
              service_name: xml_content(hosted_service_xml, 'ServiceName')
            }
          end
          affinity_group.storage_services = []
          storage_services_xml.each do |storage_service_xml|
            affinity_group.storage_services << {
              url: xml_content(storage_service_xml, 'Url'),
              service_name: xml_content(storage_service_xml, 'ServiceName')
            }
          end
          affinity_group.capability = capability_xml.map { |x| x.content }
        end
      end

      def self.resource_to_xml(label, options = {})
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.UpdateAffinityGroup(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.Label Base64.encode64(label).strip
            xml.Description options[:description] if options[:description]
          end
        end
        builder.doc.to_xml
      end
    end
  end
end
