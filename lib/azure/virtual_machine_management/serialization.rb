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
require 'azure/virtual_machine_management/virtual_machine'
require 'base64'

module Azure
  module VirtualMachineManagement
    module Serialization

      def self.shutdown_virtual_machine_to_xml
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.ShutdownRoleOperation(
            'xmlns'=>'http://schemas.microsoft.com/windowsazure',
            'xmlns:i'=>'http://www.w3.org/2001/XMLSchema-instance'
          ) {
            xml.OperationType 'ShutdownRoleOperation'
            xml.PostShutdownAction 'StoppedDeallocated'
          }
        end
        builder.doc.to_xml
      end

      def self.start_virtual_machine_to_xml
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.StartRoleOperation(
            'xmlns'=>'http://schemas.microsoft.com/windowsazure',
            'xmlns:i'=>'http://www.w3.org/2001/XMLSchema-instance'
          ) {
            xml.OperationType 'StartRoleOperation'
          }
        end
        builder.doc.to_xml
      end

      def self.deployment_to_xml(params, options)
        options[:deployment_name] ||= options[:cloud_service_name]
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.Deployment(
            'xmlns'=>'http://schemas.microsoft.com/windowsazure',
            'xmlns:i'=>'http://www.w3.org/2001/XMLSchema-instance'
          ) {
            xml.Name options[:deployment_name]
            xml.DeploymentSlot 'Production'
            xml.Label Base64.encode64(options[:deployment_name]).strip
            xml.RoleList { xml.Role('i:type'=>'PersistentVMRole') }
            if options[:virtual_network_name]
              xml.VirtualNetworkName options[:virtual_network_name]
            end
          }
        end
        builder.doc.at_css('Role') << role_to_xml(params, options).at_css('PersistentVMRole').children.to_s
        builder.doc.to_xml
      end

      def self.role_to_xml(params, options)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.PersistentVMRole(
            'xmlns'=>'http://schemas.microsoft.com/windowsazure',
            'xmlns:i'=>'http://www.w3.org/2001/XMLSchema-instance'
          ) {
            xml.RoleName {xml.text params[:vm_name]}
            xml.OsVersion('i:nil' => 'true')
            xml.RoleType 'PersistentVMRole'
           
            xml.ConfigurationSets {
              provisioning_configuration_to_xml(xml, params, options)
              xml.ConfigurationSet('i:type' => 'NetworkConfigurationSet') {
                xml.ConfigurationSetType 'NetworkConfiguration'
                xml.InputEndpoints {
                  default_endpoints_to_xml(xml, options)
                  tcp_endpoints_to_xml(xml, options[:tcp_endpoints]) if options[:tcp_endpoints]
                }
                if options[:virtual_network_name] && options[:subnet_name]
                  xml.SubnetNames {
                    xml.SubnetName options[:subnet_name]
                  }
                end
              }
            }
            xml.Label Base64.encode64(params[:vm_name]).strip
            xml.OSVirtualHardDisk {
              xml.MediaLink 'http://' + options[:storage_account_name] + '.blob.core.windows.net/vhds/' + (Time.now.strftime('disk_%Y_%m_%d_%H_%M')) + '.vhd'
              xml.SourceImageName params[:image]
            }
            xml.RoleSize options[:vm_size]
          }
        end
        builder.doc
      end

      def self.provisioning_configuration_to_xml(xml, params, options)
        if options[:os_type] == 'Linux'
          xml.ConfigurationSet('i:type' => 'LinuxProvisioningConfigurationSet') {
            xml.ConfigurationSetType 'LinuxProvisioningConfiguration'
            xml.HostName params[:vm_name]
            xml.UserName params[:vm_user]
            if params[:password]
              xml.UserPassword params[:password]
              xml.DisableSshPasswordAuthentication 'false'
            end
            if params[:certificate][:fingerprint]
              xml.SSH{
                xml.PublicKeys{
                  xml.PublicKey{
                    xml.Fingerprint params[:certificate][:fingerprint]
                    xml.Path "/home/#{params[:vm_user]}/.ssh/authorized_keys"
                  }
                }
              }
            end
          }   
        elsif options[:os_type] == 'Windows'
          xml.ConfigurationSet('i:type' => 'WindowsProvisioningConfigurationSet') {
            xml.ConfigurationSetType 'WindowsProvisioningConfiguration'
            xml.ComputerName params[:vm_name]
            xml.AdminPassword params[:password]
            xml.ResetPasswordOnFirstLogon 'false'
            xml.EnableAutomaticUpdates 'true'
            if enable_winrm?(options[:winrm_transport])
              xml.WinRM {
                xml.Listeners {
                  if options[:winrm_transport].include?('http')
                    xml.Listener {
                      xml.Protocol 'Http'
                    }
                  end
                  if options[:winrm_transport].include?('https')
                    xml.Listener {
                      xml.Protocol 'Https'
                      xml.CertificateThumbprint params[:certificate][:fingerprint] if params[:certificate][:fingerprint]
                    }
                  end
                }
              }
            end
            xml.AdminUsername params[:vm_user]
          }
        end
      end

      def self.default_endpoints_to_xml(xml, options)
        os_type = options[:os_type]
        if os_type == 'Linux'
          xml.InputEndpoint {
            xml.LocalPort '22'
            xml.Name 'SSH'
            xml.Port options[:ssh_port] || '22'
            xml.Protocol 'TCP'
          }
        elsif os_type == 'Windows'
          if options[:winrm_transport] && options[:winrm_transport].include?('http')
            xml.InputEndpoint {
              xml.LocalPort '5985'
              xml.Name 'WinRm-Http'
              xml.Port '5985'
              xml.Protocol 'TCP'
            }
          end
          if options[:winrm_transport] && options[:winrm_transport].include?('https')
            xml.InputEndpoint {
              xml.LocalPort '5986'
              xml.Name 'WinRm-Https'
              xml.Port '5986'
              xml.Protocol 'TCP'
            }
          end
        end
      end

      def self.tcp_endpoints_to_xml(xml, tcp_endpoints)
        if tcp_endpoints
          tcp_endpoints.split(',').each do |endpoint|
            ports = endpoint.split(':')
            xml.InputEndpoint {
              xml.LocalPort ports[0]
              if ports.length > 1
                xml.Name 'TCP-PORT-' + ports[1]
                xml.Port ports[1]
              else
                xml.Name 'TCP-PORT-' + ports[0]
                xml.Port ports[0]
              end
              xml.Protocol 'TCP'
            }
          end
        end
      end

      def self.virtual_machines_from_xml(deployXML, cloud_service_name)
        if deployXML.at_css('Deployment Name') != nil
          rolesXML = deployXML.css('Deployment RoleInstanceList RoleInstance')
          vm = VirtualMachine.new
          vm.status = xml_content(rolesXML, 'InstanceStatus')
          vm.vm_name = xml_content(rolesXML, 'RoleName')
          vm.role_size = xml_content(rolesXML, 'InstanceSize')
          vm.hostname = xml_content(rolesXML, 'HostName')
          vm.cloud_service_name = cloud_service_name
          vm.deployment_name = xml_content(deployXML, 'Deployment Name')
          vm.deployment_status = xml_content(deployXML, 'Deployment Status')
          osdisk = deployXML.css(deployXML, 'OSVirtualHardDisk')
          vm.os_type = xml_content(osdisk, 'OS')
          vm.disk_name = xml_content(osdisk, 'DiskName')
          vm.tcp_endpoints = Array.new
          vm.udp_endpoints = Array.new
          endpoints = rolesXML.css('InstanceEndpoint')
          endpoints.each do |endpoint|
            if vm.ipaddress.nil?
              if xml_content(endpoint, 'Name').downcase == 'ssh'
                vm.ipaddress = xml_content(endpoint, 'Vip')
              elsif !(xml_content(endpoint, 'Name').downcase =~ /winrm/).nil?
                vm.ipaddress = xml_content(endpoint, 'Vip')
              end
            end
            hash = Hash.new
            hash['Name'] = xml_content(endpoint, 'Name')
            hash['Vip'] = xml_content(endpoint, 'Vip')
            hash['PublicPort'] = xml_content(endpoint, 'PublicPort')
            hash['LocalPort'] = xml_content(endpoint, 'LocalPort')
            if xml_content(endpoint, 'Protocol') == 'tcp'
              vm.tcp_endpoints << hash
            else
              vm.udp_endpoints << hash
            end
          end
          vm.ipaddress = xml_content(rolesXML, 'IpAddress') unless vm.ipaddress
          vm.virtual_network_name = xml_content(deployXML.css('Deployment'),
                                                'VirtualNetworkName')
          vm
        end
      end

    end
  end
end

