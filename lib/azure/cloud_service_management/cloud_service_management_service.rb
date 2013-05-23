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
require 'azure/cloud_service_management/serialization'

module Azure
  module CloudServiceManagement
    class CloudServicesManagementService

      # Public: Gets a list of hosted services available under the current subscription.
      #
      # Returns an array of Azure::CloudServiceManagement::CloudService objects
      def self.list_cloud_services
        request_path = "/services/hostedservices"
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.cloud_services_from_xml(response)
      end

    end
  end
end