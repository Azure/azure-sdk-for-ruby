# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_advisor'

module Azure::Profiles::V2019_07_01
  module Advisor
    module Mgmt
      Configurations = Azure::Advisor::Mgmt::V2017_04_19::Configurations
      Recommendations = Azure::Advisor::Mgmt::V2017_04_19::Recommendations
      Operations = Azure::Advisor::Mgmt::V2017_04_19::Operations
      Suppressions = Azure::Advisor::Mgmt::V2017_04_19::Suppressions

      module Models
        ResourceRecommendationBaseListResult = Azure::Advisor::Mgmt::V2017_04_19::Models::ResourceRecommendationBaseListResult
        Resource = Azure::Advisor::Mgmt::V2017_04_19::Models::Resource
        ConfigData = Azure::Advisor::Mgmt::V2017_04_19::Models::ConfigData
        OperationDisplayInfo = Azure::Advisor::Mgmt::V2017_04_19::Models::OperationDisplayInfo
        ARMErrorResponseBody = Azure::Advisor::Mgmt::V2017_04_19::Models::ARMErrorResponseBody
        OperationEntity = Azure::Advisor::Mgmt::V2017_04_19::Models::OperationEntity
        ShortDescription = Azure::Advisor::Mgmt::V2017_04_19::Models::ShortDescription
        ConfigurationListResult = Azure::Advisor::Mgmt::V2017_04_19::Models::ConfigurationListResult
        OperationEntityListResult = Azure::Advisor::Mgmt::V2017_04_19::Models::OperationEntityListResult
        ConfigDataProperties = Azure::Advisor::Mgmt::V2017_04_19::Models::ConfigDataProperties
        SuppressionContractListResult = Azure::Advisor::Mgmt::V2017_04_19::Models::SuppressionContractListResult
        ResourceRecommendationBase = Azure::Advisor::Mgmt::V2017_04_19::Models::ResourceRecommendationBase
        SuppressionContract = Azure::Advisor::Mgmt::V2017_04_19::Models::SuppressionContract
        Category = Azure::Advisor::Mgmt::V2017_04_19::Models::Category
        Impact = Azure::Advisor::Mgmt::V2017_04_19::Models::Impact
        Risk = Azure::Advisor::Mgmt::V2017_04_19::Models::Risk
      end

      class AdvisorManagementClass
        attr_reader :configurations, :recommendations, :operations, :suppressions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Advisor::Mgmt::V2017_04_19::AdvisorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @configurations = @client_0.configurations
          @recommendations = @client_0.recommendations
          @operations = @client_0.operations
          @suppressions = @client_0.suppressions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Advisor/Mgmt"
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
          def resource_recommendation_base_list_result
            Azure::Advisor::Mgmt::V2017_04_19::Models::ResourceRecommendationBaseListResult
          end
          def resource
            Azure::Advisor::Mgmt::V2017_04_19::Models::Resource
          end
          def config_data
            Azure::Advisor::Mgmt::V2017_04_19::Models::ConfigData
          end
          def operation_display_info
            Azure::Advisor::Mgmt::V2017_04_19::Models::OperationDisplayInfo
          end
          def armerror_response_body
            Azure::Advisor::Mgmt::V2017_04_19::Models::ARMErrorResponseBody
          end
          def operation_entity
            Azure::Advisor::Mgmt::V2017_04_19::Models::OperationEntity
          end
          def short_description
            Azure::Advisor::Mgmt::V2017_04_19::Models::ShortDescription
          end
          def configuration_list_result
            Azure::Advisor::Mgmt::V2017_04_19::Models::ConfigurationListResult
          end
          def operation_entity_list_result
            Azure::Advisor::Mgmt::V2017_04_19::Models::OperationEntityListResult
          end
          def config_data_properties
            Azure::Advisor::Mgmt::V2017_04_19::Models::ConfigDataProperties
          end
          def suppression_contract_list_result
            Azure::Advisor::Mgmt::V2017_04_19::Models::SuppressionContractListResult
          end
          def resource_recommendation_base
            Azure::Advisor::Mgmt::V2017_04_19::Models::ResourceRecommendationBase
          end
          def suppression_contract
            Azure::Advisor::Mgmt::V2017_04_19::Models::SuppressionContract
          end
          def category
            Azure::Advisor::Mgmt::V2017_04_19::Models::Category
          end
          def impact
            Azure::Advisor::Mgmt::V2017_04_19::Models::Impact
          end
          def risk
            Azure::Advisor::Mgmt::V2017_04_19::Models::Risk
          end
        end
      end
    end
  end
end
