# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_marketplace_ordering'

module Azure::Profiles::Latest
  module MarketplaceOrdering::Mgmt
    MarketplaceAgreements = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceAgreements
    Operations = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Operations

    module Models
      OperationDisplay = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::OperationDisplay
      Operation = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::Operation
      ErrorResponseError = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::ErrorResponseError
      OperationListResult = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::OperationListResult
      ErrorResponse = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::ErrorResponse
      Resource = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::Resource
      AgreementTerms = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::AgreementTerms
    end

    #
    # MarketplaceOrdering
    #
    class MarketplaceOrderingClass
      attr_reader :marketplace_agreements, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceOrderingAgreements.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @marketplace_agreements = client_0.marketplace_agreements
        @operations = client_0.operations

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-06-01')
        case version
          when '2015-06-01'
            client = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceOrderingAgreements.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
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
        def resource
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::Resource
        end
        def agreement_terms
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::AgreementTerms
        end
      end
    end
  end
end
