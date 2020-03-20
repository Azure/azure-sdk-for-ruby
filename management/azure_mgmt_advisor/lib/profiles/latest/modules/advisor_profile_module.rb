# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_advisor'

module Azure::Advisor::Profiles::Latest
  module Mgmt
    RecommendationMetadata = Azure::Advisor::Mgmt::V2020_01_01::RecommendationMetadata
    Configurations = Azure::Advisor::Mgmt::V2020_01_01::Configurations
    Recommendations = Azure::Advisor::Mgmt::V2020_01_01::Recommendations
    Operations = Azure::Advisor::Mgmt::V2020_01_01::Operations
    Suppressions = Azure::Advisor::Mgmt::V2020_01_01::Suppressions

    module Models
      ResourceMetadata = Azure::Advisor::Mgmt::V2020_01_01::Models::ResourceMetadata
      MetadataSupportedValueDetail = Azure::Advisor::Mgmt::V2020_01_01::Models::MetadataSupportedValueDetail
      MetadataEntity = Azure::Advisor::Mgmt::V2020_01_01::Models::MetadataEntity
      MetadataEntityListResult = Azure::Advisor::Mgmt::V2020_01_01::Models::MetadataEntityListResult
      SuppressionContractListResult = Azure::Advisor::Mgmt::V2020_01_01::Models::SuppressionContractListResult
      ConfigurationListResult = Azure::Advisor::Mgmt::V2020_01_01::Models::ConfigurationListResult
      ResourceRecommendationBaseListResult = Azure::Advisor::Mgmt::V2020_01_01::Models::ResourceRecommendationBaseListResult
      ArmErrorResponse = Azure::Advisor::Mgmt::V2020_01_01::Models::ArmErrorResponse
      Resource = Azure::Advisor::Mgmt::V2020_01_01::Models::Resource
      DigestConfig = Azure::Advisor::Mgmt::V2020_01_01::Models::DigestConfig
      OperationDisplayInfo = Azure::Advisor::Mgmt::V2020_01_01::Models::OperationDisplayInfo
      ShortDescription = Azure::Advisor::Mgmt::V2020_01_01::Models::ShortDescription
      OperationEntity = Azure::Advisor::Mgmt::V2020_01_01::Models::OperationEntity
      ARMErrorResponseBody = Azure::Advisor::Mgmt::V2020_01_01::Models::ARMErrorResponseBody
      OperationEntityListResult = Azure::Advisor::Mgmt::V2020_01_01::Models::OperationEntityListResult
      ConfigData = Azure::Advisor::Mgmt::V2020_01_01::Models::ConfigData
      ResourceRecommendationBase = Azure::Advisor::Mgmt::V2020_01_01::Models::ResourceRecommendationBase
      SuppressionContract = Azure::Advisor::Mgmt::V2020_01_01::Models::SuppressionContract
      Scenario = Azure::Advisor::Mgmt::V2020_01_01::Models::Scenario
      CpuThreshold = Azure::Advisor::Mgmt::V2020_01_01::Models::CpuThreshold
      Category = Azure::Advisor::Mgmt::V2020_01_01::Models::Category
      DigestConfigState = Azure::Advisor::Mgmt::V2020_01_01::Models::DigestConfigState
      Impact = Azure::Advisor::Mgmt::V2020_01_01::Models::Impact
      Risk = Azure::Advisor::Mgmt::V2020_01_01::Models::Risk
    end

    #
    # AdvisorManagementClass
    #
    class AdvisorManagementClass
      attr_reader :recommendation_metadata, :configurations, :recommendations, :operations, :suppressions, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Advisor::Mgmt::V2020_01_01::AdvisorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @recommendation_metadata = @client_0.recommendation_metadata
        @configurations = @client_0.configurations
        @recommendations = @client_0.recommendations
        @operations = @client_0.operations
        @suppressions = @client_0.suppressions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Advisor/Mgmt'
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
      def resource_metadata
        Azure::Advisor::Mgmt::V2020_01_01::Models::ResourceMetadata
      end
      def metadata_supported_value_detail
        Azure::Advisor::Mgmt::V2020_01_01::Models::MetadataSupportedValueDetail
      end
      def metadata_entity
        Azure::Advisor::Mgmt::V2020_01_01::Models::MetadataEntity
      end
      def metadata_entity_list_result
        Azure::Advisor::Mgmt::V2020_01_01::Models::MetadataEntityListResult
      end
      def suppression_contract_list_result
        Azure::Advisor::Mgmt::V2020_01_01::Models::SuppressionContractListResult
      end
      def configuration_list_result
        Azure::Advisor::Mgmt::V2020_01_01::Models::ConfigurationListResult
      end
      def resource_recommendation_base_list_result
        Azure::Advisor::Mgmt::V2020_01_01::Models::ResourceRecommendationBaseListResult
      end
      def arm_error_response
        Azure::Advisor::Mgmt::V2020_01_01::Models::ArmErrorResponse
      end
      def resource
        Azure::Advisor::Mgmt::V2020_01_01::Models::Resource
      end
      def digest_config
        Azure::Advisor::Mgmt::V2020_01_01::Models::DigestConfig
      end
      def operation_display_info
        Azure::Advisor::Mgmt::V2020_01_01::Models::OperationDisplayInfo
      end
      def short_description
        Azure::Advisor::Mgmt::V2020_01_01::Models::ShortDescription
      end
      def operation_entity
        Azure::Advisor::Mgmt::V2020_01_01::Models::OperationEntity
      end
      def armerror_response_body
        Azure::Advisor::Mgmt::V2020_01_01::Models::ARMErrorResponseBody
      end
      def operation_entity_list_result
        Azure::Advisor::Mgmt::V2020_01_01::Models::OperationEntityListResult
      end
      def config_data
        Azure::Advisor::Mgmt::V2020_01_01::Models::ConfigData
      end
      def resource_recommendation_base
        Azure::Advisor::Mgmt::V2020_01_01::Models::ResourceRecommendationBase
      end
      def suppression_contract
        Azure::Advisor::Mgmt::V2020_01_01::Models::SuppressionContract
      end
      def scenario
        Azure::Advisor::Mgmt::V2020_01_01::Models::Scenario
      end
      def cpu_threshold
        Azure::Advisor::Mgmt::V2020_01_01::Models::CpuThreshold
      end
      def category
        Azure::Advisor::Mgmt::V2020_01_01::Models::Category
      end
      def digest_config_state
        Azure::Advisor::Mgmt::V2020_01_01::Models::DigestConfigState
      end
      def impact
        Azure::Advisor::Mgmt::V2020_01_01::Models::Impact
      end
      def risk
        Azure::Advisor::Mgmt::V2020_01_01::Models::Risk
      end
    end
  end
end
