# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_commerce'

module Azure::Profiles::Latest
  module Commerce
    module Mgmt
      UsageAggregates = Azure::Commerce::Mgmt::V2015_06_01_preview::UsageAggregates
      RateCard = Azure::Commerce::Mgmt::V2015_06_01_preview::RateCard

      module Models
        UsageAggregation = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::UsageAggregation
        InfoField = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::InfoField
        UsageAggregationListResult = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::UsageAggregationListResult
        OfferTermInfo = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::OfferTermInfo
        RateCardQueryParameters = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::RateCardQueryParameters
        MonetaryCredit = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::MonetaryCredit
        MonetaryCommitment = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::MonetaryCommitment
        RecurringCharge = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::RecurringCharge
        AggregationGranularity = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::AggregationGranularity
        ErrorResponse = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::ErrorResponse
        MeterInfo = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::MeterInfo
        ResourceRateCardInfo = Azure::Commerce::Mgmt::V2015_06_01_preview::Models::ResourceRateCardInfo
      end

      class CommerceManagementClass
        attr_reader :usage_aggregates, :rate_card, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Commerce::Mgmt::V2015_06_01_preview::UsageManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usage_aggregates = @client_0.usage_aggregates
          @rate_card = @client_0.rate_card

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Commerce/Mgmt"
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
          def usage_aggregation
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::UsageAggregation
          end
          def info_field
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::InfoField
          end
          def usage_aggregation_list_result
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::UsageAggregationListResult
          end
          def offer_term_info
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::OfferTermInfo
          end
          def rate_card_query_parameters
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::RateCardQueryParameters
          end
          def monetary_credit
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::MonetaryCredit
          end
          def monetary_commitment
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::MonetaryCommitment
          end
          def recurring_charge
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::RecurringCharge
          end
          def aggregation_granularity
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::AggregationGranularity
          end
          def error_response
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::ErrorResponse
          end
          def meter_info
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::MeterInfo
          end
          def resource_rate_card_info
            Azure::Commerce::Mgmt::V2015_06_01_preview::Models::ResourceRateCardInfo
          end
        end
      end
    end
  end
end
