# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    EventSubscriptions = Azure::EventGrid::Mgmt::V2018_05_01_preview::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2018_05_01_preview::Operations
    Topics = Azure::EventGrid::Mgmt::V2018_05_01_preview::Topics
    TopicTypes = Azure::EventGrid::Mgmt::V2018_05_01_preview::TopicTypes

    module Models
      Operation = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Operation
      OperationsListResult = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::OperationsListResult
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
      Resource = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Resource
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
      TrackedResource = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TrackedResource
      Topic = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Topic
      EventType = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventType
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypeInfo
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventSubscriptionProvisioningState
      EventDeliverySchema = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::EventDeliverySchema
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicProvisioningState
      InputSchema = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::InputSchema
      ResourceRegionType = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TopicTypeProvisioningState
    end

    #
    # EventGridManagementClass
    #
    class EventGridManagementClass
      attr_reader :event_subscriptions, :operations, :topics, :topic_types, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::EventGrid::Mgmt::V2018_05_01_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @event_subscriptions = @client_0.event_subscriptions
        @operations = @client_0.operations
        @topics = @client_0.topics
        @topic_types = @client_0.topic_types

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/EventGrid/Mgmt'
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
      def operation
        Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Operation
      end
      def operations_list_result
        Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::OperationsListResult
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
      def resource
        Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Resource
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
      def tracked_resource
        Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::TrackedResource
      end
      def topic
        Azure::EventGrid::Mgmt::V2018_05_01_preview::Models::Topic
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
