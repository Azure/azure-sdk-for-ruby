# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_machine_learning_services'

module Azure::MachineLearningServices::Profiles::Latest
  module Mgmt
    Operations = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Operations
    Workspaces = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Workspaces
    MachineLearningCompute = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::MachineLearningCompute

    module Models
      SystemService = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::SystemService
      OperationDisplay = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      SslConfiguration = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::SslConfiguration
      OperationListResult = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::OperationListResult
      AKSProperties = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::AKSProperties
      WorkspaceUpdateParameters = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::WorkspaceUpdateParameters
      PaginatedComputeResourcesList = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::PaginatedComputeResourcesList
      Operation = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Operation
      Resource = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Resource
      Password = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Password
      RegistryListCredentialsResult = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::RegistryListCredentialsResult
      ServicePrincipalCredentials = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ServicePrincipalCredentials
      ErrorDetail = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ErrorDetail
      WorkspaceListResult = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::WorkspaceListResult
      MachineLearningServiceError = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::MachineLearningServiceError
      HDInsightProperties = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::HDInsightProperties
      ScaleSettings = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ScaleSettings
      ListWorkspaceKeysResult = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ListWorkspaceKeysResult
      BatchAIProperties = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::BatchAIProperties
      Compute = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Compute
      ComputeSecrets = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ComputeSecrets
      ErrorResponse = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ErrorResponse
      VirtualMachineSshCredentials = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachineSshCredentials
      Identity = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Identity
      VirtualMachineProperties = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachineProperties
      Workspace = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Workspace
      ComputeResource = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ComputeResource
      AKS = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::AKS
      BatchAI = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::BatchAI
      VirtualMachine = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachine
      HDInsight = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::HDInsight
      DataFactory = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::DataFactory
      AksComputeSecrets = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::AksComputeSecrets
      VirtualMachineSecrets = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachineSecrets
      ProvisioningState = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      ResourceIdentityType = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ResourceIdentityType
      ComputeType = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ComputeType
    end

    #
    # MachineLearningServicesManagementClass
    #
    class MachineLearningServicesManagementClass
      attr_reader :operations, :workspaces, :machine_learning_compute, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::MachineLearningServicesClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @workspaces = @client_0.workspaces
        @machine_learning_compute = @client_0.machine_learning_compute

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/MachineLearningServices/Mgmt'
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
      def system_service
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::SystemService
      end
      def operation_display
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      end
      def ssl_configuration
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::SslConfiguration
      end
      def operation_list_result
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::OperationListResult
      end
      def aksproperties
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::AKSProperties
      end
      def workspace_update_parameters
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::WorkspaceUpdateParameters
      end
      def paginated_compute_resources_list
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::PaginatedComputeResourcesList
      end
      def operation
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Operation
      end
      def resource
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Resource
      end
      def password
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Password
      end
      def registry_list_credentials_result
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::RegistryListCredentialsResult
      end
      def service_principal_credentials
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ServicePrincipalCredentials
      end
      def error_detail
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ErrorDetail
      end
      def workspace_list_result
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::WorkspaceListResult
      end
      def machine_learning_service_error
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::MachineLearningServiceError
      end
      def hdinsight_properties
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::HDInsightProperties
      end
      def scale_settings
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ScaleSettings
      end
      def list_workspace_keys_result
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ListWorkspaceKeysResult
      end
      def batch_aiproperties
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::BatchAIProperties
      end
      def compute
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Compute
      end
      def compute_secrets
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ComputeSecrets
      end
      def error_response
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ErrorResponse
      end
      def virtual_machine_ssh_credentials
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachineSshCredentials
      end
      def identity
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Identity
      end
      def virtual_machine_properties
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachineProperties
      end
      def workspace
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::Workspace
      end
      def compute_resource
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ComputeResource
      end
      def aks
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::AKS
      end
      def batch_ai
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::BatchAI
      end
      def virtual_machine
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachine
      end
      def hdinsight
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::HDInsight
      end
      def data_factory
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::DataFactory
      end
      def aks_compute_secrets
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::AksComputeSecrets
      end
      def virtual_machine_secrets
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::VirtualMachineSecrets
      end
      def provisioning_state
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      end
      def resource_identity_type
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ResourceIdentityType
      end
      def compute_type
        Azure::MachineLearningServices::Mgmt::V2018_03_01_preview::Models::ComputeType
      end
    end
  end
end
