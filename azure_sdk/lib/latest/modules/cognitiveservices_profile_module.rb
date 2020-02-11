# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::Profiles::Latest
  module CognitiveServices
    module Mgmt
      Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
      ResourceSkus = Azure::CognitiveServices::Mgmt::V2017_04_18::ResourceSkus
      Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations

      module Models
        UsagesResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
        ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
        IpRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
        Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
        NetworkRuleSet = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
        OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
        CognitiveServicesAccountProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
        OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
        CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
        OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
        RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
        CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
        CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
        CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
        Usage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
        CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
        VirtualNetworkRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
        CheckDomainAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
        CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
        CheckDomainAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
        CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
        ResourceSkuRestrictionInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
        Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
        ResourceSkuRestrictions = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
        CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
        ResourceSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
        CognitiveServicesAccountApiProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
        ResourceSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
        MetricName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
        SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
        ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
        NetworkRuleAction = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleAction
        KeyName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
        UnitType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
        QuotaUsageStatus = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
        ResourceSkuRestrictionsType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
        ResourceSkuRestrictionsReasonCode = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
      end

      class CognitiveServicesManagementClass
        attr_reader :accounts, :resource_skus, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CognitiveServices::Mgmt::V2017_04_18::CognitiveServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @accounts = @client_0.accounts
          @resource_skus = @client_0.resource_skus
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/CognitiveServices/Mgmt"
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
          def usages_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
          end
          def error_body
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
          end
          def ip_rule
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
          end
          def error
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
          end
          def network_rule_set
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
          end
          def operation_display_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
          end
          def cognitive_services_account_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
          end
          def operation_entity
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
          end
          def cognitive_services_account_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
          end
          def operation_entity_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
          end
          def regenerate_key_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
          end
          def check_sku_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
          end
          def cognitive_services_account_enumerate_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
          end
          def check_sku_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
          end
          def usage
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
          end
          def check_sku_availability_result_list
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
          end
          def virtual_network_rule
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
          end
          def check_domain_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
          end
          def cognitive_services_account
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
          end
          def check_domain_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
          end
          def cognitive_services_resource_and_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
          end
          def resource_sku_restriction_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
          end
          def sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
          end
          def resource_sku_restrictions
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
          end
          def cognitive_services_account_keys
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
          end
          def resource_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
          end
          def cognitive_services_account_api_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
          end
          def resource_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
          end
          def metric_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
          end
          def sku_tier
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
          end
          def provisioning_state
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
          end
          def network_rule_action
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleAction
          end
          def key_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
          end
          def unit_type
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
          end
          def quota_usage_status
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
          end
          def resource_sku_restrictions_type
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
          end
          def resource_sku_restrictions_reason_code
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
          end
        end
      end
    end
  end
end
