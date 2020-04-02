# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::CognitiveServices::Profiles::Latest
  module Mgmt
    Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
    ResourceSkus = Azure::CognitiveServices::Mgmt::V2017_04_18::ResourceSkus
    Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations

    module Models
      MetricName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
      Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
      Usage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
      VirtualNetworkRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
      UsagesResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
      KeyVaultProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyVaultProperties
      ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
      UserOwnedStorage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserOwnedStorage
      Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      CognitiveServicesAccountProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
      OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
      Identity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Identity
      OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
      CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
      OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
      RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
      CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
      CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
      CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
      NetworkRuleSet = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
      CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
      CognitiveServicesAccountApiProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
      CheckDomainAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
      CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
      CheckDomainAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
      CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
      ResourceSkuRestrictionInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
      Encryption = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Encryption
      ResourceSkuRestrictions = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
      CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
      ResourceSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
      UserAssignedIdentity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserAssignedIdentity
      ResourceSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
      IpRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
      SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
      ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
      NetworkRuleAction = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleAction
      KeySource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeySource
      IdentityType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IdentityType
      KeyName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
      UnitType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
      QuotaUsageStatus = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
      ResourceSkuRestrictionsType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
      ResourceSkuRestrictionsReasonCode = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
    end

    #
    # CognitiveServicesManagementClass
    #
    class CognitiveServicesManagementClass
      attr_reader :accounts, :resource_skus, :operations, :configurable, :base_url, :options, :model_classes

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
        profile_information = 'Profiles/Latest/CognitiveServices/Mgmt'
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
      def metric_name
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
      end
      def sku
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
      end
      def usage
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
      end
      def virtual_network_rule
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
      end
      def usages_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
      end
      def key_vault_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyVaultProperties
      end
      def error_body
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
      end
      def user_owned_storage
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserOwnedStorage
      end
      def error
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      end
      def cognitive_services_account_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
      end
      def operation_display_info
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
      end
      def identity
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Identity
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
      def network_rule_set
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
      end
      def check_sku_availability_result_list
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
      end
      def cognitive_services_account_api_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
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
      def encryption
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Encryption
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
      def user_assigned_identity
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserAssignedIdentity
      end
      def resource_skus_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
      end
      def ip_rule
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
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
      def key_source
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeySource
      end
      def identity_type
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IdentityType
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
