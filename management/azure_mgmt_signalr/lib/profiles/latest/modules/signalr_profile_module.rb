# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_signalr'

module Azure::Signalr::Profiles::Latest
  module Mgmt
    Operations = Azure::Signalr::Mgmt::V2020_05_01::Operations
    SignalR = Azure::Signalr::Mgmt::V2020_05_01::SignalR
    SignalRPrivateEndpointConnections = Azure::Signalr::Mgmt::V2020_05_01::SignalRPrivateEndpointConnections
    SignalRPrivateLinkResources = Azure::Signalr::Mgmt::V2020_05_01::SignalRPrivateLinkResources
    Usages = Azure::Signalr::Mgmt::V2020_05_01::Usages

    module Models
      SignalRKeys = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRKeys
      OperationDisplay = Azure::Signalr::Mgmt::V2020_05_01::Models::OperationDisplay
      MetricSpecification = Azure::Signalr::Mgmt::V2020_05_01::Models::MetricSpecification
      SignalRResourceList = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRResourceList
      ServiceSpecification = Azure::Signalr::Mgmt::V2020_05_01::Models::ServiceSpecification
      SignalRUsageList = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRUsageList
      Operation = Azure::Signalr::Mgmt::V2020_05_01::Models::Operation
      Resource = Azure::Signalr::Mgmt::V2020_05_01::Models::Resource
      ErrorResponseBody = Azure::Signalr::Mgmt::V2020_05_01::Models::ErrorResponseBody
      SignalRFeature = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRFeature
      NameAvailabilityParameters = Azure::Signalr::Mgmt::V2020_05_01::Models::NameAvailabilityParameters
      SignalRCorsSettings = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRCorsSettings
      ResourceSku = Azure::Signalr::Mgmt::V2020_05_01::Models::ResourceSku
      UpstreamTemplate = Azure::Signalr::Mgmt::V2020_05_01::Models::UpstreamTemplate
      PrivateLinkServiceConnectionState = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkServiceConnectionState
      ServerlessUpstreamSettings = Azure::Signalr::Mgmt::V2020_05_01::Models::ServerlessUpstreamSettings
      LogSpecification = Azure::Signalr::Mgmt::V2020_05_01::Models::LogSpecification
      NetworkACL = Azure::Signalr::Mgmt::V2020_05_01::Models::NetworkACL
      OperationList = Azure::Signalr::Mgmt::V2020_05_01::Models::OperationList
      SignalRUsage = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRUsage
      NameAvailability = Azure::Signalr::Mgmt::V2020_05_01::Models::NameAvailability
      SignalRNetworkACLs = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRNetworkACLs
      Dimension = Azure::Signalr::Mgmt::V2020_05_01::Models::Dimension
      SignalRCreateOrUpdateProperties = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRCreateOrUpdateProperties
      ErrorResponse = Azure::Signalr::Mgmt::V2020_05_01::Models::ErrorResponse
      SignalRUsageName = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRUsageName
      OperationProperties = Azure::Signalr::Mgmt::V2020_05_01::Models::OperationProperties
      RegenerateKeyParameters = Azure::Signalr::Mgmt::V2020_05_01::Models::RegenerateKeyParameters
      PrivateEndpoint = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateEndpoint
      PrivateLinkResourceList = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkResourceList
      PrivateEndpointConnection = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateEndpointConnection
      TrackedResource = Azure::Signalr::Mgmt::V2020_05_01::Models::TrackedResource
      SignalRResource = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRResource
      PrivateEndpointACL = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateEndpointACL
      ProxyResource = Azure::Signalr::Mgmt::V2020_05_01::Models::ProxyResource
      PrivateLinkResource = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkResource
      SignalRSkuTier = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRSkuTier
      ProvisioningState = Azure::Signalr::Mgmt::V2020_05_01::Models::ProvisioningState
      PrivateLinkServiceConnectionStatus = Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkServiceConnectionStatus
      ServiceKind = Azure::Signalr::Mgmt::V2020_05_01::Models::ServiceKind
      FeatureFlags = Azure::Signalr::Mgmt::V2020_05_01::Models::FeatureFlags
      ACLAction = Azure::Signalr::Mgmt::V2020_05_01::Models::ACLAction
      SignalRRequestType = Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRRequestType
      KeyType = Azure::Signalr::Mgmt::V2020_05_01::Models::KeyType
    end

    #
    # SignalrManagementClass
    #
    class SignalrManagementClass
      attr_reader :operations, :signal_r, :signal_rprivate_endpoint_connections, :signal_rprivate_link_resources, :usages, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Signalr::Mgmt::V2020_05_01::SignalRManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @signal_r = @client_0.signal_r
        @signal_rprivate_endpoint_connections = @client_0.signal_rprivate_endpoint_connections
        @signal_rprivate_link_resources = @client_0.signal_rprivate_link_resources
        @usages = @client_0.usages

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Signalr/Mgmt'
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
      def signal_rkeys
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRKeys
      end
      def operation_display
        Azure::Signalr::Mgmt::V2020_05_01::Models::OperationDisplay
      end
      def metric_specification
        Azure::Signalr::Mgmt::V2020_05_01::Models::MetricSpecification
      end
      def signal_rresource_list
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRResourceList
      end
      def service_specification
        Azure::Signalr::Mgmt::V2020_05_01::Models::ServiceSpecification
      end
      def signal_rusage_list
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRUsageList
      end
      def operation
        Azure::Signalr::Mgmt::V2020_05_01::Models::Operation
      end
      def resource
        Azure::Signalr::Mgmt::V2020_05_01::Models::Resource
      end
      def error_response_body
        Azure::Signalr::Mgmt::V2020_05_01::Models::ErrorResponseBody
      end
      def signal_rfeature
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRFeature
      end
      def name_availability_parameters
        Azure::Signalr::Mgmt::V2020_05_01::Models::NameAvailabilityParameters
      end
      def signal_rcors_settings
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRCorsSettings
      end
      def resource_sku
        Azure::Signalr::Mgmt::V2020_05_01::Models::ResourceSku
      end
      def upstream_template
        Azure::Signalr::Mgmt::V2020_05_01::Models::UpstreamTemplate
      end
      def private_link_service_connection_state
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkServiceConnectionState
      end
      def serverless_upstream_settings
        Azure::Signalr::Mgmt::V2020_05_01::Models::ServerlessUpstreamSettings
      end
      def log_specification
        Azure::Signalr::Mgmt::V2020_05_01::Models::LogSpecification
      end
      def network_acl
        Azure::Signalr::Mgmt::V2020_05_01::Models::NetworkACL
      end
      def operation_list
        Azure::Signalr::Mgmt::V2020_05_01::Models::OperationList
      end
      def signal_rusage
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRUsage
      end
      def name_availability
        Azure::Signalr::Mgmt::V2020_05_01::Models::NameAvailability
      end
      def signal_rnetwork_acls
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRNetworkACLs
      end
      def dimension
        Azure::Signalr::Mgmt::V2020_05_01::Models::Dimension
      end
      def signal_rcreate_or_update_properties
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRCreateOrUpdateProperties
      end
      def error_response
        Azure::Signalr::Mgmt::V2020_05_01::Models::ErrorResponse
      end
      def signal_rusage_name
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRUsageName
      end
      def operation_properties
        Azure::Signalr::Mgmt::V2020_05_01::Models::OperationProperties
      end
      def regenerate_key_parameters
        Azure::Signalr::Mgmt::V2020_05_01::Models::RegenerateKeyParameters
      end
      def private_endpoint
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateEndpoint
      end
      def private_link_resource_list
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkResourceList
      end
      def private_endpoint_connection
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateEndpointConnection
      end
      def tracked_resource
        Azure::Signalr::Mgmt::V2020_05_01::Models::TrackedResource
      end
      def signal_rresource
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRResource
      end
      def private_endpoint_acl
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateEndpointACL
      end
      def proxy_resource
        Azure::Signalr::Mgmt::V2020_05_01::Models::ProxyResource
      end
      def private_link_resource
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkResource
      end
      def signal_rsku_tier
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRSkuTier
      end
      def provisioning_state
        Azure::Signalr::Mgmt::V2020_05_01::Models::ProvisioningState
      end
      def private_link_service_connection_status
        Azure::Signalr::Mgmt::V2020_05_01::Models::PrivateLinkServiceConnectionStatus
      end
      def service_kind
        Azure::Signalr::Mgmt::V2020_05_01::Models::ServiceKind
      end
      def feature_flags
        Azure::Signalr::Mgmt::V2020_05_01::Models::FeatureFlags
      end
      def aclaction
        Azure::Signalr::Mgmt::V2020_05_01::Models::ACLAction
      end
      def signal_rrequest_type
        Azure::Signalr::Mgmt::V2020_05_01::Models::SignalRRequestType
      end
      def key_type
        Azure::Signalr::Mgmt::V2020_05_01::Models::KeyType
      end
    end
  end
end
