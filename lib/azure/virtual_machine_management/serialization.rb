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
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.OperationType 'ShutdownRoleOperation'
            xml.PostShutdownAction 'StoppedDeallocated'
          end
        end
        builder.doc.to_xml
      end

      def self.start_virtual_machine_to_xml
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.StartRoleOperation(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.OperationType 'StartRoleOperation'
          end
        end
        builder.doc.to_xml
      end

      def self.restart_virtual_machine_to_xml
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.RestartRoleOperation(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.OperationType 'RestartRoleOperation'
          end
        end
        builder.doc.to_xml
      end

      def self.deployment_to_xml(params, options)
        options[:deployment_name] ||= options[:cloud_service_name]
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.Deployment(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.Name options[:deployment_name]
            xml.DeploymentSlot 'Production'
            xml.Label Base64.encode64(options[:deployment_name]).strip
            xml.RoleList { xml.Role('i:type' => 'PersistentVMRole') }
            if options[:virtual_network_name]
              xml.VirtualNetworkName options[:virtual_network_name]
            end
          end
        end
        builder.doc.at_css('Role') << role_to_xml(params, options).at_css('PersistentVMRole').children.to_s
        builder.doc.to_xml
      end

      def self.role_to_xml(params, options)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.PersistentVMRole(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.RoleName { xml.text params[:vm_name] }
            xml.OsVersion('i:nil' => 'true')
            xml.RoleType 'PersistentVMRole'

            xml.ConfigurationSets do
              provisioning_configuration_to_xml(xml, params, options)
              xml.ConfigurationSet('i:type' => 'NetworkConfigurationSet') do
                xml.ConfigurationSetType 'NetworkConfiguration'
                xml.InputEndpoints do
                  default_endpoints_to_xml(xml, options)
                  tcp_endpoints_to_xml(
                    xml,
                    options[:tcp_endpoints],
                    options[:existing_ports]
                  ) if options[:tcp_endpoints]
                end
                if options[:virtual_network_name] && options[:subnet_name]
                  xml.SubnetNames do
                    xml.SubnetName options[:subnet_name]
                  end
                end
              end
            end
            xml.AvailabilitySetName options[:availability_set_name]
            xml.Label Base64.encode64(params[:vm_name]).strip
            xml.OSVirtualHardDisk do
              xml.MediaLink 'http://' + options[:storage_account_name] + '.blob.core.windows.net/vhds/' + (Time.now.strftime('disk_%Y_%m_%d_%H_%M')) + '.vhd'
              xml.SourceImageName params[:image]
            end
            xml.RoleSize options[:vm_size]
          end
        end
        builder.doc
      end

      def self.provisioning_configuration_to_xml(xml, params, options)
        fingerprint = params[:certificate][:fingerprint]
        if options[:os_type] == 'Linux'
          xml.ConfigurationSet('i:type' => 'LinuxProvisioningConfigurationSet') do
            xml.ConfigurationSetType 'LinuxProvisioningConfiguration'
            xml.HostName params[:vm_name]
            xml.UserName params[:vm_user]
            if params[:password]
              xml.UserPassword params[:password]
              xml.DisableSshPasswordAuthentication 'false'
            end
            if fingerprint
              xml.SSH do
                xml.PublicKeys do
                  xml.PublicKey do
                    xml.Fingerprint fingerprint.to_s.upcase
                    xml.Path "/home/#{params[:vm_user]}/.ssh/authorized_keys"
                  end
                end
                xml.KeyPairs do
                  xml.KeyPair do
                    xml.Fingerprint fingerprint.to_s.upcase
                    xml.Path "/home/#{params[:vm_user]}/.ssh/id_rsa"
                  end
                end
              end
            end
          end
        elsif options[:os_type] == 'Windows'
          xml.ConfigurationSet('i:type' => 'WindowsProvisioningConfigurationSet') do
            xml.ConfigurationSetType 'WindowsProvisioningConfiguration'
            xml.ComputerName params[:vm_name]
            xml.AdminPassword params[:password]
            xml.ResetPasswordOnFirstLogon 'false'
            xml.EnableAutomaticUpdates 'true'
            if enable_winrm?(options[:winrm_transport])
              xml.WinRM do
                xml.Listeners do
                  if options[:winrm_transport].include?('http')
                    xml.Listener do
                      xml.Protocol 'Http'
                    end
                  end
                  if options[:winrm_transport].include?('https')
                    xml.Listener do
                      xml.Protocol 'Https'
                      xml.CertificateThumbprint fingerprint if fingerprint
                    end
                  end
                end
              end
            end
            xml.AdminUsername params[:vm_user]
          end
        end
      end

      def self.default_endpoints_to_xml(xml, options)
        os_type = options[:os_type]
        used_ports = options[:existing_ports]
        endpoints = []
        if os_type == 'Linux'
          preferred_port = '22'
          port_already_opened?(used_ports, options[:ssh_port])
          endpoints << {
            name: 'SSH',
            public_port: options[:ssh_port] || assign_random_port(preferred_port, used_ports),
            protocol: 'TCP',
            local_port: preferred_port
          }
        elsif os_type == 'Windows' && options[:winrm_transport]
          if options[:winrm_transport].include?('http')
            preferred_port = '5985'
            port_already_opened?(used_ports, options[:winrm_http_port])
            endpoints << {
              name: 'WinRm-Http',
              public_port: options[:winrm_http_port] || assign_random_port(preferred_port, used_ports),
              protocol: 'TCP',
              local_port: preferred_port
            }
          end
          if options[:winrm_transport].include?('https')
            preferred_port = '5986'
            port_already_opened?(used_ports, options[:winrm_https_port])
            endpoints << {
              name: 'PowerShell',
              public_port: options[:winrm_https_port] || assign_random_port(preferred_port, used_ports),
              protocol: 'TCP',
              local_port: preferred_port
            }
          end
        end
        endpoints_to_xml(xml, endpoints)
      end

      def self.tcp_endpoints_to_xml(xml, tcp_endpoints, existing_ports = [])
        endpoints = []

        tcp_endpoints.split(',').each do |endpoint|
          ports = endpoint.split(':')
          tcp_ep = {}

          if ports.length > 1
            port_already_opened?(existing_ports, ports[1])

            tcp_ep[:name] = "TCP-PORT-#{ports[1]}"
            tcp_ep[:public_port] = ports[1]
          else
            port_already_opened?(existing_ports, ports[0])

            tcp_ep[:name] = "TCP-PORT-#{ports[0]}"
            tcp_ep[:public_port] = ports[0]
          end

          tcp_ep[:local_port] = ports[0]
          tcp_ep[:protocol] = 'TCP'

          endpoints << tcp_ep
        end
        endpoints_to_xml(xml, endpoints)
      end

      def self.virtual_machines_from_xml(deployXML, cloud_service_name)
        unless deployXML.nil? or deployXML.at_css('Deployment Name').nil?
          instances = deployXML.css('Deployment RoleInstanceList RoleInstance')
          roles = deployXML.css('Deployment RoleList Role')
          ip = deployXML.css('Deployment VirtualIPs VirtualIP')
          vms = []
          instances.each do |instance|
            vm = VirtualMachine.new
            role_name = xml_content(instance, 'RoleName')
            vm.status = xml_content(instance, 'InstanceStatus')
            vm.vm_name = role_name.downcase
            vm.ipaddress = xml_content(ip, 'Address')
            vm.role_size = xml_content(instance, 'InstanceSize')
            vm.hostname = xml_content(instance, 'HostName')
            vm.cloud_service_name = cloud_service_name.downcase
            vm.deployment_name = xml_content(deployXML, 'Deployment Name')
            vm.deployment_status = xml_content(deployXML, 'Deployment Status')
            vm.virtual_network_name = xml_content(
              deployXML.css('Deployment'),
              'VirtualNetworkName'
            )
            roles.each do |role|
              if xml_content(role, 'RoleName') == role_name
                vm.availability_set_name = xml_content(role, 'AvailabilitySetName')
                endpoints_from_xml(role, vm)
                vm.data_disks = data_disks_from_xml(role)
                vm.os_type = xml_content(role, 'OSVirtualHardDisk OS')
                vm.disk_name = xml_content(role, 'OSVirtualHardDisk DiskName')
                vm.media_link = xml_content(role, 'OSVirtualHardDisk MediaLink')
                vm.image = xml_content(role, 'OSVirtualHardDisk SourceImageName')
                break
              end
            end
            vms << vm
          end
          vms
        end
      end

      def self.data_disks_from_xml(rolesXML)
        data_disks = []
        virtual_hard_disks = rolesXML.css('DataVirtualHardDisks DataVirtualHardDisk')
        virtual_hard_disks.each do |disk|
          data_disk = {}
          data_disk[:name] = xml_content(disk, 'DiskName')
          data_disk[:lun] =  xml_content(disk, 'Lun')
          data_disk[:size_in_gb] = xml_content(disk, 'LogicalDiskSizeInGB')
          data_disk[:media_link] = xml_content(disk, 'MediaLink')
          data_disks << data_disk
        end
        data_disks
      end

      def self.endpoints_from_xml(rolesXML, vm)
        vm.tcp_endpoints = []
        vm.udp_endpoints = []
        endpoints = rolesXML.css('ConfigurationSets ConfigurationSet InputEndpoints InputEndpoint')
        endpoints.each do |endpoint|
          lb_name = xml_content(endpoint, 'LoadBalancedEndpointSetName')
          ep = {}
          ep[:name] = xml_content(endpoint, 'Name')
          ep[:vip] = xml_content(endpoint, 'Vip')
          ep[:public_port] = xml_content(endpoint, 'Port')
          ep[:local_port] = xml_content(endpoint, 'LocalPort')
          ep[:protocol] = xml_content(endpoint, 'Protocol')
          server_return = xml_content(endpoint, 'EnableDirectServerReturn')
          ep[:direct_server_return] = server_return if !server_return.empty?
          unless lb_name.empty?
            ep[:protocol] = endpoint.css('Protocol').last.text
            ep[:load_balancer_name] = lb_name
            lb_port = xml_content(endpoint, 'LoadBalancerProbe Port')
            lb_protocol = xml_content(endpoint, 'LoadBalancerProbe Protocol')
            lb_path = xml_content(endpoint, 'LoadBalancerProbe Path')
            lb_interval = xml_content(
              endpoint,
              'LoadBalancerProbe IntervalInSeconds'
            )
            lb_timeout = xml_content(
              endpoint,
              'LoadBalancerProbe TimeoutInSeconds'
            )
            ep[:load_balancer] = {
              port: lb_port,
              path: lb_path,
              protocol: lb_protocol,
              interval: lb_interval,
              timeout: lb_timeout
            }
          end
          if ep[:protocol].downcase == 'tcp'
            vm.tcp_endpoints << ep
          else
            vm.udp_endpoints << ep
          end
        end
      end

      def self.update_role_to_xml(endpoints, vm)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.PersistentVMRole(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.ConfigurationSets do
              xml.ConfigurationSet do
                xml.ConfigurationSetType 'NetworkConfiguration'
                xml.InputEndpoints do
                  endpoints_to_xml(xml, endpoints)
                end
              end
            end
            xml.OSVirtualHardDisk do
            end
          end
        end
        builder.doc.to_xml
      end

      def self.endpoints_to_xml(xml, endpoints)
        endpoints.each do |endpoint|
          endpoint[:load_balancer] ||= {}
          protocol = endpoint[:protocol]
          port = endpoint[:public_port]
          interval = endpoint[:load_balancer][:interval]
          timeout = endpoint[:load_balancer][:timeout]
          path = endpoint[:load_balancer][:path]
          balancer_name = endpoint[:load_balancer_name]
          xml.InputEndpoint do
            xml.LoadBalancedEndpointSetName balancer_name if balancer_name
            xml.LocalPort endpoint[:local_port]
            xml.Name endpoint[:name]
            xml.Port endpoint[:public_port]
            if balancer_name
              xml.LoadBalancerProbe do
                xml.Path path if path
                xml.Port endpoint[:load_balancer][:port] || port
                xml.Protocol endpoint[:load_balancer][:protocol] || 'TCP'
                xml.IntervalInSeconds interval if interval
                xml.TimeoutInSeconds timeout if timeout
              end
            end
            xml.Protocol protocol
            xml.EnableDirectServerReturn endpoint[:direct_server_return] unless endpoint[:direct_server_return].nil?
          end
        end
      end

      def self.add_data_disk_to_xml(vm, options)
        if options[:import] && options[:disk_name].nil?
          Loggerx.error_with_exit "The data disk name is not valid."
        end
        media_link = vm.media_link
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.DataVirtualHardDisk(
            'xmlns' => 'http://schemas.microsoft.com/windowsazure',
            'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance'
          ) do
            xml.HostCaching options[:host_caching] || 'ReadOnly'
            xml.DiskLabel options[:disk_label]
            xml.DiskName options[:disk_name] if options[:import]
            xml.LogicalDiskSizeInGB options[:disk_size] || 100
            unless options[:import]
              disk_name = media_link[/([^\/]+)$/]
              media_link = media_link.gsub(/#{disk_name}/, (Time.now.strftime('disk_%Y_%m_%d_%H_%M')) + '.vhd')
              xml.MediaLink media_link
            end
          end
        end
        builder.doc.to_xml
      end

      private

      def self.port_already_opened?(existing_ports, port)
        return false if existing_ports.nil?
        raise "Port #{port} conflicts with a port already opened. "\
          "Please select a different port." if existing_ports.include?(port)
        false
      end

      def self.assign_random_port(preferred_port, used_ports)
        random_port = nil
        if used_ports.nil? || !used_ports.include?(preferred_port)
          random_port = preferred_port
        else
          random_port = Random.new.rand(10000..65535)
          while(used_ports.include?(random_port.to_s))
            random_port = Random.new.rand(10000..65535)
          end
        end
        random_port
      end

    end
  end
end
