# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_machine_learning'

module Azure::Profiles::Latest
  module MachineLearning
    module Mgmt
      Operations = Azure::MachineLearning::Mgmt::V2017_01_01::Operations
      WebServices = Azure::MachineLearning::Mgmt::V2017_01_01::WebServices

      module Models
        RealtimeConfiguration = Azure::MachineLearning::Mgmt::V2017_01_01::Models::RealtimeConfiguration
        WebServiceProperties = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceProperties
        MachineLearningWorkspace = Azure::MachineLearning::Mgmt::V2017_01_01::Models::MachineLearningWorkspace
        CommitmentPlan = Azure::MachineLearning::Mgmt::V2017_01_01::Models::CommitmentPlan
        TableSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::TableSpecification
        GraphNode = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphNode
        ExampleRequest = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ExampleRequest
        GraphEdge = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphEdge
        InputPort = Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPort
        GraphParameterLink = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameterLink
        ModeValueInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModeValueInfo
        GraphParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameter
        WebServiceKeys = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceKeys
        GraphPackage = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphPackage
        ColumnSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnSpecification
        BlobLocation = Azure::MachineLearning::Mgmt::V2017_01_01::Models::BlobLocation
        PaginatedWebServicesList = Azure::MachineLearning::Mgmt::V2017_01_01::Models::PaginatedWebServicesList
        OperationEntityListResult = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntityListResult
        ModuleAssetParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModuleAssetParameter
        AsyncOperationErrorInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationErrorInfo
        Resource = Azure::MachineLearning::Mgmt::V2017_01_01::Models::Resource
        DiagnosticsConfiguration = Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsConfiguration
        ServiceInputOutputSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ServiceInputOutputSpecification
        AsyncOperationStatus = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationStatus
        OutputPort = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPort
        OperationEntity = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntity
        WebServicePropertiesForGraph = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServicePropertiesForGraph
        DiagnosticsLevel = Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsLevel
        OperationDisplayInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationDisplayInfo
        ColumnFormat = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnFormat
        AssetType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetType
        ColumnType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnType
        WebService = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebService
        ProvisioningState = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ProvisioningState
        InputPortType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPortType
        OutputPortType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPortType
        ParameterType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ParameterType
        StorageAccount = Azure::MachineLearning::Mgmt::V2017_01_01::Models::StorageAccount
        AssetItem = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetItem
        WebServiceParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceParameter
      end

      class MachineLearningManagementClass
        attr_reader :operations, :web_services, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MachineLearning/Mgmt"
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
          def realtime_configuration
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::RealtimeConfiguration
          end
          def web_service_properties
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceProperties
          end
          def machine_learning_workspace
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::MachineLearningWorkspace
          end
          def commitment_plan
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::CommitmentPlan
          end
          def table_specification
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::TableSpecification
          end
          def graph_node
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphNode
          end
          def example_request
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ExampleRequest
          end
          def graph_edge
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphEdge
          end
          def input_port
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPort
          end
          def graph_parameter_link
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameterLink
          end
          def mode_value_info
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModeValueInfo
          end
          def graph_parameter
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameter
          end
          def web_service_keys
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceKeys
          end
          def graph_package
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphPackage
          end
          def column_specification
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnSpecification
          end
          def blob_location
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::BlobLocation
          end
          def paginated_web_services_list
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::PaginatedWebServicesList
          end
          def operation_entity_list_result
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntityListResult
          end
          def module_asset_parameter
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModuleAssetParameter
          end
          def async_operation_error_info
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationErrorInfo
          end
          def resource
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::Resource
          end
          def diagnostics_configuration
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsConfiguration
          end
          def service_input_output_specification
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ServiceInputOutputSpecification
          end
          def async_operation_status
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationStatus
          end
          def output_port
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPort
          end
          def operation_entity
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationEntity
          end
          def web_service_properties_for_graph
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServicePropertiesForGraph
          end
          def diagnostics_level
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsLevel
          end
          def operation_display_info
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::OperationDisplayInfo
          end
          def column_format
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnFormat
          end
          def asset_type
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetType
          end
          def column_type
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnType
          end
          def web_service
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebService
          end
          def provisioning_state
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ProvisioningState
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
          def storage_account
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::StorageAccount
          end
          def asset_item
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetItem
          end
          def web_service_parameter
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceParameter
          end
        end
      end
    end
  end
end
