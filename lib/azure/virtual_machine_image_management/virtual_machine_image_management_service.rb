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
require "azure/virtual_machine_image_management/serialization"

module Azure
  module VirtualMachineImageManagement
    class VirtualMachineImageManagementService
      attr_accessor :os_type, :name, :category

      # Public: Get a list of Images from the server
      #
      # Returns an array of Azure::VirtualMachineImageService objects
      def self.list_virtual_machine_images
        request_path = "/services/images"
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.virtual_machine_images_from_xml(response)
      end

      # Public: Get operating system type of image.
      #
      # Returns Linux or Windows
      def self.get_os_type(image_name)
        image = list_virtual_machine_images.select{|x|  x.name == image_name}.first
        Loggerx.error_with_exit "The virtual machine image source is not valid." unless image
        image.os_type
      end
 
    end

    class VirtualMachineDiskManagementService
      attr_accessor :name

      # Public: Deletes the specified data or operating system disk from the image repository.
      #
      # Returns None
      def self.delete_disk(disk_name)
        Loggerx.info "Deleting Disk #{disk_name}"
        path = "/services/disks/#{disk_name}"
        request = ManagementHttpRequest.new(:delete, path)
        request.call
      end

    end
  end
end

