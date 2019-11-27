# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::V2019_07_01
  module Consumption
    module Mgmt
      UsageDetails = Azure::Consumption::Mgmt::V2018_06_30::UsageDetails
      Marketplaces = Azure::Consumption::Mgmt::V2018_06_30::Marketplaces
      Balances = Azure::Consumption::Mgmt::V2018_06_30::Balances
      ReservationsSummaries = Azure::Consumption::Mgmt::V2018_06_30::ReservationsSummaries
      ReservationsDetails = Azure::Consumption::Mgmt::V2018_06_30::ReservationsDetails
      ReservationRecommendations = Azure::Consumption::Mgmt::V2018_06_30::ReservationRecommendations
      Budgets = Azure::Consumption::Mgmt::V2018_06_30::Budgets
      PriceSheet = Azure::Consumption::Mgmt::V2018_06_30::PriceSheet
      CostTags = Azure::Consumption::Mgmt::V2018_06_30::CostTags
      Tags = Azure::Consumption::Mgmt::V2018_06_30::Tags
      Forecasts = Azure::Consumption::Mgmt::V2018_06_30::Forecasts
      Operations = Azure::Consumption::Mgmt::V2018_11_01_preview::Operations
      CreditSummaryByBillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::CreditSummaryByBillingProfile
      EventsByBillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::EventsByBillingProfile
      LotsByBillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::LotsByBillingProfile
      InvoicePricesheet = Azure::Consumption::Mgmt::V2018_11_01_preview::InvoicePricesheet
      BillingProfilePricesheet = Azure::Consumption::Mgmt::V2018_11_01_preview::BillingProfilePricesheet
      ChargesByBillingAccount = Azure::Consumption::Mgmt::V2018_11_01_preview::ChargesByBillingAccount
      ChargesByBillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::ChargesByBillingProfile
      ChargesByInvoiceSection = Azure::Consumption::Mgmt::V2018_11_01_preview::ChargesByInvoiceSection

      module Models
        Notification = Azure::Consumption::Mgmt::V2018_06_30::Models::Notification
        MeterDetails = Azure::Consumption::Mgmt::V2018_06_30::Models::MeterDetails
        CurrentSpend = Azure::Consumption::Mgmt::V2018_06_30::Models::CurrentSpend
        UsageDetailsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetailsListResult
        BudgetTimePeriod = Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetTimePeriod
        MarketplacesListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::MarketplacesListResult
        Filters = Azure::Consumption::Mgmt::V2018_06_30::Models::Filters
        BalancePropertiesAdjustmentDetailsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesAdjustmentDetailsItem
        ReservationRecommendation = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendation
        BudgetsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetsListResult
        Tag = Azure::Consumption::Mgmt::V2018_06_30::Models::Tag
        CostTagProperties = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTagProperties
        BalancePropertiesNewPurchasesDetailsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesNewPurchasesDetailsItem
        QueryOptions = Azure::Consumption::Mgmt::V2018_06_30::Models::QueryOptions
        ReservationSummariesListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummariesListResult
        PriceSheetProperties = Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetProperties
        ReservationRecommendationsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendationsListResult
        ForecastPropertiesConfidenceLevelsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastPropertiesConfidenceLevelsItem
        ResourceAttributes = Azure::Consumption::Mgmt::V2018_06_30::Models::ResourceAttributes
        ReservationDetailsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult
        ForecastsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastsListResult
        UsageDetail = Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetail
        Marketplace = Azure::Consumption::Mgmt::V2018_06_30::Models::Marketplace
        Balance = Azure::Consumption::Mgmt::V2018_06_30::Models::Balance
        ReservationSummary = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummary
        ReservationDetail = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetail
        TagsResult = Azure::Consumption::Mgmt::V2018_06_30::Models::TagsResult
        Budget = Azure::Consumption::Mgmt::V2018_06_30::Models::Budget
        CostTag = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag
        PriceSheetResult = Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetResult
        Forecast = Azure::Consumption::Mgmt::V2018_06_30::Models::Forecast
        BillingFrequency = Azure::Consumption::Mgmt::V2018_06_30::Models::BillingFrequency
        CategoryType = Azure::Consumption::Mgmt::V2018_06_30::Models::CategoryType
        TimeGrainType = Azure::Consumption::Mgmt::V2018_06_30::Models::TimeGrainType
        OperatorType = Azure::Consumption::Mgmt::V2018_06_30::Models::OperatorType
        Grain = Azure::Consumption::Mgmt::V2018_06_30::Models::Grain
        ChargeType = Azure::Consumption::Mgmt::V2018_06_30::Models::ChargeType
        Bound = Azure::Consumption::Mgmt::V2018_06_30::Models::Bound
        Datagrain = Azure::Consumption::Mgmt::V2018_06_30::Models::Datagrain
        ErrorDetails = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ErrorDetails
        EnrollmentPolicies = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EnrollmentPolicies
        Events = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Events
        CreditBalanceSummary = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::CreditBalanceSummary
        OperationListResult = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::OperationListResult
        ChargesListByBillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargesListByBillingProfile
        Operation = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Operation
        Enrollment = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Enrollment
        ChargesListByInvoiceSection = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargesListByInvoiceSection
        ProxyResource = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ProxyResource
        ErrorResponse = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ErrorResponse
        OperationDisplay = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::OperationDisplay
        Lots = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Lots
        Address = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Address
        Resource = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Resource
        Amount = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Amount
        ChargesListByBillingAccount = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargesListByBillingAccount
        Department = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Department
        EnrollmentAccount = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EnrollmentAccount
        BillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::BillingProfile
        InvoiceSection = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::InvoiceSection
        BillingAccount = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::BillingAccount
        PricesheetDownloadResponse = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::PricesheetDownloadResponse
        CreditSummary = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::CreditSummary
        EventSummary = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EventSummary
        LotSummary = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::LotSummary
        ChargeSummaryByBillingAccount = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargeSummaryByBillingAccount
        ChargeSummaryByBillingProfile = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargeSummaryByBillingProfile
        ChargeSummaryByInvoiceSection = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargeSummaryByInvoiceSection
        EventType = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EventType
        LotSource = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::LotSource
      end

      class ConsumptionManagementClass
        attr_reader :usage_details, :marketplaces, :balances, :reservations_summaries, :reservations_details, :reservation_recommendations, :budgets, :price_sheet, :cost_tags, :tags, :forecasts, :operations, :credit_summary_by_billing_profile, :events_by_billing_profile, :lots_by_billing_profile, :invoice_pricesheet, :billing_profile_pricesheet, :charges_by_billing_account, :charges_by_billing_profile, :charges_by_invoice_section, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Consumption::Mgmt::V2018_06_30::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usage_details = @client_0.usage_details
          @marketplaces = @client_0.marketplaces
          @balances = @client_0.balances
          @reservations_summaries = @client_0.reservations_summaries
          @reservations_details = @client_0.reservations_details
          @reservation_recommendations = @client_0.reservation_recommendations
          @budgets = @client_0.budgets
          @price_sheet = @client_0.price_sheet
          @cost_tags = @client_0.cost_tags
          @tags = @client_0.tags
          @forecasts = @client_0.forecasts

          @client_1 = Azure::Consumption::Mgmt::V2018_11_01_preview::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @credit_summary_by_billing_profile = @client_1.credit_summary_by_billing_profile
          @events_by_billing_profile = @client_1.events_by_billing_profile
          @lots_by_billing_profile = @client_1.lots_by_billing_profile
          @invoice_pricesheet = @client_1.invoice_pricesheet
          @billing_profile_pricesheet = @client_1.billing_profile_pricesheet
          @charges_by_billing_account = @client_1.charges_by_billing_account
          @charges_by_billing_profile = @client_1.charges_by_billing_profile
          @charges_by_invoice_section = @client_1.charges_by_invoice_section

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Consumption/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def notification
            Azure::Consumption::Mgmt::V2018_06_30::Models::Notification
          end
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
          def filters
            Azure::Consumption::Mgmt::V2018_06_30::Models::Filters
          end
          def balance_properties_adjustment_details_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesAdjustmentDetailsItem
          end
          def reservation_recommendation
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendation
          end
          def budgets_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetsListResult
          end
          def tag
            Azure::Consumption::Mgmt::V2018_06_30::Models::Tag
          end
          def cost_tag_properties
            Azure::Consumption::Mgmt::V2018_06_30::Models::CostTagProperties
          end
          def balance_properties_new_purchases_details_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesNewPurchasesDetailsItem
          end
          def query_options
            Azure::Consumption::Mgmt::V2018_06_30::Models::QueryOptions
          end
          def reservation_summaries_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummariesListResult
          end
          def price_sheet_properties
            Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetProperties
          end
          def reservation_recommendations_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendationsListResult
          end
          def forecast_properties_confidence_levels_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastPropertiesConfidenceLevelsItem
          end
          def resource_attributes
            Azure::Consumption::Mgmt::V2018_06_30::Models::ResourceAttributes
          end
          def reservation_details_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult
          end
          def forecasts_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastsListResult
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
          def tags_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::TagsResult
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
          def operator_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperatorType
          end
          def grain
            Azure::Consumption::Mgmt::V2018_06_30::Models::Grain
          end
          def charge_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::ChargeType
          end
          def bound
            Azure::Consumption::Mgmt::V2018_06_30::Models::Bound
          end
          def datagrain
            Azure::Consumption::Mgmt::V2018_06_30::Models::Datagrain
          end
          def error_details
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ErrorDetails
          end
          def enrollment_policies
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EnrollmentPolicies
          end
          def events
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Events
          end
          def credit_balance_summary
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::CreditBalanceSummary
          end
          def operation_list_result
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::OperationListResult
          end
          def charges_list_by_billing_profile
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargesListByBillingProfile
          end
          def operation
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Operation
          end
          def enrollment
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Enrollment
          end
          def charges_list_by_invoice_section
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargesListByInvoiceSection
          end
          def proxy_resource
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ProxyResource
          end
          def error_response
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ErrorResponse
          end
          def operation_display
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::OperationDisplay
          end
          def lots
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Lots
          end
          def address
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Address
          end
          def resource
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Resource
          end
          def amount
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Amount
          end
          def charges_list_by_billing_account
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargesListByBillingAccount
          end
          def department
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::Department
          end
          def enrollment_account
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EnrollmentAccount
          end
          def billing_profile
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::BillingProfile
          end
          def invoice_section
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::InvoiceSection
          end
          def billing_account
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::BillingAccount
          end
          def pricesheet_download_response
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::PricesheetDownloadResponse
          end
          def credit_summary
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::CreditSummary
          end
          def event_summary
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EventSummary
          end
          def lot_summary
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::LotSummary
          end
          def charge_summary_by_billing_account
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargeSummaryByBillingAccount
          end
          def charge_summary_by_billing_profile
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargeSummaryByBillingProfile
          end
          def charge_summary_by_invoice_section
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::ChargeSummaryByInvoiceSection
          end
          def event_type
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::EventType
          end
          def lot_source
            Azure::Consumption::Mgmt::V2018_11_01_preview::Models::LotSource
          end
        end
      end
    end
  end
end
