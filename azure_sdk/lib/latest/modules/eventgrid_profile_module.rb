# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'
require 'azure_event_grid'

module Azure::Profiles::Latest
  module EventGrid

    module Models
      ServiceBusActiveMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
      ResourceActionSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
      ServiceBusDeadletterMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
      ResourceActionCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
      MediaJobStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
      SubscriptionValidationEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
      MediaJobErrorDetail = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
      SubscriptionDeletedEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
      MediaJobError = Azure::EventGrid::V2018_01_01::Models::MediaJobError
      ContainerRegistryEventRequest = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
      StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
      MediaLiveEventTrackDiscontinuityDetectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
      EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
      DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
      ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
      DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
      ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
      DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
      ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
      DeviceConnectionStateEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
      ResourceActionFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
      MediaLiveEventIncomingDataChunkDroppedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
      EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
      MediaLiveEventIncomingStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
      SubscriptionValidationResponse = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
      DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
      MediaLiveEventEncoderConnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
      DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
      MediaLiveEventIncomingStreamReceivedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
      MediaLiveEventIngestHeartbeatEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
      MediaJobOutput = Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
      ContainerRegistryEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
      MediaLiveEventEncoderDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
      DeviceConnectionStateEventInfo = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
      MediaJobOutputProgressEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProgressEventData
      DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
      MediaJobOutputStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputStateChangeEventData
      MediaLiveEventIncomingVideoStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
      MediaLiveEventConnectionRejectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
      IotHubDeviceCreatedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
      IotHubDeviceDeletedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
      IotHubDeviceConnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceConnectedEventData
      IotHubDeviceDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDisconnectedEventData
      ContainerRegistryImagePushedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
      ContainerRegistryImageDeletedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
      ContainerRegistryChartPushedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryChartPushedEventData
      ContainerRegistryChartDeletedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryChartDeletedEventData
      MediaJobOutputAsset = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputAsset
      MediaJobScheduledEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobScheduledEventData
      MediaJobProcessingEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobProcessingEventData
      MediaJobCancelingEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobCancelingEventData
      MediaJobFinishedEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobFinishedEventData
      MediaJobCanceledEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobCanceledEventData
      MediaJobErroredEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobErroredEventData
      MediaJobOutputCanceledEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputCanceledEventData
      MediaJobOutputCancelingEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputCancelingEventData
      MediaJobOutputErroredEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputErroredEventData
      MediaJobOutputFinishedEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputFinishedEventData
      MediaJobOutputProcessingEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProcessingEventData
      MediaJobOutputScheduledEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputScheduledEventData
      MediaJobState = Azure::EventGrid::V2018_01_01::Models::MediaJobState
      MediaJobErrorCode = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorCode
      MediaJobErrorCategory = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorCategory
      MediaJobRetry = Azure::EventGrid::V2018_01_01::Models::MediaJobRetry
      ContainerRegistryEventActor = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
      ContainerRegistryEventSource = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
      StorageBlobDeletedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
      ContainerRegistryEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
      ResourceWriteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
      ContainerRegistryArtifactEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventTarget
      ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
      ContainerRegistryArtifactEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventData
      ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    end

    class EventGridDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::EventGrid::V2018_01_01::EventGridClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EventGrid"
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
        def service_bus_active_messages_available_with_no_listeners_event_data
          Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
        end
        def resource_action_success_data
          Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
        end
        def service_bus_deadletter_messages_available_with_no_listeners_event_data
          Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
        end
        def resource_action_cancel_data
          Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
        end
        def media_job_state_change_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
        end
        def subscription_validation_event_data
          Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
        end
        def media_job_error_detail
          Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
        end
        def subscription_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
        end
        def media_job_error
          Azure::EventGrid::V2018_01_01::Models::MediaJobError
        end
        def container_registry_event_request
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
        end
        def storage_blob_created_event_data
          Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
        end
        def media_live_event_track_discontinuity_detected_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
        end
        def event_hub_capture_file_created_event_data
          Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
        end
        def device_twin_properties
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
        end
        def resource_write_failure_data
          Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
        end
        def device_twin_info_x509_thumbprint
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
        end
        def resource_delete_success_data
          Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
        end
        def device_life_cycle_event_properties
          Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
        end
        def resource_delete_cancel_data
          Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
        end
        def device_connection_state_event_properties
          Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
        end
        def resource_action_failure_data
          Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
        end
        def media_live_event_incoming_data_chunk_dropped_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
        end
        def event_grid_event
          Azure::EventGrid::V2018_01_01::Models::EventGridEvent
        end
        def media_live_event_incoming_streams_out_of_sync_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
        end
        def subscription_validation_response
          Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
        end
        def device_twin_metadata
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
        end
        def media_live_event_encoder_connected_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
        end
        def device_twin_info
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
        end
        def media_live_event_incoming_stream_received_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
        end
        def media_live_event_ingest_heartbeat_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
        end
        def media_job_output
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
        end
        def container_registry_event_target
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
        end
        def media_live_event_encoder_disconnected_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
        end
        def device_connection_state_event_info
          Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
        end
        def media_job_output_progress_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProgressEventData
        end
        def device_twin_info_properties
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
        end
        def media_job_output_state_change_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputStateChangeEventData
        end
        def media_live_event_incoming_video_streams_out_of_sync_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
        end
        def media_live_event_connection_rejected_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
        end
        def iot_hub_device_created_event_data
          Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
        end
        def iot_hub_device_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
        end
        def iot_hub_device_connected_event_data
          Azure::EventGrid::V2018_01_01::Models::IotHubDeviceConnectedEventData
        end
        def iot_hub_device_disconnected_event_data
          Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDisconnectedEventData
        end
        def container_registry_image_pushed_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
        end
        def container_registry_image_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
        end
        def container_registry_chart_pushed_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryChartPushedEventData
        end
        def container_registry_chart_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryChartDeletedEventData
        end
        def media_job_output_asset
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputAsset
        end
        def media_job_scheduled_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobScheduledEventData
        end
        def media_job_processing_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobProcessingEventData
        end
        def media_job_canceling_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobCancelingEventData
        end
        def media_job_finished_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobFinishedEventData
        end
        def media_job_canceled_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobCanceledEventData
        end
        def media_job_errored_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobErroredEventData
        end
        def media_job_output_canceled_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputCanceledEventData
        end
        def media_job_output_canceling_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputCancelingEventData
        end
        def media_job_output_errored_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputErroredEventData
        end
        def media_job_output_finished_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputFinishedEventData
        end
        def media_job_output_processing_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProcessingEventData
        end
        def media_job_output_scheduled_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobOutputScheduledEventData
        end
        def media_job_state
          Azure::EventGrid::V2018_01_01::Models::MediaJobState
        end
        def media_job_error_code
          Azure::EventGrid::V2018_01_01::Models::MediaJobErrorCode
        end
        def media_job_error_category
          Azure::EventGrid::V2018_01_01::Models::MediaJobErrorCategory
        end
        def media_job_retry
          Azure::EventGrid::V2018_01_01::Models::MediaJobRetry
        end
        def container_registry_event_actor
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
        end
        def container_registry_event_source
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
        end
        def storage_blob_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
        end
        def container_registry_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
        end
        def resource_write_success_data
          Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
        end
        def container_registry_artifact_event_target
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventTarget
        end
        def resource_write_cancel_data
          Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
        end
        def container_registry_artifact_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventData
        end
        def resource_delete_failure_data
          Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
        end
      end
    end
    module Mgmt
      Operations = Azure::EventGrid::Mgmt::V2018_09_15_preview::Operations
      Domains = Azure::EventGrid::Mgmt::V2018_09_15_preview::Domains
      DomainTopics = Azure::EventGrid::Mgmt::V2018_09_15_preview::DomainTopics
      EventSubscriptions = Azure::EventGrid::Mgmt::V2018_09_15_preview::EventSubscriptions
      Topics = Azure::EventGrid::Mgmt::V2018_09_15_preview::Topics
      TopicTypes = Azure::EventGrid::Mgmt::V2018_09_15_preview::TopicTypes

      module Models
        TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicSharedAccessKeys
        InputSchemaMapping = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::InputSchemaMapping
        TopicsListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicsListResult
        DomainUpdateParameters = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainUpdateParameters
        EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionFullUrl
        DomainSharedAccessKeys = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainSharedAccessKeys
        EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionUpdateParameters
        TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicRegenerateKeyRequest
        DomainTopicsListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainTopicsListResult
        TopicUpdateParameters = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicUpdateParameters
        AdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::AdvancedFilter
        JsonFieldWithDefault = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::JsonFieldWithDefault
        RetryPolicy = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::RetryPolicy
        JsonField = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::JsonField
        DomainsListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainsListResult
        EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionDestination
        OperationInfo = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::OperationInfo
        OperationsListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::OperationsListResult
        DeadLetterDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DeadLetterDestination
        DomainRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainRegenerateKeyRequest
        EventTypesListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventTypesListResult
        EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionsListResult
        EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionFilter
        TopicTypesListResult = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicTypesListResult
        Domain = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Domain
        DomainTopic = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainTopic
        NumberInAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberInAdvancedFilter
        StorageBlobDeadLetterDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StorageBlobDeadLetterDestination
        NumberNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberNotInAdvancedFilter
        NumberLessThanAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberLessThanAdvancedFilter
        NumberGreaterThanAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberGreaterThanAdvancedFilter
        NumberLessThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberLessThanOrEqualsAdvancedFilter
        NumberGreaterThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberGreaterThanOrEqualsAdvancedFilter
        BoolEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::BoolEqualsAdvancedFilter
        StringInAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringInAdvancedFilter
        StringNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringNotInAdvancedFilter
        StringBeginsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringBeginsWithAdvancedFilter
        StringEndsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringEndsWithAdvancedFilter
        StringContainsAdvancedFilter = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringContainsAdvancedFilter
        WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::WebHookEventSubscriptionDestination
        EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventHubEventSubscriptionDestination
        StorageQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StorageQueueEventSubscriptionDestination
        HybridConnectionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::HybridConnectionEventSubscriptionDestination
        EventSubscription = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscription
        JsonInputSchemaMapping = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::JsonInputSchemaMapping
        Topic = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Topic
        EventType = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventType
        TopicTypeInfo = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicTypeInfo
        DomainProvisioningState = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainProvisioningState
        InputSchema = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::InputSchema
        EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionProvisioningState
        TrackedResource = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TrackedResource
        TopicProvisioningState = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicProvisioningState
        EventDeliverySchema = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventDeliverySchema
        TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicTypeProvisioningState
        ResourceRegionType = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::ResourceRegionType
        Resource = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Resource
        Operation = Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Operation
      end

      class EventGridManagementClass
        attr_reader :operations, :domains, :domain_topics, :event_subscriptions, :topics, :topic_types, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventGrid::Mgmt::V2018_09_15_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @domains = @client_0.domains
          @domain_topics = @client_0.domain_topics
          @event_subscriptions = @client_0.event_subscriptions
          @topics = @client_0.topics
          @topic_types = @client_0.topic_types

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EventGrid/Mgmt"
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
          def topic_shared_access_keys
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicSharedAccessKeys
          end
          def input_schema_mapping
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::InputSchemaMapping
          end
          def topics_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicsListResult
          end
          def domain_update_parameters
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainUpdateParameters
          end
          def event_subscription_full_url
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionFullUrl
          end
          def domain_shared_access_keys
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainSharedAccessKeys
          end
          def event_subscription_update_parameters
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionUpdateParameters
          end
          def topic_regenerate_key_request
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicRegenerateKeyRequest
          end
          def domain_topics_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainTopicsListResult
          end
          def topic_update_parameters
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicUpdateParameters
          end
          def advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::AdvancedFilter
          end
          def json_field_with_default
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::JsonFieldWithDefault
          end
          def retry_policy
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::RetryPolicy
          end
          def json_field
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::JsonField
          end
          def domains_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainsListResult
          end
          def event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionDestination
          end
          def operation_info
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::OperationInfo
          end
          def operations_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::OperationsListResult
          end
          def dead_letter_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DeadLetterDestination
          end
          def domain_regenerate_key_request
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainRegenerateKeyRequest
          end
          def event_types_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventTypesListResult
          end
          def event_subscriptions_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionsListResult
          end
          def event_subscription_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionFilter
          end
          def topic_types_list_result
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicTypesListResult
          end
          def domain
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Domain
          end
          def domain_topic
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainTopic
          end
          def number_in_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberInAdvancedFilter
          end
          def storage_blob_dead_letter_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StorageBlobDeadLetterDestination
          end
          def number_not_in_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberNotInAdvancedFilter
          end
          def number_less_than_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberLessThanAdvancedFilter
          end
          def number_greater_than_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberGreaterThanAdvancedFilter
          end
          def number_less_than_or_equals_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberLessThanOrEqualsAdvancedFilter
          end
          def number_greater_than_or_equals_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::NumberGreaterThanOrEqualsAdvancedFilter
          end
          def bool_equals_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::BoolEqualsAdvancedFilter
          end
          def string_in_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringInAdvancedFilter
          end
          def string_not_in_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringNotInAdvancedFilter
          end
          def string_begins_with_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringBeginsWithAdvancedFilter
          end
          def string_ends_with_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringEndsWithAdvancedFilter
          end
          def string_contains_advanced_filter
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StringContainsAdvancedFilter
          end
          def web_hook_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::WebHookEventSubscriptionDestination
          end
          def event_hub_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventHubEventSubscriptionDestination
          end
          def storage_queue_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::StorageQueueEventSubscriptionDestination
          end
          def hybrid_connection_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::HybridConnectionEventSubscriptionDestination
          end
          def event_subscription
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscription
          end
          def json_input_schema_mapping
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::JsonInputSchemaMapping
          end
          def topic
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Topic
          end
          def event_type
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventType
          end
          def topic_type_info
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicTypeInfo
          end
          def domain_provisioning_state
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::DomainProvisioningState
          end
          def input_schema
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::InputSchema
          end
          def event_subscription_provisioning_state
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventSubscriptionProvisioningState
          end
          def tracked_resource
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TrackedResource
          end
          def topic_provisioning_state
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicProvisioningState
          end
          def event_delivery_schema
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::EventDeliverySchema
          end
          def topic_type_provisioning_state
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::TopicTypeProvisioningState
          end
          def resource_region_type
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::ResourceRegionType
          end
          def resource
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Resource
          end
          def operation
            Azure::EventGrid::Mgmt::V2018_09_15_preview::Models::Operation
          end
        end
      end
    end
  end
end
