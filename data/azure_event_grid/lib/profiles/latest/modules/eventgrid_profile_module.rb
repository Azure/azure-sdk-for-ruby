# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_event_grid'

module Azure::EventGrid::Profiles::Latest

  module Models
    IotHubDeviceConnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceConnectedEventData
    IotHubDeviceDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDisconnectedEventData
    ContainerRegistryImagePushedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
    ContainerRegistryImageDeletedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
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
    ServiceBusActiveMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    ServiceBusDeadletterMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    MediaJobStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    ResourceActionSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    MediaJobErrorDetail = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
    ResourceActionCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    MediaJobError = Azure::EventGrid::V2018_01_01::Models::MediaJobError
    SubscriptionValidationEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    MediaJobOutput = Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
    SubscriptionDeletedEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    MediaLiveEventEncoderConnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
    MediaLiveEventIncomingStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
    DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    MediaLiveEventIncomingStreamReceivedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
    DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    ResourceActionFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    DeviceConnectionStateEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    MediaLiveEventEncoderDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
    SubscriptionValidationResponse = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    ContainerRegistryEventRequest = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    MediaLiveEventIncomingVideoStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
    DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    DeviceConnectionStateEventInfo = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    MediaJobOutputProgressEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProgressEventData
    ContainerRegistryEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
    MediaJobOutputStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputStateChangeEventData
    DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    MediaLiveEventTrackDiscontinuityDetectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
    DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    MediaLiveEventIngestHeartbeatEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
    MediaLiveEventConnectionRejectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
    MediaLiveEventIncomingDataChunkDroppedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
    IotHubDeviceCreatedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    IotHubDeviceDeletedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
  end

  #
  # EventGridDataClass
  #
  class EventGridDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::EventGrid::V2018_01_01::EventGridClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/EventGrid'
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
    def service_bus_active_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    end
    def resource_write_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    end
    def service_bus_deadletter_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    end
    def resource_delete_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    end
    def media_job_state_change_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    end
    def resource_action_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    end
    def media_job_error_detail
      Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
    end
    def resource_action_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    end
    def media_job_error
      Azure::EventGrid::V2018_01_01::Models::MediaJobError
    end
    def subscription_validation_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    end
    def media_job_output
      Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
    end
    def subscription_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    end
    def resource_write_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    end
    def resource_delete_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    end
    def event_hub_capture_file_created_event_data
      Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    end
    def media_live_event_encoder_connected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
    end
    def media_live_event_incoming_streams_out_of_sync_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
    end
    def device_twin_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    end
    def media_live_event_incoming_stream_received_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
    end
    def device_twin_info_x509_thumbprint
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    end
    def resource_delete_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    end
    def device_life_cycle_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    end
    def resource_action_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    end
    def device_connection_state_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    end
    def event_grid_event
      Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    end
    def media_live_event_encoder_disconnected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
    end
    def subscription_validation_response
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    end
    def container_registry_event_request
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    end
    def storage_blob_created_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    end
    def media_live_event_incoming_video_streams_out_of_sync_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
    end
    def device_twin_info_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    end
    def device_connection_state_event_info
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    end
    def media_job_output_progress_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProgressEventData
    end
    def container_registry_event_target
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
    end
    def media_job_output_state_change_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaJobOutputStateChangeEventData
    end
    def device_twin_info
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    end
    def media_live_event_track_discontinuity_detected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
    end
    def device_twin_metadata
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    end
    def media_live_event_ingest_heartbeat_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
    end
    def media_live_event_connection_rejected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
    end
    def media_live_event_incoming_data_chunk_dropped_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
    end
    def iot_hub_device_created_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    end
    def iot_hub_device_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
    end
  end
end
