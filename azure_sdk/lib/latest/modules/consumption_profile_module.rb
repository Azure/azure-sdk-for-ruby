# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::Latest
  module Consumption
    module Mgmt
      ReservationsSummaries = Azure::Consumption::Mgmt::V2018_01_31::ReservationsSummaries
      ReservationsDetails = Azure::Consumption::Mgmt::V2018_01_31::ReservationsDetails
      Budgets = Azure::Consumption::Mgmt::V2018_01_31::Budgets
      PriceSheet = Azure::Consumption::Mgmt::V2018_01_31::PriceSheet
      Operations = Azure::Consumption::Mgmt::V2018_01_31::Operations
      UsageDetails = Azure::Consumption::Mgmt::V2018_01_31::UsageDetails
      Marketplaces = Azure::Consumption::Mgmt::V2018_01_31::Marketplaces

      module Models
        OperatorType = Azure::Consumption::Mgmt::V2018_01_31::Models::OperatorType
        Resource = Azure::Consumption::Mgmt::V2018_01_31::Models::Resource
        OperationDisplay = Azure::Consumption::Mgmt::V2018_01_31::Models::OperationDisplay
        MeterDetails = Azure::Consumption::Mgmt::V2018_01_31::Models::MeterDetails
        Filters = Azure::Consumption::Mgmt::V2018_01_31::Models::Filters
        UsageDetailsListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetailsListResult
        CurrentSpend = Azure::Consumption::Mgmt::V2018_01_31::Models::CurrentSpend
        MarketplacesListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::MarketplacesListResult
        ReservationSummariesListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummariesListResult
        ReservationDetailsListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetailsListResult
        OperationListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::OperationListResult
        BudgetsListResult = Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetsListResult
        PriceSheetProperties = Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetProperties
        ErrorResponse = Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorResponse
        UsageDetail = Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetail
        ProxyResource = Azure::Consumption::Mgmt::V2018_01_31::Models::ProxyResource
        Notification = Azure::Consumption::Mgmt::V2018_01_31::Models::Notification
        Operation = Azure::Consumption::Mgmt::V2018_01_31::Models::Operation
        BudgetTimePeriod = Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetTimePeriod
        ReservationDetails = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetails
        Marketplace = Azure::Consumption::Mgmt::V2018_01_31::Models::Marketplace
        ReservationSummaries = Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummaries
        CategoryType = Azure::Consumption::Mgmt::V2018_01_31::Models::CategoryType
        ErrorDetails = Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorDetails
        PriceSheetResult = Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetResult
        Datagrain = Azure::Consumption::Mgmt::V2018_01_31::Models::Datagrain
        TimeGrainType = Azure::Consumption::Mgmt::V2018_01_31::Models::TimeGrainType
        Budget = Azure::Consumption::Mgmt::V2018_01_31::Models::Budget
      end

      class ConsumptionManagementClass
        attr_reader :reservations_summaries, :reservations_details, :budgets, :price_sheet, :operations, :usage_details, :marketplaces, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Consumption::Mgmt::V2018_01_31::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @reservations_summaries = @client_0.reservations_summaries
          @reservations_details = @client_0.reservations_details
          @budgets = @client_0.budgets
          @price_sheet = @client_0.price_sheet
          @operations = @client_0.operations
          @usage_details = @client_0.usage_details
          @marketplaces = @client_0.marketplaces

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
          def operator_type
            Azure::Consumption::Mgmt::V2018_01_31::Models::OperatorType
          end
          def resource
            Azure::Consumption::Mgmt::V2018_01_31::Models::Resource
          end
          def operation_display
            Azure::Consumption::Mgmt::V2018_01_31::Models::OperationDisplay
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
          def operation_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::OperationListResult
          end
          def budgets_list_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetsListResult
          end
          def price_sheet_properties
            Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetProperties
          end
          def error_response
            Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorResponse
          end
          def usage_detail
            Azure::Consumption::Mgmt::V2018_01_31::Models::UsageDetail
          end
          def proxy_resource
            Azure::Consumption::Mgmt::V2018_01_31::Models::ProxyResource
          end
          def notification
            Azure::Consumption::Mgmt::V2018_01_31::Models::Notification
          end
          def operation
            Azure::Consumption::Mgmt::V2018_01_31::Models::Operation
          end
          def budget_time_period
            Azure::Consumption::Mgmt::V2018_01_31::Models::BudgetTimePeriod
          end
          def reservation_details
            Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationDetails
          end
          def marketplace
            Azure::Consumption::Mgmt::V2018_01_31::Models::Marketplace
          end
          def reservation_summaries
            Azure::Consumption::Mgmt::V2018_01_31::Models::ReservationSummaries
          end
          def category_type
            Azure::Consumption::Mgmt::V2018_01_31::Models::CategoryType
          end
          def error_details
            Azure::Consumption::Mgmt::V2018_01_31::Models::ErrorDetails
          end
          def price_sheet_result
            Azure::Consumption::Mgmt::V2018_01_31::Models::PriceSheetResult
          end
          def datagrain
            Azure::Consumption::Mgmt::V2018_01_31::Models::Datagrain
          end
          def time_grain_type
            Azure::Consumption::Mgmt::V2018_01_31::Models::TimeGrainType
          end
          def budget
            Azure::Consumption::Mgmt::V2018_01_31::Models::Budget
          end
        end
      end
    end
  end
end
