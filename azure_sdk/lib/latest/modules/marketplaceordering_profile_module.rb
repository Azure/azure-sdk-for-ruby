# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_marketplace_ordering'

module Azure::Profiles::Latest
  module MarketplaceOrdering
    module Mgmt
      Operations = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Operations
      MarketplaceAgreements = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::MarketplaceAgreements

      module Models
        OperationDisplay = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationDisplay
        Operation = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Operation
        OperationListResult = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationListResult
        ErrorResponseError = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponseError
        Resource = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Resource
        AgreementTerms = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::AgreementTerms
        ErrorResponse = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponse
      end

      class MarketplaceOrderingManagementClass
        attr_reader :operations, :marketplace_agreements, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::MarketplaceOrderingAgreements.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @marketplace_agreements = @client_0.marketplace_agreements

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MarketplaceOrdering/Mgmt"
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
          def operation_display
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationDisplay
          end
          def operation
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Operation
          end
          def operation_list_result
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationListResult
          end
          def error_response_error
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponseError
          end
          def resource
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Resource
          end
          def agreement_terms
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::AgreementTerms
          end
          def error_response
            Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponse
          end
        end
      end
    end
  end
end
