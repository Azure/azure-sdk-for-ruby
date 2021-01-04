# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_hdinsight'

module Azure::Profiles::Latest
  module Hdinsight
    module Mgmt
      Clusters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Clusters
      Applications = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Applications
      Locations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Locations
      Configurations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Configurations
      Extensions = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Extensions
      ScriptActions = Azure::Hdinsight::Mgmt::V2018_06_01_preview::ScriptActions
      ScriptExecutionHistory = Azure::Hdinsight::Mgmt::V2018_06_01_preview::ScriptExecutionHistory
      Operations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Operations
      VirtualMachines = Azure::Hdinsight::Mgmt::V2018_06_01_preview::VirtualMachines

      module Models
        ClusterListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
        ClusterDefinition = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
        ClusterResizeParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
        KafkaRestProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::KafkaRestProperties
        ClusterDiskEncryptionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
        AutoscaleTimeAndCapacity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleTimeAndCapacity
        UpdateGatewaySettingsParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
        AutoscaleCapacity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleCapacity
        GatewaySettings = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
        Autoscale = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Autoscale
        OperationResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
        HardwareProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
        Resource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
        DataDisksGroups = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
        VirtualNetworkProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VirtualNetworkProfile
        SshProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
        SshPublicKey = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
        OsProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
        HostInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HostInfo
        Role = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
        OperationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
        StorageAccount = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
        ErrorResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
        NetworkProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::NetworkProperties
        ApplicationGetHttpsEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
        DiskEncryptionProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
        ApplicationGetEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
        ClusterCreateProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateProperties
        ApplicationProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
        ClusterIdentity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
        Operation = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
        ClusterPatchParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterPatchParameters
        ApplicationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
        Errors = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
        VersionSpec = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionSpec
        ClusterGetProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterGetProperties
        VersionsCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionsCapability
        RuntimeScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
        RegionsCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionsCapability
        ClusterListPersistedScriptActionsResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
        VmSizesCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizesCapability
        OperationDisplay = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        ClusterListRuntimeScriptActionDetailResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
        VmSizeCompatibilityFilter = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilter
        SecurityProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
        RegionalQuotaCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionalQuotaCapability
        AutoscaleRecurrence = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleRecurrence
        QuotaCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaCapability
        LinuxOperatingSystemProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LinuxOperatingSystemProfile
        CapabilitiesResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::CapabilitiesResult
        ComputeProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeProfile
        LocalizedName = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LocalizedName
        ComputeIsolationProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeIsolationProperties
        Usage = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Usage
        ClusterIdentityUserAssignedIdentitiesValue = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
        UsagesListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UsagesListResult
        QuotaInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
        VmSizeCompatibilityFilterV2 = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilterV2
        BillingMeters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingMeters
        ScriptActionExecutionSummary = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
        DiskBillingMeters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskBillingMeters
        AutoscaleSchedule = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleSchedule
        BillingResources = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResources
        ScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
        BillingResponseListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResponseListResult
        EncryptionInTransitProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::EncryptionInTransitProperties
        ClusterConfigurations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
        ConnectivityEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
        Extension = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
        ClientGroupInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClientGroupInfo
        ClusterMonitoringResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
        StorageProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
        ClusterMonitoringRequest = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
        ExecuteScriptActionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
        ScriptActionExecutionHistoryList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
        ClusterCreateParametersExtended = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
        ScriptActionPersistedGetResponseSpec = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
        AutoscaleConfigurationUpdateParameter = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleConfigurationUpdateParameter
        ScriptActionsList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
        RuntimeScriptActionDetail = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
        TrackedResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
        Cluster = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
        ProxyResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ProxyResource
        Application = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Application
        DirectoryType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DirectoryType
        DaysOfWeek = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DaysOfWeek
        ResourceProviderConnection = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ResourceProviderConnection
        PrivateLink = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::PrivateLink
        OSType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OSType
        Tier = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Tier
        JsonWebKeyEncryptionAlgorithm = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::JsonWebKeyEncryptionAlgorithm
        ResourceIdentityType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ResourceIdentityType
        HDInsightClusterProvisioningState = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HDInsightClusterProvisioningState
        AsyncOperationState = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AsyncOperationState
        FilterMode = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::FilterMode
      end

      class HdinsightManagementClass
        attr_reader :clusters, :applications, :locations, :configurations, :extensions, :script_actions, :script_execution_history, :operations, :virtual_machines, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Hdinsight::Mgmt::V2018_06_01_preview::HDInsightManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @clusters = @client_0.clusters
          @applications = @client_0.applications
          @locations = @client_0.locations
          @configurations = @client_0.configurations
          @extensions = @client_0.extensions
          @script_actions = @client_0.script_actions
          @script_execution_history = @client_0.script_execution_history
          @operations = @client_0.operations
          @virtual_machines = @client_0.virtual_machines

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Hdinsight/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def cluster_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
          end
          def cluster_definition
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
          end
          def cluster_resize_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
          end
          def kafka_rest_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::KafkaRestProperties
          end
          def cluster_disk_encryption_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
          end
          def autoscale_time_and_capacity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleTimeAndCapacity
          end
          def update_gateway_settings_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
          end
          def autoscale_capacity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleCapacity
          end
          def gateway_settings
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
          end
          def autoscale
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Autoscale
          end
          def operation_resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
          end
          def hardware_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
          end
          def resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
          end
          def data_disks_groups
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
          end
          def virtual_network_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VirtualNetworkProfile
          end
          def ssh_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
          end
          def ssh_public_key
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
          end
          def os_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
          end
          def host_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HostInfo
          end
          def role
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
          end
          def operation_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
          end
          def storage_account
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
          end
          def error_response
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
          end
          def network_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::NetworkProperties
          end
          def application_get_https_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
          end
          def disk_encryption_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
          end
          def application_get_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
          end
          def cluster_create_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateProperties
          end
          def application_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
          end
          def cluster_identity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
          end
          def operation
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def cluster_patch_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterPatchParameters
          end
          def application_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
          end
          def errors
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
          end
          def version_spec
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionSpec
          end
          def cluster_get_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterGetProperties
          end
          def versions_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionsCapability
          end
          def runtime_script_action
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
          end
          def regions_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionsCapability
          end
          def cluster_list_persisted_script_actions_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
          end
          def vm_sizes_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizesCapability
          end
          def operation_display
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def cluster_list_runtime_script_action_detail_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
          end
          def vm_size_compatibility_filter
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilter
          end
          def security_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
          end
          def regional_quota_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionalQuotaCapability
          end
          def autoscale_recurrence
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleRecurrence
          end
          def quota_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaCapability
          end
          def linux_operating_system_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LinuxOperatingSystemProfile
          end
          def capabilities_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::CapabilitiesResult
          end
          def compute_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeProfile
          end
          def localized_name
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LocalizedName
          end
          def compute_isolation_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeIsolationProperties
          end
          def usage
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Usage
          end
          def cluster_identity_user_assigned_identities_value
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
          end
          def usages_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UsagesListResult
          end
          def quota_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
          end
          def vm_size_compatibility_filter_v2
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilterV2
          end
          def billing_meters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingMeters
          end
          def script_action_execution_summary
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
          end
          def disk_billing_meters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskBillingMeters
          end
          def autoscale_schedule
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleSchedule
          end
          def billing_resources
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResources
          end
          def script_action
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
          end
          def billing_response_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResponseListResult
          end
          def encryption_in_transit_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::EncryptionInTransitProperties
          end
          def cluster_configurations
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
          end
          def connectivity_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
          end
          def extension
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
          end
          def client_group_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClientGroupInfo
          end
          def cluster_monitoring_response
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
          end
          def storage_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
          end
          def cluster_monitoring_request
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
          end
          def execute_script_action_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
          end
          def script_action_execution_history_list
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
          end
          def cluster_create_parameters_extended
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
          end
          def script_action_persisted_get_response_spec
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
          end
          def autoscale_configuration_update_parameter
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleConfigurationUpdateParameter
          end
          def script_actions_list
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
          end
          def runtime_script_action_detail
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
          end
          def tracked_resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
          end
          def cluster
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
          end
          def proxy_resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ProxyResource
          end
          def application
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Application
          end
          def directory_type
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DirectoryType
          end
          def days_of_week
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DaysOfWeek
          end
          def resource_provider_connection
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ResourceProviderConnection
          end
          def private_link
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::PrivateLink
          end
          def ostype
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OSType
          end
          def tier
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Tier
          end
          def json_web_key_encryption_algorithm
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::JsonWebKeyEncryptionAlgorithm
          end
          def resource_identity_type
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ResourceIdentityType
          end
          def hdinsight_cluster_provisioning_state
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HDInsightClusterProvisioningState
          end
          def async_operation_state
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AsyncOperationState
          end
          def filter_mode
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::FilterMode
          end
        end
      end
    end
  end
end
