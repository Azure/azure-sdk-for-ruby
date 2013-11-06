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
require "azure/virtual_machine/serialization"

module Azure
  module VirtualMachine
    
    class ImageService < BaseManagementService

      # Public: Gets a list of virtual machine images from the server
      #
      # Returns an array of Azure::VirtualMachineImageManagementService objects
      def list_virtual_machine_images
        response = get("/services/images")
        Serialization.virtual_machine_images_from_xml(response)
      end
 
    end

  end
end

