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
      PrivateEndpointConnections = Azure::CognitiveServices::Mgmt::V2017_04_18::PrivateEndpointConnections
      PrivateLinkResources = Azure::CognitiveServices::Mgmt::V2017_04_18::PrivateLinkResources

      module Models
        Usage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
        Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
        UsagesResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
        IpRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
        ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
        NetworkRuleSet = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
        Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
        Encryption = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Encryption
        OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
        PrivateEndpoint = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpoint
        OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
        PrivateEndpointConnectionProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnectionProperties
        OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
        CognitiveServicesAccountApiProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
        CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
        UserAssignedIdentity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserAssignedIdentity
        CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
        CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
        CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
        CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
        CheckDomainAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
        CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
        CheckDomainAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
        MetricName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
        ResourceSkuRestrictionInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
        VirtualNetworkRule = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
        ResourceSkuRestrictions = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
        UserOwnedStorage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserOwnedStorage
        ResourceSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
        KeyVaultProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyVaultProperties
        CognitiveServicesAccountProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
        PrivateLinkServiceConnectionState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkServiceConnectionState
        CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
        CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
        ResourceSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
        Identity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Identity
        PrivateLinkResourceProperties = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResourceProperties
        SkuCapability = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuCapability
        Resource = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Resource
        RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
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

      class CognitiveServicesManagementClass
        attr_reader :accounts, :resource_skus, :operations, :private_endpoint_connections, :private_link_resources, :configurable, :base_url, :options, :model_classes

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
          @private_endpoint_connections = @client_0.private_endpoint_connections
          @private_link_resources = @client_0.private_link_resources

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
          def usage
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
          end
          def sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
          end
          def usages_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
          end
          def ip_rule
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::IpRule
          end
          def error_body
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
          end
          def network_rule_set
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::NetworkRuleSet
          end
          def error
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
          end
          def encryption
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Encryption
          end
          def operation_display_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
          end
          def private_endpoint
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpoint
          end
          def operation_entity
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
          end
          def private_endpoint_connection_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateEndpointConnectionProperties
          end
          def operation_entity_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
          end
          def cognitive_services_account_api_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountApiProperties
          end
          def check_sku_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
          end
          def user_assigned_identity
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserAssignedIdentity
          end
          def check_sku_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
          end
          def cognitive_services_account
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
          end
          def check_sku_availability_result_list
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
          end
          def cognitive_services_account_keys
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
          end
          def check_domain_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
          end
          def cognitive_services_resource_and_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
          end
          def check_domain_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
          end
          def metric_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
          end
          def resource_sku_restriction_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
          end
          def virtual_network_rule
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::VirtualNetworkRule
          end
          def resource_sku_restrictions
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
          end
          def user_owned_storage
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UserOwnedStorage
          end
          def resource_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
          end
          def key_vault_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyVaultProperties
          end
          def cognitive_services_account_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountProperties
          end
          def private_link_service_connection_state
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkServiceConnectionState
          end
          def cognitive_services_account_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
          end
          def cognitive_services_account_enumerate_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
          end
          def resource_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
          end
          def identity
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Identity
          end
          def private_link_resource_properties
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::PrivateLinkResourceProperties
          end
          def sku_capability
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuCapability
          end
          def resource
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Resource
          end
          def regenerate_key_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
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
  end
end
