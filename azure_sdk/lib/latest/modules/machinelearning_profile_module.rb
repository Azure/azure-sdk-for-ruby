# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_machine_learning'

module Azure::Profiles::Latest
  module MachineLearning
    module Mgmt
      WebServices = Azure::MachineLearning::Mgmt::V2017_01_01::WebServices

      module Models
        DiagnosticsLevel = Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsLevel
        ColumnType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnType
        ColumnFormat = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnFormat
        AssetType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetType
        InputPortType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPortType
        OutputPortType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPortType
        ParameterType = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ParameterType
        AsyncOperationStatus = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationStatus
        StorageAccount = Azure::MachineLearning::Mgmt::V2017_01_01::Models::StorageAccount
        Resource = Azure::MachineLearning::Mgmt::V2017_01_01::Models::Resource
        ProvisioningState = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ProvisioningState
        ModeValueInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModeValueInfo
        ModuleAssetParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModuleAssetParameter
        WebServiceKeys = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceKeys
        AssetItem = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetItem
        DiagnosticsConfiguration = Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsConfiguration
        WebServiceParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceParameter
        MachineLearningWorkspace = Azure::MachineLearning::Mgmt::V2017_01_01::Models::MachineLearningWorkspace
        WebServiceProperties = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceProperties
        ColumnSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnSpecification
        TableSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::TableSpecification
        ServiceInputOutputSpecification = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ServiceInputOutputSpecification
        BlobLocation = Azure::MachineLearning::Mgmt::V2017_01_01::Models::BlobLocation
        GraphNode = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphNode
        OutputPort = Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPort
        GraphEdge = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphEdge
        RealtimeConfiguration = Azure::MachineLearning::Mgmt::V2017_01_01::Models::RealtimeConfiguration
        GraphParameterLink = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameterLink
        CommitmentPlan = Azure::MachineLearning::Mgmt::V2017_01_01::Models::CommitmentPlan
        GraphParameter = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameter
        InputPort = Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPort
        GraphPackage = Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphPackage
        PaginatedWebServicesList = Azure::MachineLearning::Mgmt::V2017_01_01::Models::PaginatedWebServicesList
        ExampleRequest = Azure::MachineLearning::Mgmt::V2017_01_01::Models::ExampleRequest
        AsyncOperationErrorInfo = Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationErrorInfo
        WebService = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebService
        WebServicePropertiesForGraph = Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServicePropertiesForGraph
      end

      class MachineLearningManagementClass
        attr_reader :web_services, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MachineLearning::Mgmt::V2017_01_01::AzureMLWebServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
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
          def async_operation_status
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationStatus
          end
          def storage_account
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::StorageAccount
          end
          def resource
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::Resource
          end
          def provisioning_state
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ProvisioningState
          end
          def mode_value_info
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModeValueInfo
          end
          def module_asset_parameter
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ModuleAssetParameter
          end
          def web_service_keys
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceKeys
          end
          def asset_item
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AssetItem
          end
          def diagnostics_configuration
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::DiagnosticsConfiguration
          end
          def web_service_parameter
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceParameter
          end
          def machine_learning_workspace
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::MachineLearningWorkspace
          end
          def web_service_properties
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServiceProperties
          end
          def column_specification
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ColumnSpecification
          end
          def table_specification
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::TableSpecification
          end
          def service_input_output_specification
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ServiceInputOutputSpecification
          end
          def blob_location
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::BlobLocation
          end
          def graph_node
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphNode
          end
          def output_port
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::OutputPort
          end
          def graph_edge
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphEdge
          end
          def realtime_configuration
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::RealtimeConfiguration
          end
          def graph_parameter_link
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameterLink
          end
          def commitment_plan
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::CommitmentPlan
          end
          def graph_parameter
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphParameter
          end
          def input_port
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::InputPort
          end
          def graph_package
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::GraphPackage
          end
          def paginated_web_services_list
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::PaginatedWebServicesList
          end
          def example_request
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::ExampleRequest
          end
          def async_operation_error_info
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::AsyncOperationErrorInfo
          end
          def web_service
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebService
          end
          def web_service_properties_for_graph
            Azure::MachineLearning::Mgmt::V2017_01_01::Models::WebServicePropertiesForGraph
          end
        end
      end
    end
  end
end
