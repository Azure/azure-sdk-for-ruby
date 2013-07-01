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

      # Public: Get a lists of virtual machines available under the current subscription.
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

      # Public: Gets a virtual machine based on the provided name and cloud service name.
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

      # Public: Provisions a virtual machine based on the supplied configuration.
      #
      # ==== Attributes
      #
      # * +params+    - Hash.  parameters.
      # * +Options+    - Hash.  Optional parameters.
      #
      #  ==== Params
      #
      # Accepted key/value pairs are:
      # * +:vm_name+        - String.  Name of virtual machine.
      # * +:ssh_user+       - String.  SSH user name for the virtual machine instance.
      # * +:password+       - String.  A description for the hosted service.
      # * +:image+          - String.  Name of the disk image to use to create the virtual machine.
      #
      #  ==== Options
      #
      # Accepted key/value pairs are:
      # * +:storage_account_name+     - String. Name of storage account.
      # * +:cloud_service_name+       - String. Name of cloud service.
      # * +:deployment_name+          - String. A name for the deployment.
      # * +:tcp_endpoints+            - String. Specifies the external port and internal port separated by a colon.
      # * +:service_location+         - String. Specifies the target certificate store location on the virtual machine.
      # * +:ssh_private_key_file+     - String. Path of private key file.
      # * +:ssh_certificate_file+     - String. Path of certificate file.
      #
      # Returns Azure::VirtualMachineManagement::VirtualMachine objects of newly created instance.
      def self.create_virtual_machine(params, options={})
        options[:os_type] = Azure::VirtualMachineImageService.get_os_type(params[:image])
        validate_deployment_params(params, options)
        options[:cloud_service_name] = generate_cloud_service_name(params[:vm_name]) unless options[:cloud_service_name]
        options[:storage_account_name] = generate_storage_account_name(params[:vm_name]) unless options[:storage_account_name] 
        Azure::CloudService.create_cloud_service(options[:cloud_service_name], :location => options[:location])
        Azure::CloudService.upload_certificate(options[:cloud_service_name],params[:certificate]) if params[:certificate]
        Azure::StorageService.create_storage_account(options[:storage_account_name], :location=> options[:location])

        body = Serialization.deployment_to_xml(params,options)
        path = "/services/hostedservices/#{options[:cloud_service_name]}/deployments"
        Loggerx.info "Deployment in progress..."
        request = ManagementHttpRequest.new(:post, path, body)
        request.call

        server = find(params[:vm_name],options[:cloud_service_name])
        server.os_type = options[:os_type]
        server
      rescue Exception => e
        e.message
      end

      # Public: Deletes the deployment, cloud service and disk.
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
          sleep 60
          VirtualMachineDiskManagementService.delete_disk(vm.disk_name)
        else
          Loggerx.error "Cannot find virtual machine #{vm_name} under cloud service #{cloud_service_name}"
        end
      rescue 
      end

      # Public: Shuts down the specified virtual machine.
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
          if vm.status == 'StoppedVM'
            Loggerx.error "Cannot perform the shutdown operation on a stopped virtual machine."
          elsif vm.deployment_status == 'Running'
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
            body = Serialization.shutdown_virtual_machine_to_xml
            Loggerx.info "Shutting down virtual machine \"#{vm.vm_name}\" ..."
            request = ManagementHttpRequest.new(:post, path, body)
            request.call
          else
            Loggerx.error "Cannot perform the shutdown operation on a stopped deployment."
          end
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\". "
        end
      end

      # Public: Starts the specified virtual machine.
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
          if vm.status == 'ReadyRole'
            Loggerx.error "Cannot perform the start operation on started virtual machine."  
          elsif vm.deployment_status == 'Running'
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
            body = Serialization.start_virtual_machine_to_xml
            Loggerx.info "Starting virtual machine \"#{vm.vm_name}\" ..."
            request = ManagementHttpRequest.new(:post, path, body)
            request.call
          else
            Loggerx.error "Cannot perform the start operation on a stopped deployment."
          end
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      # Public: Deletes the specified deployment.
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

      protected

      def self.generate_cloud_service_name(vm_name)
        random_string(vm_name+'-service-')
      end

      def self.generate_storage_account_name(vm_name)
        random_string(vm_name+'storage').gsub(/[^0-9a-z ]/i, '').downcase[0..23] 
      end

      def self.validate_deployment_params(params, options)
        errors = []
        params_keys = ["vm_name", "image"]
        if options[:os_type] == "Windows"
          params_keys += ["password", "admin_user"]
        else
          params_keys <<  "ssh_user"
        end
        options_keys = []
        options_keys = ['private_key_file','certificate_file'] if certificate_required?(params, options)

        params_keys.each do |key|
          errors << key if  params[key.to_sym].nil?
        end
        
        options_keys.each do |key|
          errors << key if  options[key.to_sym].nil?
        end

        if errors.empty?
          params[:certificate]={}
          if params[:password] && options[:os_type] == 'Linux'
            params[:certificate] = nil
          elsif !winrm_with_https(options) && options[:os_type] == 'Windows'
            params[:certificate] = nil
          else
            begin
              params[:certificate][:key] = OpenSSL::PKey.read File.read(options[:private_key_file])
              params[:certificate][:cert] = OpenSSL::X509::Certificate.new File.read(options[:certificate_file])
            rescue Exception =>e
              Loggerx.error_with_exit e.message
            end
          end
          params[:certificate][:fingerprint] = export_fingerprint(params[:certificate][:cert]) if params[:certificate]
        else
          Loggerx.error_with_exit "You did not provide a valid '#{errors.join(", ")}' value."
        end
      end

      def self.certificate_required?(params, options)
        ((params[:password].nil? && options[:os_type]=='Linux') or enable_winrm?(options[:winrm_transport]))
      end

      def self.winrm_with_https(options)
        !options[:winrm_transport].nil? && options[:winrm_transport].include?('https')
      end

    end
  end
end
