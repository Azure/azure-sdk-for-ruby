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
      Quota = Azure::Reservations::Mgmt::V2019_07_19_preview::Quota
      QuotaRequest = Azure::Reservations::Mgmt::V2019_07_19_preview::QuotaRequest
      Quotas = Azure::Reservations::Mgmt::V2019_07_19_preview::Quotas
      QuotaRequests = Azure::Reservations::Mgmt::V2019_07_19_preview::QuotaRequests
      AutoQuotaIncrease = Azure::Reservations::Mgmt::V2019_07_19_preview::AutoQuotaIncrease

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
        QuotaRequestDetailsList = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestDetailsList
        CurrentQuotaLimitBaseName = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CurrentQuotaLimitBaseName
        AqiSettings = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AqiSettings
        CurrentQuotaLimit = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CurrentQuotaLimit
        EmailAction = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::EmailAction
        QuotaLimitsResponse = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaLimitsResponse
        OnFailureEmailActions = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::OnFailureEmailActions
        SubRequestName = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::SubRequestName
        PhoneAction = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::PhoneAction
        QuotaRequestOneResourceSubmitResponse = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestOneResourceSubmitResponse
        OnFailurePhoneActions = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::OnFailurePhoneActions
        QuotaRequestSubmitResponse = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestSubmitResponse
        OnFailure = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::OnFailure
        QuotaRequestDetails = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestDetails
        SupportRequestAction = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::SupportRequestAction
        QuotaLimits = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaLimits
        AutoQuotaIncreaseDetail = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AutoQuotaIncreaseDetail
        SubRequest = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::SubRequest
        EmailActions = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::EmailActions
        QuotaRequestSubmitResponse201 = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestSubmitResponse201
        ServiceErrorDetail = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::ServiceErrorDetail
        CreateGenericQuotaRequestParameters = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CreateGenericQuotaRequestParameters
        ServiceError = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::ServiceError
        CurrentQuotaLimitBase = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CurrentQuotaLimitBase
        ExceptionResponse = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::ExceptionResponse
        QuotaRequestProperties = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestProperties
      end

      class ReservationsManagementClass
        attr_reader :reservation, :reservation_order, :operation, :quota, :quota_request, :quotas, :quota_requests, :auto_quota_increase, :configurable, :base_url, :options, :model_classes

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

          @client_1 = Azure::Reservations::Mgmt::V2019_07_19_preview::ReservationsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @quota = @client_1.quota
          @quota_request = @client_1.quota_request
          @quotas = @client_1.quotas
          @quota_requests = @client_1.quota_requests
          @auto_quota_increase = @client_1.auto_quota_increase

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Reservations/Mgmt"
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
          def quota_request_details_list
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestDetailsList
          end
          def current_quota_limit_base_name
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CurrentQuotaLimitBaseName
          end
          def aqi_settings
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AqiSettings
          end
          def current_quota_limit
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CurrentQuotaLimit
          end
          def email_action
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::EmailAction
          end
          def quota_limits_response
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaLimitsResponse
          end
          def on_failure_email_actions
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::OnFailureEmailActions
          end
          def sub_request_name
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::SubRequestName
          end
          def phone_action
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::PhoneAction
          end
          def quota_request_one_resource_submit_response
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestOneResourceSubmitResponse
          end
          def on_failure_phone_actions
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::OnFailurePhoneActions
          end
          def quota_request_submit_response
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestSubmitResponse
          end
          def on_failure
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::OnFailure
          end
          def quota_request_details
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestDetails
          end
          def support_request_action
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::SupportRequestAction
          end
          def quota_limits
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaLimits
          end
          def auto_quota_increase_detail
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AutoQuotaIncreaseDetail
          end
          def sub_request
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::SubRequest
          end
          def email_actions
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::EmailActions
          end
          def quota_request_submit_response201
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestSubmitResponse201
          end
          def service_error_detail
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::ServiceErrorDetail
          end
          def create_generic_quota_request_parameters
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CreateGenericQuotaRequestParameters
          end
          def service_error
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::ServiceError
          end
          def current_quota_limit_base
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::CurrentQuotaLimitBase
          end
          def exception_response
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::ExceptionResponse
          end
          def quota_request_properties
            Azure::Reservations::Mgmt::V2019_07_19_preview::Models::QuotaRequestProperties
          end
        end
      end
    end
  end
end
