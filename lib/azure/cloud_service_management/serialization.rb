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
require 'azure/cloud_service_management/cloud_service'

module Azure
  module CloudServiceManagement
    module Serialization
      def self.cloud_services_to_xml(name, options = {})
        options[:label] = options[:label] || name

        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CreateHostedService(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.ServiceName(name)
            xml.Label(Base64.encode64(options[:label]))
            xml.Description(options[:description]) unless\
              options[:description].nil? || options[:description].empty?

            unless options[:affinity_group_name].nil?
              xml.AffinityGroup(options[:affinity_group_name])
            else
              xml.Location(options[:location])
            end

            xml.ExtendedProperties do
              options[:extended_properties].each do |prop_name, prop_value|
                xml.ExtendedProperty do
                  xml.Name(prop_name)
                  xml.Value(prop_value)
                end unless (prop_name.nil? || prop_name.empty?)\
                  || (prop_value.nil? || prop_value.empty?)
              end
            end unless options[:extended_properties].nil?\
              || options[:extended_properties].empty?
          end
        end
        builder.doc.to_xml
      end

      def self.cloud_services_from_xml(cloud_xml)
        clouds = []
        cloud_services_xml = cloud_xml.css('HostedServices HostedService')
        cloud_services_xml.each do |cloud_service_xml|
          cloud = CloudService.new
          cloud.url = xml_content(cloud_service_xml, 'Url')
          cloud.name = xml_content(cloud_service_xml, 'ServiceName')

          props_xml = cloud_service_xml.css('HostedServiceProperties')

          cloud.label = Base64.decode64(xml_content(props_xml, 'Label'))
          cloud.description = xml_content(props_xml, 'Description')
          cloud.location = xml_content(props_xml, 'Location')
          cloud.affinity_group = xml_content(props_xml, 'AffinityGroup')
          cloud.status = xml_content(props_xml, 'Status')
          cloud.date_created = xml_content(props_xml, 'DateCreated')
          cloud.date_modified = xml_content(props_xml, 'DateLastModified')

          cloud.extended_properties = {}
          props_xml.css('ExtendedProperties ExtendedProperty').map do |prop|
            p_name = xml_content(prop, 'Name')
            p_value = xml_content(prop, 'Value')
            cloud.extended_properties[p_name] = p_value
          end

          cloud.default_winrm_certificate_thumbprint = xml_content(
            cloud_service_xml, 'DefaultWinRMCertificateThumbprint'
          )

          clouds << cloud
        end
        clouds.compact
      end

      def self.add_certificate_to_xml(data)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CertificateFile('xmlns'=>'http://schemas.microsoft.com/windowsazure') {
            xml.Data data
            xml.CertificateFormat 'pfx'
            xml.Password nil
          }
        end
        builder.doc.to_xml
      end

    end
  end
end
