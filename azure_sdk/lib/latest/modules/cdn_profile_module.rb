# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::Profiles::Latest
  module CDN
    module Mgmt
      EdgeNodes = Azure::CDN::Mgmt::V2017_10_12::EdgeNodes
      Operations = Azure::CDN::Mgmt::V2017_10_12::Operations
      Endpoints = Azure::CDN::Mgmt::V2017_10_12::Endpoints
      Profiles = Azure::CDN::Mgmt::V2017_10_12::Profiles
      Origins = Azure::CDN::Mgmt::V2017_10_12::Origins
      CustomDomains = Azure::CDN::Mgmt::V2017_10_12::CustomDomains
      ResourceUsageOperations = Azure::CDN::Mgmt::V2017_10_12::ResourceUsageOperations

      module Models
        OriginUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::OriginUpdateParameters
        OriginListResult = Azure::CDN::Mgmt::V2017_10_12::Models::OriginListResult
        ProfileListResult = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileListResult
        Sku = Azure::CDN::Mgmt::V2017_10_12::Models::Sku
        PurgeParameters = Azure::CDN::Mgmt::V2017_10_12::Models::PurgeParameters
        SsoUri = Azure::CDN::Mgmt::V2017_10_12::Models::SsoUri
        LoadParameters = Azure::CDN::Mgmt::V2017_10_12::Models::LoadParameters
        DeepCreatedOrigin = Azure::CDN::Mgmt::V2017_10_12::Models::DeepCreatedOrigin
        CidrIpAddress = Azure::CDN::Mgmt::V2017_10_12::Models::CidrIpAddress
        EndpointListResult = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointListResult
        OperationsListResult = Azure::CDN::Mgmt::V2017_10_12::Models::OperationsListResult
        DeliveryRuleAction = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleAction
        ProfileUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileUpdateParameters
        DeliveryRule = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRule
        EndpointUpdateParameters = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointUpdateParameters
        CustomDomainParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainParameters
        EdgenodeResult = Azure::CDN::Mgmt::V2017_10_12::Models::EdgenodeResult
        CustomDomainListResult = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainListResult
        ValidateCustomDomainInput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainInput
        IpAddressGroup = Azure::CDN::Mgmt::V2017_10_12::Models::IpAddressGroup
        ValidateCustomDomainOutput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainOutput
        ErrorResponse = Azure::CDN::Mgmt::V2017_10_12::Models::ErrorResponse
        DeliveryRuleCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCondition
        CheckNameAvailabilityInput = Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityInput
        UrlPathConditionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UrlPathConditionParameters
        CheckNameAvailabilityOutput = Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityOutput
        CacheExpirationActionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::CacheExpirationActionParameters
        ValidateProbeInput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeInput
        GeoFilter = Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilter
        ValidateProbeOutput = Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeOutput
        UrlFileExtensionConditionParameters = Azure::CDN::Mgmt::V2017_10_12::Models::UrlFileExtensionConditionParameters
        ResourceUsage = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsage
        EndpointPropertiesUpdateParametersDeliveryPolicy = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
        ResourceUsageListResult = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsageListResult
        Endpoint = Azure::CDN::Mgmt::V2017_10_12::Models::Endpoint
        SupportedOptimizationTypesListResult = Azure::CDN::Mgmt::V2017_10_12::Models::SupportedOptimizationTypesListResult
        Profile = Azure::CDN::Mgmt::V2017_10_12::Models::Profile
        DeliveryRuleCacheExpirationAction = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCacheExpirationAction
        DeliveryRuleUrlPathCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlPathCondition
        DeliveryRuleUrlFileExtensionCondition = Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlFileExtensionCondition
        ProxyResource = Azure::CDN::Mgmt::V2017_10_12::Models::ProxyResource
        Origin = Azure::CDN::Mgmt::V2017_10_12::Models::Origin
        ProfileResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::ProfileResourceState
        OptimizationType = Azure::CDN::Mgmt::V2017_10_12::Models::OptimizationType
        EdgeNode = Azure::CDN::Mgmt::V2017_10_12::Models::EdgeNode
        QueryStringCachingBehavior = Azure::CDN::Mgmt::V2017_10_12::Models::QueryStringCachingBehavior
        TrackedResource = Azure::CDN::Mgmt::V2017_10_12::Models::TrackedResource
        EndpointResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::EndpointResourceState
        CustomDomainResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainResourceState
        GeoFilterActions = Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilterActions
        OriginResourceState = Azure::CDN::Mgmt::V2017_10_12::Models::OriginResourceState
        CustomHttpsProvisioningState = Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningState
        CustomHttpsProvisioningSubstate = Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningSubstate
        CustomDomain = Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomain
        ResourceType = Azure::CDN::Mgmt::V2017_10_12::Models::ResourceType
        Resource = Azure::CDN::Mgmt::V2017_10_12::Models::Resource
        OperationDisplay = Azure::CDN::Mgmt::V2017_10_12::Models::OperationDisplay
        Operation = Azure::CDN::Mgmt::V2017_10_12::Models::Operation
        SkuName = Azure::CDN::Mgmt::V2017_10_12::Models::SkuName
      end

      class CDNManagementClass
        attr_reader :edge_nodes, :operations, :endpoints, :profiles, :origins, :custom_domains, :resource_usage_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CDN::Mgmt::V2017_10_12::CdnManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @edge_nodes = @client_0.edge_nodes
          @operations = @client_0.operations
          @endpoints = @client_0.endpoints
          @profiles = @client_0.profiles
          @origins = @client_0.origins
          @custom_domains = @client_0.custom_domains
          @resource_usage_operations = @client_0.resource_usage_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/CDN/Mgmt"
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
          def origin_update_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::OriginUpdateParameters
          end
          def origin_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::OriginListResult
          end
          def profile_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::ProfileListResult
          end
          def sku
            Azure::CDN::Mgmt::V2017_10_12::Models::Sku
          end
          def purge_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::PurgeParameters
          end
          def sso_uri
            Azure::CDN::Mgmt::V2017_10_12::Models::SsoUri
          end
          def load_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::LoadParameters
          end
          def deep_created_origin
            Azure::CDN::Mgmt::V2017_10_12::Models::DeepCreatedOrigin
          end
          def cidr_ip_address
            Azure::CDN::Mgmt::V2017_10_12::Models::CidrIpAddress
          end
          def endpoint_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::EndpointListResult
          end
          def operations_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::OperationsListResult
          end
          def delivery_rule_action
            Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleAction
          end
          def profile_update_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::ProfileUpdateParameters
          end
          def delivery_rule
            Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRule
          end
          def endpoint_update_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::EndpointUpdateParameters
          end
          def custom_domain_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainParameters
          end
          def edgenode_result
            Azure::CDN::Mgmt::V2017_10_12::Models::EdgenodeResult
          end
          def custom_domain_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainListResult
          end
          def validate_custom_domain_input
            Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainInput
          end
          def ip_address_group
            Azure::CDN::Mgmt::V2017_10_12::Models::IpAddressGroup
          end
          def validate_custom_domain_output
            Azure::CDN::Mgmt::V2017_10_12::Models::ValidateCustomDomainOutput
          end
          def error_response
            Azure::CDN::Mgmt::V2017_10_12::Models::ErrorResponse
          end
          def delivery_rule_condition
            Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCondition
          end
          def check_name_availability_input
            Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityInput
          end
          def url_path_condition_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::UrlPathConditionParameters
          end
          def check_name_availability_output
            Azure::CDN::Mgmt::V2017_10_12::Models::CheckNameAvailabilityOutput
          end
          def cache_expiration_action_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::CacheExpirationActionParameters
          end
          def validate_probe_input
            Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeInput
          end
          def geo_filter
            Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilter
          end
          def validate_probe_output
            Azure::CDN::Mgmt::V2017_10_12::Models::ValidateProbeOutput
          end
          def url_file_extension_condition_parameters
            Azure::CDN::Mgmt::V2017_10_12::Models::UrlFileExtensionConditionParameters
          end
          def resource_usage
            Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsage
          end
          def endpoint_properties_update_parameters_delivery_policy
            Azure::CDN::Mgmt::V2017_10_12::Models::EndpointPropertiesUpdateParametersDeliveryPolicy
          end
          def resource_usage_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::ResourceUsageListResult
          end
          def endpoint
            Azure::CDN::Mgmt::V2017_10_12::Models::Endpoint
          end
          def supported_optimization_types_list_result
            Azure::CDN::Mgmt::V2017_10_12::Models::SupportedOptimizationTypesListResult
          end
          def profile
            Azure::CDN::Mgmt::V2017_10_12::Models::Profile
          end
          def delivery_rule_cache_expiration_action
            Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleCacheExpirationAction
          end
          def delivery_rule_url_path_condition
            Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlPathCondition
          end
          def delivery_rule_url_file_extension_condition
            Azure::CDN::Mgmt::V2017_10_12::Models::DeliveryRuleUrlFileExtensionCondition
          end
          def proxy_resource
            Azure::CDN::Mgmt::V2017_10_12::Models::ProxyResource
          end
          def origin
            Azure::CDN::Mgmt::V2017_10_12::Models::Origin
          end
          def profile_resource_state
            Azure::CDN::Mgmt::V2017_10_12::Models::ProfileResourceState
          end
          def optimization_type
            Azure::CDN::Mgmt::V2017_10_12::Models::OptimizationType
          end
          def edge_node
            Azure::CDN::Mgmt::V2017_10_12::Models::EdgeNode
          end
          def query_string_caching_behavior
            Azure::CDN::Mgmt::V2017_10_12::Models::QueryStringCachingBehavior
          end
          def tracked_resource
            Azure::CDN::Mgmt::V2017_10_12::Models::TrackedResource
          end
          def endpoint_resource_state
            Azure::CDN::Mgmt::V2017_10_12::Models::EndpointResourceState
          end
          def custom_domain_resource_state
            Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomainResourceState
          end
          def geo_filter_actions
            Azure::CDN::Mgmt::V2017_10_12::Models::GeoFilterActions
          end
          def origin_resource_state
            Azure::CDN::Mgmt::V2017_10_12::Models::OriginResourceState
          end
          def custom_https_provisioning_state
            Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningState
          end
          def custom_https_provisioning_substate
            Azure::CDN::Mgmt::V2017_10_12::Models::CustomHttpsProvisioningSubstate
          end
          def custom_domain
            Azure::CDN::Mgmt::V2017_10_12::Models::CustomDomain
          end
          def resource_type
            Azure::CDN::Mgmt::V2017_10_12::Models::ResourceType
          end
          def resource
            Azure::CDN::Mgmt::V2017_10_12::Models::Resource
          end
          def operation_display
            Azure::CDN::Mgmt::V2017_10_12::Models::OperationDisplay
          end
          def operation
            Azure::CDN::Mgmt::V2017_10_12::Models::Operation
          end
          def sku_name
            Azure::CDN::Mgmt::V2017_10_12::Models::SkuName
          end
        end
      end
    end
  end
end
