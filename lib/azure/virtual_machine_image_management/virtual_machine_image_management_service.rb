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
    class VirtualMachineImageManagementService < BaseManagementService
      def initialize
        super()
      end

      # Public: Gets a list of virtual machine images from the server
      #
      # Returns an array of Azure::VirtualMachineImageManagementService objects
      def list_virtual_machine_images
        request_path = '/services/images'
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.virtual_machine_images_from_xml(response)
      end
    end

    class VirtualMachineDiskManagementService < BaseManagementService
      def initialize
        super()
      end

      # Public: Gets a list of Disks from the server.
      #
      # Returns an array of Azure::VirtualMachineDiskManagementService objects
      def list_virtual_machine_disks
        request_path = '/services/disks'
        request = ManagementHttpRequest.new(:get, request_path, nil)
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
        Loggerx.info "Deleting Disk \"#{disk_name}\". "
        path = "/services/disks/#{disk_name}"
        request = ManagementHttpRequest.new(:delete, path)
        request.call
      end
    end
  end
end
