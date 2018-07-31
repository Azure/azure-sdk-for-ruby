# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::Latest
  module Consumption
    module Mgmt
      Operations = Azure::Consumption::Mgmt::V2018_01_31::Operations
      UsageDetails = Azure::Consumption::Mgmt::V2018_01_31::UsageDetails
      Marketplaces = Azure::Consumption::Mgmt::V2018_01_31::Marketplaces
      ReservationsSummaries = Azure::Consumption::Mgmt::V2018_01_31::ReservationsSummaries
      ReservationsDetails = Azure::Consumption::Mgmt::V2018_01_31::ReservationsDetails
      Budgets = Azure::Consumption::Mgmt::V2018_01_31::Budgets
      PriceSheet = Azure::Consumption::Mgmt::V2018_01_31::PriceSheet

      module Models
        Resource = Azure::Consumption::Mgmt::V2018_01_31::Models::Resource
        MeterDetails = Azure::Consumption::Mgmt::V2018_01_31::Models::MeterDetails
        Filters = Azure::Consumption::Mgmt::V2018_01_31::Models::Filters
        UsageDetailsListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetailsListResult
        CurrentSpend = Azure::Consumption::Mgmt::V2018_01_31::Models::CurrentSpend
        MarketplacesListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::MarketplacesListResult
        ReservationSummariesListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummariesListResult
        ReservationDetailsListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetailsListResult
        BudgetsListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetsListResult
        OperationListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::OperationListResult
        PriceSheetProperties = Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetProperties
        BudgetTimePeriod = Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetTimePeriod
        UsageDetail = Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetail
        OperationDisplay = Azure::Consumption::Mgmt::V2018_01_31::Models::OperationDisplay
        ReservationSummaries = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummaries
        Marketplace = Azure::Consumption::Mgmt::V2018_01_31::Models::Marketplace
        Budget = Azure::Consumption::Mgmt::V2018_01_31::Models::Budget
        ErrorResponse = Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorResponse
        ProxyResource = Azure::Consumption::Mgmt::V2018_01_31::Models::ProxyResource
        PriceSheetResult = Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetResult
        ReservationDetails = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetails
        Notification = Azure::Consumption::Mgmt::V2018_01_31::Models::Notification
        Operation = Azure::Consumption::Mgmt::V2018_01_31::Models::Operation
        CategoryType = Azure::Consumption::Mgmt::V2018_01_31::Models::CategoryType
        TimeGrainType = Azure::Consumption::Mgmt::V2018_01_31::Models::TimeGrainType
        OperatorType = Azure::Consumption::Mgmt::V2018_01_31::Models::OperatorType
        Datagrain = Azure::Consumption::Mgmt::V2018_01_31::Models::Datagrain
        ErrorDetails = Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorDetails
      end

      class ConsumptionManagementClass
        attr_reader :operations, :usage_details, :marketplaces, :reservations_summaries, :reservations_details, :budgets, :price_sheet, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Consumption::Mgmt::V2018_01_31::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @usage_details = @client_0.usage_details
          @marketplaces = @client_0.marketplaces
          @reservations_summaries = @client_0.reservations_summaries
          @reservations_details = @client_0.reservations_details
          @budgets = @client_0.budgets
          @price_sheet = @client_0.price_sheet

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Consumption/Mgmt"
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
          def resource
            Azure::Consumption::Mgmt::V2018_01_31::Models::Resource
          end
          def meter_details
            Azure::Consumption::Mgmt::V2018_01_31::Models::MeterDetails
          end
          def filters
            Azure::Consumption::Mgmt::V2018_01_31::Models::Filters
          end
          def usage_details_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetailsListResult
          end
          def current_spend
            Azure::Consumption::Mgmt::V2018_01_31::Models::CurrentSpend
          end
          def marketplaces_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::MarketplacesListResult
          end
          def reservation_summaries_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummariesListResult
          end
          def reservation_details_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetailsListResult
          end
          def budgets_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetsListResult
          end
          def operation_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::OperationListResult
          end
          def price_sheet_properties
            Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetProperties
          end
          def budget_time_period
            Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetTimePeriod
          end
          def usage_detail
            Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetail
          end
          def operation_display
            Azure::Consumption::Mgmt::V2018_01_31::Models::OperationDisplay
          end
          def reservation_summaries
            Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummaries
          end
          def marketplace
            Azure::Consumption::Mgmt::V2018_01_31::Models::Marketplace
          end
          def budget
            Azure::Consumption::Mgmt::V2018_01_31::Models::Budget
          end
          def error_response
            Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorResponse
          end
          def proxy_resource
            Azure::Consumption::Mgmt::V2018_01_31::Models::ProxyResource
          end
          def price_sheet_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetResult
          end
          def reservation_details
            Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetails
          end
          def notification
            Azure::Consumption::Mgmt::V2018_01_31::Models::Notification
          end
          def operation
            Azure::Consumption::Mgmt::V2018_01_31::Models::Operation
          end
          def category_type
            Azure::Consumption::Mgmt::V2018_01_31::Models::CategoryType
          end
          def time_grain_type
            Azure::Consumption::Mgmt::V2018_01_31::Models::TimeGrainType
          end
          def operator_type
            Azure::Consumption::Mgmt::V2018_01_31::Models::OperatorType
          end
          def datagrain
            Azure::Consumption::Mgmt::V2018_01_31::Models::Datagrain
          end
          def error_details
            Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorDetails
          end
        end
      end
    end
  end
end
