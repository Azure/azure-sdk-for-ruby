# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::Profiles::Latest
  module IotHub
    module Mgmt
      Operations = Azure::IotHub::Mgmt::V2018_04_01::Operations
      IotHubResource = Azure::IotHub::Mgmt::V2018_04_01::IotHubResource
      ResourceProviderCommon = Azure::IotHub::Mgmt::V2018_04_01::ResourceProviderCommon
      Certificates = Azure::IotHub::Mgmt::V2018_04_01::Certificates

      module Models
        RouteErrorPosition = Azure::IotHub::Mgmt::V2018_04_01::Models::RouteErrorPosition
        RouteCompilationError = Azure::IotHub::Mgmt::V2018_04_01::Models::RouteCompilationError
        CertificateBodyDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateBodyDescription
        IotHubSkuInfo = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuInfo
        FeedbackProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::FeedbackProperties
        TestRouteResult = Azure::IotHub::Mgmt::V2018_04_01::Models::TestRouteResult
        TestRouteResultDetails = Azure::IotHub::Mgmt::V2018_04_01::Models::TestRouteResultDetails
        ExportDevicesRequest = Azure::IotHub::Mgmt::V2018_04_01::Models::ExportDevicesRequest
        ImportDevicesRequest = Azure::IotHub::Mgmt::V2018_04_01::Models::ImportDevicesRequest
        RoutingEventHubProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingEventHubProperties
        AccessRights = Azure::IotHub::Mgmt::V2018_04_01::Models::AccessRights
        Operation = Azure::IotHub::Mgmt::V2018_04_01::Models::Operation
        IotHubDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubDescription
        OperationMonitoringLevel = Azure::IotHub::Mgmt::V2018_04_01::Models::OperationMonitoringLevel
        IpFilterActionType = Azure::IotHub::Mgmt::V2018_04_01::Models::IpFilterActionType
        RoutingSource = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingSource
        IotHubSkuTier = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuTier
        Capabilities = Azure::IotHub::Mgmt::V2018_04_01::Models::Capabilities
        IotHubSku = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSku
        IotHubScaleType = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubScaleType
        EndpointHealthStatus = Azure::IotHub::Mgmt::V2018_04_01::Models::EndpointHealthStatus
        JobType = Azure::IotHub::Mgmt::V2018_04_01::Models::JobType
        JobStatus = Azure::IotHub::Mgmt::V2018_04_01::Models::JobStatus
        IotHubNameUnavailabilityReason = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubNameUnavailabilityReason
        TestResultStatus = Azure::IotHub::Mgmt::V2018_04_01::Models::TestResultStatus
        RouteErrorSeverity = Azure::IotHub::Mgmt::V2018_04_01::Models::RouteErrorSeverity
        Name = Azure::IotHub::Mgmt::V2018_04_01::Models::Name
        IpFilterRule = Azure::IotHub::Mgmt::V2018_04_01::Models::IpFilterRule
        OperationInputs = Azure::IotHub::Mgmt::V2018_04_01::Models::OperationInputs
        IotHubQuotaMetricInfo = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubQuotaMetricInfo
        CertificateProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateProperties
        IotHubQuotaMetricInfoListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubQuotaMetricInfoListResult
        CertificateListDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateListDescription
        EndpointHealthData = Azure::IotHub::Mgmt::V2018_04_01::Models::EndpointHealthData
        CertificatePropertiesWithNonce = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificatePropertiesWithNonce
        EndpointHealthDataListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::EndpointHealthDataListResult
        SharedAccessSignatureAuthorizationRule = Azure::IotHub::Mgmt::V2018_04_01::Models::SharedAccessSignatureAuthorizationRule
        RegistryStatistics = Azure::IotHub::Mgmt::V2018_04_01::Models::RegistryStatistics
        EventHubProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::EventHubProperties
        JobResponse = Azure::IotHub::Mgmt::V2018_04_01::Models::JobResponse
        ErrorDetails = Azure::IotHub::Mgmt::V2018_04_01::Models::ErrorDetails
        RoutingServiceBusTopicEndpointProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingServiceBusTopicEndpointProperties
        JobResponseListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::JobResponseListResult
        RoutingStorageContainerProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingStorageContainerProperties
        RouteProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::RouteProperties
        IotHubSkuDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuDescription
        RoutingProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingProperties
        TagsResource = Azure::IotHub::Mgmt::V2018_04_01::Models::TagsResource
        MessagingEndpointProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::MessagingEndpointProperties
        EventHubConsumerGroupInfo = Azure::IotHub::Mgmt::V2018_04_01::Models::EventHubConsumerGroupInfo
        CloudToDeviceProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::CloudToDeviceProperties
        EventHubConsumerGroupsListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::EventHubConsumerGroupsListResult
        IotHubProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubProperties
        IotHubCapacity = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubCapacity
        IotHubSkuDescriptionListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuDescriptionListResult
        IotHubDescriptionListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubDescriptionListResult
        OperationDisplay = Azure::IotHub::Mgmt::V2018_04_01::Models::OperationDisplay
        CertificateDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateDescription
        IotHubNameAvailabilityInfo = Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubNameAvailabilityInfo
        UserSubscriptionQuota = Azure::IotHub::Mgmt::V2018_04_01::Models::UserSubscriptionQuota
        OperationListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::OperationListResult
        Resource = Azure::IotHub::Mgmt::V2018_04_01::Models::Resource
        RoutingEndpoints = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingEndpoints
        CertificateWithNonceDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateWithNonceDescription
        TestAllRoutesInput = Azure::IotHub::Mgmt::V2018_04_01::Models::TestAllRoutesInput
        RoutingServiceBusQueueEndpointProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingServiceBusQueueEndpointProperties
        UserSubscriptionQuotaListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::UserSubscriptionQuotaListResult
        MatchedRoute = Azure::IotHub::Mgmt::V2018_04_01::Models::MatchedRoute
        RoutingMessage = Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingMessage
        StorageEndpointProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::StorageEndpointProperties
        SharedAccessSignatureAuthorizationRuleListResult = Azure::IotHub::Mgmt::V2018_04_01::Models::SharedAccessSignatureAuthorizationRuleListResult
        OperationsMonitoringProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::OperationsMonitoringProperties
        CertificateVerificationDescription = Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateVerificationDescription
        TestRouteInput = Azure::IotHub::Mgmt::V2018_04_01::Models::TestRouteInput
        TestAllRoutesResult = Azure::IotHub::Mgmt::V2018_04_01::Models::TestAllRoutesResult
        FallbackRouteProperties = Azure::IotHub::Mgmt::V2018_04_01::Models::FallbackRouteProperties
        RouteErrorRange = Azure::IotHub::Mgmt::V2018_04_01::Models::RouteErrorRange
      end

      class IotHubManagementClass
        attr_reader :operations, :iot_hub_resource, :resource_provider_common, :certificates, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::IotHub::Mgmt::V2018_04_01::IotHubClient.new(configurable.credentials, base_url, options)
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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/IotHub/Mgmt"
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
          def route_error_position
            Azure::IotHub::Mgmt::V2018_04_01::Models::RouteErrorPosition
          end
          def route_compilation_error
            Azure::IotHub::Mgmt::V2018_04_01::Models::RouteCompilationError
          end
          def certificate_body_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateBodyDescription
          end
          def iot_hub_sku_info
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuInfo
          end
          def feedback_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::FeedbackProperties
          end
          def test_route_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::TestRouteResult
          end
          def test_route_result_details
            Azure::IotHub::Mgmt::V2018_04_01::Models::TestRouteResultDetails
          end
          def export_devices_request
            Azure::IotHub::Mgmt::V2018_04_01::Models::ExportDevicesRequest
          end
          def import_devices_request
            Azure::IotHub::Mgmt::V2018_04_01::Models::ImportDevicesRequest
          end
          def routing_event_hub_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingEventHubProperties
          end
          def access_rights
            Azure::IotHub::Mgmt::V2018_04_01::Models::AccessRights
          end
          def operation
            Azure::IotHub::Mgmt::V2018_04_01::Models::Operation
          end
          def iot_hub_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubDescription
          end
          def operation_monitoring_level
            Azure::IotHub::Mgmt::V2018_04_01::Models::OperationMonitoringLevel
          end
          def ip_filter_action_type
            Azure::IotHub::Mgmt::V2018_04_01::Models::IpFilterActionType
          end
          def routing_source
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingSource
          end
          def iot_hub_sku_tier
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuTier
          end
          def capabilities
            Azure::IotHub::Mgmt::V2018_04_01::Models::Capabilities
          end
          def iot_hub_sku
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSku
          end
          def iot_hub_scale_type
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubScaleType
          end
          def endpoint_health_status
            Azure::IotHub::Mgmt::V2018_04_01::Models::EndpointHealthStatus
          end
          def job_type
            Azure::IotHub::Mgmt::V2018_04_01::Models::JobType
          end
          def job_status
            Azure::IotHub::Mgmt::V2018_04_01::Models::JobStatus
          end
          def iot_hub_name_unavailability_reason
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubNameUnavailabilityReason
          end
          def test_result_status
            Azure::IotHub::Mgmt::V2018_04_01::Models::TestResultStatus
          end
          def route_error_severity
            Azure::IotHub::Mgmt::V2018_04_01::Models::RouteErrorSeverity
          end
          def name
            Azure::IotHub::Mgmt::V2018_04_01::Models::Name
          end
          def ip_filter_rule
            Azure::IotHub::Mgmt::V2018_04_01::Models::IpFilterRule
          end
          def operation_inputs
            Azure::IotHub::Mgmt::V2018_04_01::Models::OperationInputs
          end
          def iot_hub_quota_metric_info
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubQuotaMetricInfo
          end
          def certificate_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateProperties
          end
          def iot_hub_quota_metric_info_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubQuotaMetricInfoListResult
          end
          def certificate_list_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateListDescription
          end
          def endpoint_health_data
            Azure::IotHub::Mgmt::V2018_04_01::Models::EndpointHealthData
          end
          def certificate_properties_with_nonce
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificatePropertiesWithNonce
          end
          def endpoint_health_data_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::EndpointHealthDataListResult
          end
          def shared_access_signature_authorization_rule
            Azure::IotHub::Mgmt::V2018_04_01::Models::SharedAccessSignatureAuthorizationRule
          end
          def registry_statistics
            Azure::IotHub::Mgmt::V2018_04_01::Models::RegistryStatistics
          end
          def event_hub_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::EventHubProperties
          end
          def job_response
            Azure::IotHub::Mgmt::V2018_04_01::Models::JobResponse
          end
          def error_details
            Azure::IotHub::Mgmt::V2018_04_01::Models::ErrorDetails
          end
          def routing_service_bus_topic_endpoint_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingServiceBusTopicEndpointProperties
          end
          def job_response_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::JobResponseListResult
          end
          def routing_storage_container_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingStorageContainerProperties
          end
          def route_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::RouteProperties
          end
          def iot_hub_sku_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuDescription
          end
          def routing_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingProperties
          end
          def tags_resource
            Azure::IotHub::Mgmt::V2018_04_01::Models::TagsResource
          end
          def messaging_endpoint_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::MessagingEndpointProperties
          end
          def event_hub_consumer_group_info
            Azure::IotHub::Mgmt::V2018_04_01::Models::EventHubConsumerGroupInfo
          end
          def cloud_to_device_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::CloudToDeviceProperties
          end
          def event_hub_consumer_groups_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::EventHubConsumerGroupsListResult
          end
          def iot_hub_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubProperties
          end
          def iot_hub_capacity
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubCapacity
          end
          def iot_hub_sku_description_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubSkuDescriptionListResult
          end
          def iot_hub_description_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubDescriptionListResult
          end
          def operation_display
            Azure::IotHub::Mgmt::V2018_04_01::Models::OperationDisplay
          end
          def certificate_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateDescription
          end
          def iot_hub_name_availability_info
            Azure::IotHub::Mgmt::V2018_04_01::Models::IotHubNameAvailabilityInfo
          end
          def user_subscription_quota
            Azure::IotHub::Mgmt::V2018_04_01::Models::UserSubscriptionQuota
          end
          def operation_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::OperationListResult
          end
          def resource
            Azure::IotHub::Mgmt::V2018_04_01::Models::Resource
          end
          def routing_endpoints
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingEndpoints
          end
          def certificate_with_nonce_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateWithNonceDescription
          end
          def test_all_routes_input
            Azure::IotHub::Mgmt::V2018_04_01::Models::TestAllRoutesInput
          end
          def routing_service_bus_queue_endpoint_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingServiceBusQueueEndpointProperties
          end
          def user_subscription_quota_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::UserSubscriptionQuotaListResult
          end
          def matched_route
            Azure::IotHub::Mgmt::V2018_04_01::Models::MatchedRoute
          end
          def routing_message
            Azure::IotHub::Mgmt::V2018_04_01::Models::RoutingMessage
          end
          def storage_endpoint_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::StorageEndpointProperties
          end
          def shared_access_signature_authorization_rule_list_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::SharedAccessSignatureAuthorizationRuleListResult
          end
          def operations_monitoring_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::OperationsMonitoringProperties
          end
          def certificate_verification_description
            Azure::IotHub::Mgmt::V2018_04_01::Models::CertificateVerificationDescription
          end
          def test_route_input
            Azure::IotHub::Mgmt::V2018_04_01::Models::TestRouteInput
          end
          def test_all_routes_result
            Azure::IotHub::Mgmt::V2018_04_01::Models::TestAllRoutesResult
          end
          def fallback_route_properties
            Azure::IotHub::Mgmt::V2018_04_01::Models::FallbackRouteProperties
          end
          def route_error_range
            Azure::IotHub::Mgmt::V2018_04_01::Models::RouteErrorRange
          end
        end
      end
    end
  end
end
