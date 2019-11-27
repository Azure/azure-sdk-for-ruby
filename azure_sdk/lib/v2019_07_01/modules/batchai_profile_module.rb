# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batchai'

module Azure::Profiles::V2019_07_01
  module BatchAI
    module Mgmt
      UsageOperations = Azure::BatchAI::Mgmt::V2018_03_01::UsageOperations
      Operations = Azure::BatchAI::Mgmt::V2018_05_01::Operations
      Usages = Azure::BatchAI::Mgmt::V2018_05_01::Usages
      Workspaces = Azure::BatchAI::Mgmt::V2018_05_01::Workspaces
      Experiments = Azure::BatchAI::Mgmt::V2018_05_01::Experiments
      Jobs = Azure::BatchAI::Mgmt::V2018_05_01::Jobs
      FileServers = Azure::BatchAI::Mgmt::V2018_05_01::FileServers
      Clusters = Azure::BatchAI::Mgmt::V2018_05_01::Clusters

      module Models
        KeyVaultKeyReference = Azure::BatchAI::Mgmt::V2018_03_01::Models::KeyVaultKeyReference
        FileServersListByResourceGroupOptions = Azure::BatchAI::Mgmt::V2018_03_01::Models::FileServersListByResourceGroupOptions
        LocalDataVolume = Azure::BatchAI::Mgmt::V2018_03_01::Models::LocalDataVolume
        ClustersListOptions = Azure::BatchAI::Mgmt::V2018_03_01::Models::ClustersListOptions
        ClustersListByResourceGroupOptions = Azure::BatchAI::Mgmt::V2018_03_01::Models::ClustersListByResourceGroupOptions
        JobsListOptions = Azure::BatchAI::Mgmt::V2018_03_01::Models::JobsListOptions
        FileServersListOptions = Azure::BatchAI::Mgmt::V2018_03_01::Models::FileServersListOptions
        JobsListByResourceGroupOptions = Azure::BatchAI::Mgmt::V2018_03_01::Models::JobsListByResourceGroupOptions
        FileServerType = Azure::BatchAI::Mgmt::V2018_03_01::Models::FileServerType
        OutputType = Azure::BatchAI::Mgmt::V2018_03_01::Models::OutputType
        PyTorchSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::PyTorchSettings
        UsageName = Azure::BatchAI::Mgmt::V2018_05_01::Models::UsageName
        TensorFlowSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::TensorFlowSettings
        ListUsagesResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::ListUsagesResult
        CaffeSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::CaffeSettings
        SshConfiguration = Azure::BatchAI::Mgmt::V2018_05_01::Models::SshConfiguration
        Caffe2Settings = Azure::BatchAI::Mgmt::V2018_05_01::Models::Caffe2Settings
        ResourceId = Azure::BatchAI::Mgmt::V2018_05_01::Models::ResourceId
        ChainerSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::ChainerSettings
        DataDisks = Azure::BatchAI::Mgmt::V2018_05_01::Models::DataDisks
        FileServerListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerListResult
        MountSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::MountSettings
        FileServerCreateParameters = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerCreateParameters
        FileServersListByWorkspaceOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServersListByWorkspaceOptions
        AutoScaleSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::AutoScaleSettings
        CustomToolkitSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::CustomToolkitSettings
        ImageReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::ImageReference
        CustomMpiSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::CustomMpiSettings
        EnvironmentVariable = Azure::BatchAI::Mgmt::V2018_05_01::Models::EnvironmentVariable
        HorovodSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::HorovodSettings
        SetupTask = Azure::BatchAI::Mgmt::V2018_05_01::Models::SetupTask
        JobPreparation = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPreparation
        AzureFileShareReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::AzureFileShareReference
        InputDirectory = Azure::BatchAI::Mgmt::V2018_05_01::Models::InputDirectory
        FileServerReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerReference
        OutputDirectory = Azure::BatchAI::Mgmt::V2018_05_01::Models::OutputDirectory
        MountVolumes = Azure::BatchAI::Mgmt::V2018_05_01::Models::MountVolumes
        JobBasePropertiesConstraints = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobBasePropertiesConstraints
        PerformanceCountersSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::PerformanceCountersSettings
        JobCreateParameters = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobCreateParameters
        NodeStateCounts = Azure::BatchAI::Mgmt::V2018_05_01::Models::NodeStateCounts
        JobPropertiesConstraints = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPropertiesConstraints
        ClusterUpdateParameters = Azure::BatchAI::Mgmt::V2018_05_01::Models::ClusterUpdateParameters
        JobPropertiesExecutionInfo = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPropertiesExecutionInfo
        BatchAIError = Azure::BatchAI::Mgmt::V2018_05_01::Models::BatchAIError
        JobsListOutputFilesOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobsListOutputFilesOptions
        ClusterListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::ClusterListResult
        JobListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobListResult
        ImageSourceRegistry = Azure::BatchAI::Mgmt::V2018_05_01::Models::ImageSourceRegistry
        RemoteLoginInformation = Azure::BatchAI::Mgmt::V2018_05_01::Models::RemoteLoginInformation
        CNTKsettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::CNTKsettings
        RemoteLoginInformationListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::RemoteLoginInformationListResult
        UserAccountSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::UserAccountSettings
        File = Azure::BatchAI::Mgmt::V2018_05_01::Models::File
        ManualScaleSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::ManualScaleSettings
        FileListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileListResult
        VirtualMachineConfiguration = Azure::BatchAI::Mgmt::V2018_05_01::Models::VirtualMachineConfiguration
        Resource = Azure::BatchAI::Mgmt::V2018_05_01::Models::Resource
        AzureStorageCredentialsInfo = Azure::BatchAI::Mgmt::V2018_05_01::Models::AzureStorageCredentialsInfo
        ProxyResource = Azure::BatchAI::Mgmt::V2018_05_01::Models::ProxyResource
        UnmanagedFileSystemReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::UnmanagedFileSystemReference
        NodeSetup = Azure::BatchAI::Mgmt::V2018_05_01::Models::NodeSetup
        NameValuePair = Azure::BatchAI::Mgmt::V2018_05_01::Models::NameValuePair
        OperationDisplay = Azure::BatchAI::Mgmt::V2018_05_01::Models::OperationDisplay
        PrivateRegistryCredentials = Azure::BatchAI::Mgmt::V2018_05_01::Models::PrivateRegistryCredentials
        Operation = Azure::BatchAI::Mgmt::V2018_05_01::Models::Operation
        Usage = Azure::BatchAI::Mgmt::V2018_05_01::Models::Usage
        OperationListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::OperationListResult
        ScaleSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::ScaleSettings
        JobsListByExperimentOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobsListByExperimentOptions
        AzureBlobFileSystemReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::AzureBlobFileSystemReference
        WorkspaceListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspaceListResult
        ClusterCreateParameters = Azure::BatchAI::Mgmt::V2018_05_01::Models::ClusterCreateParameters
        WorkspaceCreateParameters = Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspaceCreateParameters
        ContainerSettings = Azure::BatchAI::Mgmt::V2018_05_01::Models::ContainerSettings
        WorkspaceUpdateParameters = Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspaceUpdateParameters
        EnvironmentVariableWithSecretValue = Azure::BatchAI::Mgmt::V2018_05_01::Models::EnvironmentVariableWithSecretValue
        ExperimentsListByWorkspaceOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::ExperimentsListByWorkspaceOptions
        ClustersListByWorkspaceOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::ClustersListByWorkspaceOptions
        ExperimentListResult = Azure::BatchAI::Mgmt::V2018_05_01::Models::ExperimentListResult
        AppInsightsReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::AppInsightsReference
        WorkspacesListOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspacesListOptions
        KeyVaultSecretReference = Azure::BatchAI::Mgmt::V2018_05_01::Models::KeyVaultSecretReference
        WorkspacesListByResourceGroupOptions = Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspacesListByResourceGroupOptions
        FileServer = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServer
        Cluster = Azure::BatchAI::Mgmt::V2018_05_01::Models::Cluster
        Job = Azure::BatchAI::Mgmt::V2018_05_01::Models::Job
        Workspace = Azure::BatchAI::Mgmt::V2018_05_01::Models::Workspace
        Experiment = Azure::BatchAI::Mgmt::V2018_05_01::Models::Experiment
        UsageUnit = Azure::BatchAI::Mgmt::V2018_05_01::Models::UsageUnit
        CachingType = Azure::BatchAI::Mgmt::V2018_05_01::Models::CachingType
        StorageAccountType = Azure::BatchAI::Mgmt::V2018_05_01::Models::StorageAccountType
        FileServerProvisioningState = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerProvisioningState
        VmPriority = Azure::BatchAI::Mgmt::V2018_05_01::Models::VmPriority
        DeallocationOption = Azure::BatchAI::Mgmt::V2018_05_01::Models::DeallocationOption
        ProvisioningState = Azure::BatchAI::Mgmt::V2018_05_01::Models::ProvisioningState
        AllocationState = Azure::BatchAI::Mgmt::V2018_05_01::Models::AllocationState
        JobPriority = Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPriority
        ToolType = Azure::BatchAI::Mgmt::V2018_05_01::Models::ToolType
        ExecutionState = Azure::BatchAI::Mgmt::V2018_05_01::Models::ExecutionState
        FileType = Azure::BatchAI::Mgmt::V2018_05_01::Models::FileType
      end

      class BatchAIManagementClass
        attr_reader :usage_operations, :operations, :usages, :workspaces, :experiments, :jobs, :file_servers, :clusters, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::BatchAI::Mgmt::V2018_03_01::BatchAIManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usage_operations = @client_0.usage_operations

          @client_1 = Azure::BatchAI::Mgmt::V2018_05_01::BatchAIManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @usages = @client_1.usages
          @workspaces = @client_1.workspaces
          @experiments = @client_1.experiments
          @jobs = @client_1.jobs
          @file_servers = @client_1.file_servers
          @clusters = @client_1.clusters

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/BatchAI/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def key_vault_key_reference
            Azure::BatchAI::Mgmt::V2018_03_01::Models::KeyVaultKeyReference
          end
          def file_servers_list_by_resource_group_options
            Azure::BatchAI::Mgmt::V2018_03_01::Models::FileServersListByResourceGroupOptions
          end
          def local_data_volume
            Azure::BatchAI::Mgmt::V2018_03_01::Models::LocalDataVolume
          end
          def clusters_list_options
            Azure::BatchAI::Mgmt::V2018_03_01::Models::ClustersListOptions
          end
          def clusters_list_by_resource_group_options
            Azure::BatchAI::Mgmt::V2018_03_01::Models::ClustersListByResourceGroupOptions
          end
          def jobs_list_options
            Azure::BatchAI::Mgmt::V2018_03_01::Models::JobsListOptions
          end
          def file_servers_list_options
            Azure::BatchAI::Mgmt::V2018_03_01::Models::FileServersListOptions
          end
          def jobs_list_by_resource_group_options
            Azure::BatchAI::Mgmt::V2018_03_01::Models::JobsListByResourceGroupOptions
          end
          def file_server_type
            Azure::BatchAI::Mgmt::V2018_03_01::Models::FileServerType
          end
          def output_type
            Azure::BatchAI::Mgmt::V2018_03_01::Models::OutputType
          end
          def py_torch_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::PyTorchSettings
          end
          def usage_name
            Azure::BatchAI::Mgmt::V2018_05_01::Models::UsageName
          end
          def tensor_flow_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::TensorFlowSettings
          end
          def list_usages_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ListUsagesResult
          end
          def caffe_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::CaffeSettings
          end
          def ssh_configuration
            Azure::BatchAI::Mgmt::V2018_05_01::Models::SshConfiguration
          end
          def caffe2_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Caffe2Settings
          end
          def resource_id
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ResourceId
          end
          def chainer_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ChainerSettings
          end
          def data_disks
            Azure::BatchAI::Mgmt::V2018_05_01::Models::DataDisks
          end
          def file_server_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerListResult
          end
          def mount_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::MountSettings
          end
          def file_server_create_parameters
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerCreateParameters
          end
          def file_servers_list_by_workspace_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServersListByWorkspaceOptions
          end
          def auto_scale_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::AutoScaleSettings
          end
          def custom_toolkit_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::CustomToolkitSettings
          end
          def image_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ImageReference
          end
          def custom_mpi_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::CustomMpiSettings
          end
          def environment_variable
            Azure::BatchAI::Mgmt::V2018_05_01::Models::EnvironmentVariable
          end
          def horovod_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::HorovodSettings
          end
          def setup_task
            Azure::BatchAI::Mgmt::V2018_05_01::Models::SetupTask
          end
          def job_preparation
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPreparation
          end
          def azure_file_share_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::AzureFileShareReference
          end
          def input_directory
            Azure::BatchAI::Mgmt::V2018_05_01::Models::InputDirectory
          end
          def file_server_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerReference
          end
          def output_directory
            Azure::BatchAI::Mgmt::V2018_05_01::Models::OutputDirectory
          end
          def mount_volumes
            Azure::BatchAI::Mgmt::V2018_05_01::Models::MountVolumes
          end
          def job_base_properties_constraints
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobBasePropertiesConstraints
          end
          def performance_counters_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::PerformanceCountersSettings
          end
          def job_create_parameters
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobCreateParameters
          end
          def node_state_counts
            Azure::BatchAI::Mgmt::V2018_05_01::Models::NodeStateCounts
          end
          def job_properties_constraints
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPropertiesConstraints
          end
          def cluster_update_parameters
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ClusterUpdateParameters
          end
          def job_properties_execution_info
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPropertiesExecutionInfo
          end
          def batch_aierror
            Azure::BatchAI::Mgmt::V2018_05_01::Models::BatchAIError
          end
          def jobs_list_output_files_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobsListOutputFilesOptions
          end
          def cluster_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ClusterListResult
          end
          def job_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobListResult
          end
          def image_source_registry
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ImageSourceRegistry
          end
          def remote_login_information
            Azure::BatchAI::Mgmt::V2018_05_01::Models::RemoteLoginInformation
          end
          def cntksettings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::CNTKsettings
          end
          def remote_login_information_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::RemoteLoginInformationListResult
          end
          def user_account_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::UserAccountSettings
          end
          def file
            Azure::BatchAI::Mgmt::V2018_05_01::Models::File
          end
          def manual_scale_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ManualScaleSettings
          end
          def file_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileListResult
          end
          def virtual_machine_configuration
            Azure::BatchAI::Mgmt::V2018_05_01::Models::VirtualMachineConfiguration
          end
          def resource
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Resource
          end
          def azure_storage_credentials_info
            Azure::BatchAI::Mgmt::V2018_05_01::Models::AzureStorageCredentialsInfo
          end
          def proxy_resource
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ProxyResource
          end
          def unmanaged_file_system_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::UnmanagedFileSystemReference
          end
          def node_setup
            Azure::BatchAI::Mgmt::V2018_05_01::Models::NodeSetup
          end
          def name_value_pair
            Azure::BatchAI::Mgmt::V2018_05_01::Models::NameValuePair
          end
          def operation_display
            Azure::BatchAI::Mgmt::V2018_05_01::Models::OperationDisplay
          end
          def private_registry_credentials
            Azure::BatchAI::Mgmt::V2018_05_01::Models::PrivateRegistryCredentials
          end
          def operation
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Operation
          end
          def usage
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Usage
          end
          def operation_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::OperationListResult
          end
          def scale_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ScaleSettings
          end
          def jobs_list_by_experiment_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobsListByExperimentOptions
          end
          def azure_blob_file_system_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::AzureBlobFileSystemReference
          end
          def workspace_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspaceListResult
          end
          def cluster_create_parameters
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ClusterCreateParameters
          end
          def workspace_create_parameters
            Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspaceCreateParameters
          end
          def container_settings
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ContainerSettings
          end
          def workspace_update_parameters
            Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspaceUpdateParameters
          end
          def environment_variable_with_secret_value
            Azure::BatchAI::Mgmt::V2018_05_01::Models::EnvironmentVariableWithSecretValue
          end
          def experiments_list_by_workspace_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ExperimentsListByWorkspaceOptions
          end
          def clusters_list_by_workspace_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ClustersListByWorkspaceOptions
          end
          def experiment_list_result
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ExperimentListResult
          end
          def app_insights_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::AppInsightsReference
          end
          def workspaces_list_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspacesListOptions
          end
          def key_vault_secret_reference
            Azure::BatchAI::Mgmt::V2018_05_01::Models::KeyVaultSecretReference
          end
          def workspaces_list_by_resource_group_options
            Azure::BatchAI::Mgmt::V2018_05_01::Models::WorkspacesListByResourceGroupOptions
          end
          def file_server
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServer
          end
          def cluster
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Cluster
          end
          def job
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Job
          end
          def workspace
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Workspace
          end
          def experiment
            Azure::BatchAI::Mgmt::V2018_05_01::Models::Experiment
          end
          def usage_unit
            Azure::BatchAI::Mgmt::V2018_05_01::Models::UsageUnit
          end
          def caching_type
            Azure::BatchAI::Mgmt::V2018_05_01::Models::CachingType
          end
          def storage_account_type
            Azure::BatchAI::Mgmt::V2018_05_01::Models::StorageAccountType
          end
          def file_server_provisioning_state
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileServerProvisioningState
          end
          def vm_priority
            Azure::BatchAI::Mgmt::V2018_05_01::Models::VmPriority
          end
          def deallocation_option
            Azure::BatchAI::Mgmt::V2018_05_01::Models::DeallocationOption
          end
          def provisioning_state
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ProvisioningState
          end
          def allocation_state
            Azure::BatchAI::Mgmt::V2018_05_01::Models::AllocationState
          end
          def job_priority
            Azure::BatchAI::Mgmt::V2018_05_01::Models::JobPriority
          end
          def tool_type
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ToolType
          end
          def execution_state
            Azure::BatchAI::Mgmt::V2018_05_01::Models::ExecutionState
          end
          def file_type
            Azure::BatchAI::Mgmt::V2018_05_01::Models::FileType
          end
        end
      end
    end
  end
end
