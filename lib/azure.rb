#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
module Azure; end

require 'azure/core'
require 'azure/blob/blob_service'
require 'azure/queue/queue_service'
require 'azure/service_bus/service_bus_service'
require 'azure/service_bus/empty_rule_action'
require 'azure/service_bus/sql_rule_action'
require 'azure/service_bus/sql_filter'
require 'azure/service_bus/true_filter'
require 'azure/service_bus/correlation_filter'
require 'azure/table/table_service'
require 'azure/table/batch'
require 'azure/table/query'
require 'azure/core/utility'
require 'azure/base_management/management_http_request'
require 'azure/base_management/sql_management_http_request'
require 'azure/base_management/base_management_service'
require 'azure/virtual_machine_image_management/virtual_machine_image_management_service'
require 'azure/virtual_machine_management/virtual_machine_management_service'
require 'azure/storage_management/storage_management_service'
require 'azure/cloud_service_management/cloud_service_management_service'
require 'azure/base_management/location'
require 'azure/sql_database_management/sql_database_management_service'
require 'azure/virtual_network_management/virtual_network_management_service'

# add some aliases for convenience
Azure::BlobService = Azure::Blob::BlobService
Azure::QueueService = Azure::Queue::QueueService
Azure::TableService = Azure::Table::TableService
Azure::ServiceBusService = Azure::ServiceBus::ServiceBusService
Azure::VirtualMachineImageManagementService = Azure::VirtualMachineImageManagement::VirtualMachineImageManagementService
Azure::BaseManagementService = Azure::BaseManagement::BaseManagementService
Azure::CloudServiceManagementService = Azure::CloudServiceManagement::CloudServiceManagementService
Azure::StorageManagementService = Azure::StorageManagement::StorageManagementService
Azure::VirtualMachineManagementService = Azure::VirtualMachineManagement::VirtualMachineManagementService
Azure::SqlDatabaseManagementService = Azure::SqlDatabaseManagement::SqlDatabaseManagementService
Azure::VirtualNetworkManagementService = Azure::VirtualNetworkManagement::VirtualNetworkManagementService
