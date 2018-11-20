# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::Latest
  module Consumption
    module Mgmt
      PriceSheet = Azure::Consumption::Mgmt::V2018_06_30::PriceSheet
      CostTags = Azure::Consumption::Mgmt::V2018_06_30::CostTags
      Forecasts = Azure::Consumption::Mgmt::V2018_06_30::Forecasts
      Budgets = Azure::Consumption::Mgmt::V2018_06_30::Budgets
      Operations = Azure::Consumption::Mgmt::V2018_06_30::Operations
      Tags = Azure::Consumption::Mgmt::V2018_06_30::Tags
      UsageDetails = Azure::Consumption::Mgmt::V2018_06_30::UsageDetails
      Marketplaces = Azure::Consumption::Mgmt::V2018_06_30::Marketplaces
      Balances = Azure::Consumption::Mgmt::V2018_06_30::Balances
      ReservationsSummaries = Azure::Consumption::Mgmt::V2018_06_30::ReservationsSummaries
      ReservationsDetails = Azure::Consumption::Mgmt::V2018_06_30::ReservationsDetails
      ReservationRecommendations = Azure::Consumption::Mgmt::V2018_06_30::ReservationRecommendations

      module Models
        MeterDetails = Azure::Consumption::Mgmt::V2018_06_30::Models::MeterDetails
        CurrentSpend = Azure::Consumption::Mgmt::V2018_06_30::Models::CurrentSpend
        UsageDetailsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetailsListResult
        BudgetTimePeriod = Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetTimePeriod
        MarketplacesListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::MarketplacesListResult
        Notification = Azure::Consumption::Mgmt::V2018_06_30::Models::Notification
        BalancePropertiesAdjustmentDetailsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesAdjustmentDetailsItem
        ReservationRecommendation = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendation
        Filters = Azure::Consumption::Mgmt::V2018_06_30::Models::Filters
        BudgetsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetsListResult
        BalancePropertiesNewPurchasesDetailsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesNewPurchasesDetailsItem
        QueryOptions = Azure::Consumption::Mgmt::V2018_06_30::Models::QueryOptions
        CostTagProperties = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTagProperties
        PriceSheetProperties = Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetProperties
        ReservationRecommendationsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendationsListResult
        ReservationSummariesListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummariesListResult
        ForecastPropertiesConfidenceLevelsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastPropertiesConfidenceLevelsItem
        ReservationDetailsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult
        ForecastsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastsListResult
        ResourceAttributes = Azure::Consumption::Mgmt::V2018_06_30::Models::ResourceAttributes
        UsageDetail = Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetail
        Marketplace = Azure::Consumption::Mgmt::V2018_06_30::Models::Marketplace
        Balance = Azure::Consumption::Mgmt::V2018_06_30::Models::Balance
        ReservationSummary = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummary
        ReservationDetail = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetail
        Budget = Azure::Consumption::Mgmt::V2018_06_30::Models::Budget
        CostTag = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag
        PriceSheetResult = Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetResult
        Forecast = Azure::Consumption::Mgmt::V2018_06_30::Models::Forecast
        BillingFrequency = Azure::Consumption::Mgmt::V2018_06_30::Models::BillingFrequency
        CategoryType = Azure::Consumption::Mgmt::V2018_06_30::Models::CategoryType
        TimeGrainType = Azure::Consumption::Mgmt::V2018_06_30::Models::TimeGrainType
        ErrorDetails = Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorDetails
        OperatorType = Azure::Consumption::Mgmt::V2018_06_30::Models::OperatorType
        Grain = Azure::Consumption::Mgmt::V2018_06_30::Models::Grain
        ChargeType = Azure::Consumption::Mgmt::V2018_06_30::Models::ChargeType
        Resource = Azure::Consumption::Mgmt::V2018_06_30::Models::Resource
        Datagrain = Azure::Consumption::Mgmt::V2018_06_30::Models::Datagrain
        Bound = Azure::Consumption::Mgmt::V2018_06_30::Models::Bound
        TagsResult = Azure::Consumption::Mgmt::V2018_06_30::Models::TagsResult
        OperationDisplay = Azure::Consumption::Mgmt::V2018_06_30::Models::OperationDisplay
        Operation = Azure::Consumption::Mgmt::V2018_06_30::Models::Operation
        OperationListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::OperationListResult
        Tag = Azure::Consumption::Mgmt::V2018_06_30::Models::Tag
        ErrorResponse = Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorResponse
        ProxyResource = Azure::Consumption::Mgmt::V2018_06_30::Models::ProxyResource
      end

      class ConsumptionManagementClass
        attr_reader :price_sheet, :cost_tags, :forecasts, :budgets, :operations, :tags, :usage_details, :marketplaces, :balances, :reservations_summaries, :reservations_details, :reservation_recommendations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Consumption::Mgmt::V2018_06_30::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @price_sheet = @client_0.price_sheet
          @cost_tags = @client_0.cost_tags
          @forecasts = @client_0.forecasts
          @budgets = @client_0.budgets
          @operations = @client_0.operations
          @tags = @client_0.tags
          @usage_details = @client_0.usage_details
          @marketplaces = @client_0.marketplaces
          @balances = @client_0.balances
          @reservations_summaries = @client_0.reservations_summaries
          @reservations_details = @client_0.reservations_details
          @reservation_recommendations = @client_0.reservation_recommendations

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
          def meter_details
            Azure::Consumption::Mgmt::V2018_06_30::Models::MeterDetails
          end
          def current_spend
            Azure::Consumption::Mgmt::V2018_06_30::Models::CurrentSpend
          end
          def usage_details_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetailsListResult
          end
          def budget_time_period
            Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetTimePeriod
          end
          def marketplaces_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::MarketplacesListResult
          end
          def notification
            Azure::Consumption::Mgmt::V2018_06_30::Models::Notification
          end
          def balance_properties_adjustment_details_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesAdjustmentDetailsItem
          end
          def reservation_recommendation
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendation
          end
          def filters
            Azure::Consumption::Mgmt::V2018_06_30::Models::Filters
          end
          def budgets_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetsListResult
          end
          def balance_properties_new_purchases_details_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesNewPurchasesDetailsItem
          end
          def query_options
            Azure::Consumption::Mgmt::V2018_06_30::Models::QueryOptions
          end
          def cost_tag_properties
            Azure::Consumption::Mgmt::V2018_06_30::Models::CostTagProperties
          end
          def price_sheet_properties
            Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetProperties
          end
          def reservation_recommendations_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendationsListResult
          end
          def reservation_summaries_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummariesListResult
          end
          def forecast_properties_confidence_levels_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastPropertiesConfidenceLevelsItem
          end
          def reservation_details_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult
          end
          def forecasts_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastsListResult
          end
          def resource_attributes
            Azure::Consumption::Mgmt::V2018_06_30::Models::ResourceAttributes
          end
          def usage_detail
            Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetail
          end
          def marketplace
            Azure::Consumption::Mgmt::V2018_06_30::Models::Marketplace
          end
          def balance
            Azure::Consumption::Mgmt::V2018_06_30::Models::Balance
          end
          def reservation_summary
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummary
          end
          def reservation_detail
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetail
          end
          def budget
            Azure::Consumption::Mgmt::V2018_06_30::Models::Budget
          end
          def cost_tag
            Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag
          end
          def price_sheet_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetResult
          end
          def forecast
            Azure::Consumption::Mgmt::V2018_06_30::Models::Forecast
          end
          def billing_frequency
            Azure::Consumption::Mgmt::V2018_06_30::Models::BillingFrequency
          end
          def category_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::CategoryType
          end
          def time_grain_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::TimeGrainType
          end
          def error_details
            Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorDetails
          end
          def operator_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperatorType
          end
          def grain
            Azure::Consumption::Mgmt::V2018_06_30::Models::Grain
          end
          def charge_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::ChargeType
          end
          def resource
            Azure::Consumption::Mgmt::V2018_06_30::Models::Resource
          end
          def datagrain
            Azure::Consumption::Mgmt::V2018_06_30::Models::Datagrain
          end
          def bound
            Azure::Consumption::Mgmt::V2018_06_30::Models::Bound
          end
          def tags_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::TagsResult
          end
          def operation_display
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperationDisplay
          end
          def operation
            Azure::Consumption::Mgmt::V2018_06_30::Models::Operation
          end
          def operation_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperationListResult
          end
          def tag
            Azure::Consumption::Mgmt::V2018_06_30::Models::Tag
          end
          def error_response
            Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorResponse
          end
          def proxy_resource
            Azure::Consumption::Mgmt::V2018_06_30::Models::ProxyResource
          end
        end
      end
    end
  end
end
