# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_event_grid'

module Azure::EventGrid::Profiles::Latest

  module Models
    MediaJobOutputCanceledEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputCanceledEventData
    MediaJobOutputCancelingEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputCancelingEventData
    MediaJobOutputErroredEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputErroredEventData
    MediaJobOutputFinishedEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputFinishedEventData
    MediaJobOutputProcessingEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProcessingEventData
    MediaJobOutputScheduledEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputScheduledEventData
    JobState = Azure::EventGrid::V2018_01_01::Models::JobState
    JobErrorCode = Azure::EventGrid::V2018_01_01::Models::JobErrorCode
    JobErrorCategory = Azure::EventGrid::V2018_01_01::Models::JobErrorCategory
    JobRetry = Azure::EventGrid::V2018_01_01::Models::JobRetry
    ContainerRegistryEventActor = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
    StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    ContainerRegistryEventSource = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
    EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    ContainerRegistryEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
    ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    ServiceBusActiveMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    ServiceBusDeadletterMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    MediaJobStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    ResourceActionFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    MediaJobErrorDetail = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
    EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    MediaJobError = Azure::EventGrid::V2018_01_01::Models::MediaJobError
    SubscriptionValidationResponse = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    MediaJobOutput = Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
    ContainerRegistryEventRequest = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    StorageBlobDeletedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    MediaLiveEventIngestHeartbeatEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
    ResourceWriteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    ResourceActionSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    DeviceConnectionStateEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    ResourceActionCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    MediaLiveEventIncomingVideoStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
    SubscriptionValidationEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    MediaLiveEventTrackDiscontinuityDetectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
    SubscriptionDeletedEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    MediaLiveEventIncomingStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
    DeviceConnectionStateEventInfo = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    MediaLiveEventIncomingStreamReceivedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
    ContainerRegistryEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
    MediaJobOutputStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputStateChangeEventData
    DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    MediaLiveEventEncoderDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
    DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    MediaLiveEventConnectionRejectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
    MediaLiveEventIncomingDataChunkDroppedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
    MediaLiveEventEncoderConnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
    IotHubDeviceCreatedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    IotHubDeviceDeletedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
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
    def job_state
      Azure::EventGrid::V2018_01_01::Models::JobState
    end
    def job_error_code
      Azure::EventGrid::V2018_01_01::Models::JobErrorCode
    end
    def job_error_category
      Azure::EventGrid::V2018_01_01::Models::JobErrorCategory
    end
    def job_retry
      Azure::EventGrid::V2018_01_01::Models::JobRetry
    end
    def container_registry_event_actor
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
    end
    def storage_blob_created_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    end
    def container_registry_event_source
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
    end
    def event_hub_capture_file_created_event_data
      Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    end
    def container_registry_event_data
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
    end
    def resource_write_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    end
    def service_bus_active_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    end
    def resource_delete_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    end
    def service_bus_deadletter_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    end
    def resource_delete_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    end
    def media_job_state_change_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    end
    def resource_action_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    end
    def media_job_error_detail
      Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
    end
    def event_grid_event
      Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    end
    def media_job_error
      Azure::EventGrid::V2018_01_01::Models::MediaJobError
    end
    def subscription_validation_response
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    end
    def media_job_output
      Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
    end
    def container_registry_event_request
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    end
    def storage_blob_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    end
    def media_live_event_ingest_heartbeat_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
    end
    def resource_write_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    end
    def device_twin_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    end
    def resource_write_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    end
    def device_twin_info_x509_thumbprint
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    end
    def resource_delete_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    end
    def device_life_cycle_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    end
    def resource_action_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    end
    def device_connection_state_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    end
    def resource_action_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    end
    def media_live_event_incoming_video_streams_out_of_sync_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
    end
    def subscription_validation_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    end
    def media_live_event_track_discontinuity_detected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
    end
    def subscription_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    end
    def device_twin_info_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    end
    def media_live_event_incoming_streams_out_of_sync_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
    end
    def device_connection_state_event_info
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    end
    def media_live_event_incoming_stream_received_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
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
    def media_live_event_encoder_disconnected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
    end
    def device_twin_metadata
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    end
    def media_live_event_connection_rejected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
    end
    def media_live_event_incoming_data_chunk_dropped_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
    end
    def media_live_event_encoder_connected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
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
  end
end
