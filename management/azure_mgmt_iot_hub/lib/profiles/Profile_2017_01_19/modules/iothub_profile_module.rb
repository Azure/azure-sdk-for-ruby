# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_iot_hub'


module Azure::Profiles::IotHubModule::Management::Profile_2017_01_19
  module IotHub
    IotHubResource = Azure::ARM::IotHub::Api_2017_01_19::IotHubResource
    IotHubClient = Azure::ARM::IotHub::Api_2017_01_19::IotHubClient

    module Models
      SharedAccessSignatureAuthorizationRule = Azure::ARM::IotHub::Api_2017_01_19::Models::SharedAccessSignatureAuthorizationRule
      SharedAccessSignatureAuthorizationRuleListResult = Azure::ARM::IotHub::Api_2017_01_19::Models::SharedAccessSignatureAuthorizationRuleListResult
      EventHubProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::EventHubProperties
      ErrorDetails = Azure::ARM::IotHub::Api_2017_01_19::Models::ErrorDetails
      RoutingServiceBusTopicEndpointProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingServiceBusTopicEndpointProperties
      IotHubQuotaMetricInfo = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubQuotaMetricInfo
      RoutingEndpoints = Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingEndpoints
      IotHubQuotaMetricInfoListResult = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubQuotaMetricInfoListResult
      FallbackRouteProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::FallbackRouteProperties
      RegistryStatistics = Azure::ARM::IotHub::Api_2017_01_19::Models::RegistryStatistics
      StorageEndpointProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::StorageEndpointProperties
      JobResponse = Azure::ARM::IotHub::Api_2017_01_19::Models::JobResponse
      FeedbackProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::FeedbackProperties
      JobResponseListResult = Azure::ARM::IotHub::Api_2017_01_19::Models::JobResponseListResult
      OperationsMonitoringProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::OperationsMonitoringProperties
      IotHubCapacity = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubCapacity
      IotHubSkuInfo = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuInfo
      IotHubSkuDescription = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuDescription
      IpFilterRule = Azure::ARM::IotHub::Api_2017_01_19::Models::IpFilterRule
      EventHubConsumerGroupsListResult = Azure::ARM::IotHub::Api_2017_01_19::Models::EventHubConsumerGroupsListResult
      RoutingEventHubProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingEventHubProperties
      EventHubConsumerGroupInfo = Azure::ARM::IotHub::Api_2017_01_19::Models::EventHubConsumerGroupInfo
      RoutingProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingProperties
      IotHubSkuDescriptionListResult = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuDescriptionListResult
      CloudToDeviceProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::CloudToDeviceProperties
      IotHubDescriptionListResult = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubDescriptionListResult
      RoutingServiceBusQueueEndpointProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingServiceBusQueueEndpointProperties
      OperationInputs = Azure::ARM::IotHub::Api_2017_01_19::Models::OperationInputs
      MessagingEndpointProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::MessagingEndpointProperties
      IotHubNameAvailabilityInfo = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubNameAvailabilityInfo
      RouteProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::RouteProperties
      ExportDevicesRequest = Azure::ARM::IotHub::Api_2017_01_19::Models::ExportDevicesRequest
      IotHubProperties = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubProperties
      ImportDevicesRequest = Azure::ARM::IotHub::Api_2017_01_19::Models::ImportDevicesRequest
      IotHubDescription = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubDescription
      AccessRights = Azure::ARM::IotHub::Api_2017_01_19::Models::AccessRights
      IpFilterActionType = Azure::ARM::IotHub::Api_2017_01_19::Models::IpFilterActionType
      RoutingSource = Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingSource
      OperationMonitoringLevel = Azure::ARM::IotHub::Api_2017_01_19::Models::OperationMonitoringLevel
      Capabilities = Azure::ARM::IotHub::Api_2017_01_19::Models::Capabilities
      IotHubSku = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSku
      IotHubSkuTier = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuTier
      JobType = Azure::ARM::IotHub::Api_2017_01_19::Models::JobType
      JobStatus = Azure::ARM::IotHub::Api_2017_01_19::Models::JobStatus
      IotHubScaleType = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubScaleType
      IotHubNameUnavailabilityReason = Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubNameUnavailabilityReason
    end

    #
    # IotHub
    #
    class IotHubClass
      attr_accessor :iot_hub_resource, :iot_hub_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.iot_hub_resource = Azure::ARM::IotHub::Api_2017_01_19::IotHubResource.new(client)
        self.iot_hub_client = Azure::ARM::IotHub::Api_2017_01_19::IotHubClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def shared_access_signature_authorization_rule
          Azure::ARM::IotHub::Api_2017_01_19::Models::SharedAccessSignatureAuthorizationRule
        end
        def shared_access_signature_authorization_rule_list_result
          Azure::ARM::IotHub::Api_2017_01_19::Models::SharedAccessSignatureAuthorizationRuleListResult
        end
        def event_hub_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::EventHubProperties
        end
        def error_details
          Azure::ARM::IotHub::Api_2017_01_19::Models::ErrorDetails
        end
        def routing_service_bus_topic_endpoint_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingServiceBusTopicEndpointProperties
        end
        def iot_hub_quota_metric_info
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubQuotaMetricInfo
        end
        def routing_endpoints
          Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingEndpoints
        end
        def iot_hub_quota_metric_info_list_result
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubQuotaMetricInfoListResult
        end
        def fallback_route_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::FallbackRouteProperties
        end
        def registry_statistics
          Azure::ARM::IotHub::Api_2017_01_19::Models::RegistryStatistics
        end
        def storage_endpoint_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::StorageEndpointProperties
        end
        def job_response
          Azure::ARM::IotHub::Api_2017_01_19::Models::JobResponse
        end
        def feedback_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::FeedbackProperties
        end
        def job_response_list_result
          Azure::ARM::IotHub::Api_2017_01_19::Models::JobResponseListResult
        end
        def operations_monitoring_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::OperationsMonitoringProperties
        end
        def iot_hub_capacity
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubCapacity
        end
        def iot_hub_sku_info
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuInfo
        end
        def iot_hub_sku_description
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuDescription
        end
        def ip_filter_rule
          Azure::ARM::IotHub::Api_2017_01_19::Models::IpFilterRule
        end
        def event_hub_consumer_groups_list_result
          Azure::ARM::IotHub::Api_2017_01_19::Models::EventHubConsumerGroupsListResult
        end
        def routing_event_hub_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingEventHubProperties
        end
        def event_hub_consumer_group_info
          Azure::ARM::IotHub::Api_2017_01_19::Models::EventHubConsumerGroupInfo
        end
        def routing_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingProperties
        end
        def iot_hub_sku_description_list_result
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuDescriptionListResult
        end
        def cloud_to_device_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::CloudToDeviceProperties
        end
        def iot_hub_description_list_result
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubDescriptionListResult
        end
        def routing_service_bus_queue_endpoint_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingServiceBusQueueEndpointProperties
        end
        def operation_inputs
          Azure::ARM::IotHub::Api_2017_01_19::Models::OperationInputs
        end
        def messaging_endpoint_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::MessagingEndpointProperties
        end
        def iot_hub_name_availability_info
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubNameAvailabilityInfo
        end
        def route_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::RouteProperties
        end
        def export_devices_request
          Azure::ARM::IotHub::Api_2017_01_19::Models::ExportDevicesRequest
        end
        def iot_hub_properties
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubProperties
        end
        def import_devices_request
          Azure::ARM::IotHub::Api_2017_01_19::Models::ImportDevicesRequest
        end
        def iot_hub_description
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubDescription
        end
        def access_rights
          Azure::ARM::IotHub::Api_2017_01_19::Models::AccessRights
        end
        def ip_filter_action_type
          Azure::ARM::IotHub::Api_2017_01_19::Models::IpFilterActionType
        end
        def routing_source
          Azure::ARM::IotHub::Api_2017_01_19::Models::RoutingSource
        end
        def operation_monitoring_level
          Azure::ARM::IotHub::Api_2017_01_19::Models::OperationMonitoringLevel
        end
        def capabilities
          Azure::ARM::IotHub::Api_2017_01_19::Models::Capabilities
        end
        def iot_hub_sku
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSku
        end
        def iot_hub_sku_tier
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubSkuTier
        end
        def job_type
          Azure::ARM::IotHub::Api_2017_01_19::Models::JobType
        end
        def job_status
          Azure::ARM::IotHub::Api_2017_01_19::Models::JobStatus
        end
        def iot_hub_scale_type
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubScaleType
        end
        def iot_hub_name_unavailability_reason
          Azure::ARM::IotHub::Api_2017_01_19::Models::IotHubNameUnavailabilityReason
        end
      end
    end
  end
end
