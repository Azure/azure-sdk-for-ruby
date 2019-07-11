# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_machine_learning_services'

module Azure::Profiles::Latest
  module MachineLearningServices
    module Mgmt
      Operations = Azure::MachineLearningServices::Mgmt::V2019_05_01::Operations
      Workspaces = Azure::MachineLearningServices::Mgmt::V2019_05_01::Workspaces
      Usages = Azure::MachineLearningServices::Mgmt::V2019_05_01::Usages
      VirtualMachineSizes = Azure::MachineLearningServices::Mgmt::V2019_05_01::VirtualMachineSizes
      MachineLearningCompute = Azure::MachineLearningServices::Mgmt::V2019_05_01::MachineLearningCompute

      module Models
        AKSProperties = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AKSProperties
        OperationDisplay = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::OperationDisplay
        DataLakeAnalyticsProperties = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DataLakeAnalyticsProperties
        OperationListResult = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::OperationListResult
        PaginatedComputeResourcesList = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::PaginatedComputeResourcesList
        WorkspaceUpdateParameters = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::WorkspaceUpdateParameters
        SystemService = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::SystemService
        Usage = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Usage
        SslConfiguration = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::SslConfiguration
        VirtualMachineSize = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSize
        AksNetworkingConfiguration = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AksNetworkingConfiguration
        WorkspaceListResult = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::WorkspaceListResult
        Operation = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Operation
        Resource = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Resource
        Password = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Password
        ScaleSettings = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ScaleSettings
        ListWorkspaceKeysResult = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ListWorkspaceKeysResult
        UserAccountCredentials = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UserAccountCredentials
        ErrorResponse = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ErrorResponse
        NodeStateCounts = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::NodeStateCounts
        Compute = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Compute
        AmlComputeProperties = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlComputeProperties
        UsageName = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UsageName
        ComputeSecrets = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeSecrets
        VirtualMachineSizeListResult = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSizeListResult
        VirtualMachineSshCredentials = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSshCredentials
        ResourceId = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ResourceId
        VirtualMachineProperties = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineProperties
        ErrorDetail = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ErrorDetail
        AmlComputeNodeInformation = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlComputeNodeInformation
        ServicePrincipalCredentials = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ServicePrincipalCredentials
        ListUsagesResult = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ListUsagesResult
        HDInsightProperties = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::HDInsightProperties
        RegistryListCredentialsResult = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::RegistryListCredentialsResult
        ComputeNodesInformation = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeNodesInformation
        Identity = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Identity
        ClusterUpdateParameters = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ClusterUpdateParameters
        MachineLearningServiceError = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::MachineLearningServiceError
        DatabricksProperties = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DatabricksProperties
        Workspace = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Workspace
        ComputeResource = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeResource
        AKS = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AKS
        AmlCompute = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlCompute
        VirtualMachine = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachine
        HDInsight = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::HDInsight
        DataFactory = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DataFactory
        Databricks = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Databricks
        DataLakeAnalytics = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DataLakeAnalytics
        AmlComputeNodesInformation = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlComputeNodesInformation
        AksComputeSecrets = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AksComputeSecrets
        VirtualMachineSecrets = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSecrets
        DatabricksComputeSecrets = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DatabricksComputeSecrets
        ProvisioningState = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ProvisioningState
        UsageUnit = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UsageUnit
        ResourceIdentityType = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ResourceIdentityType
        VmPriority = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VmPriority
        AllocationState = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AllocationState
        ComputeType = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeType
        UnderlyingResourceAction = Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UnderlyingResourceAction
      end

      class MachineLearningServicesManagementClass
        attr_reader :operations, :workspaces, :usages, :virtual_machine_sizes, :machine_learning_compute, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MachineLearningServices::Mgmt::V2019_05_01::MachineLearningServicesClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @workspaces = @client_0.workspaces
          @usages = @client_0.usages
          @virtual_machine_sizes = @client_0.virtual_machine_sizes
          @machine_learning_compute = @client_0.machine_learning_compute

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MachineLearningServices/Mgmt"
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
          def aksproperties
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AKSProperties
          end
          def operation_display
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::OperationDisplay
          end
          def data_lake_analytics_properties
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DataLakeAnalyticsProperties
          end
          def operation_list_result
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::OperationListResult
          end
          def paginated_compute_resources_list
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::PaginatedComputeResourcesList
          end
          def workspace_update_parameters
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::WorkspaceUpdateParameters
          end
          def system_service
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::SystemService
          end
          def usage
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Usage
          end
          def ssl_configuration
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::SslConfiguration
          end
          def virtual_machine_size
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSize
          end
          def aks_networking_configuration
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AksNetworkingConfiguration
          end
          def workspace_list_result
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::WorkspaceListResult
          end
          def operation
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Operation
          end
          def resource
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Resource
          end
          def password
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Password
          end
          def scale_settings
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ScaleSettings
          end
          def list_workspace_keys_result
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ListWorkspaceKeysResult
          end
          def user_account_credentials
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UserAccountCredentials
          end
          def error_response
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ErrorResponse
          end
          def node_state_counts
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::NodeStateCounts
          end
          def compute
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Compute
          end
          def aml_compute_properties
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlComputeProperties
          end
          def usage_name
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UsageName
          end
          def compute_secrets
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeSecrets
          end
          def virtual_machine_size_list_result
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSizeListResult
          end
          def virtual_machine_ssh_credentials
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSshCredentials
          end
          def resource_id
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ResourceId
          end
          def virtual_machine_properties
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineProperties
          end
          def error_detail
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ErrorDetail
          end
          def aml_compute_node_information
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlComputeNodeInformation
          end
          def service_principal_credentials
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ServicePrincipalCredentials
          end
          def list_usages_result
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ListUsagesResult
          end
          def hdinsight_properties
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::HDInsightProperties
          end
          def registry_list_credentials_result
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::RegistryListCredentialsResult
          end
          def compute_nodes_information
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeNodesInformation
          end
          def identity
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Identity
          end
          def cluster_update_parameters
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ClusterUpdateParameters
          end
          def machine_learning_service_error
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::MachineLearningServiceError
          end
          def databricks_properties
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DatabricksProperties
          end
          def workspace
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Workspace
          end
          def compute_resource
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeResource
          end
          def aks
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AKS
          end
          def aml_compute
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlCompute
          end
          def virtual_machine
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachine
          end
          def hdinsight
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::HDInsight
          end
          def data_factory
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DataFactory
          end
          def databricks
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::Databricks
          end
          def data_lake_analytics
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DataLakeAnalytics
          end
          def aml_compute_nodes_information
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AmlComputeNodesInformation
          end
          def aks_compute_secrets
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AksComputeSecrets
          end
          def virtual_machine_secrets
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VirtualMachineSecrets
          end
          def databricks_compute_secrets
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::DatabricksComputeSecrets
          end
          def provisioning_state
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ProvisioningState
          end
          def usage_unit
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UsageUnit
          end
          def resource_identity_type
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ResourceIdentityType
          end
          def vm_priority
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::VmPriority
          end
          def allocation_state
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::AllocationState
          end
          def compute_type
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::ComputeType
          end
          def underlying_resource_action
            Azure::MachineLearningServices::Mgmt::V2019_05_01::Models::UnderlyingResourceAction
          end
        end
      end
    end
  end
end
