# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::IotHub::Profiles::V2017_07_01::Mgmt
    Operations = Azure::ARM::IotHub::Api_2017_07_01::Operations
    IotHubResource = Azure::ARM::IotHub::Api_2017_07_01::IotHubResource
    Certificates = Azure::ARM::IotHub::Api_2017_07_01::Certificates

    module Models
      IotHubProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubProperties
      IotHubSkuInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuInfo
      CertificateBodyDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateBodyDescription
      CertificateProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateProperties
      CertificateListDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateListDescription
      Resource = Azure::ARM::IotHub::Api_2017_07_01::Models::Resource
      CertificateWithNonceDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateWithNonceDescription
      SharedAccessSignatureAuthorizationRuleListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRuleListResult
      IpFilterRule = Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterRule
      OperationDisplay = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationDisplay
      RoutingServiceBusQueueEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusQueueEndpointProperties
      Operation = Azure::ARM::IotHub::Api_2017_07_01::Models::Operation
      RoutingEventHubProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEventHubProperties
      OperationListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationListResult
      RoutingEndpoints = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEndpoints
      ErrorDetails = Azure::ARM::IotHub::Api_2017_07_01::Models::ErrorDetails
      FallbackRouteProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::FallbackRouteProperties
      IotHubQuotaMetricInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfo
      StorageEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::StorageEndpointProperties
      IotHubQuotaMetricInfoListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfoListResult
      FeedbackProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::FeedbackProperties
      RegistryStatistics = Azure::ARM::IotHub::Api_2017_07_01::Models::RegistryStatistics
      OperationsMonitoringProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationsMonitoringProperties
      JobResponse = Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponse
      CertificateDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateDescription
      JobResponseListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponseListResult
      SharedAccessSignatureAuthorizationRule = Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRule
      IotHubCapacity = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubCapacity
      RoutingServiceBusTopicEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusTopicEndpointProperties
      IotHubSkuDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescription
      RouteProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RouteProperties
      EventHubConsumerGroupsListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupsListResult
      MessagingEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::MessagingEndpointProperties
      EventHubConsumerGroupInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupInfo
      CertificateVerificationDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateVerificationDescription
      IotHubSkuDescriptionListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescriptionListResult
      EventHubProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubProperties
      IotHubDescriptionListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescriptionListResult
      RoutingProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingProperties
      OperationInputs = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationInputs
      CertificatePropertiesWithNonce = Azure::ARM::IotHub::Api_2017_07_01::Models::CertificatePropertiesWithNonce
      IotHubNameAvailabilityInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameAvailabilityInfo
      CloudToDeviceProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::CloudToDeviceProperties
      ExportDevicesRequest = Azure::ARM::IotHub::Api_2017_07_01::Models::ExportDevicesRequest
      RoutingStorageContainerProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingStorageContainerProperties
      ImportDevicesRequest = Azure::ARM::IotHub::Api_2017_07_01::Models::ImportDevicesRequest
      IotHubDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescription
      AccessRights = Azure::ARM::IotHub::Api_2017_07_01::Models::AccessRights
      IpFilterActionType = Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterActionType
      RoutingSource = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingSource
      OperationMonitoringLevel = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationMonitoringLevel
      Capabilities = Azure::ARM::IotHub::Api_2017_07_01::Models::Capabilities
      IotHubSku = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSku
      IotHubSkuTier = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuTier
      JobType = Azure::ARM::IotHub::Api_2017_07_01::Models::JobType
      JobStatus = Azure::ARM::IotHub::Api_2017_07_01::Models::JobStatus
      IotHubScaleType = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubScaleType
      IotHubNameUnavailabilityReason = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameUnavailabilityReason
    end

    #
    # IotHub
    #
    class IotHubClass
      attr_reader :operations, :iot_hub_resource, :certificates, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::IotHub::Api_2017_07_01::IotHubClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @iot_hub_resource = client_0.iot_hub_resource
        @certificates = client_0.certificates

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-07-01')
        case version
          when '2017-07-01'
            client = Azure::ARM::IotHub::Api_2017_07_01::IotHubClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def iot_hub_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubProperties
        end
        def iot_hub_sku_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuInfo
        end
        def certificate_body_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateBodyDescription
        end
        def certificate_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateProperties
        end
        def certificate_list_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateListDescription
        end
        def resource
          Azure::ARM::IotHub::Api_2017_07_01::Models::Resource
        end
        def certificate_with_nonce_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateWithNonceDescription
        end
        def shared_access_signature_authorization_rule_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRuleListResult
        end
        def ip_filter_rule
          Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterRule
        end
        def operation_display
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationDisplay
        end
        def routing_service_bus_queue_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusQueueEndpointProperties
        end
        def operation
          Azure::ARM::IotHub::Api_2017_07_01::Models::Operation
        end
        def routing_event_hub_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEventHubProperties
        end
        def operation_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationListResult
        end
        def routing_endpoints
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEndpoints
        end
        def error_details
          Azure::ARM::IotHub::Api_2017_07_01::Models::ErrorDetails
        end
        def fallback_route_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::FallbackRouteProperties
        end
        def iot_hub_quota_metric_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfo
        end
        def storage_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::StorageEndpointProperties
        end
        def iot_hub_quota_metric_info_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfoListResult
        end
        def feedback_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::FeedbackProperties
        end
        def registry_statistics
          Azure::ARM::IotHub::Api_2017_07_01::Models::RegistryStatistics
        end
        def operations_monitoring_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationsMonitoringProperties
        end
        def job_response
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponse
        end
        def certificate_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateDescription
        end
        def job_response_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponseListResult
        end
        def shared_access_signature_authorization_rule
          Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRule
        end
        def iot_hub_capacity
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubCapacity
        end
        def routing_service_bus_topic_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusTopicEndpointProperties
        end
        def iot_hub_sku_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescription
        end
        def route_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RouteProperties
        end
        def event_hub_consumer_groups_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupsListResult
        end
        def messaging_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::MessagingEndpointProperties
        end
        def event_hub_consumer_group_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupInfo
        end
        def certificate_verification_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificateVerificationDescription
        end
        def iot_hub_sku_description_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescriptionListResult
        end
        def event_hub_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubProperties
        end
        def iot_hub_description_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescriptionListResult
        end
        def routing_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingProperties
        end
        def operation_inputs
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationInputs
        end
        def certificate_properties_with_nonce
          Azure::ARM::IotHub::Api_2017_07_01::Models::CertificatePropertiesWithNonce
        end
        def iot_hub_name_availability_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameAvailabilityInfo
        end
        def cloud_to_device_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::CloudToDeviceProperties
        end
        def export_devices_request
          Azure::ARM::IotHub::Api_2017_07_01::Models::ExportDevicesRequest
        end
        def routing_storage_container_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingStorageContainerProperties
        end
        def import_devices_request
          Azure::ARM::IotHub::Api_2017_07_01::Models::ImportDevicesRequest
        end
        def iot_hub_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescription
        end
        def access_rights
          Azure::ARM::IotHub::Api_2017_07_01::Models::AccessRights
        end
        def ip_filter_action_type
          Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterActionType
        end
        def routing_source
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingSource
        end
        def operation_monitoring_level
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationMonitoringLevel
        end
        def capabilities
          Azure::ARM::IotHub::Api_2017_07_01::Models::Capabilities
        end
        def iot_hub_sku
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSku
        end
        def iot_hub_sku_tier
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuTier
        end
        def job_type
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobType
        end
        def job_status
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobStatus
        end
        def iot_hub_scale_type
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubScaleType
        end
        def iot_hub_name_unavailability_reason
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameUnavailabilityReason
        end
      end
    end
end
