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
require 'azure/virtual_machine_management/serialization'
include Azure::VirtualMachineImageManagement

module Azure
  module VirtualMachineManagement
    class VirtualMachineManagementService

      # Public: Get a lists of virtual machine available under the current subscription.
      #
      # Returns an list of Azure::VirtualMachineManagement::VirtualMachine instances.
      def self.list_virtual_machines
        roles = []
        cloud_services = Azure::CloudService.list_cloud_services
        cloud_services.each do |cloud_service|
          request_path = "/services/hostedservices/#{cloud_service.name}/deploymentslots/production"
          request = ManagementHttpRequest.new(:get, request_path)
          request.warn = true
          response = request.call
          roles << Serialization.virtual_machines_from_xml(response,cloud_service.name)
        end      
        roles.compact
      end

      # Public: Get a virtual machine for given name and cloud service name.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # Returns an  Azure::VirtualMachineManagement::VirtualMachine instance.
      def self.find(name, cloud_service_name)
        server =  VirtualMachineManagementService.list_virtual_machines.select {|x| x.vm_name == name && x.cloud_service_name == cloud_service_name}
        server.first
      end

      # Public: deletes the deployment, cloud service and disk.
      #
      # ==== Attributes
      #
      # * +vm_name+  - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg441305.aspx
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157179.aspx
      #
      # Returns NONE
      def self.delete_virtual_machine(vm_name, cloud_service_name)
        vm = find(vm_name,cloud_service_name)
        if vm
          delete_virtual_machine_deployment(cloud_service_name)
          Azure::CloudService.delete_cloud_service(cloud_service_name)
          Loggerx.info "Waiting for disk to be released.\n"
          sleep 30
          VirtualMachineDiskManagementService.delete_disk(vm.disk_name)
        else
          Loggerx.error "Couldn't found Virtual machine #{vm_name} under cloud service #{cloud_service_name}"
        end
      rescue Exception => e
        puts e.message
      end

      # Public: shuts down the specified virtual machine.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157195.aspx
      #
      # Returns NONE
      def self.shutdown(vm_name, cloud_service_name)
        vm = find(vm_name, cloud_service_name)
        if vm
          if vm.deployment_status == 'Running'
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
            body = Serialization.shutdown_virtual_machine_to_xml
            Loggerx.info "Shutting down virtual machine \"#{vm.vm_name}\" ..."
            request = ManagementHttpRequest.new(:post, path, body)
            request.call
          else
            Loggerx.error "Cannot perform the shutdown operation on a stopped deployment."
          end
        else
          Loggerx.error "Couldn't found Virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\". "
        end
      end

      # Public: starts the specified virtual machine.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157189.aspx
      #
      # Returns NONE
      def self.start(vm_name, cloud_service_name)
        vm = find(vm_name, cloud_service_name)
        if vm
          if vm.deployment_status == 'Running'
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
            body = Serialization.start_virtual_machine_to_xml
            Loggerx.info "Starting virtual machine \"#{vm.vm_name}\" ..."
            request = ManagementHttpRequest.new(:post, path, body)
            request.call
          else
            Loggerx.error "Cannot perform the start operation on a stopped deployment."
          end
        else
          Loggerx.error "Couldn't found Virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      # Public: deletes the specified deployment.
      #
      # ==== Attributes
      #
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/ee460815.aspx
      #
      # Returns NONE
      def self.delete_virtual_machine_deployment(cloud_service_name)
        request_path= "/services/hostedservices/#{cloud_service_name}/deploymentslots/production"
        request = ManagementHttpRequest.new(:delete, request_path)
        Loggerx.info "Deleting deployment of cloud service \"#{cloud_service_name}\" ..."
        request.call
      end

    end
  end
end
