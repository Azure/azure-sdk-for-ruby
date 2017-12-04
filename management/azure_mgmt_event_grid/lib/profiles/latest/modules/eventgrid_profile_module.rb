# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    EventSubscriptions = Azure::EventGrid::Mgmt::V2017_09_15_preview::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2017_09_15_preview::Operations
    Topics = Azure::EventGrid::Mgmt::V2017_09_15_preview::Topics
    TopicTypes = Azure::EventGrid::Mgmt::V2017_09_15_preview::TopicTypes

    module Models
      OperationsListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationsListResult
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionDestination
      Operation = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Operation
      Resource = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Resource
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFilter
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicSharedAccessKeys
      EventTypesListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventTypesListResult
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicRegenerateKeyRequest
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFullUrl
      OperationInfo = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationInfo
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypesListResult
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionsListResult
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicUpdateParameters
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionUpdateParameters
      TopicsListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicsListResult
      WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventHubEventSubscriptionDestination
      EventSubscription = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscription
      TrackedResource = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TrackedResource
      Topic = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Topic
      EventType = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventType
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypeInfo
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionProvisioningState
      OperationOrigin = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationOrigin
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicProvisioningState
      ResourceRegionType = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypeProvisioningState
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

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::EventGrid::Mgmt::V2017_09_15_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @event_subscriptions = client_0.event_subscriptions
        @operations = client_0.operations
        @topics = client_0.topics
        @topic_types = client_0.topic_types

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def operations_list_result
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationsListResult
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionDestination
      end
      def operation
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Operation
      end
      def resource
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Resource
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFilter
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicSharedAccessKeys
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventTypesListResult
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicRegenerateKeyRequest
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFullUrl
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationInfo
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypesListResult
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionsListResult
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicUpdateParameters
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionUpdateParameters
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicsListResult
      end
      def web_hook_event_subscription_destination
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::WebHookEventSubscriptionDestination
      end
      def event_hub_event_subscription_destination
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventHubEventSubscriptionDestination
      end
      def event_subscription
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscription
      end
      def tracked_resource
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TrackedResource
      end
      def topic
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Topic
      end
      def event_type
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventType
      end
      def topic_type_info
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypeInfo
      end
      def event_subscription_provisioning_state
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionProvisioningState
      end
      def operation_origin
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationOrigin
      end
      def topic_provisioning_state
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicProvisioningState
      end
      def resource_region_type
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::ResourceRegionType
      end
      def topic_type_provisioning_state
        Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypeProvisioningState
      end
    end
  end
end
