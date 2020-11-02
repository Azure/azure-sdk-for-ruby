# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::CognitiveServices::Profiles::Latest
  module Mgmt
    Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
    ResourceSkus = Azure::CognitiveServices::Mgmt::V2017_04_18::ResourceSkus
    Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations
    PrivateEndpointConnections = Azure::CognitiveServices::Mgmt::V2017_04_18::PrivateEndpointConnections
    PrivateLinkResources = Azure::CognitiveServices::Mgmt::V2017_04_18::PrivateLinkResources

    module Models
      Usage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
      UsagesResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
      SkuCapability = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuCapability
      ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
      VirtualNetworkRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
      Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      KeyVaultProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyVaultProperties
      OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
      UserOwnedStorage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserOwnedStorage
      OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
      PrivateLinkServiceConnectionState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkServiceConnectionState
      OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
      PrivateEndpoint = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpoint
      CognitiveServicesAccountApiProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
      PrivateEndpointConnectionProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnectionProperties
      UserAssignedIdentity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserAssignedIdentity
      CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
      CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
      CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
      CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
      CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
      CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
      MetricName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
      CheckDomainAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
      IpRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
      CheckDomainAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
      Encryption = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Encryption
      ResourceSkuRestrictionInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
      Identity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Identity
      ResourceSkuRestrictions = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
      RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
      ResourceSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
      Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
      ResourceSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
      CognitiveServicesAccountProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
      PrivateEndpointConnectionListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnectionListResult
      CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
      PrivateLinkResourceProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResourceProperties
      CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
      Resource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Resource
      NetworkRuleSet = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
      PrivateLinkResourceListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResourceListResult
      PrivateEndpointConnection = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnection
      PrivateLinkResource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResource
      ProxyResource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProxyResource
      TrackedResource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::TrackedResource
      AzureEntityResource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::AzureEntityResource
      SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
      ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
      NetworkRuleAction = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleAction
      KeySource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeySource
      PrivateEndpointServiceConnectionStatus = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointServiceConnectionStatus
      PublicNetworkAccess = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PublicNetworkAccess
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
      attr_reader :accounts, :resource_skus, :operations, :private_endpoint_connections, :private_link_resources, :configurable, :base_url, :options, :model_classes

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
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_resources = @client_0.private_link_resources

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
      def usage
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
      end
      def usages_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
      end
      def sku_capability
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuCapability
      end
      def error_body
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
      end
      def virtual_network_rule
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
      end
      def error
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      end
      def key_vault_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyVaultProperties
      end
      def operation_display_info
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
      end
      def user_owned_storage
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserOwnedStorage
      end
      def operation_entity
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
      end
      def private_link_service_connection_state
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkServiceConnectionState
      end
      def operation_entity_list_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
      end
      def private_endpoint
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpoint
      end
      def cognitive_services_account_api_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
      end
      def private_endpoint_connection_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnectionProperties
      end
      def user_assigned_identity
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserAssignedIdentity
      end
      def cognitive_services_account
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
      end
      def check_sku_availability_parameter
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
      end
      def cognitive_services_account_keys
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
      end
      def check_sku_availability_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
      end
      def cognitive_services_resource_and_sku
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
      end
      def check_sku_availability_result_list
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
      end
      def metric_name
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
      end
      def check_domain_availability_parameter
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
      end
      def ip_rule
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
      end
      def check_domain_availability_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
      end
      def encryption
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Encryption
      end
      def resource_sku_restriction_info
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
      end
      def identity
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Identity
      end
      def resource_sku_restrictions
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
      end
      def regenerate_key_parameters
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
      end
      def resource_sku
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
      end
      def sku
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
      end
      def resource_skus_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
      end
      def cognitive_services_account_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
      end
      def private_endpoint_connection_list_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnectionListResult
      end
      def cognitive_services_account_enumerate_skus_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
      end
      def private_link_resource_properties
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResourceProperties
      end
      def cognitive_services_account_list_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
      end
      def resource
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Resource
      end
      def network_rule_set
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
      end
      def private_link_resource_list_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResourceListResult
      end
      def private_endpoint_connection
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnection
      end
      def private_link_resource
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResource
      end
      def proxy_resource
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProxyResource
      end
      def tracked_resource
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::AzureEntityResource
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
      def private_endpoint_service_connection_status
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointServiceConnectionStatus
      end
      def public_network_access
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PublicNetworkAccess
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
