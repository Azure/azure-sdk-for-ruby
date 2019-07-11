# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resourcegraph'

module Azure::ResourceGraph::Profiles::Latest
  module Mgmt
    Operations = Azure::ResourceGraph::Mgmt::V2019_04_01::Operations

    module Models
      Table = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Table
      QueryRequestOptions = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::QueryRequestOptions
      FacetRequest = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetRequest
      ErrorDetails = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ErrorDetails
      Facet = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Facet
      OperationListResult = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::OperationListResult
      Column = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Column
      Error = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Error
      QueryRequest = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::QueryRequest
      ErrorResponse = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ErrorResponse
      FacetRequestOptions = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetRequestOptions
      OperationDisplay = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::OperationDisplay
      QueryResponse = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::QueryResponse
      Operation = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Operation
      FacetResult = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetResult
      FacetError = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetError
      ResultFormat = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ResultFormat
      FacetSortOrder = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetSortOrder
      ResultTruncated = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ResultTruncated
      ColumnDataType = Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ColumnDataType
    end

    #
    # ResourceGraphManagementClass
    #
    class ResourceGraphManagementClass
      attr_reader :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ResourceGraph::Mgmt::V2019_04_01::ResourceGraphClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ResourceGraph/Mgmt'
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
      def table
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Table
      end
      def query_request_options
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::QueryRequestOptions
      end
      def facet_request
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetRequest
      end
      def error_details
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ErrorDetails
      end
      def facet
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Facet
      end
      def operation_list_result
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::OperationListResult
      end
      def column
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Column
      end
      def error
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Error
      end
      def query_request
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::QueryRequest
      end
      def error_response
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ErrorResponse
      end
      def facet_request_options
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetRequestOptions
      end
      def operation_display
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::OperationDisplay
      end
      def query_response
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::QueryResponse
      end
      def operation
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::Operation
      end
      def facet_result
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetResult
      end
      def facet_error
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetError
      end
      def result_format
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ResultFormat
      end
      def facet_sort_order
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::FacetSortOrder
      end
      def result_truncated
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ResultTruncated
      end
      def column_data_type
        Azure::ResourceGraph::Mgmt::V2019_04_01::Models::ColumnDataType
      end
    end
  end
end
