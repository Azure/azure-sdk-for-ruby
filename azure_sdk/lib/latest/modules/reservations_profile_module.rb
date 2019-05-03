# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_reservations'

module Azure::Profiles::Latest
  module Reservations
    module Mgmt
      ReservationOrder = Azure::Reservations::Mgmt::V2019_04_01_preview::ReservationOrder
      Reservation = Azure::Reservations::Mgmt::V2019_04_01_preview::Reservation
      Operation = Azure::Reservations::Mgmt::V2019_04_01_preview::Operation

      module Models
        PurchaseRequestPropertiesReservedResourceProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequestPropertiesReservedResourceProperties
        SkuName = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuName
        MergeRequest = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::MergeRequest
        SkuRestriction = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuRestriction
        PurchaseRequest = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequest
        ExtendedStatusInfo = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedStatusInfo
        Patch = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Patch
        ReservationMergeProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationMergeProperties
        SplitRequest = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SplitRequest
        ReservationResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationResponse
        ExtendedErrorInfo = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedErrorInfo
        CalculatePriceResponsePropertiesBillingCurrencyTotal = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesBillingCurrencyTotal
        Error = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Error
        CalculatePriceResponseProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponseProperties
        ReservationOrderList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderList
        SkuProperty = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuProperty
        ReservationList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationList
        ReservationSplitProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationSplitProperties
        AppliedReservationList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservationList
        ReservationOrderResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderResponse
        AppliedReservations = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservations
        CalculatePriceResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponse
        OperationDisplay = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationDisplay
        ReservationProperties = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationProperties
        OperationResponse = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationResponse
        Catalog = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Catalog
        OperationList = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationList
        CalculatePriceResponsePropertiesPricingCurrencyTotal = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesPricingCurrencyTotal
        ReservationStatusCode = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationStatusCode
        ErrorResponseCode = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ErrorResponseCode
        ReservationTerm = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationTerm
        ReservedResourceType = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservedResourceType
        InstanceFlexibility = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::InstanceFlexibility
        AppliedScopeType = Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedScopeType
      end

      class ReservationsManagementClass
        attr_reader :reservation_order, :reservation, :operation, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Reservations::Mgmt::V2019_04_01_preview::ReservationsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @reservation_order = @client_0.reservation_order
          @reservation = @client_0.reservation
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
          def purchase_request_properties_reserved_resource_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequestPropertiesReservedResourceProperties
          end
          def sku_name
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuName
          end
          def merge_request
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::MergeRequest
          end
          def sku_restriction
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuRestriction
          end
          def purchase_request
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::PurchaseRequest
          end
          def extended_status_info
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedStatusInfo
          end
          def patch
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Patch
          end
          def reservation_merge_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationMergeProperties
          end
          def split_request
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SplitRequest
          end
          def reservation_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationResponse
          end
          def extended_error_info
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ExtendedErrorInfo
          end
          def calculate_price_response_properties_billing_currency_total
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesBillingCurrencyTotal
          end
          def error
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Error
          end
          def calculate_price_response_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponseProperties
          end
          def reservation_order_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderList
          end
          def sku_property
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::SkuProperty
          end
          def reservation_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationList
          end
          def reservation_split_properties
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationSplitProperties
          end
          def applied_reservation_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservationList
          end
          def reservation_order_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationOrderResponse
          end
          def applied_reservations
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::AppliedReservations
          end
          def calculate_price_response
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponse
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
          def catalog
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::Catalog
          end
          def operation_list
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::OperationList
          end
          def calculate_price_response_properties_pricing_currency_total
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::CalculatePriceResponsePropertiesPricingCurrencyTotal
          end
          def reservation_status_code
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationStatusCode
          end
          def error_response_code
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ErrorResponseCode
          end
          def reservation_term
            Azure::Reservations::Mgmt::V2019_04_01_preview::Models::ReservationTerm
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
