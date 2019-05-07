# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::CDN::Profiles::Latest
  module Mgmt
    Origins = Azure::CDN::Mgmt::V2017_10_12::Origins
    CustomDomains = Azure::CDN::Mgmt::V2017_10_12::CustomDomains
    ResourceUsageOperations = Azure::CDN::Mgmt::V2017_10_12::ResourceUsageOperations
    Operations = Azure::CDN::Mgmt::V2017_10_12::Operations
    EdgeNodes = Azure::CDN::Mgmt::V2017_10_12::EdgeNodes
    Profiles = Azure::CDN::Mgmt::V2017_10_12::Profiles
    Endpoints = Azure::CDN::Mgmt::V2017_10_12::Endpoints

    module Models
      ResourceUsageListResult = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsageListResult
      Profile = Azure::CDN::Mgmt::V2017_10_12::Models::Profile
      Endpoint = Azure::CDN::Mgmt::V2017_10_12::Models::Endpoint
      DeliveryRuleUrlPathCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlPathCondition
      DeliveryRuleUrlFileExtensionCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlFileExtensionCondition
      DeliveryRuleCacheExpirationAction = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCacheExpirationAction
      Origin = Azure::CDN::Mgmt::V2017_10_12::Models::Origin
      ProxyResource = Azure::CDN::Mgmt::V2017_10_12::Models::ProxyResource
      CustomDomain = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomain
      CdnManagedHttpsParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CdnManagedHttpsParameters
      UserManagedHttpsParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UserManagedHttpsParameters
      EdgeNode = Azure::CDN::Mgmt::V2017_10_12::Models::EdgeNode
      TrackedResource = Azure::CDN::Mgmt::V2017_10_12::Models::TrackedResource
      SkuName = Azure::CDN::Mgmt::V2017_10_12::Models::SkuName
      ProfileResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileResourceState
      OptimizationType = Azure::CDN::Mgmt::V2017_10_12::Models::OptimizationType
      EndpointResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointResourceState
      QueryStringCachingBehavior = Azure::CDN::Mgmt::V2017_10_12::Models::QueryStringCachingBehavior
      GeoFilterActions = Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilterActions
      OriginResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::OriginResourceState
      CustomDomainResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainResourceState
      CustomHttpsProvisioningState = Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningState
      CustomHttpsProvisioningSubstate = Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningSubstate
      ProtocolType = Azure::CDN::Mgmt::V2017_10_12::Models::ProtocolType
      CertificateType = Azure::CDN::Mgmt::V2017_10_12::Models::CertificateType
      ResourceType = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceType
      LoadParameters = Azure::CDN::Mgmt::V2017_10_12::Models::LoadParameters
      EdgenodeResult = Azure::CDN::Mgmt::V2017_10_12::Models::EdgenodeResult
      PurgeParameters = Azure::CDN::Mgmt::V2017_10_12::Models::PurgeParameters
      ProfileListResult = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileListResult
      Sku = Azure::CDN::Mgmt::V2017_10_12::Models::Sku
      SsoUri = Azure::CDN::Mgmt::V2017_10_12::Models::SsoUri
      OperationDisplay = Azure::CDN::Mgmt::V2017_10_12::Models::OperationDisplay
      DeepCreatedOrigin = Azure::CDN::Mgmt::V2017_10_12::Models::DeepCreatedOrigin
      OriginUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::OriginUpdateParameters
      EndpointListResult = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointListResult
      OriginListResult = Azure::CDN::Mgmt::V2017_10_12::Models::OriginListResult
      DeliveryRuleAction = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleAction
      DeliveryRule = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRule
      CustomDomainParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainParameters
      EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      CustomDomainHttpsParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainHttpsParameters
      UrlPathConditionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UrlPathConditionParameters
      CdnCertificateSourceParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CdnCertificateSourceParameters
      UrlFileExtensionConditionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UrlFileExtensionConditionParameters
      ErrorResponse = Azure::CDN::Mgmt::V2017_10_12::Models::ErrorResponse
      CacheExpirationActionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CacheExpirationActionParameters
      KeyVaultCertificateSourceParameters = Azure::CDN::Mgmt::V2017_10_12::Models::KeyVaultCertificateSourceParameters
      ProfileUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileUpdateParameters
      Resource = Azure::CDN::Mgmt::V2017_10_12::Models::Resource
      IpAddressGroup = Azure::CDN::Mgmt::V2017_10_12::Models::IpAddressGroup
      CustomDomainListResult = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainListResult
      DeliveryRuleCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCondition
      ValidateCustomDomainInput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainInput
      EndpointUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointUpdateParameters
      ValidateCustomDomainOutput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainOutput
      OperationsListResult = Azure::CDN::Mgmt::V2017_10_12::Models::OperationsListResult
      CheckNameAvailabilityInput = Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityInput
      SupportedOptimizationTypesListResult = Azure::CDN::Mgmt::V2017_10_12::Models::SupportedOptimizationTypesListResult
      CheckNameAvailabilityOutput = Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityOutput
      EndpointPropertiesUpdateParametersDeliveryPolicy = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      ValidateProbeInput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeInput
      Operation = Azure::CDN::Mgmt::V2017_10_12::Models::Operation
      ValidateProbeOutput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeOutput
      CidrIpAddress = Azure::CDN::Mgmt::V2017_10_12::Models::CidrIpAddress
      ResourceUsage = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsage
      GeoFilter = Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilter
    end

    #
    # CDNManagementClass
    #
    class CDNManagementClass
      attr_reader :origins, :custom_domains, :resource_usage_operations, :operations, :edge_nodes, :profiles, :endpoints, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::CDN::Mgmt::V2017_10_12::CdnManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @origins = @client_0.origins
        @custom_domains = @client_0.custom_domains
        @resource_usage_operations = @client_0.resource_usage_operations
        @operations = @client_0.operations
        @edge_nodes = @client_0.edge_nodes
        @profiles = @client_0.profiles
        @endpoints = @client_0.endpoints

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/CDN/Mgmt'
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
      def resource_usage_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsageListResult
      end
      def profile
        Azure::CDN::Mgmt::V2017_10_12::Models::Profile
      end
      def endpoint
        Azure::CDN::Mgmt::V2017_10_12::Models::Endpoint
      end
      def delivery_rule_url_path_condition
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlPathCondition
      end
      def delivery_rule_url_file_extension_condition
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlFileExtensionCondition
      end
      def delivery_rule_cache_expiration_action
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCacheExpirationAction
      end
      def origin
        Azure::CDN::Mgmt::V2017_10_12::Models::Origin
      end
      def proxy_resource
        Azure::CDN::Mgmt::V2017_10_12::Models::ProxyResource
      end
      def custom_domain
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomain
      end
      def cdn_managed_https_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CdnManagedHttpsParameters
      end
      def user_managed_https_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::UserManagedHttpsParameters
      end
      def edge_node
        Azure::CDN::Mgmt::V2017_10_12::Models::EdgeNode
      end
      def tracked_resource
        Azure::CDN::Mgmt::V2017_10_12::Models::TrackedResource
      end
      def sku_name
        Azure::CDN::Mgmt::V2017_10_12::Models::SkuName
      end
      def profile_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::ProfileResourceState
      end
      def optimization_type
        Azure::CDN::Mgmt::V2017_10_12::Models::OptimizationType
      end
      def endpoint_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointResourceState
      end
      def query_string_caching_behavior
        Azure::CDN::Mgmt::V2017_10_12::Models::QueryStringCachingBehavior
      end
      def geo_filter_actions
        Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilterActions
      end
      def origin_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::OriginResourceState
      end
      def custom_domain_resource_state
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainResourceState
      end
      def custom_https_provisioning_state
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningState
      end
      def custom_https_provisioning_substate
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningSubstate
      end
      def protocol_type
        Azure::CDN::Mgmt::V2017_10_12::Models::ProtocolType
      end
      def certificate_type
        Azure::CDN::Mgmt::V2017_10_12::Models::CertificateType
      end
      def resource_type
        Azure::CDN::Mgmt::V2017_10_12::Models::ResourceType
      end
      def load_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::LoadParameters
      end
      def edgenode_result
        Azure::CDN::Mgmt::V2017_10_12::Models::EdgenodeResult
      end
      def purge_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::PurgeParameters
      end
      def profile_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::ProfileListResult
      end
      def sku
        Azure::CDN::Mgmt::V2017_10_12::Models::Sku
      end
      def sso_uri
        Azure::CDN::Mgmt::V2017_10_12::Models::SsoUri
      end
      def operation_display
        Azure::CDN::Mgmt::V2017_10_12::Models::OperationDisplay
      end
      def deep_created_origin
        Azure::CDN::Mgmt::V2017_10_12::Models::DeepCreatedOrigin
      end
      def origin_update_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::OriginUpdateParameters
      end
      def endpoint_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointListResult
      end
      def origin_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::OriginListResult
      end
      def delivery_rule_action
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleAction
      end
      def delivery_rule
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRule
      end
      def custom_domain_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainParameters
      end
      def endpoint_properties_update_parameters_web_application_firewall_policy_link
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      end
      def custom_domain_https_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainHttpsParameters
      end
      def url_path_condition_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::UrlPathConditionParameters
      end
      def cdn_certificate_source_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CdnCertificateSourceParameters
      end
      def url_file_extension_condition_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::UrlFileExtensionConditionParameters
      end
      def error_response
        Azure::CDN::Mgmt::V2017_10_12::Models::ErrorResponse
      end
      def cache_expiration_action_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::CacheExpirationActionParameters
      end
      def key_vault_certificate_source_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::KeyVaultCertificateSourceParameters
      end
      def profile_update_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::ProfileUpdateParameters
      end
      def resource
        Azure::CDN::Mgmt::V2017_10_12::Models::Resource
      end
      def ip_address_group
        Azure::CDN::Mgmt::V2017_10_12::Models::IpAddressGroup
      end
      def custom_domain_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainListResult
      end
      def delivery_rule_condition
        Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCondition
      end
      def validate_custom_domain_input
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainInput
      end
      def endpoint_update_parameters
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointUpdateParameters
      end
      def validate_custom_domain_output
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainOutput
      end
      def operations_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::OperationsListResult
      end
      def check_name_availability_input
        Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityInput
      end
      def supported_optimization_types_list_result
        Azure::CDN::Mgmt::V2017_10_12::Models::SupportedOptimizationTypesListResult
      end
      def check_name_availability_output
        Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityOutput
      end
      def endpoint_properties_update_parameters_delivery_policy
        Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      end
      def validate_probe_input
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeInput
      end
      def operation
        Azure::CDN::Mgmt::V2017_10_12::Models::Operation
      end
      def validate_probe_output
        Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeOutput
      end
      def cidr_ip_address
        Azure::CDN::Mgmt::V2017_10_12::Models::CidrIpAddress
      end
      def resource_usage
        Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsage
      end
      def geo_filter
        Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilter
      end
    end
  end
end
