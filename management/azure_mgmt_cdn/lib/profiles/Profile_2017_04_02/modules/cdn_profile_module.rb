# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_cdn'


module Azure::Profiles::CdnModule::Management::Profile_2017_04_02
  module CDN
    Profiles = Azure::ARM::CDN::Api_2017_04_02::Profiles
    Endpoints = Azure::ARM::CDN::Api_2017_04_02::Endpoints
    Origins = Azure::ARM::CDN::Api_2017_04_02::Origins
    CustomDomains = Azure::ARM::CDN::Api_2017_04_02::CustomDomains
    ResourceUsageOperations = Azure::ARM::CDN::Api_2017_04_02::ResourceUsageOperations
    Operations = Azure::ARM::CDN::Api_2017_04_02::Operations
    EdgeNodes = Azure::ARM::CDN::Api_2017_04_02::EdgeNodes

    module Models
      CustomDomainListResult = Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomainListResult
      Sku = Azure::ARM::CDN::Api_2017_04_02::Models::Sku
      ValidateCustomDomainInput = Azure::ARM::CDN::Api_2017_04_02::Models::ValidateCustomDomainInput
      ProfileListResult = Azure::ARM::CDN::Api_2017_04_02::Models::ProfileListResult
      ValidateCustomDomainOutput = Azure::ARM::CDN::Api_2017_04_02::Models::ValidateCustomDomainOutput
      SsoUri = Azure::ARM::CDN::Api_2017_04_02::Models::SsoUri
      CheckNameAvailabilityInput = Azure::ARM::CDN::Api_2017_04_02::Models::CheckNameAvailabilityInput
      DeepCreatedOrigin = Azure::ARM::CDN::Api_2017_04_02::Models::DeepCreatedOrigin
      CheckNameAvailabilityOutput = Azure::ARM::CDN::Api_2017_04_02::Models::CheckNameAvailabilityOutput
      EndpointListResult = Azure::ARM::CDN::Api_2017_04_02::Models::EndpointListResult
      ValidateProbeInput = Azure::ARM::CDN::Api_2017_04_02::Models::ValidateProbeInput
      EndpointUpdateParameters = Azure::ARM::CDN::Api_2017_04_02::Models::EndpointUpdateParameters
      ValidateProbeOutput = Azure::ARM::CDN::Api_2017_04_02::Models::ValidateProbeOutput
      LoadParameters = Azure::ARM::CDN::Api_2017_04_02::Models::LoadParameters
      ResourceUsage = Azure::ARM::CDN::Api_2017_04_02::Models::ResourceUsage
      OriginUpdateParameters = Azure::ARM::CDN::Api_2017_04_02::Models::OriginUpdateParameters
      ResourceUsageListResult = Azure::ARM::CDN::Api_2017_04_02::Models::ResourceUsageListResult
      OriginListResult = Azure::ARM::CDN::Api_2017_04_02::Models::OriginListResult
      CustomDomainParameters = Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomainParameters
      ProfileUpdateParameters = Azure::ARM::CDN::Api_2017_04_02::Models::ProfileUpdateParameters
      ErrorResponse = Azure::ARM::CDN::Api_2017_04_02::Models::ErrorResponse
      OperationDisplay = Azure::ARM::CDN::Api_2017_04_02::Models::OperationDisplay
      PurgeParameters = Azure::ARM::CDN::Api_2017_04_02::Models::PurgeParameters
      Operation = Azure::ARM::CDN::Api_2017_04_02::Models::Operation
      SupportedOptimizationTypesListResult = Azure::ARM::CDN::Api_2017_04_02::Models::SupportedOptimizationTypesListResult
      OperationsListResult = Azure::ARM::CDN::Api_2017_04_02::Models::OperationsListResult
      EdgenodeResult = Azure::ARM::CDN::Api_2017_04_02::Models::EdgenodeResult
      CidrIpAddress = Azure::ARM::CDN::Api_2017_04_02::Models::CidrIpAddress
      GeoFilter = Azure::ARM::CDN::Api_2017_04_02::Models::GeoFilter
      IpAddressGroup = Azure::ARM::CDN::Api_2017_04_02::Models::IpAddressGroup
      Profile = Azure::ARM::CDN::Api_2017_04_02::Models::Profile
      Endpoint = Azure::ARM::CDN::Api_2017_04_02::Models::Endpoint
      Origin = Azure::ARM::CDN::Api_2017_04_02::Models::Origin
      CustomDomain = Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomain
      EdgeNode = Azure::ARM::CDN::Api_2017_04_02::Models::EdgeNode
      SkuName = Azure::ARM::CDN::Api_2017_04_02::Models::SkuName
      ProfileResourceState = Azure::ARM::CDN::Api_2017_04_02::Models::ProfileResourceState
      OptimizationType = Azure::ARM::CDN::Api_2017_04_02::Models::OptimizationType
      EndpointResourceState = Azure::ARM::CDN::Api_2017_04_02::Models::EndpointResourceState
      QueryStringCachingBehavior = Azure::ARM::CDN::Api_2017_04_02::Models::QueryStringCachingBehavior
      GeoFilterActions = Azure::ARM::CDN::Api_2017_04_02::Models::GeoFilterActions
      OriginResourceState = Azure::ARM::CDN::Api_2017_04_02::Models::OriginResourceState
      CustomDomainResourceState = Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomainResourceState
      CustomHttpsProvisioningState = Azure::ARM::CDN::Api_2017_04_02::Models::CustomHttpsProvisioningState
      CustomHttpsProvisioningSubstate = Azure::ARM::CDN::Api_2017_04_02::Models::CustomHttpsProvisioningSubstate
      ResourceType = Azure::ARM::CDN::Api_2017_04_02::Models::ResourceType
    end

    #
    # CDN
    #
    class CDNClass
      attr_accessor :profiles, :endpoints, :origins, :custom_domains, :resource_usage_operations, :operations, :edge_nodes, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::CDN::Api_2017_04_02::CdnManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.profiles = Azure::ARM::CDN::Api_2017_04_02::Profiles.new(client)
        self.endpoints = Azure::ARM::CDN::Api_2017_04_02::Endpoints.new(client)
        self.origins = Azure::ARM::CDN::Api_2017_04_02::Origins.new(client)
        self.custom_domains = Azure::ARM::CDN::Api_2017_04_02::CustomDomains.new(client)
        self.resource_usage_operations = Azure::ARM::CDN::Api_2017_04_02::ResourceUsageOperations.new(client)
        self.operations = Azure::ARM::CDN::Api_2017_04_02::Operations.new(client)
        self.edge_nodes = Azure::ARM::CDN::Api_2017_04_02::EdgeNodes.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-02'
            client = Azure::ARM::CDN::Api_2017_04_02::CdnManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def custom_domain_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomainListResult
        end
        def sku
          Azure::ARM::CDN::Api_2017_04_02::Models::Sku
        end
        def validate_custom_domain_input
          Azure::ARM::CDN::Api_2017_04_02::Models::ValidateCustomDomainInput
        end
        def profile_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::ProfileListResult
        end
        def validate_custom_domain_output
          Azure::ARM::CDN::Api_2017_04_02::Models::ValidateCustomDomainOutput
        end
        def sso_uri
          Azure::ARM::CDN::Api_2017_04_02::Models::SsoUri
        end
        def check_name_availability_input
          Azure::ARM::CDN::Api_2017_04_02::Models::CheckNameAvailabilityInput
        end
        def deep_created_origin
          Azure::ARM::CDN::Api_2017_04_02::Models::DeepCreatedOrigin
        end
        def check_name_availability_output
          Azure::ARM::CDN::Api_2017_04_02::Models::CheckNameAvailabilityOutput
        end
        def endpoint_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::EndpointListResult
        end
        def validate_probe_input
          Azure::ARM::CDN::Api_2017_04_02::Models::ValidateProbeInput
        end
        def endpoint_update_parameters
          Azure::ARM::CDN::Api_2017_04_02::Models::EndpointUpdateParameters
        end
        def validate_probe_output
          Azure::ARM::CDN::Api_2017_04_02::Models::ValidateProbeOutput
        end
        def load_parameters
          Azure::ARM::CDN::Api_2017_04_02::Models::LoadParameters
        end
        def resource_usage
          Azure::ARM::CDN::Api_2017_04_02::Models::ResourceUsage
        end
        def origin_update_parameters
          Azure::ARM::CDN::Api_2017_04_02::Models::OriginUpdateParameters
        end
        def resource_usage_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::ResourceUsageListResult
        end
        def origin_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::OriginListResult
        end
        def custom_domain_parameters
          Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomainParameters
        end
        def profile_update_parameters
          Azure::ARM::CDN::Api_2017_04_02::Models::ProfileUpdateParameters
        end
        def error_response
          Azure::ARM::CDN::Api_2017_04_02::Models::ErrorResponse
        end
        def operation_display
          Azure::ARM::CDN::Api_2017_04_02::Models::OperationDisplay
        end
        def purge_parameters
          Azure::ARM::CDN::Api_2017_04_02::Models::PurgeParameters
        end
        def operation
          Azure::ARM::CDN::Api_2017_04_02::Models::Operation
        end
        def supported_optimization_types_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::SupportedOptimizationTypesListResult
        end
        def operations_list_result
          Azure::ARM::CDN::Api_2017_04_02::Models::OperationsListResult
        end
        def edgenode_result
          Azure::ARM::CDN::Api_2017_04_02::Models::EdgenodeResult
        end
        def cidr_ip_address
          Azure::ARM::CDN::Api_2017_04_02::Models::CidrIpAddress
        end
        def geo_filter
          Azure::ARM::CDN::Api_2017_04_02::Models::GeoFilter
        end
        def ip_address_group
          Azure::ARM::CDN::Api_2017_04_02::Models::IpAddressGroup
        end
        def profile
          Azure::ARM::CDN::Api_2017_04_02::Models::Profile
        end
        def endpoint
          Azure::ARM::CDN::Api_2017_04_02::Models::Endpoint
        end
        def origin
          Azure::ARM::CDN::Api_2017_04_02::Models::Origin
        end
        def custom_domain
          Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomain
        end
        def edge_node
          Azure::ARM::CDN::Api_2017_04_02::Models::EdgeNode
        end
        def sku_name
          Azure::ARM::CDN::Api_2017_04_02::Models::SkuName
        end
        def profile_resource_state
          Azure::ARM::CDN::Api_2017_04_02::Models::ProfileResourceState
        end
        def optimization_type
          Azure::ARM::CDN::Api_2017_04_02::Models::OptimizationType
        end
        def endpoint_resource_state
          Azure::ARM::CDN::Api_2017_04_02::Models::EndpointResourceState
        end
        def query_string_caching_behavior
          Azure::ARM::CDN::Api_2017_04_02::Models::QueryStringCachingBehavior
        end
        def geo_filter_actions
          Azure::ARM::CDN::Api_2017_04_02::Models::GeoFilterActions
        end
        def origin_resource_state
          Azure::ARM::CDN::Api_2017_04_02::Models::OriginResourceState
        end
        def custom_domain_resource_state
          Azure::ARM::CDN::Api_2017_04_02::Models::CustomDomainResourceState
        end
        def custom_https_provisioning_state
          Azure::ARM::CDN::Api_2017_04_02::Models::CustomHttpsProvisioningState
        end
        def custom_https_provisioning_substate
          Azure::ARM::CDN::Api_2017_04_02::Models::CustomHttpsProvisioningSubstate
        end
        def resource_type
          Azure::ARM::CDN::Api_2017_04_02::Models::ResourceType
        end
      end
    end
  end
end
