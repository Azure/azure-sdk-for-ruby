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
    class VirtualMachineManagementService < BaseManagementService
      def initialize
        super()
      end

      # Public: Get a lists of virtual machines available under the current subscription.
      #
      # Returns an list of Azure::VirtualMachineManagement::VirtualMachine instances.
      def list_virtual_machines(*cloud_service_names)
        roles = []
        cloud_service_names.flatten!
        if cloud_service_names.empty?
          cloud_service = Azure::CloudServiceManagementService.new
          cloud_service_names = cloud_service.list_cloud_services.map(&:name)
        end
        cloud_service_names.each do |cloud_service_name|
          request_path = "/services/hostedservices/#{cloud_service_name}/deploymentslots/production"
          request = ManagementHttpRequest.new(:get, request_path)
          request.warn = true
          response = request.call
          roles << Serialization.virtual_machines_from_xml(response, cloud_service_name)
        end
        roles.flatten.compact
      end

      # Public: Gets a virtual machine based on the provided name and cloud service name.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # Returns an  Azure::VirtualMachineManagement::VirtualMachine instance.
      def get_virtual_machine(name, cloud_service_name)
        server = list_virtual_machines(cloud_service_name).select { |x| x.vm_name == name.downcase }
        server.first
      end

      # Public: Provisions a virtual machine based on the supplied configuration.
      #
      # ==== Attributes
      #
      # * +params+    - Hash.  parameters.
      # * +options+   - Hash.  Optional parameters.
      # * +add_role+  - true/false. Optional Parameter. Default is false
      #
      #  ==== Params
      #
      # Accepted key/value pairs are:
      # * +:vm_name+        - String.  Name of virtual machine.
      # * +:vm_user+        - String.  User name for the virtual machine instance.
      # * +:password+       - String.  A description for the hosted service.
      # * +:image+          - String.  Name of the disk image to use to create the virtual machine.
      # * +:location+       - String. The location where the virtual machine will be created.
      # * +:affinity_group_name - String. The affinity group name to be used
      # for the cloud service and the storage account if these do not exist.
      #
      #  ==== Options
      #
      # Accepted key/value pairs are:
      # * +:storage_account_name+     - String. Name of storage account.
      # * +:cloud_service_name+       - String. Name of cloud service.
      # * +:deployment_name+          - String. A name for the deployment.
      # * +:tcp_endpoints+            - String. Specifies the internal port and external/public port separated by a colon.
      #   You can map multiple internal and external ports by separating them with a comma.
      # * +:ssh_private_key_file+     - String. Path of private key file.
      # * +:ssh_certificate_file+     - String. Path of certificate file.
      # * +:ssh_port+                 - Integer. Specifies the SSH port number.
      # * +:winrm_http_port           - Integer. Specifies the WinRM HTTP port number.
      # * +:winrm_https_port          - Integer. Specifies the WinRM HTTPS port number.
      # * +:vm_size+                  - String. Specifies the size of the virtual machine instance.
      # * +:winrm_transport+          - Array. Specifies WINRM transport protocol.
      # * +:availability_set_name+    - String. Specifies the availability set name.
      #
      #  ==== add_role
      #
      # Accepted values are:
      # * +false+   - Will add a new deployment in a cloud service.
      # * +true+    - Will add a new role to a cloud service. Atleast one
      # deployment should exist before you can add a role.
      #
      # Returns Azure::VirtualMachineManagement::VirtualMachine objects of newly created instance.
      #
      # See:
      # http://msdn.microsoft.com/en-us/library/windowsazure/jj157194.aspx
      # http://msdn.microsoft.com/en-us/library/windowsazure/jj157186.aspx
      def create_virtual_machine(params, options = {})
        options[:os_type] = get_os_type(params[:image])
        validate_deployment_params(params, options)
        options[:deployment_name] ||= options[:cloud_service_name]
        Loggerx.info 'Creating deploymnent...'
        options[:cloud_service_name] ||= generate_cloud_service_name(params[:vm_name])
        options[:storage_account_name] ||= generate_storage_account_name(params[:vm_name])
        optionals = {}
        if options[:virtual_network_name]
          virtual_network_service = Azure::VirtualNetworkManagementService.new
          virtual_networks = virtual_network_service.list_virtual_networks.select { |x| x.name == options[:virtual_network_name] }
          if virtual_networks.empty?
            Loggerx.error_with_exit "Virtual network #{options[:virtual_network_name]} doesn't exists"
          else
            optionals[:affinity_group_name] = virtual_networks.first.affinity_group
          end
        elsif options[:affinity_group_name]
          optionals[:affinity_group_name] = options[:affinity_group_name]
        else
          optionals[:location] = params[:location]
        end
        cloud_service = Azure::CloudServiceManagementService.new
        cloud_service.create_cloud_service(options[:cloud_service_name], optionals)
        cloud_service.upload_certificate(options[:cloud_service_name], params[:certificate]) unless params[:certificate].empty?
        Azure::StorageManagementService.new.create_storage_account(options[:storage_account_name], optionals)
        body = Serialization.deployment_to_xml(params, options)
        path = "/services/hostedservices/#{options[:cloud_service_name]}/deployments"
        Loggerx.info 'Deployment in progress...'
        request = ManagementHttpRequest.new(:post, path, body)
        request.call
        get_virtual_machine(params[:vm_name], options[:cloud_service_name])
      rescue Exception => e
        e.message
      end

      # Public: Add a new role to a cloud service. Atleast one deployment should exist before you can add a role.
      #
      # ==== Attributes
      #
      # * +params+    - Hash.  parameters.
      # * +options+   - Hash.  Optional parameters.
      #
      #  ==== Params
      #
      # Accepted key/value pairs are:
      # * +:vm_name+             - String.  Name of virtual machine.
      # * +:vm_user+             - String.  User name for the virtual machine instance.
      # * +:password+            - String.  A description for the hosted service.
      # * +:image+               - String.  Name of the disk image to use to create the virtual machine.
      # * +:cloud_service_name+  - String. Name of cloud service.
      #
      #  ==== Options
      #
      # Accepted key/value pairs are:
      # * +:storage_account_name+  - String. Name of storage account.
      # * +:tcp_endpoints+         - String. Specifies the internal port and external/public port separated by a colon.
      #   You can map multiple internal and external ports by separating them with a comma.
      # * +:ssh_private_key_file+  - String. Path of private key file.
      # * +:ssh_certificate_file+  - String. Path of certificate file.
      # * +:ssh_port+              - Integer. Specifies the SSH port number.
      # * +:winrm_http_port        - Integer. Specifies the WinRM HTTP port number.
      # * +:winrm_https_port       - Integer. Specifies the WinRM HTTPS port number.
      # * +:vm_size+               - String. Specifies the size of the virtual machine instance.
      # * +:winrm_transport+       - Array. Specifies WINRM transport protocol.
      #
      # Returns Azure::VirtualMachineManagement::VirtualMachine objects of newly created instance.
      #
      # See:
      # http://msdn.microsoft.com/en-us/library/windowsazure/jj157186.aspx
      def add_role(params, options = {})
        options[:os_type] = get_os_type(params[:image])
        validate_deployment_params(params, options, true)
        cloud_service = Azure::CloudServiceManagementService.new
        cloud_service = cloud_service.get_cloud_service_properties(params[:cloud_service_name])
        deployment_name = cloud_service.deployment_name
        Loggerx.error_with_exit "Deployment doesn't exists." if cloud_service && deployment_name.empty?
        others = {}
        if cloud_service.location
          others[:location] = cloud_service.location
        elsif cloud_service.affinity_group
          others[:affinity_group_name] = cloud_service.affinity_group
        end
        options[:storage_account_name] ||= generate_storage_account_name(params[:vm_name])
        Azure::StorageManagementService.new.create_storage_account(options[:storage_account_name], others)
        Loggerx.info 'Deployment exists, adding role...'
        existing_ports = []
        cloud_service.virtual_machines[deployment_name.to_sym].each do |vm|
          vm.tcp_endpoints.each do |endpoint|
            existing_ports << endpoint[:public_port]
          end
        end
        options[:existing_ports] = existing_ports
        body = Serialization.role_to_xml(params, options).to_xml
        path = "/services/hostedservices/#{cloud_service.name}/deployments/#{deployment_name}/roles"
        Loggerx.info 'Deployment in progress...'
        request = ManagementHttpRequest.new(:post, path, body)
        request.call
        get_virtual_machine(params[:vm_name], cloud_service.name)
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
      def delete_virtual_machine(vm_name, cloud_service_name)
        virtual_machines = list_virtual_machines(cloud_service_name)
        vm = virtual_machines.select { |x| x.vm_name == vm_name }.first
        if vm
          if virtual_machines.size == 1
            cloud_service = Azure::CloudServiceManagementService.new
            cloud_service.delete_cloud_service_deployment(cloud_service_name)
            cloud_service.delete_cloud_service(cloud_service_name)
          else
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roles/#{vm.vm_name}"
            Loggerx.info "Deleting virtual machine #{vm_name}. \n"
            request = ManagementHttpRequest.new(:delete, path)
            request.call
          end
          Loggerx.info "Waiting for disk to be released.\n"
          disk_name = vm.disk_name
          disk_management_service = VirtualMachineDiskManagementService.new
          # Wait for 180s for disk to be released.
          disk = nil
          18.times do
            print '# '
            disk = disk_management_service.get_virtual_machine_disk(disk_name)
            unless disk.attached
              print "Disk released.\n"
              break
            end
            sleep 10
          end
          if disk.attached
            Loggerx.error "\nCannot delete disk #{disk_name}."
          else
            disk_management_service.delete_virtual_machine_disk(disk_name)
          end
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
      def shutdown_virtual_machine(vm_name, cloud_service_name)
        vm = get_virtual_machine(vm_name, cloud_service_name)
        if vm
          if %w(StoppedVM StoppedDeallocated).include?(vm.status)
            Loggerx.error 'Cannot perform the shutdown operation on a stopped virtual machine.'
          elsif vm.deployment_status == 'Running'
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
            body = Serialization.shutdown_virtual_machine_to_xml
            Loggerx.info "Shutting down virtual machine \"#{vm.vm_name}\" ..."
            request = ManagementHttpRequest.new(:post, path, body)
            request.call
          else
            Loggerx.error 'Cannot perform the shutdown operation on a stopped deployment.'
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
      def start_virtual_machine(vm_name, cloud_service_name)
        vm = get_virtual_machine(vm_name, cloud_service_name)
        if vm
          if vm.status == 'ReadyRole'
            Loggerx.error 'Cannot perform the start operation on started virtual machine.'
          else
            path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
            body = Serialization.start_virtual_machine_to_xml
            Loggerx.info "Starting virtual machine \"#{vm.vm_name}\" ..."
            request = ManagementHttpRequest.new(:post, path, body)
            request.call
          end
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      # Public: Restarts the specified virtual machine.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157197.aspx
      #
      # Returns NONE
      def restart_virtual_machine(vm_name, cloud_service_name)
        vm = get_virtual_machine(vm_name, cloud_service_name)
        if vm
          path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roleinstances/#{vm.vm_name}/Operations"
          body = Serialization.restart_virtual_machine_to_xml
          Loggerx.info "Restarting virtual machine \"#{vm.vm_name}\" ..."
          request = ManagementHttpRequest.new(:post, path, body)
          request.call
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      # Public: Add/Update endpoints of virtual machine.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      # * +input_endpoints+     - Hash. A hash of the name/value pairs for the endpoint.
      #
      # ==== Endpoint
      #
      # Accepted key/value pairs are:
      # * +:local_port+   - String. Specifies the internal port on which the
      #   Virtual Machine is listening.
      # * +:public_port+  - String. Specifies the external port to use for
      #   the endpoint.
      # * +:name+         - String. Specifies the name of the external endpoint.
      # * +load_balancer_name+  - String. Specifies a name for a set of
      #   load-balanced endpoints.
      # * +:protocol+              - String. Specifies the transport protocol
      #   for the endpoint. Possible values are: TCP, UDP
      # * +:direct_server_return+  - String. Specifies whether the endpoint
      #   uses Direct Server Return. Possible values are: true, false (optional)
      # * +:load_balancer          - Hash. Contains properties that define the
      #   endpoint settings that the load balancer uses to monitor the
      #   availability of the Virtual Machine (optional)
      #
      # === Load balancer
      #
      # Accepted key/value pairs are:
      # * +:port+   - String. Specifies the internal port on which the
      #   Virtual Machine is listening.
      # * +:protocol+  - String. Specifies the protocol to use to inspect the
      #   availability status of the virtual machine.
      # * +:interval+  - String. Specifies the interval for the load balancer
      #   probe in seconds. (optional)
      # * +:timeout+   - String. Specifies the timeout for the load balancer
      #   probe in seconds. (optional)
      # * +:path+      - String. Specifies the relative path to inspect to
      #   determine the availability status of the Virtual Machine. (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157187.aspx
      #
      # Returns NONE
      def update_endpoints(vm_name, cloud_service_name, *input_endpoints)
        input_endpoints.flatten!
        vm = get_virtual_machine(vm_name, cloud_service_name)
        if vm
          path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roles/#{vm_name}"
          endpoints = vm.tcp_endpoints + vm.udp_endpoints
          input_endpoints.each do |iep|
            endpoints.delete_if { |ep| iep[:name].downcase == ep[:name].downcase }
          end
          endpoints += input_endpoints
          body = Serialization.update_role_to_xml(endpoints, vm)
          request = ManagementHttpRequest.new(:put, path, body)
          Loggerx.info "Updating endpoints of virtual machine #{vm.vm_name} ..."
          request.call
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      # Public: Delete endpoint of virtual machine.
      #
      # ==== Attributes
      #
      # * +name+                - String. Virtual machine name.
      # * +cloud_service_name+  - String. Cloud service name.
      # * +endpoint_name+       - String. Name of endpoint.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157187.aspx
      #
      # Returns NONE
      def delete_endpoint(vm_name, cloud_service_name, endpoint_name)
        vm = get_virtual_machine(vm_name, cloud_service_name)
        if vm
          path = "/services/hostedservices/#{vm.cloud_service_name}/deployments/#{vm.deployment_name}/roles/#{vm_name}"
          endpoints = vm.tcp_endpoints + vm.udp_endpoints
          endpoints.delete_if { |ep| endpoint_name.downcase == ep[:name].downcase }
          body = Serialization.update_role_to_xml(endpoints, vm)
          request = ManagementHttpRequest.new(:put, path, body)
          Loggerx.info "Deleting virtual machine endpoint #{endpoint_name} ..."
          request.call
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      # Public: adds a data disk to a virtual machine.
      #
      # ==== Attributes
      #
      # * +cloud_service_name+  - String. Cloud service name.
      # * +vm_name+           - String. Virtual machine name.
      # * +options+             - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:import+        - Boolean. if true, then allows to use an existing
      #  disk by disk name. if false, then create and attach new data disk.
      # * +:disk_name+     - String. Specifies the name of the disk.
      #   Reqruied if using existing disk.
      # * +:host_caching+  - String. Specifies the caching behavior of data disk
      #   The default is ReadOnly. Possible values are: None, ReadOnly, ReadWrite
      # * +:disk_label+    - String. Specifies the description of the data disk.
      # * +:disk_size+     - String. Specifies the size of disk in GB
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157199.aspx
      #
      # Returns None
      def add_data_disk(vm_name, cloud_service_name, options = {})
        options[:import] ||= false
        vm = get_virtual_machine(vm_name, cloud_service_name)
        if vm
          path = "/services/hostedservices/#{cloud_service_name}/deployments/#{vm.deployment_name}/roles/#{vm_name}/DataDisks"
          body = Serialization.add_data_disk_to_xml(vm, options)
          Loggerx.info "Adding data disk to virtual machine #{vm_name} ..."
          request = ManagementHttpRequest.new(:post, path, body)
          request.call
        else
          Loggerx.error "Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"."
        end
      end

      private

      # Private: Gets the operating system type of an image.
      #
      # Returns Linux or Windows
      def get_os_type(image_name)
        image_service = Azure::VirtualMachineImageManagementService.new
        image = image_service.list_virtual_machine_images.select { |x| x.name == image_name }.first
        Loggerx.error_with_exit 'The virtual machine image source is not valid.' unless image
        image.os_type
      end

      def generate_cloud_service_name(vm_name)
        random_string(vm_name + '-service-')
      end

      def generate_storage_account_name(vm_name)
        random_string(vm_name + 'storage').gsub(/[^0-9a-z ]/i, '').downcase[0..23]
      end

      def validate_deployment_params(params, options, add_role = false)
        errors = []
        params_keys = %w(vm_name image vm_user)
        params_keys += ['password'] if options[:os_type] == 'Windows'
        options_keys = []
        options_keys = %w(private_key_file certificate_file) if certificate_required?(params, options)
        if add_role
          params_keys += ['cloud_service_name']
        else
          params_keys += ['location']
        end
        params_keys.each do |key|
          errors << key if params[key.to_sym].nil?
        end

        options_keys.each do |key|
          errors << key if options[key.to_sym].nil?
        end

        if errors.empty?
          validate_location(params[:location]) unless add_role
          validate_role_size(options[:vm_size])
          params[:certificate] = {}
          if certificate_required?(params, options)
            begin
              params[:certificate][:key] = OpenSSL::PKey.read File.read(options[:private_key_file])
              params[:certificate][:cert] = OpenSSL::X509::Certificate.new File.read(options[:certificate_file])
              params[:certificate][:fingerprint] = export_fingerprint(params[:certificate][:cert])
            rescue Exception => e
              Loggerx.error_with_exit e.message
            end
          end
        else
          Loggerx.error_with_exit "You did not provide a valid '#{errors.uniq.join(", ")}' value."
        end
      end

      def certificate_required?(params, options)
        if options[:os_type] == 'Linux'
          (params[:password].nil? or (!options[:certificate_file].nil? && !options[:private_key_file].nil?))
        else
          winrm_with_https(options)
        end
      end

      def winrm_with_https(options)
        if options[:os_type] == 'Windows'
          options[:winrm_transport] && options[:winrm_transport].include?('https') && options[:certificate_file] && options[:private_key_file]
        end
      end

      def validate_role_size(vm_size)
        valid_role_sizes = %w(ExtraSmall Small Medium Large ExtraLarge A5 A6 A7 Basic_A0 Basic_A1 Basic_A2 Basic_A3 Basic_A4)
        if vm_size && !valid_role_sizes.include?(vm_size)
          Loggerx.error_with_exit "Value '#{vm_size}' specified for parameter 'vm_size' is invalid. Allowed values are 'ExtraSmall,Small,Medium,Large,ExtraLarge,A6,A7'"
        end
      end

      def validate_location(location_name)
        locations = Azure::BaseManagementService.new.list_locations
        location = locations.select { |loc| loc.name.downcase == location_name.downcase }.first
        if location.nil?
          Loggerx.error_with_exit "Value '#{location_name}' specified for parameter 'location' is invalid. Allowed values are #{locations.map(&:name).join(',')}"
        elsif !location.available_services.include?('PersistentVMRole')
          Loggerx.error_with_exit "Persistentvmrole not enabled for \"#{location.name}\". Try different location"
        end
      end
    end
  end
end
