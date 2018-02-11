# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_event_grid'

module Azure::EventGrid::Profiles::Latest

  module Models
    EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    StorageBlobDeletedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    ResourceWriteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
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
    def event_grid_event
      Azure::EventGrid::V2018_01_01::Models::EventGridEvent
    end
    def storage_blob_created_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
    end
    def storage_blob_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
    end
    def event_hub_capture_file_created_event_data
      Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
    end
    def resource_write_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
    end
    def device_life_cycle_event_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
    end
    def resource_delete_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
    end
    def device_twin_metadata
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
    end
    def resource_delete_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
    end
    def device_twin_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
    end
    def resource_write_cancel_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
    end
    def device_twin_info_properties
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
    end
    def resource_write_success_data
      Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
    end
    def device_twin_info_x509_thumbprint
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
    end
    def resource_delete_failure_data
      Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
    end
    def device_twin_info
      Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
    end
    def iot_hub_device_created_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
    end
    def iot_hub_device_deleted_event_data
      Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
    end
  end
end
