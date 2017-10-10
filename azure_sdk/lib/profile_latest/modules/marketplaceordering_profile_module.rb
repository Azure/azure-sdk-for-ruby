# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_marketplace_ordering'

module Azure::Profiles::Management::Profile_Latest
  module MarketplaceOrdering
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
      attr_accessor :marketplace_agreements, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceOrderingAgreements.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.marketplace_agreements = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::MarketplaceAgreements.new(client)
        self.operations = Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      #
      # Method to get the client object based on the version
      # If the version is invalid, an exception is raised
      #
      # @param version [String] The version of the required
      # client object.
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
        def agreement_terms
          Azure::ARM::MarketplaceOrdering::Api_2015_06_01::Models::AgreementTerms
        end
      end
    end
  end
end
