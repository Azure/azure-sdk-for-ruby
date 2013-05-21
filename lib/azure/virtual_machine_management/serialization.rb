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

      def self.virtual_machines_from_xml(deployXML,cloud_service_name)
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
          vm.disk_name = xml_content(osdisk, 'DiskName')
          vm.tcp_endpoints = Array.new
          vm.udp_endpoints = Array.new
          endpoints = rolesXML.css('InstanceEndpoint')
          endpoints.each do |endpoint|
            if xml_content(endpoint, 'Name').downcase == 'ssh'
              vm.ipaddress = xml_content(endpoint, 'Vip')
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
          vm
        end
      end

    end
  end
end