# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_marketplace_ordering'

module Azure::MarketplaceOrdering::Profiles::Latest
  module Mgmt
    MarketplaceAgreements = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::MarketplaceAgreements
    Operations = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Operations

    module Models
      OperationDisplay = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationDisplay
      Operation = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Operation
      ErrorResponseError = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponseError
      OperationListResult = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationListResult
      ErrorResponse = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponse
      Resource = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Resource
      AgreementTerms = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::AgreementTerms
    end

    #
    # MarketplaceOrderingManagementClass
    #
    class MarketplaceOrderingManagementClass
      attr_reader :marketplace_agreements, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::MarketplaceOrdering::Mgmt::V2015_06_01::MarketplaceOrderingAgreements.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @marketplace_agreements = client_0.marketplace_agreements
        @operations = client_0.operations

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def operation_display
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationDisplay
      end
      def operation
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Operation
      end
      def error_response_error
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponseError
      end
      def operation_list_result
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::OperationListResult
      end
      def error_response
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::ErrorResponse
      end
      def resource
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::Resource
      end
      def agreement_terms
        Azure::MarketplaceOrdering::Mgmt::V2015_06_01::Models::AgreementTerms
      end
    end
  end
end
