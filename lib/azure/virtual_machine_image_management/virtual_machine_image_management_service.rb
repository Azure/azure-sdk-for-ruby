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
require 'azure/virtual_machine_image_management/serialization'

module Azure
  module VirtualMachineImageManagement
    class VirtualMachineImageManagementService < BaseManagement::BaseManagementService

      # Public: Gets a list of virtual machine images from the server
      #
      # Returns an array of Azure::VirtualMachineImageManagement::VirtualMachineImage objects
      def list_virtual_machine_images
        list_os_images + list_vm_images
      end

      # Private: Gets a list of the operating system images that is associated with the specified subscription
      #
      # See http://msdn.microsoft.com/en-us/library/azure/jj157191.aspx
      #
      # Returns an array of Azure::VirtualMachineImageManagement::VirtualMachineImage objects
      def list_os_images
        request_path = '/services/images'
        request = client.management_request(:get, request_path, nil)
        response = request.call
        Serialization.virtual_machine_images_from_xml(response)
      end

      # Private: Gets a list of the VM Images that is associated with the specified subscription
      #
      # See http://msdn.microsoft.com/en-us/library/azure/dn499770.aspx
      #
      # Returns an array of Azure::VirtualMachineImageManagement::VirtualMachineImage objects
      def list_vm_images
        request_path = '/services/vmimages'
        request = client.management_request(:get, request_path)
        response = request.call
        Serialization.virtual_machine_vm_images_from_xml(response)
      end
    end

    class VirtualMachineDiskManagementService < BaseManagement::BaseManagementService

      # Public: Gets a list of Disks from the server.
      #
      # Returns an array of Azure::VirtualMachineDiskManagementService objects
      def list_virtual_machine_disks
        request_path = '/services/disks'
        request = client.management_request(:get, request_path)
        response = request.call
        Serialization.disks_from_xml(response)
      end

      def get_virtual_machine_disk(disk_name)
        disk = list_virtual_machine_disks.select { |x| x.name == disk_name }
        disk.first
      end

      # Public: Deletes the specified data or operating system disk from the image repository.
      #
      # Returns None
      def delete_virtual_machine_disk(disk_name)
        Azure::Loggerx.info "Deleting Disk \"#{disk_name}\". "
        path = "/services/disks/#{disk_name}"
        request = client.management_request(:delete, path)
        request.call
      end
    end
  end
end

Azure::VirtualMachineImageManagementService = Azure::VirtualMachineImageManagement::VirtualMachineImageManagementService
