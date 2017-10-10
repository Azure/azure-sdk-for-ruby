# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::IotHub::Management::Profile_2016_02_03
    IotHubResource = Azure::ARM::IotHub::Api_2016_02_03::IotHubResource

    module Models
      IotHubQuotaMetricInfo = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubQuotaMetricInfo
      IotHubQuotaMetricInfoListResult = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubQuotaMetricInfoListResult
      IpFilterRule = Azure::ARM::IotHub::Api_2016_02_03::Models::IpFilterRule
      RegistryStatistics = Azure::ARM::IotHub::Api_2016_02_03::Models::RegistryStatistics
      StorageEndpointProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::StorageEndpointProperties
      JobResponse = Azure::ARM::IotHub::Api_2016_02_03::Models::JobResponse
      FeedbackProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::FeedbackProperties
      JobResponseListResult = Azure::ARM::IotHub::Api_2016_02_03::Models::JobResponseListResult
      OperationsMonitoringProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::OperationsMonitoringProperties
      IotHubCapacity = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubCapacity
      IotHubSkuInfo = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuInfo
      IotHubSkuDescription = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuDescription
      EventHubConsumerGroupsListResult = Azure::ARM::IotHub::Api_2016_02_03::Models::EventHubConsumerGroupsListResult
      ErrorDetails = Azure::ARM::IotHub::Api_2016_02_03::Models::ErrorDetails
      EventHubConsumerGroupInfo = Azure::ARM::IotHub::Api_2016_02_03::Models::EventHubConsumerGroupInfo
      EventHubProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::EventHubProperties
      IotHubSkuDescriptionListResult = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuDescriptionListResult
      CloudToDeviceProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::CloudToDeviceProperties
      IotHubDescriptionListResult = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubDescriptionListResult
      SharedAccessSignatureAuthorizationRuleListResult = Azure::ARM::IotHub::Api_2016_02_03::Models::SharedAccessSignatureAuthorizationRuleListResult
      OperationInputs = Azure::ARM::IotHub::Api_2016_02_03::Models::OperationInputs
      MessagingEndpointProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::MessagingEndpointProperties
      IotHubNameAvailabilityInfo = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubNameAvailabilityInfo
      SharedAccessSignatureAuthorizationRule = Azure::ARM::IotHub::Api_2016_02_03::Models::SharedAccessSignatureAuthorizationRule
      ExportDevicesRequest = Azure::ARM::IotHub::Api_2016_02_03::Models::ExportDevicesRequest
      IotHubProperties = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubProperties
      ImportDevicesRequest = Azure::ARM::IotHub::Api_2016_02_03::Models::ImportDevicesRequest
      IotHubDescription = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubDescription
      AccessRights = Azure::ARM::IotHub::Api_2016_02_03::Models::AccessRights
      IpFilterActionType = Azure::ARM::IotHub::Api_2016_02_03::Models::IpFilterActionType
      OperationMonitoringLevel = Azure::ARM::IotHub::Api_2016_02_03::Models::OperationMonitoringLevel
      Capabilities = Azure::ARM::IotHub::Api_2016_02_03::Models::Capabilities
      IotHubSku = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSku
      IotHubSkuTier = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuTier
      JobType = Azure::ARM::IotHub::Api_2016_02_03::Models::JobType
      JobStatus = Azure::ARM::IotHub::Api_2016_02_03::Models::JobStatus
      IotHubScaleType = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubScaleType
      IotHubNameUnavailabilityReason = Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubNameUnavailabilityReason
    end

    #
    # IotHub
    #
    class IotHubClass
      attr_accessor :iot_hub_resource, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::IotHub::Api_2016_02_03::IotHubClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.iot_hub_resource = Azure::ARM::IotHub::Api_2016_02_03::IotHubResource.new(client)
        self.model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::IotHub::Api_2016_02_03::IotHubClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def iot_hub_quota_metric_info
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubQuotaMetricInfo
        end
        def iot_hub_quota_metric_info_list_result
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubQuotaMetricInfoListResult
        end
        def ip_filter_rule
          Azure::ARM::IotHub::Api_2016_02_03::Models::IpFilterRule
        end
        def registry_statistics
          Azure::ARM::IotHub::Api_2016_02_03::Models::RegistryStatistics
        end
        def storage_endpoint_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::StorageEndpointProperties
        end
        def job_response
          Azure::ARM::IotHub::Api_2016_02_03::Models::JobResponse
        end
        def feedback_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::FeedbackProperties
        end
        def job_response_list_result
          Azure::ARM::IotHub::Api_2016_02_03::Models::JobResponseListResult
        end
        def operations_monitoring_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::OperationsMonitoringProperties
        end
        def iot_hub_capacity
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubCapacity
        end
        def iot_hub_sku_info
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuInfo
        end
        def iot_hub_sku_description
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuDescription
        end
        def event_hub_consumer_groups_list_result
          Azure::ARM::IotHub::Api_2016_02_03::Models::EventHubConsumerGroupsListResult
        end
        def error_details
          Azure::ARM::IotHub::Api_2016_02_03::Models::ErrorDetails
        end
        def event_hub_consumer_group_info
          Azure::ARM::IotHub::Api_2016_02_03::Models::EventHubConsumerGroupInfo
        end
        def event_hub_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::EventHubProperties
        end
        def iot_hub_sku_description_list_result
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuDescriptionListResult
        end
        def cloud_to_device_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::CloudToDeviceProperties
        end
        def iot_hub_description_list_result
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubDescriptionListResult
        end
        def shared_access_signature_authorization_rule_list_result
          Azure::ARM::IotHub::Api_2016_02_03::Models::SharedAccessSignatureAuthorizationRuleListResult
        end
        def operation_inputs
          Azure::ARM::IotHub::Api_2016_02_03::Models::OperationInputs
        end
        def messaging_endpoint_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::MessagingEndpointProperties
        end
        def iot_hub_name_availability_info
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubNameAvailabilityInfo
        end
        def shared_access_signature_authorization_rule
          Azure::ARM::IotHub::Api_2016_02_03::Models::SharedAccessSignatureAuthorizationRule
        end
        def export_devices_request
          Azure::ARM::IotHub::Api_2016_02_03::Models::ExportDevicesRequest
        end
        def iot_hub_properties
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubProperties
        end
        def import_devices_request
          Azure::ARM::IotHub::Api_2016_02_03::Models::ImportDevicesRequest
        end
        def iot_hub_description
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubDescription
        end
        def access_rights
          Azure::ARM::IotHub::Api_2016_02_03::Models::AccessRights
        end
        def ip_filter_action_type
          Azure::ARM::IotHub::Api_2016_02_03::Models::IpFilterActionType
        end
        def operation_monitoring_level
          Azure::ARM::IotHub::Api_2016_02_03::Models::OperationMonitoringLevel
        end
        def capabilities
          Azure::ARM::IotHub::Api_2016_02_03::Models::Capabilities
        end
        def iot_hub_sku
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSku
        end
        def iot_hub_sku_tier
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubSkuTier
        end
        def job_type
          Azure::ARM::IotHub::Api_2016_02_03::Models::JobType
        end
        def job_status
          Azure::ARM::IotHub::Api_2016_02_03::Models::JobStatus
        end
        def iot_hub_scale_type
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubScaleType
        end
        def iot_hub_name_unavailability_reason
          Azure::ARM::IotHub::Api_2016_02_03::Models::IotHubNameUnavailabilityReason
        end
      end
    end
end
