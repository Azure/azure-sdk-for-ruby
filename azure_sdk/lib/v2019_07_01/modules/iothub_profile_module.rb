# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::Profiles::V2019_07_01
  module IotHub
    module Mgmt
      Operations = Azure::IotHub::Mgmt::V2018_12_01_preview::Operations
      IotHubResource = Azure::IotHub::Mgmt::V2018_12_01_preview::IotHubResource
      ResourceProviderCommon = Azure::IotHub::Mgmt::V2018_12_01_preview::ResourceProviderCommon
      Certificates = Azure::IotHub::Mgmt::V2018_12_01_preview::Certificates

      module Models
        IotHubQuotaMetricInfo = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubQuotaMetricInfo
        IotHubQuotaMetricInfoListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubQuotaMetricInfoListResult
        CertificateProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateProperties
        EndpointHealthData = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EndpointHealthData
        CertificateListDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateListDescription
        EndpointHealthDataListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EndpointHealthDataListResult
        CertificatePropertiesWithNonce = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificatePropertiesWithNonce
        RegistryStatistics = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RegistryStatistics
        SharedAccessSignatureAuthorizationRule = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::SharedAccessSignatureAuthorizationRule
        JobResponse = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobResponse
        EventHubProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EventHubProperties
        JobResponseListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobResponseListResult
        RoutingServiceBusTopicEndpointProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingServiceBusTopicEndpointProperties
        IotHubCapacity = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubCapacity
        RoutingStorageContainerProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingStorageContainerProperties
        IotHubSkuDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuDescription
        RouteProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteProperties
        TagsResource = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TagsResource
        RoutingProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingProperties
        EventHubConsumerGroupInfo = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EventHubConsumerGroupInfo
        MessagingEndpointProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::MessagingEndpointProperties
        EventHubConsumerGroupsListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EventHubConsumerGroupsListResult
        CloudToDeviceProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CloudToDeviceProperties
        IotHubSkuDescriptionListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuDescriptionListResult
        IotHubProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubProperties
        IotHubDescriptionListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubDescriptionListResult
        Resource = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Resource
        OperationInputs = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::OperationInputs
        OperationDisplay = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::OperationDisplay
        IotHubNameAvailabilityInfo = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubNameAvailabilityInfo
        OperationListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::OperationListResult
        Name = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Name
        CertificateVerificationDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateVerificationDescription
        UserSubscriptionQuota = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::UserSubscriptionQuota
        CertificateBodyDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateBodyDescription
        UserSubscriptionQuotaListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::UserSubscriptionQuotaListResult
        IpFilterRule = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IpFilterRule
        RoutingMessage = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingMessage
        RoutingEventHubProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingEventHubProperties
        RoutingTwinProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingTwinProperties
        FallbackRouteProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::FallbackRouteProperties
        RoutingTwin = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingTwin
        FeedbackProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::FeedbackProperties
        TestAllRoutesInput = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestAllRoutesInput
        IotHubSkuInfo = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuInfo
        MatchedRoute = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::MatchedRoute
        Operation = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Operation
        TestAllRoutesResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestAllRoutesResult
        CertificateDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateDescription
        TestRouteInput = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestRouteInput
        RoutingServiceBusQueueEndpointProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingServiceBusQueueEndpointProperties
        RouteErrorPosition = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteErrorPosition
        StorageEndpointProperties = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::StorageEndpointProperties
        RouteErrorRange = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteErrorRange
        SharedAccessSignatureAuthorizationRuleListResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::SharedAccessSignatureAuthorizationRuleListResult
        RouteCompilationError = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteCompilationError
        CertificateWithNonceDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateWithNonceDescription
        TestRouteResultDetails = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestRouteResultDetails
        IotHubPropertiesDeviceStreams = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubPropertiesDeviceStreams
        TestRouteResult = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestRouteResult
        RoutingEndpoints = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingEndpoints
        ExportDevicesRequest = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::ExportDevicesRequest
        ErrorDetails = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::ErrorDetails
        ImportDevicesRequest = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::ImportDevicesRequest
        IotHubDescription = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubDescription
        AccessRights = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::AccessRights
        IpFilterActionType = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IpFilterActionType
        RoutingSource = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingSource
        Capabilities = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Capabilities
        IotHubSku = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSku
        IotHubSkuTier = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuTier
        EndpointHealthStatus = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EndpointHealthStatus
        JobType = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobType
        JobStatus = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobStatus
        IotHubScaleType = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubScaleType
        IotHubNameUnavailabilityReason = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubNameUnavailabilityReason
        TestResultStatus = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestResultStatus
        RouteErrorSeverity = Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteErrorSeverity
      end

      class IotHubManagementClass
        attr_reader :operations, :iot_hub_resource, :resource_provider_common, :certificates, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::IotHub::Mgmt::V2018_12_01_preview::IotHubClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @iot_hub_resource = @client_0.iot_hub_resource
          @resource_provider_common = @client_0.resource_provider_common
          @certificates = @client_0.certificates

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/IotHub/Mgmt"
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
          def iot_hub_quota_metric_info
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubQuotaMetricInfo
          end
          def iot_hub_quota_metric_info_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubQuotaMetricInfoListResult
          end
          def certificate_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateProperties
          end
          def endpoint_health_data
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EndpointHealthData
          end
          def certificate_list_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateListDescription
          end
          def endpoint_health_data_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EndpointHealthDataListResult
          end
          def certificate_properties_with_nonce
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificatePropertiesWithNonce
          end
          def registry_statistics
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RegistryStatistics
          end
          def shared_access_signature_authorization_rule
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::SharedAccessSignatureAuthorizationRule
          end
          def job_response
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobResponse
          end
          def event_hub_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EventHubProperties
          end
          def job_response_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobResponseListResult
          end
          def routing_service_bus_topic_endpoint_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingServiceBusTopicEndpointProperties
          end
          def iot_hub_capacity
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubCapacity
          end
          def routing_storage_container_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingStorageContainerProperties
          end
          def iot_hub_sku_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuDescription
          end
          def route_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteProperties
          end
          def tags_resource
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TagsResource
          end
          def routing_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingProperties
          end
          def event_hub_consumer_group_info
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EventHubConsumerGroupInfo
          end
          def messaging_endpoint_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::MessagingEndpointProperties
          end
          def event_hub_consumer_groups_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EventHubConsumerGroupsListResult
          end
          def cloud_to_device_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CloudToDeviceProperties
          end
          def iot_hub_sku_description_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuDescriptionListResult
          end
          def iot_hub_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubProperties
          end
          def iot_hub_description_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubDescriptionListResult
          end
          def resource
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Resource
          end
          def operation_inputs
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::OperationInputs
          end
          def operation_display
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::OperationDisplay
          end
          def iot_hub_name_availability_info
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubNameAvailabilityInfo
          end
          def operation_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::OperationListResult
          end
          def name
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Name
          end
          def certificate_verification_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateVerificationDescription
          end
          def user_subscription_quota
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::UserSubscriptionQuota
          end
          def certificate_body_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateBodyDescription
          end
          def user_subscription_quota_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::UserSubscriptionQuotaListResult
          end
          def ip_filter_rule
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IpFilterRule
          end
          def routing_message
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingMessage
          end
          def routing_event_hub_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingEventHubProperties
          end
          def routing_twin_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingTwinProperties
          end
          def fallback_route_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::FallbackRouteProperties
          end
          def routing_twin
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingTwin
          end
          def feedback_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::FeedbackProperties
          end
          def test_all_routes_input
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestAllRoutesInput
          end
          def iot_hub_sku_info
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuInfo
          end
          def matched_route
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::MatchedRoute
          end
          def operation
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Operation
          end
          def test_all_routes_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestAllRoutesResult
          end
          def certificate_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateDescription
          end
          def test_route_input
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestRouteInput
          end
          def routing_service_bus_queue_endpoint_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingServiceBusQueueEndpointProperties
          end
          def route_error_position
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteErrorPosition
          end
          def storage_endpoint_properties
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::StorageEndpointProperties
          end
          def route_error_range
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteErrorRange
          end
          def shared_access_signature_authorization_rule_list_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::SharedAccessSignatureAuthorizationRuleListResult
          end
          def route_compilation_error
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteCompilationError
          end
          def certificate_with_nonce_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::CertificateWithNonceDescription
          end
          def test_route_result_details
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestRouteResultDetails
          end
          def iot_hub_properties_device_streams
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubPropertiesDeviceStreams
          end
          def test_route_result
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestRouteResult
          end
          def routing_endpoints
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingEndpoints
          end
          def export_devices_request
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::ExportDevicesRequest
          end
          def error_details
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::ErrorDetails
          end
          def import_devices_request
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::ImportDevicesRequest
          end
          def iot_hub_description
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubDescription
          end
          def access_rights
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::AccessRights
          end
          def ip_filter_action_type
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IpFilterActionType
          end
          def routing_source
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RoutingSource
          end
          def capabilities
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::Capabilities
          end
          def iot_hub_sku
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSku
          end
          def iot_hub_sku_tier
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubSkuTier
          end
          def endpoint_health_status
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::EndpointHealthStatus
          end
          def job_type
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobType
          end
          def job_status
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::JobStatus
          end
          def iot_hub_scale_type
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubScaleType
          end
          def iot_hub_name_unavailability_reason
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::IotHubNameUnavailabilityReason
          end
          def test_result_status
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::TestResultStatus
          end
          def route_error_severity
            Azure::IotHub::Mgmt::V2018_12_01_preview::Models::RouteErrorSeverity
          end
        end
      end
    end
  end
end
