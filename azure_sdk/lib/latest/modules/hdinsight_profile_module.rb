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

      module Models
        ClusterListPersistedScriptActionsResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
        ScriptActionExecutionSummary = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
        SecurityProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
        AutoscaleSchedule = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleSchedule
        ClusterListRuntimeScriptActionDetailResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
        AutoscaleRecurrence = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleRecurrence
        ClusterListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
        HardwareProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
        ClusterResizeParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
        DataDisksGroups = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
        ClusterDiskEncryptionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
        SshProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
        UpdateGatewaySettingsParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
        OsProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
        GatewaySettings = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
        Role = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
        OperationResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
        StorageAccount = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
        Resource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
        DiskEncryptionProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
        OperationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
        ClusterIdentityUserAssignedIdentitiesValue = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
        Operation = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
        ClusterCreateParametersExtended = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
        ErrorResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
        QuotaInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
        ApplicationGetHttpsEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
        ConnectivityEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
        ApplicationGetEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
        ScriptActionsList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
        RuntimeScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
        ApplicationProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
        ClusterDefinition = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
        OperationDisplay = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        AutoscaleCapacity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleCapacity
        ApplicationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
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
        AutoscaleTimeAndCapacity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleTimeAndCapacity
        BillingResources = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResources
        SshPublicKey = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
        BillingResponseListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResponseListResult
        StorageProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
        ClusterConfigurations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
        Errors = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
        Extension = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
        Autoscale = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Autoscale
        ClusterMonitoringResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
        ClusterIdentity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
        ClusterMonitoringRequest = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
        ScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
        ScriptActionExecutionHistoryList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
        ExecuteScriptActionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
        ScriptActionPersistedGetResponseSpec = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
        Cluster = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
        RuntimeScriptActionDetail = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
        TrackedResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
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
        attr_reader :clusters, :applications, :locations, :configurations, :extensions, :script_actions, :script_execution_history, :operations, :configurable, :base_url, :options, :model_classes

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
          def cluster_list_persisted_script_actions_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
          end
          def script_action_execution_summary
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
          end
          def security_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
          end
          def autoscale_schedule
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleSchedule
          end
          def cluster_list_runtime_script_action_detail_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
          end
          def autoscale_recurrence
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleRecurrence
          end
          def cluster_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
          end
          def hardware_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
          end
          def cluster_resize_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
          end
          def data_disks_groups
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
          end
          def cluster_disk_encryption_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
          end
          def ssh_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
          end
          def update_gateway_settings_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
          end
          def os_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
          end
          def gateway_settings
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
          end
          def role
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
          end
          def operation_resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
          end
          def storage_account
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
          end
          def resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
          end
          def disk_encryption_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
          end
          def operation_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
          end
          def cluster_identity_user_assigned_identities_value
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
          end
          def operation
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def cluster_create_parameters_extended
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
          end
          def error_response
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
          end
          def quota_info
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
          end
          def application_get_https_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
          end
          def connectivity_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
          end
          def application_get_endpoint
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
          end
          def script_actions_list
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
          end
          def runtime_script_action
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
          end
          def application_properties
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
          end
          def cluster_definition
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
          end
          def operation_display
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def autoscale_capacity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleCapacity
          end
          def application_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
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
          def autoscale_time_and_capacity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AutoscaleTimeAndCapacity
          end
          def billing_resources
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResources
          end
          def ssh_public_key
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
          end
          def billing_response_list_result
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::BillingResponseListResult
          end
          def storage_profile
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
          end
          def cluster_configurations
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
          end
          def errors
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
          end
          def extension
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
          end
          def autoscale
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Autoscale
          end
          def cluster_monitoring_response
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
          end
          def cluster_identity
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
          end
          def cluster_monitoring_request
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
          end
          def script_action
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
          end
          def script_action_execution_history_list
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
          end
          def execute_script_action_parameters
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
          end
          def script_action_persisted_get_response_spec
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
          end
          def cluster
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
          end
          def runtime_script_action_detail
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
          end
          def tracked_resource
            Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
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
