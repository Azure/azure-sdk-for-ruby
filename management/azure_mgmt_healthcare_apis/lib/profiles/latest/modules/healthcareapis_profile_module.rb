# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_healthcare_apis'

module Azure::HealthcareApis::Profiles::Latest
  module Mgmt
    Services = Azure::HealthcareApis::Mgmt::V2020_03_30::Services
    Operations = Azure::HealthcareApis::Mgmt::V2020_03_30::Operations
    OperationResults = Azure::HealthcareApis::Mgmt::V2020_03_30::OperationResults
    PrivateEndpointConnections = Azure::HealthcareApis::Mgmt::V2020_03_30::PrivateEndpointConnections
    PrivateLinkResources = Azure::HealthcareApis::Mgmt::V2020_03_30::PrivateLinkResources

    module Models
      ErrorDetails = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ErrorDetails
      ServicesDescriptionListResult = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesDescriptionListResult
      ServiceCosmosDbConfigurationInfo = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceCosmosDbConfigurationInfo
      OperationDisplay = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationDisplay
      ServiceCorsConfigurationInfo = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceCorsConfigurationInfo
      Operation = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::Operation
      PrivateEndpoint = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpoint
      OperationListResult = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationListResult
      ServiceAuthenticationConfigurationInfo = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceAuthenticationConfigurationInfo
      ServiceExportConfigurationInfo = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceExportConfigurationInfo
      PrivateLinkServiceConnectionState = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateLinkServiceConnectionState
      ServicesResourceIdentity = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesResourceIdentity
      PrivateEndpointConnectionListResult = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointConnectionListResult
      ErrorDetailsInternal = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ErrorDetailsInternal
      CheckNameAvailabilityParameters = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::CheckNameAvailabilityParameters
      ServicesProperties = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesProperties
      ServicesNameAvailabilityInfo = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesNameAvailabilityInfo
      ServicesResource = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesResource
      OperationResultsDescription = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationResultsDescription
      ServicesPatchDescription = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesPatchDescription
      PrivateLinkResourceListResult = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateLinkResourceListResult
      ServiceAccessPolicyEntry = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceAccessPolicyEntry
      Resource = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::Resource
      PrivateEndpointConnection = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointConnection
      ServicesDescription = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesDescription
      ProxyResource = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ProxyResource
      TrackedResource = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::TrackedResource
      AzureEntityResource = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::AzureEntityResource
      PrivateLinkResource = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateLinkResource
      ProvisioningState = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ProvisioningState
      PrivateEndpointServiceConnectionStatus = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointServiceConnectionStatus
      PrivateEndpointConnectionProvisioningState = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointConnectionProvisioningState
      PublicNetworkAccess = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PublicNetworkAccess
      Kind = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::Kind
      ManagedServiceIdentityType = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ManagedServiceIdentityType
      ServiceNameUnavailabilityReason = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceNameUnavailabilityReason
      OperationResultStatus = Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationResultStatus
    end

    #
    # HealthcareApisManagementClass
    #
    class HealthcareApisManagementClass
      attr_reader :services, :operations, :operation_results, :private_endpoint_connections, :private_link_resources, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::HealthcareApis::Mgmt::V2020_03_30::HealthcareApisManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @services = @client_0.services
        @operations = @client_0.operations
        @operation_results = @client_0.operation_results
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_resources = @client_0.private_link_resources

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/HealthcareApis/Mgmt'
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
      def error_details
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ErrorDetails
      end
      def services_description_list_result
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesDescriptionListResult
      end
      def service_cosmos_db_configuration_info
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceCosmosDbConfigurationInfo
      end
      def operation_display
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationDisplay
      end
      def service_cors_configuration_info
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceCorsConfigurationInfo
      end
      def operation
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::Operation
      end
      def private_endpoint
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpoint
      end
      def operation_list_result
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationListResult
      end
      def service_authentication_configuration_info
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceAuthenticationConfigurationInfo
      end
      def service_export_configuration_info
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceExportConfigurationInfo
      end
      def private_link_service_connection_state
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateLinkServiceConnectionState
      end
      def services_resource_identity
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesResourceIdentity
      end
      def private_endpoint_connection_list_result
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointConnectionListResult
      end
      def error_details_internal
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ErrorDetailsInternal
      end
      def check_name_availability_parameters
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::CheckNameAvailabilityParameters
      end
      def services_properties
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesProperties
      end
      def services_name_availability_info
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesNameAvailabilityInfo
      end
      def services_resource
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesResource
      end
      def operation_results_description
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationResultsDescription
      end
      def services_patch_description
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesPatchDescription
      end
      def private_link_resource_list_result
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateLinkResourceListResult
      end
      def service_access_policy_entry
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceAccessPolicyEntry
      end
      def resource
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::Resource
      end
      def private_endpoint_connection
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointConnection
      end
      def services_description
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServicesDescription
      end
      def proxy_resource
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ProxyResource
      end
      def tracked_resource
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::AzureEntityResource
      end
      def private_link_resource
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateLinkResource
      end
      def provisioning_state
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ProvisioningState
      end
      def private_endpoint_service_connection_status
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointServiceConnectionStatus
      end
      def private_endpoint_connection_provisioning_state
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PrivateEndpointConnectionProvisioningState
      end
      def public_network_access
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::PublicNetworkAccess
      end
      def kind
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::Kind
      end
      def managed_service_identity_type
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ManagedServiceIdentityType
      end
      def service_name_unavailability_reason
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::ServiceNameUnavailabilityReason
      end
      def operation_result_status
        Azure::HealthcareApis::Mgmt::V2020_03_30::Models::OperationResultStatus
      end
    end
  end
end
