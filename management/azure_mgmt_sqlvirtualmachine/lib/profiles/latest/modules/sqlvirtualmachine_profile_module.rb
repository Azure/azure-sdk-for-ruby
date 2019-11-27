# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_sqlvirtualmachine'

module Azure::Sqlvirtualmachine::Profiles::Latest
  module Mgmt
    AvailabilityGroupListeners = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::AvailabilityGroupListeners
    Operations = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Operations
    SqlVirtualMachineGroups = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::SqlVirtualMachineGroups
    SqlVirtualMachines = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::SqlVirtualMachines

    module Models
      ResourceIdentity = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ResourceIdentity
      WsfcDomainCredentials = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainCredentials
      LoadBalancerConfiguration = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::LoadBalancerConfiguration
      AutoPatchingSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoPatchingSettings
      PrivateIPAddress = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::PrivateIPAddress
      Resource = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Resource
      OperationDisplay = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationDisplay
      StorageConfigurationSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::StorageConfigurationSettings
      OperationListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationListResult
      AutoBackupSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoBackupSettings
      SqlVirtualMachineUpdate = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineUpdate
      KeyVaultCredentialSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::KeyVaultCredentialSettings
      SqlVirtualMachineGroupUpdate = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupUpdate
      SqlConnectivityUpdateSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlConnectivityUpdateSettings
      AvailabilityGroupListenerListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListenerListResult
      SqlWorkloadTypeUpdateSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadTypeUpdateSettings
      WsfcDomainProfile = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainProfile
      SqlStorageUpdateSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlStorageUpdateSettings
      SqlVirtualMachineGroupListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupListResult
      AdditionalFeaturesServerConfigurations = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AdditionalFeaturesServerConfigurations
      SqlVirtualMachineListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineListResult
      ServerConfigurationsManagementSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ServerConfigurationsManagementSettings
      Operation = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Operation
      SQLStorageSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SQLStorageSettings
      ProxyResource = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ProxyResource
      AvailabilityGroupListener = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListener
      TrackedResource = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::TrackedResource
      SqlVirtualMachineGroup = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroup
      SqlVirtualMachine = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachine
      OperationOrigin = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationOrigin
      SqlVmGroupImageSku = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVmGroupImageSku
      ScaleType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ScaleType
      ClusterManagerType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterManagerType
      ClusterConfiguration = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterConfiguration
      IdentityType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::IdentityType
      SqlServerLicenseType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlServerLicenseType
      SqlManagementMode = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlManagementMode
      SqlImageSku = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlImageSku
      DayOfWeek = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DayOfWeek
      BackupScheduleType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::BackupScheduleType
      FullBackupFrequencyType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::FullBackupFrequencyType
      ConnectivityType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ConnectivityType
      SqlWorkloadType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadType
      DiskConfigurationType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DiskConfigurationType
      StorageWorkloadType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::StorageWorkloadType
    end

    #
    # SqlvirtualmachineManagementClass
    #
    class SqlvirtualmachineManagementClass
      attr_reader :availability_group_listeners, :operations, :sql_virtual_machine_groups, :sql_virtual_machines, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::SqlVirtualMachineManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @availability_group_listeners = @client_0.availability_group_listeners
        @operations = @client_0.operations
        @sql_virtual_machine_groups = @client_0.sql_virtual_machine_groups
        @sql_virtual_machines = @client_0.sql_virtual_machines

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Sqlvirtualmachine/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def resource_identity
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ResourceIdentity
      end
      def wsfc_domain_credentials
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainCredentials
      end
      def load_balancer_configuration
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::LoadBalancerConfiguration
      end
      def auto_patching_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoPatchingSettings
      end
      def private_ipaddress
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::PrivateIPAddress
      end
      def resource
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Resource
      end
      def operation_display
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationDisplay
      end
      def storage_configuration_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::StorageConfigurationSettings
      end
      def operation_list_result
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationListResult
      end
      def auto_backup_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoBackupSettings
      end
      def sql_virtual_machine_update
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineUpdate
      end
      def key_vault_credential_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::KeyVaultCredentialSettings
      end
      def sql_virtual_machine_group_update
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupUpdate
      end
      def sql_connectivity_update_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlConnectivityUpdateSettings
      end
      def availability_group_listener_list_result
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListenerListResult
      end
      def sql_workload_type_update_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadTypeUpdateSettings
      end
      def wsfc_domain_profile
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainProfile
      end
      def sql_storage_update_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlStorageUpdateSettings
      end
      def sql_virtual_machine_group_list_result
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupListResult
      end
      def additional_features_server_configurations
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AdditionalFeaturesServerConfigurations
      end
      def sql_virtual_machine_list_result
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineListResult
      end
      def server_configurations_management_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ServerConfigurationsManagementSettings
      end
      def operation
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Operation
      end
      def sqlstorage_settings
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SQLStorageSettings
      end
      def proxy_resource
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ProxyResource
      end
      def availability_group_listener
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListener
      end
      def tracked_resource
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::TrackedResource
      end
      def sql_virtual_machine_group
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroup
      end
      def sql_virtual_machine
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachine
      end
      def operation_origin
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationOrigin
      end
      def sql_vm_group_image_sku
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVmGroupImageSku
      end
      def scale_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ScaleType
      end
      def cluster_manager_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterManagerType
      end
      def cluster_configuration
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterConfiguration
      end
      def identity_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::IdentityType
      end
      def sql_server_license_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlServerLicenseType
      end
      def sql_management_mode
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlManagementMode
      end
      def sql_image_sku
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlImageSku
      end
      def day_of_week
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DayOfWeek
      end
      def backup_schedule_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::BackupScheduleType
      end
      def full_backup_frequency_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::FullBackupFrequencyType
      end
      def connectivity_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ConnectivityType
      end
      def sql_workload_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadType
      end
      def disk_configuration_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DiskConfigurationType
      end
      def storage_workload_type
        Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::StorageWorkloadType
      end
    end
  end
end
