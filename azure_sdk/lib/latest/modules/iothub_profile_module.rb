# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::Profiles::Latest
  module IotHub
    module Mgmt
      Operations = Azure::IotHub::Mgmt::V2017_07_01::Operations
      IotHubResource = Azure::IotHub::Mgmt::V2017_07_01::IotHubResource
      Certificates = Azure::IotHub::Mgmt::V2017_07_01::Certificates

      module Models
        IotHubProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubProperties
        IotHubSkuInfo = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuInfo
        CertificateBodyDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateBodyDescription
        CertificateProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateProperties
        CertificateListDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateListDescription
        CertificateWithNonceDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateWithNonceDescription
        SharedAccessSignatureAuthorizationRuleListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::SharedAccessSignatureAuthorizationRuleListResult
        IpFilterRule = Azure::IotHub::Mgmt::V2017_07_01::Models::IpFilterRule
        RoutingServiceBusQueueEndpointProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingServiceBusQueueEndpointProperties
        OperationDisplay = Azure::IotHub::Mgmt::V2017_07_01::Models::OperationDisplay
        RoutingEventHubProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingEventHubProperties
        OperationListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::OperationListResult
        FallbackRouteProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::FallbackRouteProperties
        RoutingEndpoints = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingEndpoints
        StorageEndpointProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::StorageEndpointProperties
        IotHubQuotaMetricInfo = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubQuotaMetricInfo
        FeedbackProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::FeedbackProperties
        IotHubQuotaMetricInfoListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubQuotaMetricInfoListResult
        OperationsMonitoringProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::OperationsMonitoringProperties
        RegistryStatistics = Azure::IotHub::Mgmt::V2017_07_01::Models::RegistryStatistics
        CertificateDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateDescription
        Operation = Azure::IotHub::Mgmt::V2017_07_01::Models::Operation
        SharedAccessSignatureAuthorizationRule = Azure::IotHub::Mgmt::V2017_07_01::Models::SharedAccessSignatureAuthorizationRule
        JobResponseListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::JobResponseListResult
        JobResponse = Azure::IotHub::Mgmt::V2017_07_01::Models::JobResponse
        IotHubCapacity = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubCapacity
        RoutingServiceBusTopicEndpointProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingServiceBusTopicEndpointProperties
        MessagingEndpointProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::MessagingEndpointProperties
        EventHubConsumerGroupInfo = Azure::IotHub::Mgmt::V2017_07_01::Models::EventHubConsumerGroupInfo
        CertificateVerificationDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateVerificationDescription
        IotHubSkuDescriptionListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuDescriptionListResult
        EventHubProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::EventHubProperties
        IotHubDescriptionListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubDescriptionListResult
        RoutingProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingProperties
        OperationInputs = Azure::IotHub::Mgmt::V2017_07_01::Models::OperationInputs
        CertificatePropertiesWithNonce = Azure::IotHub::Mgmt::V2017_07_01::Models::CertificatePropertiesWithNonce
        IotHubNameAvailabilityInfo = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubNameAvailabilityInfo
        CloudToDeviceProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::CloudToDeviceProperties
        ExportDevicesRequest = Azure::IotHub::Mgmt::V2017_07_01::Models::ExportDevicesRequest
        IotHubSkuDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuDescription
        RouteProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::RouteProperties
        EventHubConsumerGroupsListResult = Azure::IotHub::Mgmt::V2017_07_01::Models::EventHubConsumerGroupsListResult
        RoutingStorageContainerProperties = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingStorageContainerProperties
        ImportDevicesRequest = Azure::IotHub::Mgmt::V2017_07_01::Models::ImportDevicesRequest
        IotHubDescription = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubDescription
        IpFilterActionType = Azure::IotHub::Mgmt::V2017_07_01::Models::IpFilterActionType
        RoutingSource = Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingSource
        OperationMonitoringLevel = Azure::IotHub::Mgmt::V2017_07_01::Models::OperationMonitoringLevel
        Capabilities = Azure::IotHub::Mgmt::V2017_07_01::Models::Capabilities
        IotHubSku = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSku
        IotHubSkuTier = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuTier
        JobType = Azure::IotHub::Mgmt::V2017_07_01::Models::JobType
        JobStatus = Azure::IotHub::Mgmt::V2017_07_01::Models::JobStatus
        IotHubNameUnavailabilityReason = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubNameUnavailabilityReason
        IotHubScaleType = Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubScaleType
        Resource = Azure::IotHub::Mgmt::V2017_07_01::Models::Resource
        ErrorDetails = Azure::IotHub::Mgmt::V2017_07_01::Models::ErrorDetails
        AccessRights = Azure::IotHub::Mgmt::V2017_07_01::Models::AccessRights
      end

      class IotHubManagementClass
        attr_reader :operations, :iot_hub_resource, :certificates, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::IotHub::Mgmt::V2017_07_01::IotHubClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @iot_hub_resource = @client_0.iot_hub_resource
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
          def iot_hub_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubProperties
          end
          def iot_hub_sku_info
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuInfo
          end
          def certificate_body_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateBodyDescription
          end
          def certificate_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateProperties
          end
          def certificate_list_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateListDescription
          end
          def certificate_with_nonce_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateWithNonceDescription
          end
          def shared_access_signature_authorization_rule_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::SharedAccessSignatureAuthorizationRuleListResult
          end
          def ip_filter_rule
            Azure::IotHub::Mgmt::V2017_07_01::Models::IpFilterRule
          end
          def routing_service_bus_queue_endpoint_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingServiceBusQueueEndpointProperties
          end
          def operation_display
            Azure::IotHub::Mgmt::V2017_07_01::Models::OperationDisplay
          end
          def routing_event_hub_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingEventHubProperties
          end
          def operation_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::OperationListResult
          end
          def fallback_route_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::FallbackRouteProperties
          end
          def routing_endpoints
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingEndpoints
          end
          def storage_endpoint_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::StorageEndpointProperties
          end
          def iot_hub_quota_metric_info
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubQuotaMetricInfo
          end
          def feedback_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::FeedbackProperties
          end
          def iot_hub_quota_metric_info_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubQuotaMetricInfoListResult
          end
          def operations_monitoring_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::OperationsMonitoringProperties
          end
          def registry_statistics
            Azure::IotHub::Mgmt::V2017_07_01::Models::RegistryStatistics
          end
          def certificate_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateDescription
          end
          def operation
            Azure::IotHub::Mgmt::V2017_07_01::Models::Operation
          end
          def shared_access_signature_authorization_rule
            Azure::IotHub::Mgmt::V2017_07_01::Models::SharedAccessSignatureAuthorizationRule
          end
          def job_response_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::JobResponseListResult
          end
          def job_response
            Azure::IotHub::Mgmt::V2017_07_01::Models::JobResponse
          end
          def iot_hub_capacity
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubCapacity
          end
          def routing_service_bus_topic_endpoint_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingServiceBusTopicEndpointProperties
          end
          def messaging_endpoint_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::MessagingEndpointProperties
          end
          def event_hub_consumer_group_info
            Azure::IotHub::Mgmt::V2017_07_01::Models::EventHubConsumerGroupInfo
          end
          def certificate_verification_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificateVerificationDescription
          end
          def iot_hub_sku_description_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuDescriptionListResult
          end
          def event_hub_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::EventHubProperties
          end
          def iot_hub_description_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubDescriptionListResult
          end
          def routing_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingProperties
          end
          def operation_inputs
            Azure::IotHub::Mgmt::V2017_07_01::Models::OperationInputs
          end
          def certificate_properties_with_nonce
            Azure::IotHub::Mgmt::V2017_07_01::Models::CertificatePropertiesWithNonce
          end
          def iot_hub_name_availability_info
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubNameAvailabilityInfo
          end
          def cloud_to_device_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::CloudToDeviceProperties
          end
          def export_devices_request
            Azure::IotHub::Mgmt::V2017_07_01::Models::ExportDevicesRequest
          end
          def iot_hub_sku_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuDescription
          end
          def route_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::RouteProperties
          end
          def event_hub_consumer_groups_list_result
            Azure::IotHub::Mgmt::V2017_07_01::Models::EventHubConsumerGroupsListResult
          end
          def routing_storage_container_properties
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingStorageContainerProperties
          end
          def import_devices_request
            Azure::IotHub::Mgmt::V2017_07_01::Models::ImportDevicesRequest
          end
          def iot_hub_description
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubDescription
          end
          def ip_filter_action_type
            Azure::IotHub::Mgmt::V2017_07_01::Models::IpFilterActionType
          end
          def routing_source
            Azure::IotHub::Mgmt::V2017_07_01::Models::RoutingSource
          end
          def operation_monitoring_level
            Azure::IotHub::Mgmt::V2017_07_01::Models::OperationMonitoringLevel
          end
          def capabilities
            Azure::IotHub::Mgmt::V2017_07_01::Models::Capabilities
          end
          def iot_hub_sku
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSku
          end
          def iot_hub_sku_tier
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubSkuTier
          end
          def job_type
            Azure::IotHub::Mgmt::V2017_07_01::Models::JobType
          end
          def job_status
            Azure::IotHub::Mgmt::V2017_07_01::Models::JobStatus
          end
          def iot_hub_name_unavailability_reason
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubNameUnavailabilityReason
          end
          def iot_hub_scale_type
            Azure::IotHub::Mgmt::V2017_07_01::Models::IotHubScaleType
          end
          def resource
            Azure::IotHub::Mgmt::V2017_07_01::Models::Resource
          end
          def error_details
            Azure::IotHub::Mgmt::V2017_07_01::Models::ErrorDetails
          end
          def access_rights
            Azure::IotHub::Mgmt::V2017_07_01::Models::AccessRights
          end
        end
      end
    end
  end
end
