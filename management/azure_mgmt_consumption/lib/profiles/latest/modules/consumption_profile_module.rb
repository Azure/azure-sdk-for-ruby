# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Consumption::Profiles::Latest
  module Mgmt
    UsageDetails = Azure::Consumption::Mgmt::V2019_10_01::UsageDetails
    Marketplaces = Azure::Consumption::Mgmt::V2019_10_01::Marketplaces
    Budgets = Azure::Consumption::Mgmt::V2019_10_01::Budgets
    Tags = Azure::Consumption::Mgmt::V2019_10_01::Tags
    Charges = Azure::Consumption::Mgmt::V2019_10_01::Charges
    Balances = Azure::Consumption::Mgmt::V2019_10_01::Balances
    ReservationsSummaries = Azure::Consumption::Mgmt::V2019_10_01::ReservationsSummaries
    ReservationsDetails = Azure::Consumption::Mgmt::V2019_10_01::ReservationsDetails
    ReservationRecommendations = Azure::Consumption::Mgmt::V2019_10_01::ReservationRecommendations
    ReservationTransactions = Azure::Consumption::Mgmt::V2019_10_01::ReservationTransactions
    PriceSheet = Azure::Consumption::Mgmt::V2019_10_01::PriceSheet
    Forecasts = Azure::Consumption::Mgmt::V2019_10_01::Forecasts
    Operations = Azure::Consumption::Mgmt::V2019_10_01::Operations
    AggregatedCost = Azure::Consumption::Mgmt::V2019_10_01::AggregatedCost
    EventsOperations = Azure::Consumption::Mgmt::V2019_10_01::EventsOperations
    LotsOperations = Azure::Consumption::Mgmt::V2019_10_01::LotsOperations
    Credits = Azure::Consumption::Mgmt::V2019_10_01::Credits

    module Models
      CurrentSpend = Azure::Consumption::Mgmt::V2019_10_01::Models::CurrentSpend
      Notification = Azure::Consumption::Mgmt::V2019_10_01::Models::Notification
      Events = Azure::Consumption::Mgmt::V2019_10_01::Models::Events
      UsageDetailsListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::UsageDetailsListResult
      Amount = Azure::Consumption::Mgmt::V2019_10_01::Models::Amount
      OperationListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::OperationListResult
      ResourceAttributes = Azure::Consumption::Mgmt::V2019_10_01::Models::ResourceAttributes
      Operation = Azure::Consumption::Mgmt::V2019_10_01::Models::Operation
      BalancePropertiesNewPurchasesDetailsItem = Azure::Consumption::Mgmt::V2019_10_01::Models::BalancePropertiesNewPurchasesDetailsItem
      ReservationTransactionsListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationTransactionsListResult
      Resource = Azure::Consumption::Mgmt::V2019_10_01::Models::Resource
      Tag = Azure::Consumption::Mgmt::V2019_10_01::Models::Tag
      ReservationSummariesListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult
      OperationDisplay = Azure::Consumption::Mgmt::V2019_10_01::Models::OperationDisplay
      ReservationDetailsListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationDetailsListResult
      BudgetTimePeriod = Azure::Consumption::Mgmt::V2019_10_01::Models::BudgetTimePeriod
      ReservationRecommendationsListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationRecommendationsListResult
      Filters = Azure::Consumption::Mgmt::V2019_10_01::Models::Filters
      MeterDetailsResponse = Azure::Consumption::Mgmt::V2019_10_01::Models::MeterDetailsResponse
      MeterDetails = Azure::Consumption::Mgmt::V2019_10_01::Models::MeterDetails
      MarketplacesListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::MarketplacesListResult
      ErrorResponse = Azure::Consumption::Mgmt::V2019_10_01::Models::ErrorResponse
      CreditBalanceSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::CreditBalanceSummary
      ErrorDetails = Azure::Consumption::Mgmt::V2019_10_01::Models::ErrorDetails
      ReservationRecommendation = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationRecommendation
      BudgetsListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::BudgetsListResult
      ProxyResource = Azure::Consumption::Mgmt::V2019_10_01::Models::ProxyResource
      PriceSheetProperties = Azure::Consumption::Mgmt::V2019_10_01::Models::PriceSheetProperties
      Lots = Azure::Consumption::Mgmt::V2019_10_01::Models::Lots
      ChargesListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ChargesListResult
      BalancePropertiesAdjustmentDetailsItem = Azure::Consumption::Mgmt::V2019_10_01::Models::BalancePropertiesAdjustmentDetailsItem
      ForecastPropertiesConfidenceLevelsItem = Azure::Consumption::Mgmt::V2019_10_01::Models::ForecastPropertiesConfidenceLevelsItem
      SkuProperty = Azure::Consumption::Mgmt::V2019_10_01::Models::SkuProperty
      ForecastsListResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ForecastsListResult
      UsageDetail = Azure::Consumption::Mgmt::V2019_10_01::Models::UsageDetail
      LegacyUsageDetail = Azure::Consumption::Mgmt::V2019_10_01::Models::LegacyUsageDetail
      ModernUsageDetail = Azure::Consumption::Mgmt::V2019_10_01::Models::ModernUsageDetail
      Marketplace = Azure::Consumption::Mgmt::V2019_10_01::Models::Marketplace
      Balance = Azure::Consumption::Mgmt::V2019_10_01::Models::Balance
      ReservationSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummary
      ReservationDetail = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationDetail
      LegacyReservationRecommendation = Azure::Consumption::Mgmt::V2019_10_01::Models::LegacyReservationRecommendation
      ModernReservationRecommendation = Azure::Consumption::Mgmt::V2019_10_01::Models::ModernReservationRecommendation
      ReservationTransaction = Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationTransaction
      TagsResult = Azure::Consumption::Mgmt::V2019_10_01::Models::TagsResult
      Budget = Azure::Consumption::Mgmt::V2019_10_01::Models::Budget
      PriceSheetResult = Azure::Consumption::Mgmt::V2019_10_01::Models::PriceSheetResult
      Forecast = Azure::Consumption::Mgmt::V2019_10_01::Models::Forecast
      ManagementGroupAggregatedCostResult = Azure::Consumption::Mgmt::V2019_10_01::Models::ManagementGroupAggregatedCostResult
      ChargeSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::ChargeSummary
      LegacyChargeSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::LegacyChargeSummary
      ModernChargeSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::ModernChargeSummary
      EventSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::EventSummary
      LotSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::LotSummary
      CreditSummary = Azure::Consumption::Mgmt::V2019_10_01::Models::CreditSummary
      BillingFrequency = Azure::Consumption::Mgmt::V2019_10_01::Models::BillingFrequency
      CategoryType = Azure::Consumption::Mgmt::V2019_10_01::Models::CategoryType
      TimeGrainType = Azure::Consumption::Mgmt::V2019_10_01::Models::TimeGrainType
      OperatorType = Azure::Consumption::Mgmt::V2019_10_01::Models::OperatorType
      Grain = Azure::Consumption::Mgmt::V2019_10_01::Models::Grain
      ChargeType = Azure::Consumption::Mgmt::V2019_10_01::Models::ChargeType
      Bound = Azure::Consumption::Mgmt::V2019_10_01::Models::Bound
      EventType = Azure::Consumption::Mgmt::V2019_10_01::Models::EventType
      LotSource = Azure::Consumption::Mgmt::V2019_10_01::Models::LotSource
      Datagrain = Azure::Consumption::Mgmt::V2019_10_01::Models::Datagrain
      Metrictype = Azure::Consumption::Mgmt::V2019_10_01::Models::Metrictype
    end

    #
    # ConsumptionManagementClass
    #
    class ConsumptionManagementClass
      attr_reader :usage_details, :marketplaces, :budgets, :tags, :charges, :balances, :reservations_summaries, :reservations_details, :reservation_recommendations, :reservation_transactions, :price_sheet, :forecasts, :operations, :aggregated_cost, :events_operations, :lots_operations, :credits, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Consumption::Mgmt::V2019_10_01::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @usage_details = @client_0.usage_details
        @marketplaces = @client_0.marketplaces
        @budgets = @client_0.budgets
        @tags = @client_0.tags
        @charges = @client_0.charges
        @balances = @client_0.balances
        @reservations_summaries = @client_0.reservations_summaries
        @reservations_details = @client_0.reservations_details
        @reservation_recommendations = @client_0.reservation_recommendations
        @reservation_transactions = @client_0.reservation_transactions
        @price_sheet = @client_0.price_sheet
        @forecasts = @client_0.forecasts
        @operations = @client_0.operations
        @aggregated_cost = @client_0.aggregated_cost
        @events_operations = @client_0.events_operations
        @lots_operations = @client_0.lots_operations
        @credits = @client_0.credits

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Consumption/Mgmt'
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
      def current_spend
        Azure::Consumption::Mgmt::V2019_10_01::Models::CurrentSpend
      end
      def notification
        Azure::Consumption::Mgmt::V2019_10_01::Models::Notification
      end
      def events
        Azure::Consumption::Mgmt::V2019_10_01::Models::Events
      end
      def usage_details_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::UsageDetailsListResult
      end
      def amount
        Azure::Consumption::Mgmt::V2019_10_01::Models::Amount
      end
      def operation_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::OperationListResult
      end
      def resource_attributes
        Azure::Consumption::Mgmt::V2019_10_01::Models::ResourceAttributes
      end
      def operation
        Azure::Consumption::Mgmt::V2019_10_01::Models::Operation
      end
      def balance_properties_new_purchases_details_item
        Azure::Consumption::Mgmt::V2019_10_01::Models::BalancePropertiesNewPurchasesDetailsItem
      end
      def reservation_transactions_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationTransactionsListResult
      end
      def resource
        Azure::Consumption::Mgmt::V2019_10_01::Models::Resource
      end
      def tag
        Azure::Consumption::Mgmt::V2019_10_01::Models::Tag
      end
      def reservation_summaries_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummariesListResult
      end
      def operation_display
        Azure::Consumption::Mgmt::V2019_10_01::Models::OperationDisplay
      end
      def reservation_details_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationDetailsListResult
      end
      def budget_time_period
        Azure::Consumption::Mgmt::V2019_10_01::Models::BudgetTimePeriod
      end
      def reservation_recommendations_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationRecommendationsListResult
      end
      def filters
        Azure::Consumption::Mgmt::V2019_10_01::Models::Filters
      end
      def meter_details_response
        Azure::Consumption::Mgmt::V2019_10_01::Models::MeterDetailsResponse
      end
      def meter_details
        Azure::Consumption::Mgmt::V2019_10_01::Models::MeterDetails
      end
      def marketplaces_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::MarketplacesListResult
      end
      def error_response
        Azure::Consumption::Mgmt::V2019_10_01::Models::ErrorResponse
      end
      def credit_balance_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::CreditBalanceSummary
      end
      def error_details
        Azure::Consumption::Mgmt::V2019_10_01::Models::ErrorDetails
      end
      def reservation_recommendation
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationRecommendation
      end
      def budgets_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::BudgetsListResult
      end
      def proxy_resource
        Azure::Consumption::Mgmt::V2019_10_01::Models::ProxyResource
      end
      def price_sheet_properties
        Azure::Consumption::Mgmt::V2019_10_01::Models::PriceSheetProperties
      end
      def lots
        Azure::Consumption::Mgmt::V2019_10_01::Models::Lots
      end
      def charges_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ChargesListResult
      end
      def balance_properties_adjustment_details_item
        Azure::Consumption::Mgmt::V2019_10_01::Models::BalancePropertiesAdjustmentDetailsItem
      end
      def forecast_properties_confidence_levels_item
        Azure::Consumption::Mgmt::V2019_10_01::Models::ForecastPropertiesConfidenceLevelsItem
      end
      def sku_property
        Azure::Consumption::Mgmt::V2019_10_01::Models::SkuProperty
      end
      def forecasts_list_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ForecastsListResult
      end
      def usage_detail
        Azure::Consumption::Mgmt::V2019_10_01::Models::UsageDetail
      end
      def legacy_usage_detail
        Azure::Consumption::Mgmt::V2019_10_01::Models::LegacyUsageDetail
      end
      def modern_usage_detail
        Azure::Consumption::Mgmt::V2019_10_01::Models::ModernUsageDetail
      end
      def marketplace
        Azure::Consumption::Mgmt::V2019_10_01::Models::Marketplace
      end
      def balance
        Azure::Consumption::Mgmt::V2019_10_01::Models::Balance
      end
      def reservation_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationSummary
      end
      def reservation_detail
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationDetail
      end
      def legacy_reservation_recommendation
        Azure::Consumption::Mgmt::V2019_10_01::Models::LegacyReservationRecommendation
      end
      def modern_reservation_recommendation
        Azure::Consumption::Mgmt::V2019_10_01::Models::ModernReservationRecommendation
      end
      def reservation_transaction
        Azure::Consumption::Mgmt::V2019_10_01::Models::ReservationTransaction
      end
      def tags_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::TagsResult
      end
      def budget
        Azure::Consumption::Mgmt::V2019_10_01::Models::Budget
      end
      def price_sheet_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::PriceSheetResult
      end
      def forecast
        Azure::Consumption::Mgmt::V2019_10_01::Models::Forecast
      end
      def management_group_aggregated_cost_result
        Azure::Consumption::Mgmt::V2019_10_01::Models::ManagementGroupAggregatedCostResult
      end
      def charge_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::ChargeSummary
      end
      def legacy_charge_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::LegacyChargeSummary
      end
      def modern_charge_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::ModernChargeSummary
      end
      def event_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::EventSummary
      end
      def lot_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::LotSummary
      end
      def credit_summary
        Azure::Consumption::Mgmt::V2019_10_01::Models::CreditSummary
      end
      def billing_frequency
        Azure::Consumption::Mgmt::V2019_10_01::Models::BillingFrequency
      end
      def category_type
        Azure::Consumption::Mgmt::V2019_10_01::Models::CategoryType
      end
      def time_grain_type
        Azure::Consumption::Mgmt::V2019_10_01::Models::TimeGrainType
      end
      def operator_type
        Azure::Consumption::Mgmt::V2019_10_01::Models::OperatorType
      end
      def grain
        Azure::Consumption::Mgmt::V2019_10_01::Models::Grain
      end
      def charge_type
        Azure::Consumption::Mgmt::V2019_10_01::Models::ChargeType
      end
      def bound
        Azure::Consumption::Mgmt::V2019_10_01::Models::Bound
      end
      def event_type
        Azure::Consumption::Mgmt::V2019_10_01::Models::EventType
      end
      def lot_source
        Azure::Consumption::Mgmt::V2019_10_01::Models::LotSource
      end
      def datagrain
        Azure::Consumption::Mgmt::V2019_10_01::Models::Datagrain
      end
      def metrictype
        Azure::Consumption::Mgmt::V2019_10_01::Models::Metrictype
      end
    end
  end
end
