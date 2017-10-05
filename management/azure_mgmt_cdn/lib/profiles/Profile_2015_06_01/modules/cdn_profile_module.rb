# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_cdn'


module Azure::Profiles::CdnModule::Management::Profile_2015_06_01
  module CDN
    Profiles = Azure::ARM::CDN::Api_2015_06_01::Profiles
    Endpoints = Azure::ARM::CDN::Api_2015_06_01::Endpoints
    Origins = Azure::ARM::CDN::Api_2015_06_01::Origins
    CustomDomains = Azure::ARM::CDN::Api_2015_06_01::CustomDomains
    NameAvailability = Azure::ARM::CDN::Api_2015_06_01::NameAvailability
    Operations = Azure::ARM::CDN::Api_2015_06_01::Operations

    module Models
      OriginParameters = Azure::ARM::CDN::Api_2015_06_01::Models::OriginParameters
      OriginListResult = Azure::ARM::CDN::Api_2015_06_01::Models::OriginListResult
      ErrorResponse = Azure::ARM::CDN::Api_2015_06_01::Models::ErrorResponse
      Sku = Azure::ARM::CDN::Api_2015_06_01::Models::Sku
      ProfileCreateParameters = Azure::ARM::CDN::Api_2015_06_01::Models::ProfileCreateParameters
      SsoUri = Azure::ARM::CDN::Api_2015_06_01::Models::SsoUri
      DeepCreatedOrigin = Azure::ARM::CDN::Api_2015_06_01::Models::DeepCreatedOrigin
      OperationListResult = Azure::ARM::CDN::Api_2015_06_01::Models::OperationListResult
      EndpointListResult = Azure::ARM::CDN::Api_2015_06_01::Models::EndpointListResult
      CustomDomainParameters = Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomainParameters
      EndpointUpdateParameters = Azure::ARM::CDN::Api_2015_06_01::Models::EndpointUpdateParameters
      CustomDomainListResult = Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomainListResult
      LoadParameters = Azure::ARM::CDN::Api_2015_06_01::Models::LoadParameters
      ValidateCustomDomainInput = Azure::ARM::CDN::Api_2015_06_01::Models::ValidateCustomDomainInput
      ProfileUpdateParameters = Azure::ARM::CDN::Api_2015_06_01::Models::ProfileUpdateParameters
      ValidateCustomDomainOutput = Azure::ARM::CDN::Api_2015_06_01::Models::ValidateCustomDomainOutput
      EndpointCreateParameters = Azure::ARM::CDN::Api_2015_06_01::Models::EndpointCreateParameters
      CheckNameAvailabilityInput = Azure::ARM::CDN::Api_2015_06_01::Models::CheckNameAvailabilityInput
      ProfileListResult = Azure::ARM::CDN::Api_2015_06_01::Models::ProfileListResult
      CheckNameAvailabilityOutput = Azure::ARM::CDN::Api_2015_06_01::Models::CheckNameAvailabilityOutput
      PurgeParameters = Azure::ARM::CDN::Api_2015_06_01::Models::PurgeParameters
      OperationDisplay = Azure::ARM::CDN::Api_2015_06_01::Models::OperationDisplay
      Operation = Azure::ARM::CDN::Api_2015_06_01::Models::Operation
      TrackedResource = Azure::ARM::CDN::Api_2015_06_01::Models::TrackedResource
      Profile = Azure::ARM::CDN::Api_2015_06_01::Models::Profile
      Endpoint = Azure::ARM::CDN::Api_2015_06_01::Models::Endpoint
      Origin = Azure::ARM::CDN::Api_2015_06_01::Models::Origin
      CustomDomain = Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomain
      SkuName = Azure::ARM::CDN::Api_2015_06_01::Models::SkuName
      ProfileResourceState = Azure::ARM::CDN::Api_2015_06_01::Models::ProfileResourceState
      ProvisioningState = Azure::ARM::CDN::Api_2015_06_01::Models::ProvisioningState
      QueryStringCachingBehavior = Azure::ARM::CDN::Api_2015_06_01::Models::QueryStringCachingBehavior
      EndpointResourceState = Azure::ARM::CDN::Api_2015_06_01::Models::EndpointResourceState
      OriginResourceState = Azure::ARM::CDN::Api_2015_06_01::Models::OriginResourceState
      CustomDomainResourceState = Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomainResourceState
      ResourceType = Azure::ARM::CDN::Api_2015_06_01::Models::ResourceType
    end

    #
    # CDN
    #
    class CDNClass
      attr_accessor :profiles, :endpoints, :origins, :custom_domains, :name_availability, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::CDN::Api_2015_06_01::CdnManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.profiles = Azure::ARM::CDN::Api_2015_06_01::Profiles.new(client)
        self.endpoints = Azure::ARM::CDN::Api_2015_06_01::Endpoints.new(client)
        self.origins = Azure::ARM::CDN::Api_2015_06_01::Origins.new(client)
        self.custom_domains = Azure::ARM::CDN::Api_2015_06_01::CustomDomains.new(client)
        self.name_availability = Azure::ARM::CDN::Api_2015_06_01::NameAvailability.new(client)
        self.operations = Azure::ARM::CDN::Api_2015_06_01::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-06-01'
            client = Azure::ARM::CDN::Api_2015_06_01::CdnManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def origin_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::OriginParameters
        end
        def origin_list_result
          Azure::ARM::CDN::Api_2015_06_01::Models::OriginListResult
        end
        def error_response
          Azure::ARM::CDN::Api_2015_06_01::Models::ErrorResponse
        end
        def sku
          Azure::ARM::CDN::Api_2015_06_01::Models::Sku
        end
        def profile_create_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::ProfileCreateParameters
        end
        def sso_uri
          Azure::ARM::CDN::Api_2015_06_01::Models::SsoUri
        end
        def deep_created_origin
          Azure::ARM::CDN::Api_2015_06_01::Models::DeepCreatedOrigin
        end
        def operation_list_result
          Azure::ARM::CDN::Api_2015_06_01::Models::OperationListResult
        end
        def endpoint_list_result
          Azure::ARM::CDN::Api_2015_06_01::Models::EndpointListResult
        end
        def custom_domain_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomainParameters
        end
        def endpoint_update_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::EndpointUpdateParameters
        end
        def custom_domain_list_result
          Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomainListResult
        end
        def load_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::LoadParameters
        end
        def validate_custom_domain_input
          Azure::ARM::CDN::Api_2015_06_01::Models::ValidateCustomDomainInput
        end
        def profile_update_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::ProfileUpdateParameters
        end
        def validate_custom_domain_output
          Azure::ARM::CDN::Api_2015_06_01::Models::ValidateCustomDomainOutput
        end
        def endpoint_create_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::EndpointCreateParameters
        end
        def check_name_availability_input
          Azure::ARM::CDN::Api_2015_06_01::Models::CheckNameAvailabilityInput
        end
        def profile_list_result
          Azure::ARM::CDN::Api_2015_06_01::Models::ProfileListResult
        end
        def check_name_availability_output
          Azure::ARM::CDN::Api_2015_06_01::Models::CheckNameAvailabilityOutput
        end
        def purge_parameters
          Azure::ARM::CDN::Api_2015_06_01::Models::PurgeParameters
        end
        def operation_display
          Azure::ARM::CDN::Api_2015_06_01::Models::OperationDisplay
        end
        def operation
          Azure::ARM::CDN::Api_2015_06_01::Models::Operation
        end
        def tracked_resource
          Azure::ARM::CDN::Api_2015_06_01::Models::TrackedResource
        end
        def profile
          Azure::ARM::CDN::Api_2015_06_01::Models::Profile
        end
        def endpoint
          Azure::ARM::CDN::Api_2015_06_01::Models::Endpoint
        end
        def origin
          Azure::ARM::CDN::Api_2015_06_01::Models::Origin
        end
        def custom_domain
          Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomain
        end
        def sku_name
          Azure::ARM::CDN::Api_2015_06_01::Models::SkuName
        end
        def profile_resource_state
          Azure::ARM::CDN::Api_2015_06_01::Models::ProfileResourceState
        end
        def provisioning_state
          Azure::ARM::CDN::Api_2015_06_01::Models::ProvisioningState
        end
        def query_string_caching_behavior
          Azure::ARM::CDN::Api_2015_06_01::Models::QueryStringCachingBehavior
        end
        def endpoint_resource_state
          Azure::ARM::CDN::Api_2015_06_01::Models::EndpointResourceState
        end
        def origin_resource_state
          Azure::ARM::CDN::Api_2015_06_01::Models::OriginResourceState
        end
        def custom_domain_resource_state
          Azure::ARM::CDN::Api_2015_06_01::Models::CustomDomainResourceState
        end
        def resource_type
          Azure::ARM::CDN::Api_2015_06_01::Models::ResourceType
        end
      end
    end
  end
end
