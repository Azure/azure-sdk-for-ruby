# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cdn'

module Azure::Profiles::Latest
  module CDN
    module Mgmt
      Profiles = Azure::CDN::Mgmt::V2017_04_02::Profiles
      Endpoints = Azure::CDN::Mgmt::V2017_04_02::Endpoints
      Origins = Azure::CDN::Mgmt::V2017_04_02::Origins
      CustomDomains = Azure::CDN::Mgmt::V2017_04_02::CustomDomains
      ResourceUsageOperations = Azure::CDN::Mgmt::V2017_04_02::ResourceUsageOperations
      Operations = Azure::CDN::Mgmt::V2017_04_02::Operations
      EdgeNodes = Azure::CDN::Mgmt::V2017_04_02::EdgeNodes

      module Models
        CustomDomainListResult = Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomainListResult
        Sku = Azure::CDN::Mgmt::V2017_04_02::Models::Sku
        ValidateCustomDomainInput = Azure::CDN::Mgmt::V2017_04_02::Models::ValidateCustomDomainInput
        ProfileListResult = Azure::CDN::Mgmt::V2017_04_02::Models::ProfileListResult
        ValidateCustomDomainOutput = Azure::CDN::Mgmt::V2017_04_02::Models::ValidateCustomDomainOutput
        SsoUri = Azure::CDN::Mgmt::V2017_04_02::Models::SsoUri
        CheckNameAvailabilityInput = Azure::CDN::Mgmt::V2017_04_02::Models::CheckNameAvailabilityInput
        DeepCreatedOrigin = Azure::CDN::Mgmt::V2017_04_02::Models::DeepCreatedOrigin
        CheckNameAvailabilityOutput = Azure::CDN::Mgmt::V2017_04_02::Models::CheckNameAvailabilityOutput
        EndpointListResult = Azure::CDN::Mgmt::V2017_04_02::Models::EndpointListResult
        ValidateProbeInput = Azure::CDN::Mgmt::V2017_04_02::Models::ValidateProbeInput
        EndpointUpdateParameters = Azure::CDN::Mgmt::V2017_04_02::Models::EndpointUpdateParameters
        ValidateProbeOutput = Azure::CDN::Mgmt::V2017_04_02::Models::ValidateProbeOutput
        LoadParameters = Azure::CDN::Mgmt::V2017_04_02::Models::LoadParameters
        ResourceUsage = Azure::CDN::Mgmt::V2017_04_02::Models::ResourceUsage
        OriginUpdateParameters = Azure::CDN::Mgmt::V2017_04_02::Models::OriginUpdateParameters
        ResourceUsageListResult = Azure::CDN::Mgmt::V2017_04_02::Models::ResourceUsageListResult
        OriginListResult = Azure::CDN::Mgmt::V2017_04_02::Models::OriginListResult
        CustomDomainParameters = Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomainParameters
        ProfileUpdateParameters = Azure::CDN::Mgmt::V2017_04_02::Models::ProfileUpdateParameters
        ErrorResponse = Azure::CDN::Mgmt::V2017_04_02::Models::ErrorResponse
        Resource = Azure::CDN::Mgmt::V2017_04_02::Models::Resource
        OperationDisplay = Azure::CDN::Mgmt::V2017_04_02::Models::OperationDisplay
        PurgeParameters = Azure::CDN::Mgmt::V2017_04_02::Models::PurgeParameters
        Operation = Azure::CDN::Mgmt::V2017_04_02::Models::Operation
        SupportedOptimizationTypesListResult = Azure::CDN::Mgmt::V2017_04_02::Models::SupportedOptimizationTypesListResult
        OperationsListResult = Azure::CDN::Mgmt::V2017_04_02::Models::OperationsListResult
        EdgenodeResult = Azure::CDN::Mgmt::V2017_04_02::Models::EdgenodeResult
        CidrIpAddress = Azure::CDN::Mgmt::V2017_04_02::Models::CidrIpAddress
        GeoFilter = Azure::CDN::Mgmt::V2017_04_02::Models::GeoFilter
        IpAddressGroup = Azure::CDN::Mgmt::V2017_04_02::Models::IpAddressGroup
        Profile = Azure::CDN::Mgmt::V2017_04_02::Models::Profile
        Endpoint = Azure::CDN::Mgmt::V2017_04_02::Models::Endpoint
        Origin = Azure::CDN::Mgmt::V2017_04_02::Models::Origin
        CustomDomain = Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomain
        EdgeNode = Azure::CDN::Mgmt::V2017_04_02::Models::EdgeNode
        SkuName = Azure::CDN::Mgmt::V2017_04_02::Models::SkuName
        ProfileResourceState = Azure::CDN::Mgmt::V2017_04_02::Models::ProfileResourceState
        OptimizationType = Azure::CDN::Mgmt::V2017_04_02::Models::OptimizationType
        EndpointResourceState = Azure::CDN::Mgmt::V2017_04_02::Models::EndpointResourceState
        QueryStringCachingBehavior = Azure::CDN::Mgmt::V2017_04_02::Models::QueryStringCachingBehavior
        GeoFilterActions = Azure::CDN::Mgmt::V2017_04_02::Models::GeoFilterActions
        OriginResourceState = Azure::CDN::Mgmt::V2017_04_02::Models::OriginResourceState
        CustomDomainResourceState = Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomainResourceState
        CustomHttpsProvisioningState = Azure::CDN::Mgmt::V2017_04_02::Models::CustomHttpsProvisioningState
        CustomHttpsProvisioningSubstate = Azure::CDN::Mgmt::V2017_04_02::Models::CustomHttpsProvisioningSubstate
        ResourceType = Azure::CDN::Mgmt::V2017_04_02::Models::ResourceType
      end

      class CDNManagementClass
        attr_reader :profiles, :endpoints, :origins, :custom_domains, :resource_usage_operations, :operations, :edge_nodes, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CDN::Mgmt::V2017_04_02::CdnManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @profiles = @client_0.profiles
          @endpoints = @client_0.endpoints
          @origins = @client_0.origins
          @custom_domains = @client_0.custom_domains
          @resource_usage_operations = @client_0.resource_usage_operations
          @operations = @client_0.operations
          @edge_nodes = @client_0.edge_nodes

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
          def custom_domain_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomainListResult
          end
          def sku
            Azure::CDN::Mgmt::V2017_04_02::Models::Sku
          end
          def validate_custom_domain_input
            Azure::CDN::Mgmt::V2017_04_02::Models::ValidateCustomDomainInput
          end
          def profile_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::ProfileListResult
          end
          def validate_custom_domain_output
            Azure::CDN::Mgmt::V2017_04_02::Models::ValidateCustomDomainOutput
          end
          def sso_uri
            Azure::CDN::Mgmt::V2017_04_02::Models::SsoUri
          end
          def check_name_availability_input
            Azure::CDN::Mgmt::V2017_04_02::Models::CheckNameAvailabilityInput
          end
          def deep_created_origin
            Azure::CDN::Mgmt::V2017_04_02::Models::DeepCreatedOrigin
          end
          def check_name_availability_output
            Azure::CDN::Mgmt::V2017_04_02::Models::CheckNameAvailabilityOutput
          end
          def endpoint_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::EndpointListResult
          end
          def validate_probe_input
            Azure::CDN::Mgmt::V2017_04_02::Models::ValidateProbeInput
          end
          def endpoint_update_parameters
            Azure::CDN::Mgmt::V2017_04_02::Models::EndpointUpdateParameters
          end
          def validate_probe_output
            Azure::CDN::Mgmt::V2017_04_02::Models::ValidateProbeOutput
          end
          def load_parameters
            Azure::CDN::Mgmt::V2017_04_02::Models::LoadParameters
          end
          def resource_usage
            Azure::CDN::Mgmt::V2017_04_02::Models::ResourceUsage
          end
          def origin_update_parameters
            Azure::CDN::Mgmt::V2017_04_02::Models::OriginUpdateParameters
          end
          def resource_usage_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::ResourceUsageListResult
          end
          def origin_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::OriginListResult
          end
          def custom_domain_parameters
            Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomainParameters
          end
          def profile_update_parameters
            Azure::CDN::Mgmt::V2017_04_02::Models::ProfileUpdateParameters
          end
          def error_response
            Azure::CDN::Mgmt::V2017_04_02::Models::ErrorResponse
          end
          def resource
            Azure::CDN::Mgmt::V2017_04_02::Models::Resource
          end
          def operation_display
            Azure::CDN::Mgmt::V2017_04_02::Models::OperationDisplay
          end
          def purge_parameters
            Azure::CDN::Mgmt::V2017_04_02::Models::PurgeParameters
          end
          def operation
            Azure::CDN::Mgmt::V2017_04_02::Models::Operation
          end
          def supported_optimization_types_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::SupportedOptimizationTypesListResult
          end
          def operations_list_result
            Azure::CDN::Mgmt::V2017_04_02::Models::OperationsListResult
          end
          def edgenode_result
            Azure::CDN::Mgmt::V2017_04_02::Models::EdgenodeResult
          end
          def cidr_ip_address
            Azure::CDN::Mgmt::V2017_04_02::Models::CidrIpAddress
          end
          def geo_filter
            Azure::CDN::Mgmt::V2017_04_02::Models::GeoFilter
          end
          def ip_address_group
            Azure::CDN::Mgmt::V2017_04_02::Models::IpAddressGroup
          end
          def profile
            Azure::CDN::Mgmt::V2017_04_02::Models::Profile
          end
          def endpoint
            Azure::CDN::Mgmt::V2017_04_02::Models::Endpoint
          end
          def origin
            Azure::CDN::Mgmt::V2017_04_02::Models::Origin
          end
          def custom_domain
            Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomain
          end
          def edge_node
            Azure::CDN::Mgmt::V2017_04_02::Models::EdgeNode
          end
          def sku_name
            Azure::CDN::Mgmt::V2017_04_02::Models::SkuName
          end
          def profile_resource_state
            Azure::CDN::Mgmt::V2017_04_02::Models::ProfileResourceState
          end
          def optimization_type
            Azure::CDN::Mgmt::V2017_04_02::Models::OptimizationType
          end
          def endpoint_resource_state
            Azure::CDN::Mgmt::V2017_04_02::Models::EndpointResourceState
          end
          def query_string_caching_behavior
            Azure::CDN::Mgmt::V2017_04_02::Models::QueryStringCachingBehavior
          end
          def geo_filter_actions
            Azure::CDN::Mgmt::V2017_04_02::Models::GeoFilterActions
          end
          def origin_resource_state
            Azure::CDN::Mgmt::V2017_04_02::Models::OriginResourceState
          end
          def custom_domain_resource_state
            Azure::CDN::Mgmt::V2017_04_02::Models::CustomDomainResourceState
          end
          def custom_https_provisioning_state
            Azure::CDN::Mgmt::V2017_04_02::Models::CustomHttpsProvisioningState
          end
          def custom_https_provisioning_substate
            Azure::CDN::Mgmt::V2017_04_02::Models::CustomHttpsProvisioningSubstate
          end
          def resource_type
            Azure::CDN::Mgmt::V2017_04_02::Models::ResourceType
          end
        end
      end
    end
  end
end
