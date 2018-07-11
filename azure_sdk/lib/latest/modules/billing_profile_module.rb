# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_billing'

module Azure::Profiles::Latest
  module Billing
    module Mgmt
      Operations = Azure::Billing::Mgmt::V2017_04_24_preview::Operations
      BillingPeriods = Azure::Billing::Mgmt::V2017_04_24_preview::BillingPeriods
      Invoices = Azure::Billing::Mgmt::V2017_04_24_preview::Invoices

      module Models
        Invoice = Azure::Billing::Mgmt::V2017_04_24_preview::Models::Invoice
        ErrorResponse = Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorResponse
        BillingPeriodsListResult = Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriodsListResult
        InvoicesListResult = Azure::Billing::Mgmt::V2017_04_24_preview::Models::InvoicesListResult
        DownloadUrl = Azure::Billing::Mgmt::V2017_04_24_preview::Models::DownloadUrl
        Resource = Azure::Billing::Mgmt::V2017_04_24_preview::Models::Resource
        ErrorDetails = Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorDetails
        OperationDisplay = Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationDisplay
        BillingPeriod = Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriod
        Operation = Azure::Billing::Mgmt::V2017_04_24_preview::Models::Operation
        OperationListResult = Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationListResult
      end

      class BillingManagementClass
        attr_reader :operations, :billing_periods, :invoices, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Billing::Mgmt::V2017_04_24_preview::BillingManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @billing_periods = @client_0.billing_periods
          @invoices = @client_0.invoices

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Billing/Mgmt"
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
          def invoice
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::Invoice
          end
          def error_response
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorResponse
          end
          def billing_periods_list_result
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriodsListResult
          end
          def invoices_list_result
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::InvoicesListResult
          end
          def download_url
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::DownloadUrl
          end
          def resource
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::Resource
          end
          def error_details
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::ErrorDetails
          end
          def operation_display
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationDisplay
          end
          def billing_period
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::BillingPeriod
          end
          def operation
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::Operation
          end
          def operation_list_result
            Azure::Billing::Mgmt::V2017_04_24_preview::Models::OperationListResult
          end
        end
      end
    end
  end
end
