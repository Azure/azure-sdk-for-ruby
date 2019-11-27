# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cost_management'

module Azure::Profiles::V2019_07_01
  module CostManagement
    module Mgmt
      ReportConfigOperations = Azure::CostManagement::Mgmt::V2018_05_31::ReportConfigOperations
      BillingAccountDimensions = Azure::CostManagement::Mgmt::V2018_05_31::BillingAccountDimensions
      SubscriptionDimensions = Azure::CostManagement::Mgmt::V2018_05_31::SubscriptionDimensions
      ResourceGroupDimensions = Azure::CostManagement::Mgmt::V2018_05_31::ResourceGroupDimensions
      Operations = Azure::CostManagement::Mgmt::V2018_05_31::Operations

      module Models
        ReportConfigFilter = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigFilter
        ReportConfigDataset = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDataset
        ErrorResponse = Azure::CostManagement::Mgmt::V2018_05_31::Models::ErrorResponse
        ReportConfigDefinition = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDefinition
        ReportConfigRecurrencePeriod = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigRecurrencePeriod
        Resource = Azure::CostManagement::Mgmt::V2018_05_31::Models::Resource
        ReportConfigSchedule = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigSchedule
        ReportConfigDeliveryInfo = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDeliveryInfo
        ReportConfigDatasetConfiguration = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDatasetConfiguration
        ReportConfigListResult = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigListResult
        ReportConfigGrouping = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigGrouping
        OperationListResult = Azure::CostManagement::Mgmt::V2018_05_31::Models::OperationListResult
        ErrorDetails = Azure::CostManagement::Mgmt::V2018_05_31::Models::ErrorDetails
        DimensionsListResult = Azure::CostManagement::Mgmt::V2018_05_31::Models::DimensionsListResult
        ReportConfigTimePeriod = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigTimePeriod
        QueryColumn = Azure::CostManagement::Mgmt::V2018_05_31::Models::QueryColumn
        ReportConfigComparisonExpression = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigComparisonExpression
        Operation = Azure::CostManagement::Mgmt::V2018_05_31::Models::Operation
        ReportConfigAggregation = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigAggregation
        QueryResult = Azure::CostManagement::Mgmt::V2018_05_31::Models::QueryResult
        ReportConfigDeliveryDestination = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDeliveryDestination
        OperationDisplay = Azure::CostManagement::Mgmt::V2018_05_31::Models::OperationDisplay
        ReportConfig = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfig
        Dimension = Azure::CostManagement::Mgmt::V2018_05_31::Models::Dimension
        Query = Azure::CostManagement::Mgmt::V2018_05_31::Models::Query
        StatusType = Azure::CostManagement::Mgmt::V2018_05_31::Models::StatusType
        RecurrenceType = Azure::CostManagement::Mgmt::V2018_05_31::Models::RecurrenceType
        FormatType = Azure::CostManagement::Mgmt::V2018_05_31::Models::FormatType
        TimeframeType = Azure::CostManagement::Mgmt::V2018_05_31::Models::TimeframeType
        GranularityType = Azure::CostManagement::Mgmt::V2018_05_31::Models::GranularityType
        ReportConfigColumnType = Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigColumnType
      end

      class CostManagementManagementClass
        attr_reader :report_config_operations, :billing_account_dimensions, :subscription_dimensions, :resource_group_dimensions, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CostManagement::Mgmt::V2018_05_31::CostManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @report_config_operations = @client_0.report_config_operations
          @billing_account_dimensions = @client_0.billing_account_dimensions
          @subscription_dimensions = @client_0.subscription_dimensions
          @resource_group_dimensions = @client_0.resource_group_dimensions
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/CostManagement/Mgmt"
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
          def report_config_filter
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigFilter
          end
          def report_config_dataset
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDataset
          end
          def error_response
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ErrorResponse
          end
          def report_config_definition
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDefinition
          end
          def report_config_recurrence_period
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigRecurrencePeriod
          end
          def resource
            Azure::CostManagement::Mgmt::V2018_05_31::Models::Resource
          end
          def report_config_schedule
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigSchedule
          end
          def report_config_delivery_info
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDeliveryInfo
          end
          def report_config_dataset_configuration
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDatasetConfiguration
          end
          def report_config_list_result
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigListResult
          end
          def report_config_grouping
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigGrouping
          end
          def operation_list_result
            Azure::CostManagement::Mgmt::V2018_05_31::Models::OperationListResult
          end
          def error_details
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ErrorDetails
          end
          def dimensions_list_result
            Azure::CostManagement::Mgmt::V2018_05_31::Models::DimensionsListResult
          end
          def report_config_time_period
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigTimePeriod
          end
          def query_column
            Azure::CostManagement::Mgmt::V2018_05_31::Models::QueryColumn
          end
          def report_config_comparison_expression
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigComparisonExpression
          end
          def operation
            Azure::CostManagement::Mgmt::V2018_05_31::Models::Operation
          end
          def report_config_aggregation
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigAggregation
          end
          def query_result
            Azure::CostManagement::Mgmt::V2018_05_31::Models::QueryResult
          end
          def report_config_delivery_destination
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigDeliveryDestination
          end
          def operation_display
            Azure::CostManagement::Mgmt::V2018_05_31::Models::OperationDisplay
          end
          def report_config
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfig
          end
          def dimension
            Azure::CostManagement::Mgmt::V2018_05_31::Models::Dimension
          end
          def query
            Azure::CostManagement::Mgmt::V2018_05_31::Models::Query
          end
          def status_type
            Azure::CostManagement::Mgmt::V2018_05_31::Models::StatusType
          end
          def recurrence_type
            Azure::CostManagement::Mgmt::V2018_05_31::Models::RecurrenceType
          end
          def format_type
            Azure::CostManagement::Mgmt::V2018_05_31::Models::FormatType
          end
          def timeframe_type
            Azure::CostManagement::Mgmt::V2018_05_31::Models::TimeframeType
          end
          def granularity_type
            Azure::CostManagement::Mgmt::V2018_05_31::Models::GranularityType
          end
          def report_config_column_type
            Azure::CostManagement::Mgmt::V2018_05_31::Models::ReportConfigColumnType
          end
        end
      end
    end
  end
end
