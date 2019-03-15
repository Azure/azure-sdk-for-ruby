# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_machine_learning'

module Azure::MachineLearning::Profiles::Latest
  module Mgmt
    Operations = Azure::MachineLearning::Mgmt::V2017_01_01::Operations
    WebServices = Azure::MachineLearning::Mgmt::V2017_01_01::WebServices

    module Models
      AssetItem = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetItem
      Resource = Azure::MachineLearning::Mgmt::V2017_01_01::Models::Resource
      WebServiceParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceParameter
      WebServiceKeys = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceKeys
      WebServiceProperties = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceProperties
      DiagnosticsConfiguration = Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsConfiguration
      RealtimeConfiguration = Azure::MachineLearning::Mgmt::V2017_01_01::Models::RealtimeConfiguration
      StorageAccount = Azure::MachineLearning::Mgmt::V2017_01_01::Models::StorageAccount
      CommitmentPlan = Azure::MachineLearning::Mgmt::V2017_01_01::Models::CommitmentPlan
      TableSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::TableSpecification
      OperationEntityListResult = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntityListResult
      ExampleRequest = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ExampleRequest
      GraphNode = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphNode
      InputPort = Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPort
      GraphEdge = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphEdge
      ModeValueInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModeValueInfo
      GraphParameterLink = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameterLink
      PatchedResource = Azure::MachineLearning::Mgmt::V2017_01_01::Models::PatchedResource
      GraphParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameter
      ColumnSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnSpecification
      GraphPackage = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphPackage
      BlobLocation = Azure::MachineLearning::Mgmt::V2017_01_01::Models::BlobLocation
      OperationEntity = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntity
      ModuleAssetParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModuleAssetParameter
      PaginatedWebServicesList = Azure::MachineLearning::Mgmt::V2017_01_01::Models::PaginatedWebServicesList
      ServiceInputOutputSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ServiceInputOutputSpecification
      AsyncOperationErrorInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationErrorInfo
      MachineLearningWorkspace = Azure::MachineLearning::Mgmt::V2017_01_01::Models::MachineLearningWorkspace
      AsyncOperationStatus = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationStatus
      OutputPort = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPort
      OperationDisplayInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationDisplayInfo
      WebService = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebService
      PatchedWebService = Azure::MachineLearning::Mgmt::V2017_01_01::Models::PatchedWebService
      WebServicePropertiesForGraph = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServicePropertiesForGraph
      ProvisioningState = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ProvisioningState
      DiagnosticsLevel = Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsLevel
      ColumnType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnType
      ColumnFormat = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnFormat
      AssetType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetType
      InputPortType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPortType
      OutputPortType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPortType
      ParameterType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ParameterType
    end

    #
    # MachineLearningManagementClass
    #
    class MachineLearningManagementClass
      attr_reader :operations, :web_services, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::MachineLearning::Mgmt::V2017_01_01::AzureMLWebServicesManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @web_services = @client_0.web_services

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/MachineLearning/Mgmt'
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
      def asset_item
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetItem
      end
      def resource
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::Resource
      end
      def web_service_parameter
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceParameter
      end
      def web_service_keys
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceKeys
      end
      def web_service_properties
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceProperties
      end
      def diagnostics_configuration
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsConfiguration
      end
      def realtime_configuration
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::RealtimeConfiguration
      end
      def storage_account
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::StorageAccount
      end
      def commitment_plan
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::CommitmentPlan
      end
      def table_specification
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::TableSpecification
      end
      def operation_entity_list_result
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntityListResult
      end
      def example_request
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ExampleRequest
      end
      def graph_node
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphNode
      end
      def input_port
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPort
      end
      def graph_edge
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphEdge
      end
      def mode_value_info
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModeValueInfo
      end
      def graph_parameter_link
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameterLink
      end
      def patched_resource
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::PatchedResource
      end
      def graph_parameter
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameter
      end
      def column_specification
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnSpecification
      end
      def graph_package
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphPackage
      end
      def blob_location
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::BlobLocation
      end
      def operation_entity
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntity
      end
      def module_asset_parameter
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModuleAssetParameter
      end
      def paginated_web_services_list
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::PaginatedWebServicesList
      end
      def service_input_output_specification
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ServiceInputOutputSpecification
      end
      def async_operation_error_info
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationErrorInfo
      end
      def machine_learning_workspace
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::MachineLearningWorkspace
      end
      def async_operation_status
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationStatus
      end
      def output_port
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPort
      end
      def operation_display_info
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationDisplayInfo
      end
      def web_service
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebService
      end
      def patched_web_service
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::PatchedWebService
      end
      def web_service_properties_for_graph
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServicePropertiesForGraph
      end
      def provisioning_state
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ProvisioningState
      end
      def diagnostics_level
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsLevel
      end
      def column_type
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnType
      end
      def column_format
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnFormat
      end
      def asset_type
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetType
      end
      def input_port_type
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPortType
      end
      def output_port_type
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPortType
      end
      def parameter_type
        Azure::MachineLearning::Mgmt::V2017_01_01::Models::ParameterType
      end
    end
  end
end
