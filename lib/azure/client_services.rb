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

module Azure
  # The Azure::Configurable module provides quick access to the Azure services and initializes the service to use
  # the configuration of the class it's mixed into.
  module ClientServices
    # Azure Blob service configured for this Azure client instance
    # @return [Azure::Blob::BlobService]
    def blobs(options = {})
      @blobs ||= Azure::Blob::BlobService.new(default_client(options))
    end

    # Azure Queue service configured for this Azure client instance
    # @return [Azure::Queue::QueueService]
    def queues(options = {})
      @queues ||= Azure::Queue::QueueService.new(default_client(options))
    end

    # Azure Table service configured for this Azure client instance
    # @return [Azure::Table::TableService]
    def tables(options = {})
      @tables ||= Azure::Table::TableService.new(default_client(options))
    end

    # Azure Service Bus service configured for this Azure client instance
    # @return [Azure::ServiceBus::ServiceBusService]
    def service_bus(options = {})
      @sb ||= Azure::ServiceBus::ServiceBusService.new(service_bus_host, default_client(options))
    end

    # Azure Virtual Image management service configured for this Azure client instance
    # @return [Azure::VirtualMachineImageManagement::VirtualMachineImageManagementService]
    def vm_image_management(options = {})
      @vm_image_mgmt ||= Azure::VirtualMachineImageManagement::VirtualMachineImageManagementService.new(default_client(options))
    end

    # Azure Virtual Machine disk management service configured for this Azure client instance
    # @return [Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService]
    def vm_disk_management(options = {})
      @vm_disk_mgmt ||= Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService.new(default_client(options))
    end

    # Azure Virtual Machine management service configured for this Azure client instance
    # @return [Azure::VirtualMachineManagement::VirtualMachineManagementService]
    def vm_management(options = {})
      @vm_mgmt ||= Azure::VirtualMachineManagement::VirtualMachineManagementService.new(default_client(options))
    end

    # Azure SQL Database management service configured for this Azure client instance
    # @return [Azure::SqlDatabaseManagement::SqlDatabaseManagementService]
    def sql_database_management(options = {})
      @sql_mgmt ||= Azure::SqlDatabaseManagement::SqlDatabaseManagementService.new(default_client(options))
    end

    # Azure Network management service configured for this Azure client instance
    # @return [Azure::VirtualNetworkManagement::VirtualNetworkManagementService]
    def network_management(options = {})
      @network_mgmt ||= Azure::VirtualNetworkManagement::VirtualNetworkManagementService.new(default_client(options))
    end

    # Azure Cloud Service management service configured for this Azure client instance
    # @return [Azure::CloudServiceManagement::CloudServiceManagementService]
    def cloud_service_management(options = {})
      @cs_mgmt ||= Azure::CloudServiceManagement::CloudServiceManagementService.new(default_client(options))
    end

    # Azure Storage management service configured for this Azure client instance
    # @return [Azure::StorageManagement::StorageManagementService]
    def storage_management(options = {})
      @store_mgmt ||= Azure::StorageManagement::StorageManagementService.new(default_client(options))
    end

    # Azure Generic management service configured for this Azure client instance
    # @return [Azure::BaseManagement::BaseManagementService]
    def base_management(options = {})
      @base_mgmt ||= Azure::BaseManagement::BaseManagementService.new(default_client(options))
    end

    private

    def default_client(opts)
      {client: self}.merge(opts || {})
    end
  end
end