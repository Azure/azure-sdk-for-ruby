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

    end
  end
end
