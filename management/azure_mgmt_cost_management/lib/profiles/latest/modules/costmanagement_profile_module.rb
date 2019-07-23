# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cost_management'

module Azure::CostManagement::Profiles::Latest
  module Mgmt
    Views = Azure::CostManagement::Mgmt::V2019_04_01_preview::Views
    Budgets = Azure::CostManagement::Mgmt::V2019_04_01_preview::Budgets
    Budget = Azure::CostManagement::Mgmt::V2019_04_01_preview::Budget
    Operations = Azure::CostManagement::Mgmt::V2019_04_01_preview::Operations

    module Models
      OperationDisplay = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::OperationDisplay
      ErrorBase = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ErrorBase
      Operation = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Operation
      ErrorResponse = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ErrorResponse
      OperationListResult = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::OperationListResult
      ProxyResource = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ProxyResource
      Scope = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Scope
      ReportConfigDatasetConfiguration = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigDatasetConfiguration
      KpiProperties = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::KpiProperties
      ReportConfigGrouping = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigGrouping
      PivotProperties = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::PivotProperties
      ReportConfigComparisonExpression = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigComparisonExpression
      ReportConfigFilter = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigFilter
      ReportConfigDataset = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigDataset
      Resource = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Resource
      ViewListResult = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ViewListResult
      ReportConfigAggregation = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigAggregation
      BudgetTimePeriod = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetTimePeriod
      ErrorDetails = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ErrorDetails
      CurrentSpend = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::CurrentSpend
      ReportConfigSorting = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigSorting
      Notification = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Notification
      ReportConfigTimePeriod = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigTimePeriod
      BudgetsListResult = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetsListResult
      View = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::View
      BudgetModel = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetModel
      TimeframeType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::TimeframeType
      GranularityType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::GranularityType
      ReportConfigColumnType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigColumnType
      OperatorType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::OperatorType
      ChartType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ChartType
      AccumulatedType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::AccumulatedType
      MetricType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::MetricType
      KpiTypeType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::KpiTypeType
      PivotTypeType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::PivotTypeType
      CategoryType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::CategoryType
      TimeGrainType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::TimeGrainType
      NotificationOperatorType = Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::NotificationOperatorType
    end

    #
    # CostManagementManagementClass
    #
    class CostManagementManagementClass
      attr_reader :views, :budgets, :budget, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::CostManagement::Mgmt::V2019_04_01_preview::CostManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @views = @client_0.views
        @budgets = @client_0.budgets
        @budget = @client_0.budget
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/CostManagement/Mgmt'
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
      def operation_display
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::OperationDisplay
      end
      def error_base
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ErrorBase
      end
      def operation
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Operation
      end
      def error_response
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ErrorResponse
      end
      def operation_list_result
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::OperationListResult
      end
      def proxy_resource
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ProxyResource
      end
      def scope
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Scope
      end
      def report_config_dataset_configuration
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigDatasetConfiguration
      end
      def kpi_properties
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::KpiProperties
      end
      def report_config_grouping
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigGrouping
      end
      def pivot_properties
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::PivotProperties
      end
      def report_config_comparison_expression
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigComparisonExpression
      end
      def report_config_filter
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigFilter
      end
      def report_config_dataset
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigDataset
      end
      def resource
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Resource
      end
      def view_list_result
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ViewListResult
      end
      def report_config_aggregation
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigAggregation
      end
      def budget_time_period
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetTimePeriod
      end
      def error_details
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ErrorDetails
      end
      def current_spend
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::CurrentSpend
      end
      def report_config_sorting
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigSorting
      end
      def notification
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::Notification
      end
      def report_config_time_period
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigTimePeriod
      end
      def budgets_list_result
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetsListResult
      end
      def view
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::View
      end
      def budget_model
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::BudgetModel
      end
      def timeframe_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::TimeframeType
      end
      def granularity_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::GranularityType
      end
      def report_config_column_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ReportConfigColumnType
      end
      def operator_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::OperatorType
      end
      def chart_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::ChartType
      end
      def accumulated_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::AccumulatedType
      end
      def metric_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::MetricType
      end
      def kpi_type_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::KpiTypeType
      end
      def pivot_type_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::PivotTypeType
      end
      def category_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::CategoryType
      end
      def time_grain_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::TimeGrainType
      end
      def notification_operator_type
        Azure::CostManagement::Mgmt::V2019_04_01_preview::Models::NotificationOperatorType
      end
    end
  end
end
