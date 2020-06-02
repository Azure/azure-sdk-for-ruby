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
        ClusterDiskEncryptionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
        UpdateGatewaySettingsParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
        ClientGroupInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClientGroupInfo
        GatewaySettings = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
        SecurityProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
        OperationResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
        AutoscaleSchedule = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleSchedule
        Resource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
        AutoscaleRecurrence = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleRecurrence
        AutoscaleCapacity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleCapacity
        HardwareProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
        Autoscale = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Autoscale
        DataDisksGroups = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
        HostInfoListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HostInfoListResult
        SshProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
        HostInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HostInfo
        OsProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
        ErrorResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
        Role = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
        ApplicationGetHttpsEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
        StorageAccount = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
        ApplicationGetEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
        DiskEncryptionProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
        ApplicationProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
        ClusterIdentityUserAssignedIdentitiesValue = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
        OperationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
        ClusterCreateParametersExtended = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
        ApplicationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
        QuotaInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
        VersionSpec = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionSpec
        ConnectivityEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
        VersionsCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionsCapability
        RegionsCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionsCapability
        ExecuteScriptActionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
        VmSizesCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizesCapability
        ScriptActionExecutionSummary = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
        VmSizeCompatibilityFilter = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilter
        ClusterListRuntimeScriptActionDetailResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
        RegionalQuotaCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionalQuotaCapability
        ClusterResizeParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
        QuotaCapability = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaCapability
        KafkaRestProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::KafkaRestProperties
        CapabilitiesResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::CapabilitiesResult
        VirtualNetworkProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VirtualNetworkProfile
        LocalizedName = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LocalizedName
        LinuxOperatingSystemProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LinuxOperatingSystemProfile
        Usage = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Usage
        ComputeProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeProfile
        UsagesListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UsagesListResult
        ClusterCreateProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateProperties
        VmSizeCompatibilityFilterV2 = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilterV2
        ClusterPatchParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterPatchParameters
        BillingMeters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingMeters
        ClusterGetProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterGetProperties
        DiskBillingMeters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskBillingMeters
        ClusterListPersistedScriptActionsResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
        BillingResources = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResources
        ClusterListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
        BillingResponseListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResponseListResult
        AutoscaleTimeAndCapacity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleTimeAndCapacity
        ClusterConfigurations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
        ScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
        Extension = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
        ClusterIdentity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
        ClusterMonitoringResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
        RuntimeScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
        ClusterMonitoringRequest = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
        ClusterDefinition = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
        ScriptActionExecutionHistoryList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
        StorageProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
        ScriptActionPersistedGetResponseSpec = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
        Operation = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
        SshPublicKey = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
        ScriptActionsList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
        Errors = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
        OperationDisplay = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        RuntimeScriptActionDetail = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
        TrackedResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
        Cluster = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
        ProxyResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ProxyResource
        Application = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Application
        DirectoryType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DirectoryType
        DaysOfWeek = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DaysOfWeek
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
          def cluster_disk_encryption_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
          end
          def update_gateway_settings_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
          end
          def client_group_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClientGroupInfo
          end
          def gateway_settings
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
          end
          def security_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
          end
          def operation_resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
          end
          def autoscale_schedule
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleSchedule
          end
          def resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
          end
          def autoscale_recurrence
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleRecurrence
          end
          def autoscale_capacity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleCapacity
          end
          def hardware_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
          end
          def autoscale
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Autoscale
          end
          def data_disks_groups
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
          end
          def host_info_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HostInfoListResult
          end
          def ssh_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
          end
          def host_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HostInfo
          end
          def os_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
          end
          def error_response
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
          end
          def role
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
          end
          def application_get_https_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
          end
          def storage_account
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
          end
          def application_get_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
          end
          def disk_encryption_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
          end
          def application_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
          end
          def cluster_identity_user_assigned_identities_value
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
          end
          def operation_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
          end
          def cluster_create_parameters_extended
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
          end
          def application_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
          end
          def quota_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
          end
          def version_spec
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionSpec
          end
          def connectivity_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
          end
          def versions_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VersionsCapability
          end
          def regions_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionsCapability
          end
          def execute_script_action_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
          end
          def vm_sizes_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizesCapability
          end
          def script_action_execution_summary
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
          end
          def vm_size_compatibility_filter
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilter
          end
          def cluster_list_runtime_script_action_detail_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
          end
          def regional_quota_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RegionalQuotaCapability
          end
          def cluster_resize_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
          end
          def quota_capability
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaCapability
          end
          def kafka_rest_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::KafkaRestProperties
          end
          def capabilities_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::CapabilitiesResult
          end
          def virtual_network_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VirtualNetworkProfile
          end
          def localized_name
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LocalizedName
          end
          def linux_operating_system_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LinuxOperatingSystemProfile
          end
          def usage
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Usage
          end
          def compute_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeProfile
          end
          def usages_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UsagesListResult
          end
          def cluster_create_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateProperties
          end
          def vm_size_compatibility_filter_v2
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VmSizeCompatibilityFilterV2
          end
          def cluster_patch_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterPatchParameters
          end
          def billing_meters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingMeters
          end
          def cluster_get_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterGetProperties
          end
          def disk_billing_meters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskBillingMeters
          end
          def cluster_list_persisted_script_actions_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
          end
          def billing_resources
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResources
          end
          def cluster_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
          end
          def billing_response_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResponseListResult
          end
          def autoscale_time_and_capacity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleTimeAndCapacity
          end
          def cluster_configurations
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
          end
          def script_action
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
          end
          def extension
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
          end
          def cluster_identity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
          end
          def cluster_monitoring_response
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
          end
          def runtime_script_action
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
          end
          def cluster_monitoring_request
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
          end
          def cluster_definition
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
          end
          def script_action_execution_history_list
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
          end
          def storage_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
          end
          def script_action_persisted_get_response_spec
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
          end
          def operation
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def ssh_public_key
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
          end
          def script_actions_list
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
          end
          def errors
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
          end
          def operation_display
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
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
