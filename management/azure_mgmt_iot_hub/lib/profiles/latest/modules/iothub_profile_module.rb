# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::IotHub::Profiles::Latest
  module Mgmt
    Operations = Azure::IotHub::Mgmt::V2019_03_22_preview::Operations
    IotHubResource = Azure::IotHub::Mgmt::V2019_03_22_preview::IotHubResource
    ResourceProviderCommon = Azure::IotHub::Mgmt::V2019_03_22_preview::ResourceProviderCommon
    Certificates = Azure::IotHub::Mgmt::V2019_03_22_preview::Certificates
    IotHub = Azure::IotHub::Mgmt::V2019_03_22_preview::IotHub

    module Models
      IotHubQuotaMetricInfo = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubQuotaMetricInfo
      IotHubQuotaMetricInfoListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubQuotaMetricInfoListResult
      CertificateProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateProperties
      EndpointHealthData = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EndpointHealthData
      CertificateListDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateListDescription
      EndpointHealthDataListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EndpointHealthDataListResult
      CertificatePropertiesWithNonce = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificatePropertiesWithNonce
      RegistryStatistics = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RegistryStatistics
      SharedAccessSignatureAuthorizationRule = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::SharedAccessSignatureAuthorizationRule
      JobResponse = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobResponse
      EventHubProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EventHubProperties
      JobResponseListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobResponseListResult
      RoutingServiceBusTopicEndpointProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingServiceBusTopicEndpointProperties
      IotHubCapacity = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubCapacity
      RoutingStorageContainerProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingStorageContainerProperties
      IotHubSkuDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuDescription
      RouteProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteProperties
      TagsResource = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TagsResource
      EnrichmentProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EnrichmentProperties
      EventHubConsumerGroupInfo = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EventHubConsumerGroupInfo
      StorageEndpointProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::StorageEndpointProperties
      EventHubConsumerGroupsListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EventHubConsumerGroupsListResult
      FeedbackProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::FeedbackProperties
      IotHubSkuDescriptionListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuDescriptionListResult
      IotHubPropertiesDeviceStreams = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubPropertiesDeviceStreams
      IotHubDescriptionListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubDescriptionListResult
      IotHubSkuInfo = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuInfo
      OperationInputs = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::OperationInputs
      Resource = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Resource
      IotHubNameAvailabilityInfo = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubNameAvailabilityInfo
      OperationDisplay = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::OperationDisplay
      Name = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Name
      OperationListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::OperationListResult
      UserSubscriptionQuota = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::UserSubscriptionQuota
      CertificateVerificationDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateVerificationDescription
      UserSubscriptionQuotaListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::UserSubscriptionQuotaListResult
      CertificateBodyDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateBodyDescription
      RoutingMessage = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingMessage
      IpFilterRule = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IpFilterRule
      RoutingTwinProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingTwinProperties
      RoutingEventHubProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingEventHubProperties
      RoutingTwin = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingTwin
      FallbackRouteProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::FallbackRouteProperties
      TestAllRoutesInput = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestAllRoutesInput
      MessagingEndpointProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::MessagingEndpointProperties
      MatchedRoute = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::MatchedRoute
      IotHubProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubProperties
      TestAllRoutesResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestAllRoutesResult
      SharedAccessSignatureAuthorizationRuleListResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::SharedAccessSignatureAuthorizationRuleListResult
      TestRouteInput = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestRouteInput
      ErrorDetails = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::ErrorDetails
      RouteErrorPosition = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteErrorPosition
      CertificateWithNonceDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateWithNonceDescription
      RouteErrorRange = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteErrorRange
      RoutingEndpoints = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingEndpoints
      RouteCompilationError = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteCompilationError
      CloudToDeviceProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CloudToDeviceProperties
      TestRouteResultDetails = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestRouteResultDetails
      Operation = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Operation
      TestRouteResult = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestRouteResult
      RoutingServiceBusQueueEndpointProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingServiceBusQueueEndpointProperties
      ExportDevicesRequest = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::ExportDevicesRequest
      CertificateDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateDescription
      ImportDevicesRequest = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::ImportDevicesRequest
      RoutingProperties = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingProperties
      FailoverInput = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::FailoverInput
      IotHubDescription = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubDescription
      AccessRights = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::AccessRights
      IpFilterActionType = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IpFilterActionType
      RoutingSource = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingSource
      Capabilities = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Capabilities
      IotHubSku = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSku
      IotHubSkuTier = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuTier
      EndpointHealthStatus = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EndpointHealthStatus
      JobType = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobType
      JobStatus = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobStatus
      IotHubScaleType = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubScaleType
      IotHubNameUnavailabilityReason = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubNameUnavailabilityReason
      TestResultStatus = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestResultStatus
      RouteErrorSeverity = Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteErrorSeverity
    end

    #
    # IotHubManagementClass
    #
    class IotHubManagementClass
      attr_reader :operations, :iot_hub_resource, :resource_provider_common, :certificates, :iot_hub, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::IotHub::Mgmt::V2019_03_22_preview::IotHubClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @iot_hub_resource = @client_0.iot_hub_resource
        @resource_provider_common = @client_0.resource_provider_common
        @certificates = @client_0.certificates
        @iot_hub = @client_0.iot_hub

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/IotHub/Mgmt'
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
      def iot_hub_quota_metric_info
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubQuotaMetricInfo
      end
      def iot_hub_quota_metric_info_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubQuotaMetricInfoListResult
      end
      def certificate_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateProperties
      end
      def endpoint_health_data
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EndpointHealthData
      end
      def certificate_list_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateListDescription
      end
      def endpoint_health_data_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EndpointHealthDataListResult
      end
      def certificate_properties_with_nonce
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificatePropertiesWithNonce
      end
      def registry_statistics
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RegistryStatistics
      end
      def shared_access_signature_authorization_rule
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::SharedAccessSignatureAuthorizationRule
      end
      def job_response
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobResponse
      end
      def event_hub_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EventHubProperties
      end
      def job_response_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobResponseListResult
      end
      def routing_service_bus_topic_endpoint_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingServiceBusTopicEndpointProperties
      end
      def iot_hub_capacity
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubCapacity
      end
      def routing_storage_container_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingStorageContainerProperties
      end
      def iot_hub_sku_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuDescription
      end
      def route_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteProperties
      end
      def tags_resource
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TagsResource
      end
      def enrichment_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EnrichmentProperties
      end
      def event_hub_consumer_group_info
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EventHubConsumerGroupInfo
      end
      def storage_endpoint_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::StorageEndpointProperties
      end
      def event_hub_consumer_groups_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EventHubConsumerGroupsListResult
      end
      def feedback_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::FeedbackProperties
      end
      def iot_hub_sku_description_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuDescriptionListResult
      end
      def iot_hub_properties_device_streams
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubPropertiesDeviceStreams
      end
      def iot_hub_description_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubDescriptionListResult
      end
      def iot_hub_sku_info
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuInfo
      end
      def operation_inputs
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::OperationInputs
      end
      def resource
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Resource
      end
      def iot_hub_name_availability_info
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubNameAvailabilityInfo
      end
      def operation_display
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::OperationDisplay
      end
      def name
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Name
      end
      def operation_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::OperationListResult
      end
      def user_subscription_quota
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::UserSubscriptionQuota
      end
      def certificate_verification_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateVerificationDescription
      end
      def user_subscription_quota_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::UserSubscriptionQuotaListResult
      end
      def certificate_body_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateBodyDescription
      end
      def routing_message
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingMessage
      end
      def ip_filter_rule
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IpFilterRule
      end
      def routing_twin_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingTwinProperties
      end
      def routing_event_hub_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingEventHubProperties
      end
      def routing_twin
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingTwin
      end
      def fallback_route_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::FallbackRouteProperties
      end
      def test_all_routes_input
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestAllRoutesInput
      end
      def messaging_endpoint_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::MessagingEndpointProperties
      end
      def matched_route
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::MatchedRoute
      end
      def iot_hub_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubProperties
      end
      def test_all_routes_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestAllRoutesResult
      end
      def shared_access_signature_authorization_rule_list_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::SharedAccessSignatureAuthorizationRuleListResult
      end
      def test_route_input
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestRouteInput
      end
      def error_details
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::ErrorDetails
      end
      def route_error_position
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteErrorPosition
      end
      def certificate_with_nonce_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateWithNonceDescription
      end
      def route_error_range
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteErrorRange
      end
      def routing_endpoints
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingEndpoints
      end
      def route_compilation_error
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteCompilationError
      end
      def cloud_to_device_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CloudToDeviceProperties
      end
      def test_route_result_details
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestRouteResultDetails
      end
      def operation
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Operation
      end
      def test_route_result
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestRouteResult
      end
      def routing_service_bus_queue_endpoint_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingServiceBusQueueEndpointProperties
      end
      def export_devices_request
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::ExportDevicesRequest
      end
      def certificate_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::CertificateDescription
      end
      def import_devices_request
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::ImportDevicesRequest
      end
      def routing_properties
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingProperties
      end
      def failover_input
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::FailoverInput
      end
      def iot_hub_description
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubDescription
      end
      def access_rights
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::AccessRights
      end
      def ip_filter_action_type
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IpFilterActionType
      end
      def routing_source
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RoutingSource
      end
      def capabilities
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::Capabilities
      end
      def iot_hub_sku
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSku
      end
      def iot_hub_sku_tier
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubSkuTier
      end
      def endpoint_health_status
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::EndpointHealthStatus
      end
      def job_type
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobType
      end
      def job_status
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::JobStatus
      end
      def iot_hub_scale_type
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubScaleType
      end
      def iot_hub_name_unavailability_reason
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::IotHubNameUnavailabilityReason
      end
      def test_result_status
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::TestResultStatus
      end
      def route_error_severity
        Azure::IotHub::Mgmt::V2019_03_22_preview::Models::RouteErrorSeverity
      end
    end
  end
end
