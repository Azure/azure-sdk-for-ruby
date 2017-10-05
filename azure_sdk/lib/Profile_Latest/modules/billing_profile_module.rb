# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_billing'


module Azure::Profiles::Management::Profile_Latest
  module Billing
    BillingPeriods = Azure::ARM::Billing::Api_2017_04_24_preview::BillingPeriods
    Invoices = Azure::ARM::Billing::Api_2017_04_24_preview::Invoices
    Operations = Azure::ARM::Billing::Api_2017_04_24_preview::Operations

    module Models
      BillingPeriodsListResult = Azure::ARM::Billing::Api_2017_04_24_preview::Models::BillingPeriodsListResult
      InvoicesListResult = Azure::ARM::Billing::Api_2017_04_24_preview::Models::InvoicesListResult
      ErrorDetails = Azure::ARM::Billing::Api_2017_04_24_preview::Models::ErrorDetails
      OperationDisplay = Azure::ARM::Billing::Api_2017_04_24_preview::Models::OperationDisplay
      DownloadUrl = Azure::ARM::Billing::Api_2017_04_24_preview::Models::DownloadUrl
      Operation = Azure::ARM::Billing::Api_2017_04_24_preview::Models::Operation
      ErrorResponse = Azure::ARM::Billing::Api_2017_04_24_preview::Models::ErrorResponse
      OperationListResult = Azure::ARM::Billing::Api_2017_04_24_preview::Models::OperationListResult
      BillingPeriod = Azure::ARM::Billing::Api_2017_04_24_preview::Models::BillingPeriod
      Invoice = Azure::ARM::Billing::Api_2017_04_24_preview::Models::Invoice
    end

    #
    # Billing
    #
    class BillingClass
      attr_accessor :billing_periods, :invoices, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Billing::Api_2017_04_24_preview::BillingManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.billing_periods = Azure::ARM::Billing::Api_2017_04_24_preview::BillingPeriods.new(client)
        self.invoices = Azure::ARM::Billing::Api_2017_04_24_preview::Invoices.new(client)
        self.operations = Azure::ARM::Billing::Api_2017_04_24_preview::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-24-preview'
            client = Azure::ARM::Billing::Api_2017_04_24_preview::BillingManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def billing_periods_list_result
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::BillingPeriodsListResult
        end
        def invoices_list_result
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::InvoicesListResult
        end
        def error_details
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::ErrorDetails
        end
        def operation_display
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::OperationDisplay
        end
        def download_url
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::DownloadUrl
        end
        def operation
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::Operation
        end
        def error_response
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::ErrorResponse
        end
        def operation_list_result
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::OperationListResult
        end
        def billing_period
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::BillingPeriod
        end
        def invoice
          Azure::ARM::Billing::Api_2017_04_24_preview::Models::Invoice
        end
      end
    end
  end
end
