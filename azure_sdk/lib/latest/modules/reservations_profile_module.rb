# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_reservations'

module Azure::Profiles::Latest
  module Reservations
    module Mgmt
      Reservation = Azure::Reservations::Mgmt::V2019_04_01_preview::Reservation
      ReservationOrder = Azure::Reservations::Mgmt::V2019_04_01_preview::ReservationOrder
      Operation = Azure::Reservations::Mgmt::V2019_04_01_preview::Operation

      module Models
        CalculatePriceResponsePropertiesPricingCurrencyTotal = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesPricingCurrencyTotal
        SkuName = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuName
        CalculatePriceResponseProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponseProperties
        SkuRestriction = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuRestriction
        CalculatePriceResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponse
        Price = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Price
        PatchPropertiesRenewProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PatchPropertiesRenewProperties
        PaymentDetail = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PaymentDetail
        MergeRequest = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::MergeRequest
        ReservationSplitProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationSplitProperties
        Patch = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Patch
        PurchaseRequestPropertiesReservedResourceProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequestPropertiesReservedResourceProperties
        SplitRequest = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SplitRequest
        RenewPropertiesResponsePricingCurrencyTotal = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::RenewPropertiesResponsePricingCurrencyTotal
        ExtendedErrorInfo = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedErrorInfo
        RenewPropertiesResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::RenewPropertiesResponse
        Error = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Error
        ReservationResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationResponse
        ReservationOrderList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderList
        CalculatePriceResponsePropertiesBillingCurrencyTotal = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesBillingCurrencyTotal
        ReservationList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationList
        Catalog = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Catalog
        AppliedReservationList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservationList
        ReservationOrderBillingPlanInformation = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderBillingPlanInformation
        AppliedReservations = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservations
        PurchaseRequest = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequest
        OperationDisplay = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationDisplay
        ReservationProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationProperties
        OperationResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationResponse
        SkuProperty = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuProperty
        OperationList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationList
        ReservationMergeProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationMergeProperties
        ScopeProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ScopeProperties
        ReservationOrderResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderResponse
        SubscriptionScopeProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SubscriptionScopeProperties
        RenewPropertiesResponseBillingCurrencyTotal = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::RenewPropertiesResponseBillingCurrencyTotal
        Properties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Properties
        ExtendedStatusInfo = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedStatusInfo
        ReservationStatusCode = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationStatusCode
        ErrorResponseCode = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ErrorResponseCode
        ReservationBillingPlan = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationBillingPlan
        ReservationTerm = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationTerm
        PaymentStatus = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PaymentStatus
        ReservedResourceType = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservedResourceType
        InstanceFlexibility = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::InstanceFlexibility
        AppliedScopeType = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedScopeType
      end

      class ReservationsManagementClass
        attr_reader :reservation, :reservation_order, :operation, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Reservations::Mgmt::V2019_04_01_preview::ReservationsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @reservation = @client_0.reservation
          @reservation_order = @client_0.reservation_order
          @operation = @client_0.operation

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Reservations/Mgmt"
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
          def calculate_price_response_properties_pricing_currency_total
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesPricingCurrencyTotal
          end
          def sku_name
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuName
          end
          def calculate_price_response_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponseProperties
          end
          def sku_restriction
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuRestriction
          end
          def calculate_price_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponse
          end
          def price
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Price
          end
          def patch_properties_renew_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PatchPropertiesRenewProperties
          end
          def payment_detail
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PaymentDetail
          end
          def merge_request
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::MergeRequest
          end
          def reservation_split_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationSplitProperties
          end
          def patch
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Patch
          end
          def purchase_request_properties_reserved_resource_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequestPropertiesReservedResourceProperties
          end
          def split_request
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SplitRequest
          end
          def renew_properties_response_pricing_currency_total
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::RenewPropertiesResponsePricingCurrencyTotal
          end
          def extended_error_info
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedErrorInfo
          end
          def renew_properties_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::RenewPropertiesResponse
          end
          def error
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Error
          end
          def reservation_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationResponse
          end
          def reservation_order_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderList
          end
          def calculate_price_response_properties_billing_currency_total
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesBillingCurrencyTotal
          end
          def reservation_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationList
          end
          def catalog
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Catalog
          end
          def applied_reservation_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservationList
          end
          def reservation_order_billing_plan_information
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderBillingPlanInformation
          end
          def applied_reservations
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservations
          end
          def purchase_request
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequest
          end
          def operation_display
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationDisplay
          end
          def reservation_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationProperties
          end
          def operation_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationResponse
          end
          def sku_property
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuProperty
          end
          def operation_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationList
          end
          def reservation_merge_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationMergeProperties
          end
          def scope_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ScopeProperties
          end
          def reservation_order_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderResponse
          end
          def subscription_scope_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SubscriptionScopeProperties
          end
          def renew_properties_response_billing_currency_total
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::RenewPropertiesResponseBillingCurrencyTotal
          end
          def properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Properties
          end
          def extended_status_info
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedStatusInfo
          end
          def reservation_status_code
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationStatusCode
          end
          def error_response_code
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ErrorResponseCode
          end
          def reservation_billing_plan
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationBillingPlan
          end
          def reservation_term
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationTerm
          end
          def payment_status
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PaymentStatus
          end
          def reserved_resource_type
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservedResourceType
          end
          def instance_flexibility
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::InstanceFlexibility
          end
          def applied_scope_type
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedScopeType
          end
        end
      end
    end
  end
end
