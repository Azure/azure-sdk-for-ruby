# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::CDN::Profiles::Latest
  module Mgmt
    Profiles = Azure::CDN::Mgmt::V2020_04_15::Profiles
    Endpoints = Azure::CDN::Mgmt::V2020_04_15::Endpoints
    Origins = Azure::CDN::Mgmt::V2020_04_15::Origins
    OriginGroups = Azure::CDN::Mgmt::V2020_04_15::OriginGroups
    CustomDomains = Azure::CDN::Mgmt::V2020_04_15::CustomDomains
    ResourceUsageOperations = Azure::CDN::Mgmt::V2020_04_15::ResourceUsageOperations
    Operations = Azure::CDN::Mgmt::V2020_04_15::Operations
    EdgeNodes = Azure::CDN::Mgmt::V2020_04_15::EdgeNodes
    Policies = Azure::CDN::Mgmt::V2020_04_15::Policies
    ManagedRuleSets = Azure::CDN::Mgmt::V2020_04_15::ManagedRuleSets

    module Models
      UrlRedirectActionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UrlRedirectActionParameters
      Sku = Azure::CDN::Mgmt::V2020_04_15::Models::Sku
      UrlFileNameMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileNameMatchConditionParameters
      ProfileListResult = Azure::CDN::Mgmt::V2020_04_15::Models::ProfileListResult
      Operation = Azure::CDN::Mgmt::V2020_04_15::Models::Operation
      SsoUri = Azure::CDN::Mgmt::V2020_04_15::Models::SsoUri
      HttpVersionMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::HttpVersionMatchConditionParameters
      DeepCreatedOrigin = Azure::CDN::Mgmt::V2020_04_15::Models::DeepCreatedOrigin
      OperationDisplay = Azure::CDN::Mgmt::V2020_04_15::Models::OperationDisplay
      ResourceReference = Azure::CDN::Mgmt::V2020_04_15::Models::ResourceReference
      CookiesMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CookiesMatchConditionParameters
      ResponseBasedOriginErrorDetectionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::ResponseBasedOriginErrorDetectionParameters
      ResourceUsageListResult = Azure::CDN::Mgmt::V2020_04_15::Models::ResourceUsageListResult
      CustomRule = Azure::CDN::Mgmt::V2020_04_15::Models::CustomRule
      IsDeviceMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::IsDeviceMatchConditionParameters
      GeoFilter = Azure::CDN::Mgmt::V2020_04_15::Models::GeoFilter
      ResourceUsage = Azure::CDN::Mgmt::V2020_04_15::Models::ResourceUsage
      UrlSigningKey = Azure::CDN::Mgmt::V2020_04_15::Models::UrlSigningKey
      ValidateProbeOutput = Azure::CDN::Mgmt::V2020_04_15::Models::ValidateProbeOutput
      DeliveryRuleAction = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleAction
      MatchCondition = Azure::CDN::Mgmt::V2020_04_15::Models::MatchCondition
      EndpointPropertiesUpdateParametersDeliveryPolicy = Azure::CDN::Mgmt::V2020_04_15::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      UrlSigningParamIdentifier = Azure::CDN::Mgmt::V2020_04_15::Models::UrlSigningParamIdentifier
      EndpointUpdateParameters = Azure::CDN::Mgmt::V2020_04_15::Models::EndpointUpdateParameters
      UrlSigningActionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UrlSigningActionParameters
      PolicySettings = Azure::CDN::Mgmt::V2020_04_15::Models::PolicySettings
      UrlRewriteActionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UrlRewriteActionParameters
      ErrorResponse = Azure::CDN::Mgmt::V2020_04_15::Models::ErrorResponse
      RateLimitRuleList = Azure::CDN::Mgmt::V2020_04_15::Models::RateLimitRuleList
      CustomRuleList = Azure::CDN::Mgmt::V2020_04_15::Models::CustomRuleList
      HeaderActionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::HeaderActionParameters
      ManagedRuleOverride = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleOverride
      Resource = Azure::CDN::Mgmt::V2020_04_15::Models::Resource
      ManagedRuleSetDefinitionList = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSetDefinitionList
      EdgenodeResult = Azure::CDN::Mgmt::V2020_04_15::Models::EdgenodeResult
      CacheExpirationActionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CacheExpirationActionParameters
      ManagedRuleGroupOverride = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleGroupOverride
      ManagedRuleGroupDefinition = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleGroupDefinition
      IpAddressGroup = Azure::CDN::Mgmt::V2020_04_15::Models::IpAddressGroup
      CacheKeyQueryStringActionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CacheKeyQueryStringActionParameters
      CidrIpAddress = Azure::CDN::Mgmt::V2020_04_15::Models::CidrIpAddress
      ManagedRuleDefinition = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleDefinition
      OperationsListResult = Azure::CDN::Mgmt::V2020_04_15::Models::OperationsListResult
      PurgeParameters = Azure::CDN::Mgmt::V2020_04_15::Models::PurgeParameters
      SupportedOptimizationTypesListResult = Azure::CDN::Mgmt::V2020_04_15::Models::SupportedOptimizationTypesListResult
      LoadParameters = Azure::CDN::Mgmt::V2020_04_15::Models::LoadParameters
      HttpErrorRangeParameters = Azure::CDN::Mgmt::V2020_04_15::Models::HttpErrorRangeParameters
      CdnWebApplicationFirewallPolicyPatchParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CdnWebApplicationFirewallPolicyPatchParameters
      EndpointListResult = Azure::CDN::Mgmt::V2020_04_15::Models::EndpointListResult
      OriginUpdateParameters = Azure::CDN::Mgmt::V2020_04_15::Models::OriginUpdateParameters
      DeliveryRuleCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCondition
      OriginListResult = Azure::CDN::Mgmt::V2020_04_15::Models::OriginListResult
      EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink = Azure::CDN::Mgmt::V2020_04_15::Models::EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      CdnWebApplicationFirewallPolicyList = Azure::CDN::Mgmt::V2020_04_15::Models::CdnWebApplicationFirewallPolicyList
      RequestMethodMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::RequestMethodMatchConditionParameters
      OriginGroupUpdateParameters = Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroupUpdateParameters
      PostArgsMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::PostArgsMatchConditionParameters
      OriginGroupListResult = Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroupListResult
      RequestHeaderMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::RequestHeaderMatchConditionParameters
      CdnEndpoint = Azure::CDN::Mgmt::V2020_04_15::Models::CdnEndpoint
      RequestSchemeMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::RequestSchemeMatchConditionParameters
      CustomDomainParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainParameters
      UrlFileExtensionMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileExtensionMatchConditionParameters
      CustomDomainHttpsParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainHttpsParameters
      HealthProbeParameters = Azure::CDN::Mgmt::V2020_04_15::Models::HealthProbeParameters
      CdnCertificateSourceParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CdnCertificateSourceParameters
      KeyVaultSigningKeyParameters = Azure::CDN::Mgmt::V2020_04_15::Models::KeyVaultSigningKeyParameters
      ManagedRuleSetList = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSetList
      RemoteAddressMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::RemoteAddressMatchConditionParameters
      KeyVaultCertificateSourceParameters = Azure::CDN::Mgmt::V2020_04_15::Models::KeyVaultCertificateSourceParameters
      RequestUriMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::RequestUriMatchConditionParameters
      ManagedRuleSet = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSet
      UrlPathMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UrlPathMatchConditionParameters
      CustomDomainListResult = Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainListResult
      DeepCreatedOriginGroup = Azure::CDN::Mgmt::V2020_04_15::Models::DeepCreatedOriginGroup
      ValidateCustomDomainInput = Azure::CDN::Mgmt::V2020_04_15::Models::ValidateCustomDomainInput
      QueryStringMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringMatchConditionParameters
      ValidateCustomDomainOutput = Azure::CDN::Mgmt::V2020_04_15::Models::ValidateCustomDomainOutput
      ProfileUpdateParameters = Azure::CDN::Mgmt::V2020_04_15::Models::ProfileUpdateParameters
      CheckNameAvailabilityInput = Azure::CDN::Mgmt::V2020_04_15::Models::CheckNameAvailabilityInput
      RequestBodyMatchConditionParameters = Azure::CDN::Mgmt::V2020_04_15::Models::RequestBodyMatchConditionParameters
      CheckNameAvailabilityOutput = Azure::CDN::Mgmt::V2020_04_15::Models::CheckNameAvailabilityOutput
      DeliveryRule = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRule
      ValidateProbeInput = Azure::CDN::Mgmt::V2020_04_15::Models::ValidateProbeInput
      Profile = Azure::CDN::Mgmt::V2020_04_15::Models::Profile
      Endpoint = Azure::CDN::Mgmt::V2020_04_15::Models::Endpoint
      DeliveryRuleRemoteAddressCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRemoteAddressCondition
      DeliveryRuleRequestMethodCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestMethodCondition
      DeliveryRuleQueryStringCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleQueryStringCondition
      DeliveryRulePostArgsCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRulePostArgsCondition
      DeliveryRuleRequestUriCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestUriCondition
      DeliveryRuleRequestHeaderCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestHeaderCondition
      DeliveryRuleRequestBodyCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestBodyCondition
      DeliveryRuleRequestSchemeCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestSchemeCondition
      DeliveryRuleUrlPathCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleUrlPathCondition
      DeliveryRuleUrlFileExtensionCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleUrlFileExtensionCondition
      DeliveryRuleUrlFileNameCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleUrlFileNameCondition
      DeliveryRuleHttpVersionCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleHttpVersionCondition
      DeliveryRuleCookiesCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCookiesCondition
      DeliveryRuleIsDeviceCondition = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleIsDeviceCondition
      UrlRedirectAction = Azure::CDN::Mgmt::V2020_04_15::Models::UrlRedirectAction
      UrlRewriteAction = Azure::CDN::Mgmt::V2020_04_15::Models::UrlRewriteAction
      DeliveryRuleRequestHeaderAction = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestHeaderAction
      DeliveryRuleResponseHeaderAction = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleResponseHeaderAction
      DeliveryRuleCacheExpirationAction = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCacheExpirationAction
      DeliveryRuleCacheKeyQueryStringAction = Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCacheKeyQueryStringAction
      ProxyResource = Azure::CDN::Mgmt::V2020_04_15::Models::ProxyResource
      Origin = Azure::CDN::Mgmt::V2020_04_15::Models::Origin
      OriginGroup = Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroup
      CustomDomain = Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomain
      CdnManagedHttpsParameters = Azure::CDN::Mgmt::V2020_04_15::Models::CdnManagedHttpsParameters
      UserManagedHttpsParameters = Azure::CDN::Mgmt::V2020_04_15::Models::UserManagedHttpsParameters
      EdgeNode = Azure::CDN::Mgmt::V2020_04_15::Models::EdgeNode
      TrackedResource = Azure::CDN::Mgmt::V2020_04_15::Models::TrackedResource
      RateLimitRule = Azure::CDN::Mgmt::V2020_04_15::Models::RateLimitRule
      CdnWebApplicationFirewallPolicy = Azure::CDN::Mgmt::V2020_04_15::Models::CdnWebApplicationFirewallPolicy
      ManagedRuleSetDefinition = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSetDefinition
      SkuName = Azure::CDN::Mgmt::V2020_04_15::Models::SkuName
      ProfileResourceState = Azure::CDN::Mgmt::V2020_04_15::Models::ProfileResourceState
      OptimizationType = Azure::CDN::Mgmt::V2020_04_15::Models::OptimizationType
      HealthProbeRequestType = Azure::CDN::Mgmt::V2020_04_15::Models::HealthProbeRequestType
      ProbeProtocol = Azure::CDN::Mgmt::V2020_04_15::Models::ProbeProtocol
      ResponseBasedDetectedErrorTypes = Azure::CDN::Mgmt::V2020_04_15::Models::ResponseBasedDetectedErrorTypes
      EndpointResourceState = Azure::CDN::Mgmt::V2020_04_15::Models::EndpointResourceState
      QueryStringCachingBehavior = Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringCachingBehavior
      GeoFilterActions = Azure::CDN::Mgmt::V2020_04_15::Models::GeoFilterActions
      RemoteAddressOperator = Azure::CDN::Mgmt::V2020_04_15::Models::RemoteAddressOperator
      Transform = Azure::CDN::Mgmt::V2020_04_15::Models::Transform
      QueryStringOperator = Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringOperator
      PostArgsOperator = Azure::CDN::Mgmt::V2020_04_15::Models::PostArgsOperator
      RequestUriOperator = Azure::CDN::Mgmt::V2020_04_15::Models::RequestUriOperator
      RequestHeaderOperator = Azure::CDN::Mgmt::V2020_04_15::Models::RequestHeaderOperator
      RequestBodyOperator = Azure::CDN::Mgmt::V2020_04_15::Models::RequestBodyOperator
      UrlPathOperator = Azure::CDN::Mgmt::V2020_04_15::Models::UrlPathOperator
      UrlFileExtensionOperator = Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileExtensionOperator
      UrlFileNameOperator = Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileNameOperator
      CookiesOperator = Azure::CDN::Mgmt::V2020_04_15::Models::CookiesOperator
      RedirectType = Azure::CDN::Mgmt::V2020_04_15::Models::RedirectType
      DestinationProtocol = Azure::CDN::Mgmt::V2020_04_15::Models::DestinationProtocol
      Algorithm = Azure::CDN::Mgmt::V2020_04_15::Models::Algorithm
      ParamIndicator = Azure::CDN::Mgmt::V2020_04_15::Models::ParamIndicator
      HeaderAction = Azure::CDN::Mgmt::V2020_04_15::Models::HeaderAction
      CacheBehavior = Azure::CDN::Mgmt::V2020_04_15::Models::CacheBehavior
      QueryStringBehavior = Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringBehavior
      OriginResourceState = Azure::CDN::Mgmt::V2020_04_15::Models::OriginResourceState
      PrivateEndpointStatus = Azure::CDN::Mgmt::V2020_04_15::Models::PrivateEndpointStatus
      OriginGroupResourceState = Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroupResourceState
      CustomDomainResourceState = Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainResourceState
      CustomHttpsProvisioningState = Azure::CDN::Mgmt::V2020_04_15::Models::CustomHttpsProvisioningState
      CustomHttpsProvisioningSubstate = Azure::CDN::Mgmt::V2020_04_15::Models::CustomHttpsProvisioningSubstate
      ProtocolType = Azure::CDN::Mgmt::V2020_04_15::Models::ProtocolType
      MinimumTlsVersion = Azure::CDN::Mgmt::V2020_04_15::Models::MinimumTlsVersion
      CertificateType = Azure::CDN::Mgmt::V2020_04_15::Models::CertificateType
      ResourceType = Azure::CDN::Mgmt::V2020_04_15::Models::ResourceType
      PolicyEnabledState = Azure::CDN::Mgmt::V2020_04_15::Models::PolicyEnabledState
      PolicyMode = Azure::CDN::Mgmt::V2020_04_15::Models::PolicyMode
      CustomRuleEnabledState = Azure::CDN::Mgmt::V2020_04_15::Models::CustomRuleEnabledState
      MatchVariable = Azure::CDN::Mgmt::V2020_04_15::Models::MatchVariable
      Operator = Azure::CDN::Mgmt::V2020_04_15::Models::Operator
      TransformType = Azure::CDN::Mgmt::V2020_04_15::Models::TransformType
      ActionType = Azure::CDN::Mgmt::V2020_04_15::Models::ActionType
      ManagedRuleEnabledState = Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleEnabledState
      ProvisioningState = Azure::CDN::Mgmt::V2020_04_15::Models::ProvisioningState
      PolicyResourceState = Azure::CDN::Mgmt::V2020_04_15::Models::PolicyResourceState
    end

    #
    # CDNManagementClass
    #
    class CDNManagementClass
      attr_reader :profiles, :endpoints, :origins, :origin_groups, :custom_domains, :resource_usage_operations, :operations, :edge_nodes, :policies, :managed_rule_sets, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::CDN::Mgmt::V2020_04_15::CdnManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @profiles = @client_0.profiles
        @endpoints = @client_0.endpoints
        @origins = @client_0.origins
        @origin_groups = @client_0.origin_groups
        @custom_domains = @client_0.custom_domains
        @resource_usage_operations = @client_0.resource_usage_operations
        @operations = @client_0.operations
        @edge_nodes = @client_0.edge_nodes
        @policies = @client_0.policies
        @managed_rule_sets = @client_0.managed_rule_sets

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
      def url_redirect_action_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlRedirectActionParameters
      end
      def sku
        Azure::CDN::Mgmt::V2020_04_15::Models::Sku
      end
      def url_file_name_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileNameMatchConditionParameters
      end
      def profile_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::ProfileListResult
      end
      def operation
        Azure::CDN::Mgmt::V2020_04_15::Models::Operation
      end
      def sso_uri
        Azure::CDN::Mgmt::V2020_04_15::Models::SsoUri
      end
      def http_version_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::HttpVersionMatchConditionParameters
      end
      def deep_created_origin
        Azure::CDN::Mgmt::V2020_04_15::Models::DeepCreatedOrigin
      end
      def operation_display
        Azure::CDN::Mgmt::V2020_04_15::Models::OperationDisplay
      end
      def resource_reference
        Azure::CDN::Mgmt::V2020_04_15::Models::ResourceReference
      end
      def cookies_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CookiesMatchConditionParameters
      end
      def response_based_origin_error_detection_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::ResponseBasedOriginErrorDetectionParameters
      end
      def resource_usage_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::ResourceUsageListResult
      end
      def custom_rule
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomRule
      end
      def is_device_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::IsDeviceMatchConditionParameters
      end
      def geo_filter
        Azure::CDN::Mgmt::V2020_04_15::Models::GeoFilter
      end
      def resource_usage
        Azure::CDN::Mgmt::V2020_04_15::Models::ResourceUsage
      end
      def url_signing_key
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlSigningKey
      end
      def validate_probe_output
        Azure::CDN::Mgmt::V2020_04_15::Models::ValidateProbeOutput
      end
      def delivery_rule_action
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleAction
      end
      def match_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::MatchCondition
      end
      def endpoint_properties_update_parameters_delivery_policy
        Azure::CDN::Mgmt::V2020_04_15::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      end
      def url_signing_param_identifier
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlSigningParamIdentifier
      end
      def endpoint_update_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::EndpointUpdateParameters
      end
      def url_signing_action_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlSigningActionParameters
      end
      def policy_settings
        Azure::CDN::Mgmt::V2020_04_15::Models::PolicySettings
      end
      def url_rewrite_action_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlRewriteActionParameters
      end
      def error_response
        Azure::CDN::Mgmt::V2020_04_15::Models::ErrorResponse
      end
      def rate_limit_rule_list
        Azure::CDN::Mgmt::V2020_04_15::Models::RateLimitRuleList
      end
      def custom_rule_list
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomRuleList
      end
      def header_action_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::HeaderActionParameters
      end
      def managed_rule_override
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleOverride
      end
      def resource
        Azure::CDN::Mgmt::V2020_04_15::Models::Resource
      end
      def managed_rule_set_definition_list
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSetDefinitionList
      end
      def edgenode_result
        Azure::CDN::Mgmt::V2020_04_15::Models::EdgenodeResult
      end
      def cache_expiration_action_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CacheExpirationActionParameters
      end
      def managed_rule_group_override
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleGroupOverride
      end
      def managed_rule_group_definition
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleGroupDefinition
      end
      def ip_address_group
        Azure::CDN::Mgmt::V2020_04_15::Models::IpAddressGroup
      end
      def cache_key_query_string_action_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CacheKeyQueryStringActionParameters
      end
      def cidr_ip_address
        Azure::CDN::Mgmt::V2020_04_15::Models::CidrIpAddress
      end
      def managed_rule_definition
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleDefinition
      end
      def operations_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::OperationsListResult
      end
      def purge_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::PurgeParameters
      end
      def supported_optimization_types_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::SupportedOptimizationTypesListResult
      end
      def load_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::LoadParameters
      end
      def http_error_range_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::HttpErrorRangeParameters
      end
      def cdn_web_application_firewall_policy_patch_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CdnWebApplicationFirewallPolicyPatchParameters
      end
      def endpoint_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::EndpointListResult
      end
      def origin_update_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginUpdateParameters
      end
      def delivery_rule_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCondition
      end
      def origin_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginListResult
      end
      def endpoint_properties_update_parameters_web_application_firewall_policy_link
        Azure::CDN::Mgmt::V2020_04_15::Models::EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      end
      def cdn_web_application_firewall_policy_list
        Azure::CDN::Mgmt::V2020_04_15::Models::CdnWebApplicationFirewallPolicyList
      end
      def request_method_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestMethodMatchConditionParameters
      end
      def origin_group_update_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroupUpdateParameters
      end
      def post_args_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::PostArgsMatchConditionParameters
      end
      def origin_group_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroupListResult
      end
      def request_header_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestHeaderMatchConditionParameters
      end
      def cdn_endpoint
        Azure::CDN::Mgmt::V2020_04_15::Models::CdnEndpoint
      end
      def request_scheme_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestSchemeMatchConditionParameters
      end
      def custom_domain_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainParameters
      end
      def url_file_extension_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileExtensionMatchConditionParameters
      end
      def custom_domain_https_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainHttpsParameters
      end
      def health_probe_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::HealthProbeParameters
      end
      def cdn_certificate_source_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CdnCertificateSourceParameters
      end
      def key_vault_signing_key_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::KeyVaultSigningKeyParameters
      end
      def managed_rule_set_list
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSetList
      end
      def remote_address_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::RemoteAddressMatchConditionParameters
      end
      def key_vault_certificate_source_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::KeyVaultCertificateSourceParameters
      end
      def request_uri_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestUriMatchConditionParameters
      end
      def managed_rule_set
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSet
      end
      def url_path_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlPathMatchConditionParameters
      end
      def custom_domain_list_result
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainListResult
      end
      def deep_created_origin_group
        Azure::CDN::Mgmt::V2020_04_15::Models::DeepCreatedOriginGroup
      end
      def validate_custom_domain_input
        Azure::CDN::Mgmt::V2020_04_15::Models::ValidateCustomDomainInput
      end
      def query_string_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringMatchConditionParameters
      end
      def validate_custom_domain_output
        Azure::CDN::Mgmt::V2020_04_15::Models::ValidateCustomDomainOutput
      end
      def profile_update_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::ProfileUpdateParameters
      end
      def check_name_availability_input
        Azure::CDN::Mgmt::V2020_04_15::Models::CheckNameAvailabilityInput
      end
      def request_body_match_condition_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestBodyMatchConditionParameters
      end
      def check_name_availability_output
        Azure::CDN::Mgmt::V2020_04_15::Models::CheckNameAvailabilityOutput
      end
      def delivery_rule
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRule
      end
      def validate_probe_input
        Azure::CDN::Mgmt::V2020_04_15::Models::ValidateProbeInput
      end
      def profile
        Azure::CDN::Mgmt::V2020_04_15::Models::Profile
      end
      def endpoint
        Azure::CDN::Mgmt::V2020_04_15::Models::Endpoint
      end
      def delivery_rule_remote_address_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRemoteAddressCondition
      end
      def delivery_rule_request_method_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestMethodCondition
      end
      def delivery_rule_query_string_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleQueryStringCondition
      end
      def delivery_rule_post_args_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRulePostArgsCondition
      end
      def delivery_rule_request_uri_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestUriCondition
      end
      def delivery_rule_request_header_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestHeaderCondition
      end
      def delivery_rule_request_body_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestBodyCondition
      end
      def delivery_rule_request_scheme_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestSchemeCondition
      end
      def delivery_rule_url_path_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleUrlPathCondition
      end
      def delivery_rule_url_file_extension_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleUrlFileExtensionCondition
      end
      def delivery_rule_url_file_name_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleUrlFileNameCondition
      end
      def delivery_rule_http_version_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleHttpVersionCondition
      end
      def delivery_rule_cookies_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCookiesCondition
      end
      def delivery_rule_is_device_condition
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleIsDeviceCondition
      end
      def url_redirect_action
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlRedirectAction
      end
      def url_rewrite_action
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlRewriteAction
      end
      def delivery_rule_request_header_action
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleRequestHeaderAction
      end
      def delivery_rule_response_header_action
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleResponseHeaderAction
      end
      def delivery_rule_cache_expiration_action
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCacheExpirationAction
      end
      def delivery_rule_cache_key_query_string_action
        Azure::CDN::Mgmt::V2020_04_15::Models::DeliveryRuleCacheKeyQueryStringAction
      end
      def proxy_resource
        Azure::CDN::Mgmt::V2020_04_15::Models::ProxyResource
      end
      def origin
        Azure::CDN::Mgmt::V2020_04_15::Models::Origin
      end
      def origin_group
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroup
      end
      def custom_domain
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomain
      end
      def cdn_managed_https_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::CdnManagedHttpsParameters
      end
      def user_managed_https_parameters
        Azure::CDN::Mgmt::V2020_04_15::Models::UserManagedHttpsParameters
      end
      def edge_node
        Azure::CDN::Mgmt::V2020_04_15::Models::EdgeNode
      end
      def tracked_resource
        Azure::CDN::Mgmt::V2020_04_15::Models::TrackedResource
      end
      def rate_limit_rule
        Azure::CDN::Mgmt::V2020_04_15::Models::RateLimitRule
      end
      def cdn_web_application_firewall_policy
        Azure::CDN::Mgmt::V2020_04_15::Models::CdnWebApplicationFirewallPolicy
      end
      def managed_rule_set_definition
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleSetDefinition
      end
      def sku_name
        Azure::CDN::Mgmt::V2020_04_15::Models::SkuName
      end
      def profile_resource_state
        Azure::CDN::Mgmt::V2020_04_15::Models::ProfileResourceState
      end
      def optimization_type
        Azure::CDN::Mgmt::V2020_04_15::Models::OptimizationType
      end
      def health_probe_request_type
        Azure::CDN::Mgmt::V2020_04_15::Models::HealthProbeRequestType
      end
      def probe_protocol
        Azure::CDN::Mgmt::V2020_04_15::Models::ProbeProtocol
      end
      def response_based_detected_error_types
        Azure::CDN::Mgmt::V2020_04_15::Models::ResponseBasedDetectedErrorTypes
      end
      def endpoint_resource_state
        Azure::CDN::Mgmt::V2020_04_15::Models::EndpointResourceState
      end
      def query_string_caching_behavior
        Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringCachingBehavior
      end
      def geo_filter_actions
        Azure::CDN::Mgmt::V2020_04_15::Models::GeoFilterActions
      end
      def remote_address_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::RemoteAddressOperator
      end
      def transform
        Azure::CDN::Mgmt::V2020_04_15::Models::Transform
      end
      def query_string_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringOperator
      end
      def post_args_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::PostArgsOperator
      end
      def request_uri_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestUriOperator
      end
      def request_header_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestHeaderOperator
      end
      def request_body_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::RequestBodyOperator
      end
      def url_path_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlPathOperator
      end
      def url_file_extension_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileExtensionOperator
      end
      def url_file_name_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::UrlFileNameOperator
      end
      def cookies_operator
        Azure::CDN::Mgmt::V2020_04_15::Models::CookiesOperator
      end
      def redirect_type
        Azure::CDN::Mgmt::V2020_04_15::Models::RedirectType
      end
      def destination_protocol
        Azure::CDN::Mgmt::V2020_04_15::Models::DestinationProtocol
      end
      def algorithm
        Azure::CDN::Mgmt::V2020_04_15::Models::Algorithm
      end
      def param_indicator
        Azure::CDN::Mgmt::V2020_04_15::Models::ParamIndicator
      end
      def header_action
        Azure::CDN::Mgmt::V2020_04_15::Models::HeaderAction
      end
      def cache_behavior
        Azure::CDN::Mgmt::V2020_04_15::Models::CacheBehavior
      end
      def query_string_behavior
        Azure::CDN::Mgmt::V2020_04_15::Models::QueryStringBehavior
      end
      def origin_resource_state
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginResourceState
      end
      def private_endpoint_status
        Azure::CDN::Mgmt::V2020_04_15::Models::PrivateEndpointStatus
      end
      def origin_group_resource_state
        Azure::CDN::Mgmt::V2020_04_15::Models::OriginGroupResourceState
      end
      def custom_domain_resource_state
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomDomainResourceState
      end
      def custom_https_provisioning_state
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomHttpsProvisioningState
      end
      def custom_https_provisioning_substate
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomHttpsProvisioningSubstate
      end
      def protocol_type
        Azure::CDN::Mgmt::V2020_04_15::Models::ProtocolType
      end
      def minimum_tls_version
        Azure::CDN::Mgmt::V2020_04_15::Models::MinimumTlsVersion
      end
      def certificate_type
        Azure::CDN::Mgmt::V2020_04_15::Models::CertificateType
      end
      def resource_type
        Azure::CDN::Mgmt::V2020_04_15::Models::ResourceType
      end
      def policy_enabled_state
        Azure::CDN::Mgmt::V2020_04_15::Models::PolicyEnabledState
      end
      def policy_mode
        Azure::CDN::Mgmt::V2020_04_15::Models::PolicyMode
      end
      def custom_rule_enabled_state
        Azure::CDN::Mgmt::V2020_04_15::Models::CustomRuleEnabledState
      end
      def match_variable
        Azure::CDN::Mgmt::V2020_04_15::Models::MatchVariable
      end
      def operator
        Azure::CDN::Mgmt::V2020_04_15::Models::Operator
      end
      def transform_type
        Azure::CDN::Mgmt::V2020_04_15::Models::TransformType
      end
      def action_type
        Azure::CDN::Mgmt::V2020_04_15::Models::ActionType
      end
      def managed_rule_enabled_state
        Azure::CDN::Mgmt::V2020_04_15::Models::ManagedRuleEnabledState
      end
      def provisioning_state
        Azure::CDN::Mgmt::V2020_04_15::Models::ProvisioningState
      end
      def policy_resource_state
        Azure::CDN::Mgmt::V2020_04_15::Models::PolicyResourceState
      end
    end
  end
end
