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
require 'azure/cloud_service_management/deployment'
require 'azure/cloud_service_management/role_instance'
require 'azure/cloud_service_management/instance_endpoint'
require 'azure/cloud_service_management/input_endpoint'
require 'azure/cloud_service_management/virtual_ip'
require 'azure/cloud_service_management/role'
require 'azure/cloud_service_management/configuration_set'
require 'azure/cloud_service_management/persistent_vm_downtime'
require 'azure/virtual_machine_management/serialization'

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

      def self.create_deployment_to_xml(name, package_url, service_configuration, options={})
        options[:label] = options[:label] || name
        options[:start_deployment] = options[:start_deployment].nil? ? false : options[:start_deployment]
        options[:treat_warnings_as_error] = options[:treat_warnings_as_error].nil? ? false : options[:treat_warnings_as_error]

        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CreateDeployment(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.Name(name)
            xml.PackageUrl(package_url)
            xml.Label(Base64.strict_encode64(options[:label]))
            xml.Configuration(Base64.strict_encode64(service_configuration))
            xml.StartDeployment(options[:start_deployment])
            xml.TreatWarningsAsError(options[:treat_warnings_as_error])

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

      def self.upgrade_deployment_to_xml(package_url, service_configuration, options={})
        options[:label] = options[:label]
        options[:force] = options[:force].nil? ? false : options[:force]
        options[:mode] = options[:mode].nil? ? "Auto" : options[:mode]

        builder = Nokogiri::XML::Builder.new do |xml|
          xml.UpgradeDeployment(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.Mode(options[:mode])
            xml.PackageUrl(package_url)
            xml.Configuration(Base64.strict_encode64(service_configuration))
            xml.Label(Base64.strict_encode64(options[:label]))
            xml.RoleToUpgrade(options[:role_to_upgrade])
            xml.Force(options[:force])

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

      def self.swap_deployments_to_xml(production_deployment_name, staging_deployment_name)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.Swap(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure'
          ) do
            xml.Production(production_deployment_name)
            xml.SourceDeployment(staging_deployment_name)
          end
        end
        builder.doc.to_xml
      end

      def self.deployment_from_xml(cloud_xml)
        deployment = nil
        unless cloud_xml.nil? 
          deployment_xml = cloud_xml.css('Deployment')
          deployment = Deployment.new
          deployment.name = xml_content(deployment_xml, 'Name')
          deployment.deployment_slot = xml_content(deployment_xml, 'DeploymentSlot')
          deployment.private_id = xml_content(deployment_xml, 'PrivateID')
          deployment.status = xml_content(deployment_xml, 'Status')
          deployment.label = xml_content(deployment_xml, 'Label')
          deployment.url = xml_content(deployment_xml, 'Url')
          deployment.configuration = xml_content(deployment_xml, 'Configuration')
          deployment.upgrade_domain_count = xml_content(deployment_xml, 'UpgradeDomainCount')
          deployment.sdk_version = xml_content(deployment_xml, 'SdkVersion')
          deployment.locked = xml_content(deployment_xml, 'Locked')
          deployment.rollback_allowed = xml_content(deployment_xml, 'RollbackAllowed')
          deployment.created_time = xml_content(deployment_xml, 'CreatedTime')
          deployment.last_modified_time = xml_content(deployment_xml, 'LastModifiedTime')
          deployment.extended_properties = {}
          deployment_xml.css('ExtendedProperties ExtendedProperty').map do |prop|
            p_name = xml_content(prop, 'Name')
            p_value = xml_content(prop, 'Value')
            deployment.extended_properties[p_name] = p_value
          end
          deployment.role_instances = deployment_xml.css("RoleInstanceList RoleInstance").map{ |xml|
            self.role_instance_from_xml(xml)
          }
          deployment.roles = deployment_xml.css("RoleList Role").map{ |xml|
            self.role_from_xml(xml)
          }
          deployment.persistent_vm_downtime = self.persistent_vm_downtime_from_xml(deployment_xml.css("PersistentVMDowntime"))
          deployment.virtual_ips = deployment_xml.css("VirtualIPs VirtualIP").map{ |xml|
            self.virtual_ip_from_xml(xml)
          }
        end
        return deployment
      end

      def self.role_instance_from_xml(role_instance_xml)
        role_instance = nil
        unless role_instance_xml.nil? 
          role_instance = RoleInstance.new
          role_instance.role_name = xml_content(role_instance_xml, 'RoleName')
          role_instance.instance_name = xml_content(role_instance_xml, 'InstanceName')
          role_instance.instance_status = xml_content(role_instance_xml, 'InstanceStatus')
          role_instance.instance_upgrade_domain = xml_content(role_instance_xml, 'InstanceUpgradeDomain')
          role_instance.instance_fault_domain = xml_content(role_instance_xml, 'InstanceFaultDomain')
          role_instance.instance_size = xml_content(role_instance_xml, 'InstanceSize')
          role_instance.instance_state_details = xml_content(role_instance_xml, 'InstanceStateDetails')
          role_instance.ip_address = xml_content(role_instance_xml, 'IpAddress')
          role_instance.power_state = xml_content(role_instance_xml, 'PowerState')

          role_instance.instance_endpoints = role_instance_xml.css("InstanceEndpoints InstanceEndpoint").map{ |xml|
            self.instance_endpoint_from_xml(xml)
          }
        end
        return role_instance
      end

      def self.instance_endpoint_from_xml(instance_endpoint_xml)
        instance_endpoint = nil
        unless instance_endpoint_xml.nil? 
          instance_endpoint = InstanceEndpoint.new
          instance_endpoint.name = xml_content(instance_endpoint_xml, 'Name')
          instance_endpoint.vip = xml_content(instance_endpoint_xml, 'Vip')
          instance_endpoint.public_port = xml_content(instance_endpoint_xml, 'PublicPort')
          instance_endpoint.local_port = xml_content(instance_endpoint_xml, 'LocalPort')
          instance_endpoint.protocol = xml_content(instance_endpoint_xml, 'Protocol')
        end
        return instance_endpoint
      end

      def self.virtual_ip_from_xml(virtual_ip_xml)
        virtual_ip = nil
        unless virtual_ip_xml.nil? 
          virtual_ip = VirtualIp.new
          virtual_ip.address = xml_content(virtual_ip_xml, 'Address')
          virtual_ip.is_dns_programmed = xml_content(virtual_ip_xml, 'IsDnsProgrammed')
          virtual_ip.name = xml_content(virtual_ip_xml, 'Name')
        end
        return virtual_ip
      end

      def self.persistent_vm_downtime_from_xml(persistent_vm_downtime_xml)
        persistent_vm_downtime = nil
        unless persistent_vm_downtime_xml.nil? 
          persistent_vm_downtime = PersistentVmDowntime.new
          persistent_vm_downtime.start_time = xml_content(persistent_vm_downtime_xml, 'StartTime')
          persistent_vm_downtime.end_time = xml_content(persistent_vm_downtime_xml, 'EndTime')
          persistent_vm_downtime.status = xml_content(persistent_vm_downtime_xml, 'Status')
        end
        return persistent_vm_downtime
      end

      def self.role_from_xml(role_xml)
        role = nil
        unless role_xml.nil? 
          role = Role.new
          role.role_name = xml_content(role_xml, 'RoleName')
          role.os_version = xml_content(role_xml, 'OsVersion')
          role.configuration_sets = role_xml.css("ConfigurationSets ConfigurationSet").map{ |xml|
            self.configuration_set_from_xml(xml)
          }
        end
        return role
      end

      def self.configuration_set_from_xml(configuration_set_xml)
        configuration_set = nil
        unless configuration_set_xml.nil? 
          configuration_set = ConfigurationSet.new
          configuration_set.configuration_set_type = xml_content(configuration_set_xml, 'ConfigurationSetType')
          configuration_set.input_endpoints = configuration_set_xml.css("InputEndpoints InputEndpoint").map{ |xml|
            self.input_endpoint_from_xml(xml)
          }
        end
        return configuration_set
      end

      def self.input_endpoint_from_xml(input_enpoint_xml)
        input_endpoint = nil
        unless input_enpoint_xml.nil? 
          input_endpoint = InputEndpoint.new
          input_endpoint.port = xml_content(input_enpoint_xml, 'Port')
          input_endpoint.protocol = xml_content(input_enpoint_xml, 'Protocol')
          input_endpoint.vip = xml_content(input_enpoint_xml, 'Vip')
        end
        return input_endpoint
      end

      def self.cloud_services_from_xml(cloud_xml)
        clouds = []
        cloud_services_xml = cloud_xml.css('HostedServices HostedService')
        cloud_services_xml = cloud_xml.css('HostedService') if \
          cloud_services_xml.length == 0
        cloud_services_xml.each do |cloud_service_xml|
          cloud = CloudService.new
          cloud.url = xml_content(cloud_service_xml, 'Url')
          cloud.name = xml_content(cloud_service_xml, 'ServiceName')

          props_xml = cloud_service_xml.css('HostedServiceProperties')

          cloud.label = Base64.decode64(xml_content(props_xml, 'Label'))
          cloud.description = xml_content(props_xml, 'Description')
          location = xml_content(props_xml, 'Location')
          cloud.location = location unless location.empty?
          affinity_group =  xml_content(props_xml, 'AffinityGroup')
          cloud.affinity_group = affinity_group unless affinity_group
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
          deployment_xml = cloud_services_xml.css('Deployments Deployment')
          cloud.deployment_name = xml_content(deployment_xml, 'Name')
          vms_in_deployment = {}

          cloud_service_xml.css('Deployments').each do |deployxml|
            deployment_name = xml_content(deployxml, 'Deployment Name')
            vms = Azure::VirtualMachineManagement::Serialization.virtual_machines_from_xml(
              deployxml, cloud.name
            )
            vms_in_deployment[deployment_name.to_sym] = vms if vms
          end

          cloud.virtual_machines = vms_in_deployment
          clouds << cloud
        end
        clouds.compact
      end

      def self.add_certificate_to_xml(data)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CertificateFile('xmlns' => 'http://schemas.microsoft.com/windowsazure') do
            xml.Data data
            xml.CertificateFormat 'pfx'
            xml.Password nil
          end
        end
        builder.doc.to_xml
      end
    end
  end
end
