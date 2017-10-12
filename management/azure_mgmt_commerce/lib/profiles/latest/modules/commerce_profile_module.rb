# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_commerce'

module Azure::Commerce::Profiles::Latest::Mgmt
    UsageAggregates = Azure::ARM::Commerce::Api_2015_06_01_preview::UsageAggregates
    RateCard = Azure::ARM::Commerce::Api_2015_06_01_preview::RateCard

    module Models
      MeterInfo = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::MeterInfo
      ResourceRateCardInfo = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::ResourceRateCardInfo
      UsageAggregation = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::UsageAggregation
      InfoField = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::InfoField
      UsageAggregationListResult = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::UsageAggregationListResult
      OfferTermInfo = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::OfferTermInfo
      RateCardQueryParameters = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::RateCardQueryParameters
      ErrorResponse = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::ErrorResponse
      MonetaryCredit = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::MonetaryCredit
      MonetaryCommitment = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::MonetaryCommitment
      RecurringCharge = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::RecurringCharge
      AggregationGranularity = Azure::ARM::Commerce::Api_2015_06_01_preview::Models::AggregationGranularity
    end

    #
    # Commerce
    #
    class CommerceClass
      attr_reader :usage_aggregates, :rate_card, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::Commerce::Api_2015_06_01_preview::UsageManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @usage_aggregates = client_0.usage_aggregates
        @rate_card = client_0.rate_card

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-06-01-preview')
        case version
          when '2015-06-01-preview'
            client = Azure::ARM::Commerce::Api_2015_06_01_preview::UsageManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def meter_info
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::MeterInfo
        end
        def resource_rate_card_info
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::ResourceRateCardInfo
        end
        def usage_aggregation
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::UsageAggregation
        end
        def info_field
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::InfoField
        end
        def usage_aggregation_list_result
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::UsageAggregationListResult
        end
        def offer_term_info
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::OfferTermInfo
        end
        def rate_card_query_parameters
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::RateCardQueryParameters
        end
        def error_response
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::ErrorResponse
        end
        def monetary_credit
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::MonetaryCredit
        end
        def monetary_commitment
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::MonetaryCommitment
        end
        def recurring_charge
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::RecurringCharge
        end
        def aggregation_granularity
          Azure::ARM::Commerce::Api_2015_06_01_preview::Models::AggregationGranularity
        end
      end
    end
end
