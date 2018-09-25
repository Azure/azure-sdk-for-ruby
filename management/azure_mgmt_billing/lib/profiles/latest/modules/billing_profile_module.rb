# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_billing'

module Azure::Billing::Profiles::Latest
  module Mgmt
    BillingPeriods = Azure::Billing::Mgmt::V2017_04_24_preview::BillingPeriods
    Invoices = Azure::Billing::Mgmt::V2017_04_24_preview::Invoices
    Operations = Azure::Billing::Mgmt::V2017_04_24_preview::Operations

    module Models
      ErrorResponse = Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorResponse
      OperationListResult = Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationListResult
      BillingPeriod = Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriod
      Invoice = Azure::Billing::Mgmt::V2017_04_24_preview::Models::Invoice
      Resource = Azure::Billing::Mgmt::V2017_04_24_preview::Models::Resource
      BillingPeriodsListResult = Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriodsListResult
      InvoicesListResult = Azure::Billing::Mgmt::V2017_04_24_preview::Models::InvoicesListResult
      ErrorDetails = Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorDetails
      OperationDisplay = Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationDisplay
      DownloadUrl = Azure::Billing::Mgmt::V2017_04_24_preview::Models::DownloadUrl
      Operation = Azure::Billing::Mgmt::V2017_04_24_preview::Models::Operation
    end

    #
    # BillingManagementClass
    #
    class BillingManagementClass
      attr_reader :billing_periods, :invoices, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Billing::Mgmt::V2017_04_24_preview::BillingManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @billing_periods = @client_0.billing_periods
        @invoices = @client_0.invoices
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Billing/Mgmt'
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
      def error_response
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorResponse
      end
      def operation_list_result
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationListResult
      end
      def billing_period
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriod
      end
      def invoice
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::Invoice
      end
      def resource
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::Resource
      end
      def billing_periods_list_result
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriodsListResult
      end
      def invoices_list_result
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::InvoicesListResult
      end
      def error_details
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorDetails
      end
      def operation_display
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationDisplay
      end
      def download_url
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::DownloadUrl
      end
      def operation
        Azure::Billing::Mgmt::V2017_04_24_preview::Models::Operation
      end
    end
  end
end
