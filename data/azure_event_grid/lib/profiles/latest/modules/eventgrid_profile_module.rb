# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_event_grid'

module Azure::EventGrid::Profiles::Latest

  module Models
    AppConfigurationKeyValueModifiedEventData = Azure::EventGrid::V2018_01_01::Models::AppConfigurationKeyValueModifiedEventData
    DeviceConnectionStateEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    MapsGeofenceEventProperties = Azure::EventGrid::V2018_01_01::Models::MapsGeofenceEventProperties
    MediaLiveEventIncomingStreamReceivedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
    MapsGeofenceGeometry = Azure::EventGrid::V2018_01_01::Models::MapsGeofenceGeometry
    IotHubDeviceCreatedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    IotHubDeviceDeletedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
    IotHubDeviceConnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceConnectedEventData
    IotHubDeviceDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDisconnectedEventData
    IotHubDeviceTelemetryEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceTelemetryEventData
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
    MapsGeofenceEnteredEventData = Azure::EventGrid::V2018_01_01::Models::MapsGeofenceEnteredEventData
    MapsGeofenceExitedEventData = Azure::EventGrid::V2018_01_01::Models::MapsGeofenceExitedEventData
    MapsGeofenceResultEventData = Azure::EventGrid::V2018_01_01::Models::MapsGeofenceResultEventData
    MediaJobState = Azure::EventGrid::V2018_01_01::Models::MediaJobState
    MediaJobErrorCode = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorCode
    MediaJobErrorCategory = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorCategory
    MediaJobRetry = Azure::EventGrid::V2018_01_01::Models::MediaJobRetry
    ContainerRegistryArtifactEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventTarget
    StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    ContainerRegistryArtifactEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventData
    EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    ServiceBusActiveMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    ServiceBusDeadletterMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    MediaJobStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    MediaJobErrorDetail = Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
    ResourceActionFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    MediaJobError = Azure::EventGrid::V2018_01_01::Models::MediaJobError
    EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    MediaJobOutput = Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
    SubscriptionValidationResponse = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    StorageBlobDeletedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    ContainerRegistryEventRequest = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    MediaLiveEventEncoderConnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
    ContainerRegistryEventActor = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
    MediaLiveEventEncoderDisconnectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
    ContainerRegistryEventSource = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
    DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    ContainerRegistryEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
    DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    MediaLiveEventTrackDiscontinuityDetectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
    DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    ResourceWriteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    DeviceConnectionStateEventInfo = Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    DeviceTelemetryEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTelemetryEventProperties
    ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    MediaLiveEventIncomingVideoStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
    ResourceActionSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    MediaLiveEventIngestHeartbeatEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
    ResourceActionCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    MediaLiveEventConnectionRejectedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
    SubscriptionValidationEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    SubscriptionDeletedEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    MediaLiveEventIncomingStreamsOutOfSyncEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
    MediaJobOutputProgressEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputProgressEventData
    ContainerRegistryEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
    MediaJobOutputStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobOutputStateChangeEventData
    DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    AppConfigurationKeyValueDeletedEventData = Azure::EventGrid::V2018_01_01::Models::AppConfigurationKeyValueDeletedEventData
    MediaLiveEventIncomingDataChunkDroppedEventData = Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
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
    def app_configuration_key_value_modified_event_data
      Azure::EventGrid::V2018_01_01::Models::AppConfigurationKeyValueModifiedEventData
    end
    def device_connection_state_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventProperties
    end
    def maps_geofence_event_properties
      Azure::EventGrid::V2018_01_01::Models::MapsGeofenceEventProperties
    end
    def media_live_event_incoming_stream_received_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamReceivedEventData
    end
    def maps_geofence_geometry
      Azure::EventGrid::V2018_01_01::Models::MapsGeofenceGeometry
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
    def iot_hub_device_telemetry_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceTelemetryEventData
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
    def maps_geofence_entered_event_data
      Azure::EventGrid::V2018_01_01::Models::MapsGeofenceEnteredEventData
    end
    def maps_geofence_exited_event_data
      Azure::EventGrid::V2018_01_01::Models::MapsGeofenceExitedEventData
    end
    def maps_geofence_result_event_data
      Azure::EventGrid::V2018_01_01::Models::MapsGeofenceResultEventData
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
    def container_registry_artifact_event_target
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventTarget
    end
    def storage_blob_created_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    end
    def container_registry_artifact_event_data
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryArtifactEventData
    end
    def event_hub_capture_file_created_event_data
      Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    end
    def service_bus_active_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
    end
    def resource_write_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    end
    def service_bus_deadletter_messages_available_with_no_listeners_event_data
      Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
    end
    def resource_delete_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    end
    def media_job_state_change_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
    end
    def resource_delete_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    end
    def media_job_error_detail
      Azure::EventGrid::V2018_01_01::Models::MediaJobErrorDetail
    end
    def resource_action_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionFailureData
    end
    def media_job_error
      Azure::EventGrid::V2018_01_01::Models::MediaJobError
    end
    def event_grid_event
      Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    end
    def media_job_output
      Azure::EventGrid::V2018_01_01::Models::MediaJobOutput
    end
    def subscription_validation_response
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
    end
    def storage_blob_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    end
    def container_registry_event_request
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
    end
    def media_live_event_encoder_connected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderConnectedEventData
    end
    def container_registry_event_actor
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
    end
    def media_live_event_encoder_disconnected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventEncoderDisconnectedEventData
    end
    def container_registry_event_source
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
    end
    def device_twin_metadata
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    end
    def container_registry_event_data
      Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
    end
    def device_twin_info_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    end
    def media_live_event_track_discontinuity_detected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventTrackDiscontinuityDetectedEventData
    end
    def device_twin_info
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    end
    def resource_write_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    end
    def device_connection_state_event_info
      Azure::EventGrid::V2018_01_01::Models::DeviceConnectionStateEventInfo
    end
    def resource_write_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    end
    def device_telemetry_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTelemetryEventProperties
    end
    def resource_delete_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    end
    def media_live_event_incoming_video_streams_out_of_sync_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingVideoStreamsOutOfSyncEventData
    end
    def resource_action_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionSuccessData
    end
    def media_live_event_ingest_heartbeat_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIngestHeartbeatEventData
    end
    def resource_action_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceActionCancelData
    end
    def media_live_event_connection_rejected_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventConnectionRejectedEventData
    end
    def subscription_validation_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
    end
    def device_twin_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    end
    def subscription_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
    end
    def device_life_cycle_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    end
    def media_live_event_incoming_streams_out_of_sync_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingStreamsOutOfSyncEventData
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
    def device_twin_info_x509_thumbprint
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    end
    def app_configuration_key_value_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::AppConfigurationKeyValueDeletedEventData
    end
    def media_live_event_incoming_data_chunk_dropped_event_data
      Azure::EventGrid::V2018_01_01::Models::MediaLiveEventIncomingDataChunkDroppedEventData
    end
  end
end
