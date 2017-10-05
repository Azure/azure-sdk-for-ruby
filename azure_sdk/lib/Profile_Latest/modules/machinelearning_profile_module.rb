# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_machine_learning'


module Azure::Profiles::Management::Profile_Latest
  module MachineLearning
    WebServices = Azure::ARM::MachineLearning::Api_2017_01_01::WebServices

    module Models
      ModeValueInfo = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ModeValueInfo
      ModuleAssetParameter = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ModuleAssetParameter
      WebServiceKeys = Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServiceKeys
      AssetItem = Azure::ARM::MachineLearning::Api_2017_01_01::Models::AssetItem
      DiagnosticsConfiguration = Azure::ARM::MachineLearning::Api_2017_01_01::Models::DiagnosticsConfiguration
      WebServiceParameter = Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServiceParameter
      MachineLearningWorkspace = Azure::ARM::MachineLearning::Api_2017_01_01::Models::MachineLearningWorkspace
      WebServiceProperties = Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServiceProperties
      ColumnSpecification = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ColumnSpecification
      TableSpecification = Azure::ARM::MachineLearning::Api_2017_01_01::Models::TableSpecification
      ServiceInputOutputSpecification = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ServiceInputOutputSpecification
      BlobLocation = Azure::ARM::MachineLearning::Api_2017_01_01::Models::BlobLocation
      GraphNode = Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphNode
      OutputPort = Azure::ARM::MachineLearning::Api_2017_01_01::Models::OutputPort
      GraphEdge = Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphEdge
      RealtimeConfiguration = Azure::ARM::MachineLearning::Api_2017_01_01::Models::RealtimeConfiguration
      GraphParameterLink = Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphParameterLink
      CommitmentPlan = Azure::ARM::MachineLearning::Api_2017_01_01::Models::CommitmentPlan
      GraphParameter = Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphParameter
      InputPort = Azure::ARM::MachineLearning::Api_2017_01_01::Models::InputPort
      GraphPackage = Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphPackage
      StorageAccount = Azure::ARM::MachineLearning::Api_2017_01_01::Models::StorageAccount
      AsyncOperationStatus = Azure::ARM::MachineLearning::Api_2017_01_01::Models::AsyncOperationStatus
      PaginatedWebServicesList = Azure::ARM::MachineLearning::Api_2017_01_01::Models::PaginatedWebServicesList
      ExampleRequest = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ExampleRequest
      AsyncOperationErrorInfo = Azure::ARM::MachineLearning::Api_2017_01_01::Models::AsyncOperationErrorInfo
      WebService = Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebService
      WebServicePropertiesForGraph = Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServicePropertiesForGraph
      ProvisioningState = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ProvisioningState
      DiagnosticsLevel = Azure::ARM::MachineLearning::Api_2017_01_01::Models::DiagnosticsLevel
      ColumnType = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ColumnType
      ColumnFormat = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ColumnFormat
      AssetType = Azure::ARM::MachineLearning::Api_2017_01_01::Models::AssetType
      InputPortType = Azure::ARM::MachineLearning::Api_2017_01_01::Models::InputPortType
      OutputPortType = Azure::ARM::MachineLearning::Api_2017_01_01::Models::OutputPortType
      ParameterType = Azure::ARM::MachineLearning::Api_2017_01_01::Models::ParameterType
    end

    #
    # MachineLearning
    #
    class MachineLearningClass
      attr_accessor :web_services, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::MachineLearning::Api_2017_01_01::AzureMLWebServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.web_services = Azure::ARM::MachineLearning::Api_2017_01_01::WebServices.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-01-01'
            client = Azure::ARM::MachineLearning::Api_2017_01_01::AzureMLWebServicesManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def mode_value_info
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ModeValueInfo
        end
        def module_asset_parameter
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ModuleAssetParameter
        end
        def web_service_keys
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServiceKeys
        end
        def asset_item
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::AssetItem
        end
        def diagnostics_configuration
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::DiagnosticsConfiguration
        end
        def web_service_parameter
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServiceParameter
        end
        def machine_learning_workspace
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::MachineLearningWorkspace
        end
        def web_service_properties
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServiceProperties
        end
        def column_specification
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ColumnSpecification
        end
        def table_specification
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::TableSpecification
        end
        def service_input_output_specification
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ServiceInputOutputSpecification
        end
        def blob_location
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::BlobLocation
        end
        def graph_node
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphNode
        end
        def output_port
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::OutputPort
        end
        def graph_edge
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphEdge
        end
        def realtime_configuration
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::RealtimeConfiguration
        end
        def graph_parameter_link
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphParameterLink
        end
        def commitment_plan
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::CommitmentPlan
        end
        def graph_parameter
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphParameter
        end
        def input_port
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::InputPort
        end
        def graph_package
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::GraphPackage
        end
        def storage_account
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::StorageAccount
        end
        def async_operation_status
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::AsyncOperationStatus
        end
        def paginated_web_services_list
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::PaginatedWebServicesList
        end
        def example_request
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ExampleRequest
        end
        def async_operation_error_info
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::AsyncOperationErrorInfo
        end
        def web_service
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebService
        end
        def web_service_properties_for_graph
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::WebServicePropertiesForGraph
        end
        def provisioning_state
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ProvisioningState
        end
        def diagnostics_level
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::DiagnosticsLevel
        end
        def column_type
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ColumnType
        end
        def column_format
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ColumnFormat
        end
        def asset_type
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::AssetType
        end
        def input_port_type
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::InputPortType
        end
        def output_port_type
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::OutputPortType
        end
        def parameter_type
          Azure::ARM::MachineLearning::Api_2017_01_01::Models::ParameterType
        end
      end
    end
  end
end
