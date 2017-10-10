# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_marketplace_ordering'

module Azure::MarketplaceOrdering::Management::Profile_2015_06_01
    MarketplaceAgreements = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceAgreements
    Operations = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Operations

    module Models
      OperationDisplay = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::OperationDisplay
      Operation = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::Operation
      ErrorResponseError = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::ErrorResponseError
      OperationListResult = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::OperationListResult
      ErrorResponse = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::ErrorResponse
      AgreementTerms = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::AgreementTerms
    end

    #
    # MarketplaceOrdering
    #
    class MarketplaceOrderingClass
      attr_reader :marketplace_agreements, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceOrderingAgreements.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @marketplace_agreements = client.marketplace_agreements
        @operations = client.operations
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceOrderingAgreements.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def operation_display
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::OperationDisplay
        end
        def operation
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::Operation
        end
        def error_response_error
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::ErrorResponseError
        end
        def operation_list_result
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::OperationListResult
        end
        def error_response
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::ErrorResponse
        end
        def agreement_terms
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::AgreementTerms
        end
      end
    end
end
