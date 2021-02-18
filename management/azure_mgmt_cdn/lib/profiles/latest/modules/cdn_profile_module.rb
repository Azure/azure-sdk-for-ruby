# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::CDN::Profiles::Latest
  module Mgmt
    Profiles = Azure::CDN::Mgmt::V2020_09_01::Profiles
    Endpoints = Azure::CDN::Mgmt::V2020_09_01::Endpoints
    Origins = Azure::CDN::Mgmt::V2020_09_01::Origins
    OriginGroups = Azure::CDN::Mgmt::V2020_09_01::OriginGroups
    CustomDomains = Azure::CDN::Mgmt::V2020_09_01::CustomDomains
    ResourceUsageOperations = Azure::CDN::Mgmt::V2020_09_01::ResourceUsageOperations
    Operations = Azure::CDN::Mgmt::V2020_09_01::Operations
    EdgeNodes = Azure::CDN::Mgmt::V2020_09_01::EdgeNodes
    AFDProfiles = Azure::CDN::Mgmt::V2020_09_01::AFDProfiles
    AFDCustomDomains = Azure::CDN::Mgmt::V2020_09_01::AFDCustomDomains
    AFDEndpoints = Azure::CDN::Mgmt::V2020_09_01::AFDEndpoints
    AFDOriginGroups = Azure::CDN::Mgmt::V2020_09_01::AFDOriginGroups
    AFDOrigins = Azure::CDN::Mgmt::V2020_09_01::AFDOrigins
    Routes = Azure::CDN::Mgmt::V2020_09_01::Routes
    RuleSets = Azure::CDN::Mgmt::V2020_09_01::RuleSets
    Rules = Azure::CDN::Mgmt::V2020_09_01::Rules
    SecurityPolicies = Azure::CDN::Mgmt::V2020_09_01::SecurityPolicies
    Secrets = Azure::CDN::Mgmt::V2020_09_01::Secrets
    Validate = Azure::CDN::Mgmt::V2020_09_01::Validate
    LogAnalytics = Azure::CDN::Mgmt::V2020_09_01::LogAnalytics
    Policies = Azure::CDN::Mgmt::V2020_09_01::Policies
    ManagedRuleSets = Azure::CDN::Mgmt::V2020_09_01::ManagedRuleSets

    module Models
      CheckNameAvailabilityOutput = Azure::CDN::Mgmt::V2020_09_01::Models::CheckNameAvailabilityOutput
      ValidateProbeInput = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateProbeInput
      MetricsResponseSeriesItemGroupsItem = Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponseSeriesItemGroupsItem
      OriginGroupUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupUpdateParameters
      ProfileUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::ProfileUpdateParameters
      OriginGroupListResult = Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupListResult
      SupportedOptimizationTypesListResult = Azure::CDN::Mgmt::V2020_09_01::Models::SupportedOptimizationTypesListResult
      AfdErrorResponse = Azure::CDN::Mgmt::V2020_09_01::Models::AfdErrorResponse
      HealthProbeParameters = Azure::CDN::Mgmt::V2020_09_01::Models::HealthProbeParameters
      CustomDomainParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainParameters
      HttpErrorRangeParameters = Azure::CDN::Mgmt::V2020_09_01::Models::HttpErrorRangeParameters
      CustomDomainHttpsParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainHttpsParameters
      DeepCreatedOriginGroup = Azure::CDN::Mgmt::V2020_09_01::Models::DeepCreatedOriginGroup
      CdnCertificateSourceParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CdnCertificateSourceParameters
      EndpointListResult = Azure::CDN::Mgmt::V2020_09_01::Models::EndpointListResult
      AFDStateProperties = Azure::CDN::Mgmt::V2020_09_01::Models::AFDStateProperties
      KeyVaultSigningKeyParameters = Azure::CDN::Mgmt::V2020_09_01::Models::KeyVaultSigningKeyParameters
      KeyVaultCertificateSourceParameters = Azure::CDN::Mgmt::V2020_09_01::Models::KeyVaultCertificateSourceParameters
      DeliveryRuleCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCondition
      ValidationToken = Azure::CDN::Mgmt::V2020_09_01::Models::ValidationToken
      DeliveryRule = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRule
      CustomDomainListResult = Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainListResult
      EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink = Azure::CDN::Mgmt::V2020_09_01::Models::EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      ValidateCustomDomainInput = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateCustomDomainInput
      RemoteAddressMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RemoteAddressMatchConditionParameters
      ValidateCustomDomainOutput = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateCustomDomainOutput
      RequestMethodMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RequestMethodMatchConditionParameters
      CheckNameAvailabilityInput = Azure::CDN::Mgmt::V2020_09_01::Models::CheckNameAvailabilityInput
      QueryStringMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringMatchConditionParameters
      Sku = Azure::CDN::Mgmt::V2020_09_01::Models::Sku
      PostArgsMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::PostArgsMatchConditionParameters
      RuleUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RuleUpdateParameters
      RequestUriMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RequestUriMatchConditionParameters
      ValidateProbeOutput = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateProbeOutput
      RequestHeaderMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RequestHeaderMatchConditionParameters
      ResourceUsage = Azure::CDN::Mgmt::V2020_09_01::Models::ResourceUsage
      RequestBodyMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RequestBodyMatchConditionParameters
      ResourceUsageListResult = Azure::CDN::Mgmt::V2020_09_01::Models::ResourceUsageListResult
      RequestSchemeMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RequestSchemeMatchConditionParameters
      OperationDisplay = Azure::CDN::Mgmt::V2020_09_01::Models::OperationDisplay
      UrlPathMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlPathMatchConditionParameters
      Operation = Azure::CDN::Mgmt::V2020_09_01::Models::Operation
      UrlFileExtensionMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileExtensionMatchConditionParameters
      OperationsListResult = Azure::CDN::Mgmt::V2020_09_01::Models::OperationsListResult
      UrlFileNameMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileNameMatchConditionParameters
      CidrIpAddress = Azure::CDN::Mgmt::V2020_09_01::Models::CidrIpAddress
      HttpVersionMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::HttpVersionMatchConditionParameters
      IpAddressGroup = Azure::CDN::Mgmt::V2020_09_01::Models::IpAddressGroup
      CookiesMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CookiesMatchConditionParameters
      IsDeviceMatchConditionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::IsDeviceMatchConditionParameters
      EdgenodeResult = Azure::CDN::Mgmt::V2020_09_01::Models::EdgenodeResult
      UrlRedirectActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlRedirectActionParameters
      Resource = Azure::CDN::Mgmt::V2020_09_01::Models::Resource
      UrlSigningParamIdentifier = Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningParamIdentifier
      SystemData = Azure::CDN::Mgmt::V2020_09_01::Models::SystemData
      ContinentsResponseContinentsItem = Azure::CDN::Mgmt::V2020_09_01::Models::ContinentsResponseContinentsItem
      ManagedRuleSetDefinitionList = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSetDefinitionList
      RankingsResponse = Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponse
      RuleListResult = Azure::CDN::Mgmt::V2020_09_01::Models::RuleListResult
      RankingsResponseTablesItem = Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponseTablesItem
      ErrorResponse = Azure::CDN::Mgmt::V2020_09_01::Models::ErrorResponse
      RankingsResponseTablesItemDataItem = Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponseTablesItemDataItem
      AfdPurgeParameters = Azure::CDN::Mgmt::V2020_09_01::Models::AfdPurgeParameters
      CacheExpirationActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CacheExpirationActionParameters
      Certificate = Azure::CDN::Mgmt::V2020_09_01::Models::Certificate
      CacheKeyQueryStringActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CacheKeyQueryStringActionParameters
      ManagedRuleGroupDefinition = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleGroupDefinition
      PurgeParameters = Azure::CDN::Mgmt::V2020_09_01::Models::PurgeParameters
      ManagedRuleDefinition = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleDefinition
      MetricsResponseSeriesItemDataItem = Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponseSeriesItemDataItem
      ValidateSecretInput = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateSecretInput
      OriginListResult = Azure::CDN::Mgmt::V2020_09_01::Models::OriginListResult
      ValidateSecretOutput = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateSecretOutput
      SsoUri = Azure::CDN::Mgmt::V2020_09_01::Models::SsoUri
      AFDDomainHttpsParameters = Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomainHttpsParameters
      ResourceReference = Azure::CDN::Mgmt::V2020_09_01::Models::ResourceReference
      DomainValidationProperties = Azure::CDN::Mgmt::V2020_09_01::Models::DomainValidationProperties
      UsagesListResult = Azure::CDN::Mgmt::V2020_09_01::Models::UsagesListResult
      CdnWebApplicationFirewallPolicyPatchParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CdnWebApplicationFirewallPolicyPatchParameters
      UrlSigningKey = Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningKey
      AFDDomainListResult = Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomainListResult
      EndpointPropertiesUpdateParametersDeliveryPolicy = Azure::CDN::Mgmt::V2020_09_01::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      AFDDomainUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomainUpdateParameters
      Usage = Azure::CDN::Mgmt::V2020_09_01::Models::Usage
      SecurityPolicyWebApplicationFirewallAssociation = Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyWebApplicationFirewallAssociation
      WafRankingsResponse = Azure::CDN::Mgmt::V2020_09_01::Models::WafRankingsResponse
      CdnWebApplicationFirewallPolicyList = Azure::CDN::Mgmt::V2020_09_01::Models::CdnWebApplicationFirewallPolicyList
      WafRankingsResponseDataItemMetricsItem = Azure::CDN::Mgmt::V2020_09_01::Models::WafRankingsResponseDataItemMetricsItem
      CdnEndpoint = Azure::CDN::Mgmt::V2020_09_01::Models::CdnEndpoint
      WafMetricsResponseSeriesItem = Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponseSeriesItem
      SecurityPolicyParameters = Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyParameters
      WafMetricsResponseSeriesItemGroupsItem = Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponseSeriesItemGroupsItem
      SecurityPolicyListResult = Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyListResult
      ResourcesResponseCustomDomainsItem = Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponseCustomDomainsItem
      ManagedRuleSetList = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSetList
      ResourcesResponseEndpointsItemCustomDomainsItem = Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponseEndpointsItemCustomDomainsItem
      AFDEndpointListResult = Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpointListResult
      ContinentsResponseCountryOrRegionsItem = Azure::CDN::Mgmt::V2020_09_01::Models::ContinentsResponseCountryOrRegionsItem
      AFDEndpointUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpointUpdateParameters
      OriginGroupOverrideActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupOverrideActionParameters
      CompressionSettings = Azure::CDN::Mgmt::V2020_09_01::Models::CompressionSettings
      HeaderActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::HeaderActionParameters
      SecretParameters = Azure::CDN::Mgmt::V2020_09_01::Models::SecretParameters
      MetricsResponse = Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponse
      ManagedRuleSet = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSet
      LoadParameters = Azure::CDN::Mgmt::V2020_09_01::Models::LoadParameters
      ManagedRuleGroupOverride = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleGroupOverride
      ProfileListResult = Azure::CDN::Mgmt::V2020_09_01::Models::ProfileListResult
      SecretListResult = Azure::CDN::Mgmt::V2020_09_01::Models::SecretListResult
      ResponseBasedOriginErrorDetectionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::ResponseBasedOriginErrorDetectionParameters
      ManagedRuleOverride = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleOverride
      DeliveryRuleAction = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleAction
      ManagedCertificateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedCertificateParameters
      UsageName = Azure::CDN::Mgmt::V2020_09_01::Models::UsageName
      CustomerCertificateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CustomerCertificateParameters
      WafMetricsResponse = Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponse
      CustomRuleList = Azure::CDN::Mgmt::V2020_09_01::Models::CustomRuleList
      ResourcesResponse = Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponse
      RuleSetListResult = Azure::CDN::Mgmt::V2020_09_01::Models::RuleSetListResult
      ContinentsResponse = Azure::CDN::Mgmt::V2020_09_01::Models::ContinentsResponse
      CustomRule = Azure::CDN::Mgmt::V2020_09_01::Models::CustomRule
      UrlRewriteActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlRewriteActionParameters
      AFDOriginUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginUpdateParameters
      MetricsResponseSeriesItem = Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponseSeriesItem
      SharedPrivateLinkResourceProperties = Azure::CDN::Mgmt::V2020_09_01::Models::SharedPrivateLinkResourceProperties
      DeepCreatedOrigin = Azure::CDN::Mgmt::V2020_09_01::Models::DeepCreatedOrigin
      AFDOriginListResult = Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginListResult
      EndpointUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::EndpointUpdateParameters
      LoadBalancingSettingsParameters = Azure::CDN::Mgmt::V2020_09_01::Models::LoadBalancingSettingsParameters
      WafMetricsResponseSeriesItemDataItem = Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponseSeriesItemDataItem
      MatchCondition = Azure::CDN::Mgmt::V2020_09_01::Models::MatchCondition
      UrlSigningActionParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningActionParameters
      AFDOriginGroupUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginGroupUpdateParameters
      OriginUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::OriginUpdateParameters
      AFDOriginGroupListResult = Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginGroupListResult
      WafRankingsResponseDataItem = Azure::CDN::Mgmt::V2020_09_01::Models::WafRankingsResponseDataItem
      RateLimitRuleList = Azure::CDN::Mgmt::V2020_09_01::Models::RateLimitRuleList
      RankingsResponseTablesItemDataItemMetricsItem = Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponseTablesItemDataItemMetricsItem
      RouteListResult = Azure::CDN::Mgmt::V2020_09_01::Models::RouteListResult
      ResourcesResponseEndpointsItem = Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponseEndpointsItem
      RouteUpdateParameters = Azure::CDN::Mgmt::V2020_09_01::Models::RouteUpdateParameters
      GeoFilter = Azure::CDN::Mgmt::V2020_09_01::Models::GeoFilter
      PolicySettings = Azure::CDN::Mgmt::V2020_09_01::Models::PolicySettings
      Profile = Azure::CDN::Mgmt::V2020_09_01::Models::Profile
      Endpoint = Azure::CDN::Mgmt::V2020_09_01::Models::Endpoint
      DeliveryRuleRemoteAddressCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRemoteAddressCondition
      DeliveryRuleRequestMethodCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestMethodCondition
      DeliveryRuleQueryStringCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleQueryStringCondition
      DeliveryRulePostArgsCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRulePostArgsCondition
      DeliveryRuleRequestUriCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestUriCondition
      DeliveryRuleRequestHeaderCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestHeaderCondition
      DeliveryRuleRequestBodyCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestBodyCondition
      DeliveryRuleRequestSchemeCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestSchemeCondition
      DeliveryRuleUrlPathCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleUrlPathCondition
      DeliveryRuleUrlFileExtensionCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleUrlFileExtensionCondition
      DeliveryRuleUrlFileNameCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleUrlFileNameCondition
      DeliveryRuleHttpVersionCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleHttpVersionCondition
      DeliveryRuleCookiesCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCookiesCondition
      DeliveryRuleIsDeviceCondition = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleIsDeviceCondition
      UrlRedirectAction = Azure::CDN::Mgmt::V2020_09_01::Models::UrlRedirectAction
      UrlSigningAction = Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningAction
      OriginGroupOverrideAction = Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupOverrideAction
      UrlRewriteAction = Azure::CDN::Mgmt::V2020_09_01::Models::UrlRewriteAction
      DeliveryRuleRequestHeaderAction = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestHeaderAction
      DeliveryRuleResponseHeaderAction = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleResponseHeaderAction
      DeliveryRuleCacheExpirationAction = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCacheExpirationAction
      DeliveryRuleCacheKeyQueryStringAction = Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCacheKeyQueryStringAction
      ProxyResource = Azure::CDN::Mgmt::V2020_09_01::Models::ProxyResource
      Origin = Azure::CDN::Mgmt::V2020_09_01::Models::Origin
      OriginGroup = Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroup
      CustomDomain = Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomain
      CdnManagedHttpsParameters = Azure::CDN::Mgmt::V2020_09_01::Models::CdnManagedHttpsParameters
      UserManagedHttpsParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UserManagedHttpsParameters
      EdgeNode = Azure::CDN::Mgmt::V2020_09_01::Models::EdgeNode
      TrackedResource = Azure::CDN::Mgmt::V2020_09_01::Models::TrackedResource
      ManagedCertificate = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedCertificate
      CustomerCertificate = Azure::CDN::Mgmt::V2020_09_01::Models::CustomerCertificate
      AFDDomain = Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomain
      SecurityPolicyWebApplicationFirewallParameters = Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyWebApplicationFirewallParameters
      SecurityPolicy = Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicy
      AFDEndpoint = Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpoint
      SecretProperties = Azure::CDN::Mgmt::V2020_09_01::Models::SecretProperties
      Secret = Azure::CDN::Mgmt::V2020_09_01::Models::Secret
      UrlSigningKeyParameters = Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningKeyParameters
      RuleSet = Azure::CDN::Mgmt::V2020_09_01::Models::RuleSet
      AFDOrigin = Azure::CDN::Mgmt::V2020_09_01::Models::AFDOrigin
      AFDOriginGroup = Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginGroup
      Route = Azure::CDN::Mgmt::V2020_09_01::Models::Route
      Rule = Azure::CDN::Mgmt::V2020_09_01::Models::Rule
      RateLimitRule = Azure::CDN::Mgmt::V2020_09_01::Models::RateLimitRule
      CdnWebApplicationFirewallPolicy = Azure::CDN::Mgmt::V2020_09_01::Models::CdnWebApplicationFirewallPolicy
      ManagedRuleSetDefinition = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSetDefinition
      SkuName = Azure::CDN::Mgmt::V2020_09_01::Models::SkuName
      ProfileResourceState = Azure::CDN::Mgmt::V2020_09_01::Models::ProfileResourceState
      OptimizationType = Azure::CDN::Mgmt::V2020_09_01::Models::OptimizationType
      HealthProbeRequestType = Azure::CDN::Mgmt::V2020_09_01::Models::HealthProbeRequestType
      ProbeProtocol = Azure::CDN::Mgmt::V2020_09_01::Models::ProbeProtocol
      ResponseBasedDetectedErrorTypes = Azure::CDN::Mgmt::V2020_09_01::Models::ResponseBasedDetectedErrorTypes
      EndpointResourceState = Azure::CDN::Mgmt::V2020_09_01::Models::EndpointResourceState
      QueryStringCachingBehavior = Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringCachingBehavior
      GeoFilterActions = Azure::CDN::Mgmt::V2020_09_01::Models::GeoFilterActions
      RemoteAddressOperator = Azure::CDN::Mgmt::V2020_09_01::Models::RemoteAddressOperator
      Transform = Azure::CDN::Mgmt::V2020_09_01::Models::Transform
      QueryStringOperator = Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringOperator
      PostArgsOperator = Azure::CDN::Mgmt::V2020_09_01::Models::PostArgsOperator
      RequestUriOperator = Azure::CDN::Mgmt::V2020_09_01::Models::RequestUriOperator
      RequestHeaderOperator = Azure::CDN::Mgmt::V2020_09_01::Models::RequestHeaderOperator
      RequestBodyOperator = Azure::CDN::Mgmt::V2020_09_01::Models::RequestBodyOperator
      UrlPathOperator = Azure::CDN::Mgmt::V2020_09_01::Models::UrlPathOperator
      UrlFileExtensionOperator = Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileExtensionOperator
      UrlFileNameOperator = Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileNameOperator
      CookiesOperator = Azure::CDN::Mgmt::V2020_09_01::Models::CookiesOperator
      RedirectType = Azure::CDN::Mgmt::V2020_09_01::Models::RedirectType
      DestinationProtocol = Azure::CDN::Mgmt::V2020_09_01::Models::DestinationProtocol
      Algorithm = Azure::CDN::Mgmt::V2020_09_01::Models::Algorithm
      ParamIndicator = Azure::CDN::Mgmt::V2020_09_01::Models::ParamIndicator
      HeaderAction = Azure::CDN::Mgmt::V2020_09_01::Models::HeaderAction
      CacheBehavior = Azure::CDN::Mgmt::V2020_09_01::Models::CacheBehavior
      QueryStringBehavior = Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringBehavior
      OriginResourceState = Azure::CDN::Mgmt::V2020_09_01::Models::OriginResourceState
      PrivateEndpointStatus = Azure::CDN::Mgmt::V2020_09_01::Models::PrivateEndpointStatus
      OriginGroupResourceState = Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupResourceState
      CustomDomainResourceState = Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainResourceState
      CustomHttpsProvisioningState = Azure::CDN::Mgmt::V2020_09_01::Models::CustomHttpsProvisioningState
      CustomHttpsProvisioningSubstate = Azure::CDN::Mgmt::V2020_09_01::Models::CustomHttpsProvisioningSubstate
      ProtocolType = Azure::CDN::Mgmt::V2020_09_01::Models::ProtocolType
      MinimumTlsVersion = Azure::CDN::Mgmt::V2020_09_01::Models::MinimumTlsVersion
      CertificateType = Azure::CDN::Mgmt::V2020_09_01::Models::CertificateType
      ResourceType = Azure::CDN::Mgmt::V2020_09_01::Models::ResourceType
      IdentityType = Azure::CDN::Mgmt::V2020_09_01::Models::IdentityType
      ValidateSecretType = Azure::CDN::Mgmt::V2020_09_01::Models::ValidateSecretType
      Status = Azure::CDN::Mgmt::V2020_09_01::Models::Status
      AfdCertificateType = Azure::CDN::Mgmt::V2020_09_01::Models::AfdCertificateType
      AfdMinimumTlsVersion = Azure::CDN::Mgmt::V2020_09_01::Models::AfdMinimumTlsVersion
      AfdProvisioningState = Azure::CDN::Mgmt::V2020_09_01::Models::AfdProvisioningState
      DeploymentStatus = Azure::CDN::Mgmt::V2020_09_01::Models::DeploymentStatus
      DomainValidationState = Azure::CDN::Mgmt::V2020_09_01::Models::DomainValidationState
      EnabledState = Azure::CDN::Mgmt::V2020_09_01::Models::EnabledState
      AFDEndpointProtocols = Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpointProtocols
      SecretType = Azure::CDN::Mgmt::V2020_09_01::Models::SecretType
      SharedPrivateLinkResourceStatus = Azure::CDN::Mgmt::V2020_09_01::Models::SharedPrivateLinkResourceStatus
      ForwardingProtocol = Azure::CDN::Mgmt::V2020_09_01::Models::ForwardingProtocol
      LinkToDefaultDomain = Azure::CDN::Mgmt::V2020_09_01::Models::LinkToDefaultDomain
      HttpsRedirect = Azure::CDN::Mgmt::V2020_09_01::Models::HttpsRedirect
      MatchProcessingBehavior = Azure::CDN::Mgmt::V2020_09_01::Models::MatchProcessingBehavior
      PolicyEnabledState = Azure::CDN::Mgmt::V2020_09_01::Models::PolicyEnabledState
      PolicyMode = Azure::CDN::Mgmt::V2020_09_01::Models::PolicyMode
      CustomRuleEnabledState = Azure::CDN::Mgmt::V2020_09_01::Models::CustomRuleEnabledState
      MatchVariable = Azure::CDN::Mgmt::V2020_09_01::Models::MatchVariable
      Operator = Azure::CDN::Mgmt::V2020_09_01::Models::Operator
      TransformType = Azure::CDN::Mgmt::V2020_09_01::Models::TransformType
      ActionType = Azure::CDN::Mgmt::V2020_09_01::Models::ActionType
      ManagedRuleEnabledState = Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleEnabledState
      ProvisioningState = Azure::CDN::Mgmt::V2020_09_01::Models::ProvisioningState
      PolicyResourceState = Azure::CDN::Mgmt::V2020_09_01::Models::PolicyResourceState
    end

    #
    # CDNManagementClass
    #
    class CDNManagementClass
      attr_reader :profiles, :endpoints, :origins, :origin_groups, :custom_domains, :resource_usage_operations, :operations, :edge_nodes, :afdprofiles, :afdcustom_domains, :afdendpoints, :afdorigin_groups, :afdorigins, :routes, :rule_sets, :rules, :security_policies, :secrets, :validate, :log_analytics, :policies, :managed_rule_sets, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::CDN::Mgmt::V2020_09_01::CdnManagementClient.new(configurable.credentials, base_url, options)
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
        @afdprofiles = @client_0.afdprofiles
        @afdcustom_domains = @client_0.afdcustom_domains
        @afdendpoints = @client_0.afdendpoints
        @afdorigin_groups = @client_0.afdorigin_groups
        @afdorigins = @client_0.afdorigins
        @routes = @client_0.routes
        @rule_sets = @client_0.rule_sets
        @rules = @client_0.rules
        @security_policies = @client_0.security_policies
        @secrets = @client_0.secrets
        @validate = @client_0.validate
        @log_analytics = @client_0.log_analytics
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
      def check_name_availability_output
        Azure::CDN::Mgmt::V2020_09_01::Models::CheckNameAvailabilityOutput
      end
      def validate_probe_input
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateProbeInput
      end
      def metrics_response_series_item_groups_item
        Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponseSeriesItemGroupsItem
      end
      def origin_group_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupUpdateParameters
      end
      def profile_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::ProfileUpdateParameters
      end
      def origin_group_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupListResult
      end
      def supported_optimization_types_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::SupportedOptimizationTypesListResult
      end
      def afd_error_response
        Azure::CDN::Mgmt::V2020_09_01::Models::AfdErrorResponse
      end
      def health_probe_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::HealthProbeParameters
      end
      def custom_domain_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainParameters
      end
      def http_error_range_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::HttpErrorRangeParameters
      end
      def custom_domain_https_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainHttpsParameters
      end
      def deep_created_origin_group
        Azure::CDN::Mgmt::V2020_09_01::Models::DeepCreatedOriginGroup
      end
      def cdn_certificate_source_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CdnCertificateSourceParameters
      end
      def endpoint_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::EndpointListResult
      end
      def afdstate_properties
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDStateProperties
      end
      def key_vault_signing_key_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::KeyVaultSigningKeyParameters
      end
      def key_vault_certificate_source_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::KeyVaultCertificateSourceParameters
      end
      def delivery_rule_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCondition
      end
      def validation_token
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidationToken
      end
      def delivery_rule
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRule
      end
      def custom_domain_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainListResult
      end
      def endpoint_properties_update_parameters_web_application_firewall_policy_link
        Azure::CDN::Mgmt::V2020_09_01::Models::EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      end
      def validate_custom_domain_input
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateCustomDomainInput
      end
      def remote_address_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RemoteAddressMatchConditionParameters
      end
      def validate_custom_domain_output
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateCustomDomainOutput
      end
      def request_method_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestMethodMatchConditionParameters
      end
      def check_name_availability_input
        Azure::CDN::Mgmt::V2020_09_01::Models::CheckNameAvailabilityInput
      end
      def query_string_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringMatchConditionParameters
      end
      def sku
        Azure::CDN::Mgmt::V2020_09_01::Models::Sku
      end
      def post_args_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::PostArgsMatchConditionParameters
      end
      def rule_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RuleUpdateParameters
      end
      def request_uri_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestUriMatchConditionParameters
      end
      def validate_probe_output
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateProbeOutput
      end
      def request_header_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestHeaderMatchConditionParameters
      end
      def resource_usage
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourceUsage
      end
      def request_body_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestBodyMatchConditionParameters
      end
      def resource_usage_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourceUsageListResult
      end
      def request_scheme_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestSchemeMatchConditionParameters
      end
      def operation_display
        Azure::CDN::Mgmt::V2020_09_01::Models::OperationDisplay
      end
      def url_path_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlPathMatchConditionParameters
      end
      def operation
        Azure::CDN::Mgmt::V2020_09_01::Models::Operation
      end
      def url_file_extension_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileExtensionMatchConditionParameters
      end
      def operations_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::OperationsListResult
      end
      def url_file_name_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileNameMatchConditionParameters
      end
      def cidr_ip_address
        Azure::CDN::Mgmt::V2020_09_01::Models::CidrIpAddress
      end
      def http_version_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::HttpVersionMatchConditionParameters
      end
      def ip_address_group
        Azure::CDN::Mgmt::V2020_09_01::Models::IpAddressGroup
      end
      def cookies_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CookiesMatchConditionParameters
      end
      def is_device_match_condition_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::IsDeviceMatchConditionParameters
      end
      def edgenode_result
        Azure::CDN::Mgmt::V2020_09_01::Models::EdgenodeResult
      end
      def url_redirect_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlRedirectActionParameters
      end
      def resource
        Azure::CDN::Mgmt::V2020_09_01::Models::Resource
      end
      def url_signing_param_identifier
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningParamIdentifier
      end
      def system_data
        Azure::CDN::Mgmt::V2020_09_01::Models::SystemData
      end
      def continents_response_continents_item
        Azure::CDN::Mgmt::V2020_09_01::Models::ContinentsResponseContinentsItem
      end
      def managed_rule_set_definition_list
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSetDefinitionList
      end
      def rankings_response
        Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponse
      end
      def rule_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::RuleListResult
      end
      def rankings_response_tables_item
        Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponseTablesItem
      end
      def error_response
        Azure::CDN::Mgmt::V2020_09_01::Models::ErrorResponse
      end
      def rankings_response_tables_item_data_item
        Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponseTablesItemDataItem
      end
      def afd_purge_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::AfdPurgeParameters
      end
      def cache_expiration_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CacheExpirationActionParameters
      end
      def certificate
        Azure::CDN::Mgmt::V2020_09_01::Models::Certificate
      end
      def cache_key_query_string_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CacheKeyQueryStringActionParameters
      end
      def managed_rule_group_definition
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleGroupDefinition
      end
      def purge_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::PurgeParameters
      end
      def managed_rule_definition
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleDefinition
      end
      def metrics_response_series_item_data_item
        Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponseSeriesItemDataItem
      end
      def validate_secret_input
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateSecretInput
      end
      def origin_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginListResult
      end
      def validate_secret_output
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateSecretOutput
      end
      def sso_uri
        Azure::CDN::Mgmt::V2020_09_01::Models::SsoUri
      end
      def afddomain_https_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomainHttpsParameters
      end
      def resource_reference
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourceReference
      end
      def domain_validation_properties
        Azure::CDN::Mgmt::V2020_09_01::Models::DomainValidationProperties
      end
      def usages_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::UsagesListResult
      end
      def cdn_web_application_firewall_policy_patch_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CdnWebApplicationFirewallPolicyPatchParameters
      end
      def url_signing_key
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningKey
      end
      def afddomain_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomainListResult
      end
      def endpoint_properties_update_parameters_delivery_policy
        Azure::CDN::Mgmt::V2020_09_01::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
      end
      def afddomain_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomainUpdateParameters
      end
      def usage
        Azure::CDN::Mgmt::V2020_09_01::Models::Usage
      end
      def security_policy_web_application_firewall_association
        Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyWebApplicationFirewallAssociation
      end
      def waf_rankings_response
        Azure::CDN::Mgmt::V2020_09_01::Models::WafRankingsResponse
      end
      def cdn_web_application_firewall_policy_list
        Azure::CDN::Mgmt::V2020_09_01::Models::CdnWebApplicationFirewallPolicyList
      end
      def waf_rankings_response_data_item_metrics_item
        Azure::CDN::Mgmt::V2020_09_01::Models::WafRankingsResponseDataItemMetricsItem
      end
      def cdn_endpoint
        Azure::CDN::Mgmt::V2020_09_01::Models::CdnEndpoint
      end
      def waf_metrics_response_series_item
        Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponseSeriesItem
      end
      def security_policy_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyParameters
      end
      def waf_metrics_response_series_item_groups_item
        Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponseSeriesItemGroupsItem
      end
      def security_policy_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyListResult
      end
      def resources_response_custom_domains_item
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponseCustomDomainsItem
      end
      def managed_rule_set_list
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSetList
      end
      def resources_response_endpoints_item_custom_domains_item
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponseEndpointsItemCustomDomainsItem
      end
      def afdendpoint_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpointListResult
      end
      def continents_response_country_or_regions_item
        Azure::CDN::Mgmt::V2020_09_01::Models::ContinentsResponseCountryOrRegionsItem
      end
      def afdendpoint_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpointUpdateParameters
      end
      def origin_group_override_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupOverrideActionParameters
      end
      def compression_settings
        Azure::CDN::Mgmt::V2020_09_01::Models::CompressionSettings
      end
      def header_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::HeaderActionParameters
      end
      def secret_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::SecretParameters
      end
      def metrics_response
        Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponse
      end
      def managed_rule_set
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSet
      end
      def load_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::LoadParameters
      end
      def managed_rule_group_override
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleGroupOverride
      end
      def profile_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::ProfileListResult
      end
      def secret_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::SecretListResult
      end
      def response_based_origin_error_detection_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::ResponseBasedOriginErrorDetectionParameters
      end
      def managed_rule_override
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleOverride
      end
      def delivery_rule_action
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleAction
      end
      def managed_certificate_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedCertificateParameters
      end
      def usage_name
        Azure::CDN::Mgmt::V2020_09_01::Models::UsageName
      end
      def customer_certificate_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomerCertificateParameters
      end
      def waf_metrics_response
        Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponse
      end
      def custom_rule_list
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomRuleList
      end
      def resources_response
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponse
      end
      def rule_set_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::RuleSetListResult
      end
      def continents_response
        Azure::CDN::Mgmt::V2020_09_01::Models::ContinentsResponse
      end
      def custom_rule
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomRule
      end
      def url_rewrite_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlRewriteActionParameters
      end
      def afdorigin_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginUpdateParameters
      end
      def metrics_response_series_item
        Azure::CDN::Mgmt::V2020_09_01::Models::MetricsResponseSeriesItem
      end
      def shared_private_link_resource_properties
        Azure::CDN::Mgmt::V2020_09_01::Models::SharedPrivateLinkResourceProperties
      end
      def deep_created_origin
        Azure::CDN::Mgmt::V2020_09_01::Models::DeepCreatedOrigin
      end
      def afdorigin_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginListResult
      end
      def endpoint_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::EndpointUpdateParameters
      end
      def load_balancing_settings_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::LoadBalancingSettingsParameters
      end
      def waf_metrics_response_series_item_data_item
        Azure::CDN::Mgmt::V2020_09_01::Models::WafMetricsResponseSeriesItemDataItem
      end
      def match_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::MatchCondition
      end
      def url_signing_action_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningActionParameters
      end
      def afdorigin_group_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginGroupUpdateParameters
      end
      def origin_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginUpdateParameters
      end
      def afdorigin_group_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginGroupListResult
      end
      def waf_rankings_response_data_item
        Azure::CDN::Mgmt::V2020_09_01::Models::WafRankingsResponseDataItem
      end
      def rate_limit_rule_list
        Azure::CDN::Mgmt::V2020_09_01::Models::RateLimitRuleList
      end
      def rankings_response_tables_item_data_item_metrics_item
        Azure::CDN::Mgmt::V2020_09_01::Models::RankingsResponseTablesItemDataItemMetricsItem
      end
      def route_list_result
        Azure::CDN::Mgmt::V2020_09_01::Models::RouteListResult
      end
      def resources_response_endpoints_item
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourcesResponseEndpointsItem
      end
      def route_update_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::RouteUpdateParameters
      end
      def geo_filter
        Azure::CDN::Mgmt::V2020_09_01::Models::GeoFilter
      end
      def policy_settings
        Azure::CDN::Mgmt::V2020_09_01::Models::PolicySettings
      end
      def profile
        Azure::CDN::Mgmt::V2020_09_01::Models::Profile
      end
      def endpoint
        Azure::CDN::Mgmt::V2020_09_01::Models::Endpoint
      end
      def delivery_rule_remote_address_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRemoteAddressCondition
      end
      def delivery_rule_request_method_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestMethodCondition
      end
      def delivery_rule_query_string_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleQueryStringCondition
      end
      def delivery_rule_post_args_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRulePostArgsCondition
      end
      def delivery_rule_request_uri_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestUriCondition
      end
      def delivery_rule_request_header_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestHeaderCondition
      end
      def delivery_rule_request_body_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestBodyCondition
      end
      def delivery_rule_request_scheme_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestSchemeCondition
      end
      def delivery_rule_url_path_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleUrlPathCondition
      end
      def delivery_rule_url_file_extension_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleUrlFileExtensionCondition
      end
      def delivery_rule_url_file_name_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleUrlFileNameCondition
      end
      def delivery_rule_http_version_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleHttpVersionCondition
      end
      def delivery_rule_cookies_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCookiesCondition
      end
      def delivery_rule_is_device_condition
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleIsDeviceCondition
      end
      def url_redirect_action
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlRedirectAction
      end
      def url_signing_action
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningAction
      end
      def origin_group_override_action
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupOverrideAction
      end
      def url_rewrite_action
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlRewriteAction
      end
      def delivery_rule_request_header_action
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleRequestHeaderAction
      end
      def delivery_rule_response_header_action
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleResponseHeaderAction
      end
      def delivery_rule_cache_expiration_action
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCacheExpirationAction
      end
      def delivery_rule_cache_key_query_string_action
        Azure::CDN::Mgmt::V2020_09_01::Models::DeliveryRuleCacheKeyQueryStringAction
      end
      def proxy_resource
        Azure::CDN::Mgmt::V2020_09_01::Models::ProxyResource
      end
      def origin
        Azure::CDN::Mgmt::V2020_09_01::Models::Origin
      end
      def origin_group
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroup
      end
      def custom_domain
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomain
      end
      def cdn_managed_https_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::CdnManagedHttpsParameters
      end
      def user_managed_https_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UserManagedHttpsParameters
      end
      def edge_node
        Azure::CDN::Mgmt::V2020_09_01::Models::EdgeNode
      end
      def tracked_resource
        Azure::CDN::Mgmt::V2020_09_01::Models::TrackedResource
      end
      def managed_certificate
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedCertificate
      end
      def customer_certificate
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomerCertificate
      end
      def afddomain
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDDomain
      end
      def security_policy_web_application_firewall_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicyWebApplicationFirewallParameters
      end
      def security_policy
        Azure::CDN::Mgmt::V2020_09_01::Models::SecurityPolicy
      end
      def afdendpoint
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpoint
      end
      def secret_properties
        Azure::CDN::Mgmt::V2020_09_01::Models::SecretProperties
      end
      def secret
        Azure::CDN::Mgmt::V2020_09_01::Models::Secret
      end
      def url_signing_key_parameters
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlSigningKeyParameters
      end
      def rule_set
        Azure::CDN::Mgmt::V2020_09_01::Models::RuleSet
      end
      def afdorigin
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDOrigin
      end
      def afdorigin_group
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDOriginGroup
      end
      def route
        Azure::CDN::Mgmt::V2020_09_01::Models::Route
      end
      def rule
        Azure::CDN::Mgmt::V2020_09_01::Models::Rule
      end
      def rate_limit_rule
        Azure::CDN::Mgmt::V2020_09_01::Models::RateLimitRule
      end
      def cdn_web_application_firewall_policy
        Azure::CDN::Mgmt::V2020_09_01::Models::CdnWebApplicationFirewallPolicy
      end
      def managed_rule_set_definition
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleSetDefinition
      end
      def sku_name
        Azure::CDN::Mgmt::V2020_09_01::Models::SkuName
      end
      def profile_resource_state
        Azure::CDN::Mgmt::V2020_09_01::Models::ProfileResourceState
      end
      def optimization_type
        Azure::CDN::Mgmt::V2020_09_01::Models::OptimizationType
      end
      def health_probe_request_type
        Azure::CDN::Mgmt::V2020_09_01::Models::HealthProbeRequestType
      end
      def probe_protocol
        Azure::CDN::Mgmt::V2020_09_01::Models::ProbeProtocol
      end
      def response_based_detected_error_types
        Azure::CDN::Mgmt::V2020_09_01::Models::ResponseBasedDetectedErrorTypes
      end
      def endpoint_resource_state
        Azure::CDN::Mgmt::V2020_09_01::Models::EndpointResourceState
      end
      def query_string_caching_behavior
        Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringCachingBehavior
      end
      def geo_filter_actions
        Azure::CDN::Mgmt::V2020_09_01::Models::GeoFilterActions
      end
      def remote_address_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::RemoteAddressOperator
      end
      def transform
        Azure::CDN::Mgmt::V2020_09_01::Models::Transform
      end
      def query_string_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringOperator
      end
      def post_args_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::PostArgsOperator
      end
      def request_uri_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestUriOperator
      end
      def request_header_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestHeaderOperator
      end
      def request_body_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::RequestBodyOperator
      end
      def url_path_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlPathOperator
      end
      def url_file_extension_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileExtensionOperator
      end
      def url_file_name_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::UrlFileNameOperator
      end
      def cookies_operator
        Azure::CDN::Mgmt::V2020_09_01::Models::CookiesOperator
      end
      def redirect_type
        Azure::CDN::Mgmt::V2020_09_01::Models::RedirectType
      end
      def destination_protocol
        Azure::CDN::Mgmt::V2020_09_01::Models::DestinationProtocol
      end
      def algorithm
        Azure::CDN::Mgmt::V2020_09_01::Models::Algorithm
      end
      def param_indicator
        Azure::CDN::Mgmt::V2020_09_01::Models::ParamIndicator
      end
      def header_action
        Azure::CDN::Mgmt::V2020_09_01::Models::HeaderAction
      end
      def cache_behavior
        Azure::CDN::Mgmt::V2020_09_01::Models::CacheBehavior
      end
      def query_string_behavior
        Azure::CDN::Mgmt::V2020_09_01::Models::QueryStringBehavior
      end
      def origin_resource_state
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginResourceState
      end
      def private_endpoint_status
        Azure::CDN::Mgmt::V2020_09_01::Models::PrivateEndpointStatus
      end
      def origin_group_resource_state
        Azure::CDN::Mgmt::V2020_09_01::Models::OriginGroupResourceState
      end
      def custom_domain_resource_state
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomDomainResourceState
      end
      def custom_https_provisioning_state
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomHttpsProvisioningState
      end
      def custom_https_provisioning_substate
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomHttpsProvisioningSubstate
      end
      def protocol_type
        Azure::CDN::Mgmt::V2020_09_01::Models::ProtocolType
      end
      def minimum_tls_version
        Azure::CDN::Mgmt::V2020_09_01::Models::MinimumTlsVersion
      end
      def certificate_type
        Azure::CDN::Mgmt::V2020_09_01::Models::CertificateType
      end
      def resource_type
        Azure::CDN::Mgmt::V2020_09_01::Models::ResourceType
      end
      def identity_type
        Azure::CDN::Mgmt::V2020_09_01::Models::IdentityType
      end
      def validate_secret_type
        Azure::CDN::Mgmt::V2020_09_01::Models::ValidateSecretType
      end
      def status
        Azure::CDN::Mgmt::V2020_09_01::Models::Status
      end
      def afd_certificate_type
        Azure::CDN::Mgmt::V2020_09_01::Models::AfdCertificateType
      end
      def afd_minimum_tls_version
        Azure::CDN::Mgmt::V2020_09_01::Models::AfdMinimumTlsVersion
      end
      def afd_provisioning_state
        Azure::CDN::Mgmt::V2020_09_01::Models::AfdProvisioningState
      end
      def deployment_status
        Azure::CDN::Mgmt::V2020_09_01::Models::DeploymentStatus
      end
      def domain_validation_state
        Azure::CDN::Mgmt::V2020_09_01::Models::DomainValidationState
      end
      def enabled_state
        Azure::CDN::Mgmt::V2020_09_01::Models::EnabledState
      end
      def afdendpoint_protocols
        Azure::CDN::Mgmt::V2020_09_01::Models::AFDEndpointProtocols
      end
      def secret_type
        Azure::CDN::Mgmt::V2020_09_01::Models::SecretType
      end
      def shared_private_link_resource_status
        Azure::CDN::Mgmt::V2020_09_01::Models::SharedPrivateLinkResourceStatus
      end
      def forwarding_protocol
        Azure::CDN::Mgmt::V2020_09_01::Models::ForwardingProtocol
      end
      def link_to_default_domain
        Azure::CDN::Mgmt::V2020_09_01::Models::LinkToDefaultDomain
      end
      def https_redirect
        Azure::CDN::Mgmt::V2020_09_01::Models::HttpsRedirect
      end
      def match_processing_behavior
        Azure::CDN::Mgmt::V2020_09_01::Models::MatchProcessingBehavior
      end
      def policy_enabled_state
        Azure::CDN::Mgmt::V2020_09_01::Models::PolicyEnabledState
      end
      def policy_mode
        Azure::CDN::Mgmt::V2020_09_01::Models::PolicyMode
      end
      def custom_rule_enabled_state
        Azure::CDN::Mgmt::V2020_09_01::Models::CustomRuleEnabledState
      end
      def match_variable
        Azure::CDN::Mgmt::V2020_09_01::Models::MatchVariable
      end
      def operator
        Azure::CDN::Mgmt::V2020_09_01::Models::Operator
      end
      def transform_type
        Azure::CDN::Mgmt::V2020_09_01::Models::TransformType
      end
      def action_type
        Azure::CDN::Mgmt::V2020_09_01::Models::ActionType
      end
      def managed_rule_enabled_state
        Azure::CDN::Mgmt::V2020_09_01::Models::ManagedRuleEnabledState
      end
      def provisioning_state
        Azure::CDN::Mgmt::V2020_09_01::Models::ProvisioningState
      end
      def policy_resource_state
        Azure::CDN::Mgmt::V2020_09_01::Models::PolicyResourceState
      end
    end
  end
end
