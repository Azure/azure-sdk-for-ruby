# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'
require 'azure_event_grid'

module Azure::Profiles::Latest
  module EventGrid

    module Models
      MediaJobStateChangeEventData = Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
      ResourceWriteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
      ContainerRegistryEventTarget = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
      ResourceDeleteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
      ContainerRegistryEventRequest = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
      EventHubCaptureFileCreatedEventData = Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
      ContainerRegistryEventActor = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
      ServiceBusDeadletterMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
      ContainerRegistryEventSource = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
      ResourceDeleteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
      ContainerRegistryEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
      IotHubDeviceCreatedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
      IotHubDeviceDeletedEventData = Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
      ContainerRegistryImagePushedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
      ContainerRegistryImageDeletedEventData = Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
      JobState = Azure::EventGrid::V2018_01_01::Models::JobState
      DeviceTwinMetadata = Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
      DeviceTwinProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
      StorageBlobDeletedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
      DeviceTwinInfoProperties = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoProperties
      ResourceWriteSuccessData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteSuccessData
      DeviceTwinInfoX509Thumbprint = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfoX509Thumbprint
      ResourceWriteCancelData = Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
      DeviceTwinInfo = Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
      ResourceDeleteFailureData = Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
      DeviceLifeCycleEventProperties = Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
      EventGridEvent = Azure::EventGrid::V2018_01_01::Models::EventGridEvent
      SubscriptionValidationEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
      SubscriptionValidationResponse = Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
      SubscriptionDeletedEventData = Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
      ServiceBusActiveMessagesAvailableWithNoListenersEventData = Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
      StorageBlobCreatedEventData = Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
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
        def media_job_state_change_event_data
          Azure::EventGrid::V2018_01_01::Models::MediaJobStateChangeEventData
        end
        def resource_write_failure_data
          Azure::EventGrid::V2018_01_01::Models::ResourceWriteFailureData
        end
        def container_registry_event_target
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventTarget
        end
        def resource_delete_cancel_data
          Azure::EventGrid::V2018_01_01::Models::ResourceDeleteCancelData
        end
        def container_registry_event_request
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventRequest
        end
        def event_hub_capture_file_created_event_data
          Azure::EventGrid::V2018_01_01::Models::EventHubCaptureFileCreatedEventData
        end
        def container_registry_event_actor
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventActor
        end
        def service_bus_deadletter_messages_available_with_no_listeners_event_data
          Azure::EventGrid::V2018_01_01::Models::ServiceBusDeadletterMessagesAvailableWithNoListenersEventData
        end
        def container_registry_event_source
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventSource
        end
        def resource_delete_success_data
          Azure::EventGrid::V2018_01_01::Models::ResourceDeleteSuccessData
        end
        def container_registry_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryEventData
        end
        def iot_hub_device_created_event_data
          Azure::EventGrid::V2018_01_01::Models::IotHubDeviceCreatedEventData
        end
        def iot_hub_device_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::IotHubDeviceDeletedEventData
        end
        def container_registry_image_pushed_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImagePushedEventData
        end
        def container_registry_image_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::ContainerRegistryImageDeletedEventData
        end
        def job_state
          Azure::EventGrid::V2018_01_01::Models::JobState
        end
        def device_twin_metadata
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinMetadata
        end
        def device_twin_properties
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinProperties
        end
        def storage_blob_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::StorageBlobDeletedEventData
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
        def resource_write_cancel_data
          Azure::EventGrid::V2018_01_01::Models::ResourceWriteCancelData
        end
        def device_twin_info
          Azure::EventGrid::V2018_01_01::Models::DeviceTwinInfo
        end
        def resource_delete_failure_data
          Azure::EventGrid::V2018_01_01::Models::ResourceDeleteFailureData
        end
        def device_life_cycle_event_properties
          Azure::EventGrid::V2018_01_01::Models::DeviceLifeCycleEventProperties
        end
        def event_grid_event
          Azure::EventGrid::V2018_01_01::Models::EventGridEvent
        end
        def subscription_validation_event_data
          Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationEventData
        end
        def subscription_validation_response
          Azure::EventGrid::V2018_01_01::Models::SubscriptionValidationResponse
        end
        def subscription_deleted_event_data
          Azure::EventGrid::V2018_01_01::Models::SubscriptionDeletedEventData
        end
        def service_bus_active_messages_available_with_no_listeners_event_data
          Azure::EventGrid::V2018_01_01::Models::ServiceBusActiveMessagesAvailableWithNoListenersEventData
        end
        def storage_blob_created_event_data
          Azure::EventGrid::V2018_01_01::Models::StorageBlobCreatedEventData
        end
      end
    end
    module Mgmt
      TopicTypes = Azure::EventGrid::Mgmt::V2018_05_01_preview::TopicTypes
      Operations = Azure::EventGrid::Mgmt::V2018_05_01_preview::Operations
      EventSubscriptions = Azure::EventGrid::Mgmt::V2018_05_01_preview::EventSubscriptions
      Topics = Azure::EventGrid::Mgmt::V2018_05_01_preview::Topics

      module Models
        Resource = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Resource
        EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionFilter
        InputSchemaMapping = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::InputSchemaMapping
        DeadLetterDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::DeadLetterDestination
        JsonField = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::JsonField
        EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionsListResult
        OperationInfo = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::OperationInfo
        EventTypesListResult = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventTypesListResult
        EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionDestination
        TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicSharedAccessKeys
        RetryPolicy = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::RetryPolicy
        EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionFullUrl
        TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicRegenerateKeyRequest
        TopicsListResult = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicsListResult
        TopicTypesListResult = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypesListResult
        JsonFieldWithDefault = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::JsonFieldWithDefault
        EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionUpdateParameters
        TopicUpdateParameters = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicUpdateParameters
        StorageBlobDeadLetterDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::StorageBlobDeadLetterDestination
        WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::WebHookEventSubscriptionDestination
        EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventHubEventSubscriptionDestination
        StorageQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::StorageQueueEventSubscriptionDestination
        HybridConnectionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::HybridConnectionEventSubscriptionDestination
        EventSubscription = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscription
        JsonInputSchemaMapping = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::JsonInputSchemaMapping
        Topic = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Topic
        Operation = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Operation
        TrackedResource = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TrackedResource
        OperationsListResult = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::OperationsListResult
        EventType = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventType
        TopicTypeInfo = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypeInfo
        EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionProvisioningState
        EventDeliverySchema = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventDeliverySchema
        TopicProvisioningState = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicProvisioningState
        InputSchema = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::InputSchema
        ResourceRegionType = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::ResourceRegionType
        TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypeProvisioningState
      end

      class EventGridManagementClass
        attr_reader :topic_types, :operations, :event_subscriptions, :topics, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventGrid::Mgmt::V2018_05_01_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @topic_types = @client_0.topic_types
          @operations = @client_0.operations
          @event_subscriptions = @client_0.event_subscriptions
          @topics = @client_0.topics

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
          def resource
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Resource
          end
          def event_subscription_filter
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionFilter
          end
          def input_schema_mapping
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::InputSchemaMapping
          end
          def dead_letter_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::DeadLetterDestination
          end
          def json_field
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::JsonField
          end
          def event_subscriptions_list_result
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionsListResult
          end
          def operation_info
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::OperationInfo
          end
          def event_types_list_result
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventTypesListResult
          end
          def event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionDestination
          end
          def topic_shared_access_keys
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicSharedAccessKeys
          end
          def retry_policy
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::RetryPolicy
          end
          def event_subscription_full_url
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionFullUrl
          end
          def topic_regenerate_key_request
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicRegenerateKeyRequest
          end
          def topics_list_result
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicsListResult
          end
          def topic_types_list_result
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypesListResult
          end
          def json_field_with_default
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::JsonFieldWithDefault
          end
          def event_subscription_update_parameters
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionUpdateParameters
          end
          def topic_update_parameters
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicUpdateParameters
          end
          def storage_blob_dead_letter_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::StorageBlobDeadLetterDestination
          end
          def web_hook_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::WebHookEventSubscriptionDestination
          end
          def event_hub_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventHubEventSubscriptionDestination
          end
          def storage_queue_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::StorageQueueEventSubscriptionDestination
          end
          def hybrid_connection_event_subscription_destination
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::HybridConnectionEventSubscriptionDestination
          end
          def event_subscription
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscription
          end
          def json_input_schema_mapping
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::JsonInputSchemaMapping
          end
          def topic
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Topic
          end
          def operation
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Operation
          end
          def tracked_resource
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TrackedResource
          end
          def operations_list_result
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::OperationsListResult
          end
          def event_type
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventType
          end
          def topic_type_info
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypeInfo
          end
          def event_subscription_provisioning_state
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionProvisioningState
          end
          def event_delivery_schema
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventDeliverySchema
          end
          def topic_provisioning_state
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicProvisioningState
          end
          def input_schema
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::InputSchema
          end
          def resource_region_type
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::ResourceRegionType
          end
          def topic_type_provisioning_state
            Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypeProvisioningState
          end
        end
      end
    end
  end
end
