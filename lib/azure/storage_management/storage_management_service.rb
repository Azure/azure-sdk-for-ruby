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
require 'azure/storage_management/serialization'

module Azure
  module StorageManagement
    class StorageManagementService

      # Public: Get a list of storage accounts available under the current subscription.
      #
      # Returns an array of Azure::StorageManagement::StorageAccount objects
      def self.list_storage_accounts
        request_path = "/services/storageservices"
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.storage_services_from_xml(response)
      end

    end
  end
end
