# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::Profiles::Latest
  module EventGrid::Mgmt
    EventSubscriptions = Azure::EventGrid::Mgmt::V2017_09_15_preview::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2017_09_15_preview::Operations
    Topics = Azure::EventGrid::Mgmt::V2017_09_15_preview::Topics
    TopicTypes = Azure::EventGrid::Mgmt::V2017_09_15_preview::TopicTypes

    module Models
      Operation = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Operation
      OperationsListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationsListResult
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFilter
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionDestination
      OperationInfo = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationInfo
      EventTypesListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventTypesListResult
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicSharedAccessKeys
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionUpdateParameters
      Resource = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Resource
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionsListResult
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFullUrl
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypesListResult
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicRegenerateKeyRequest
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
    # EventGrid
    #
    class EventGridClass
      attr_reader :event_subscriptions, :operations, :topics, :topic_types, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

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

      class ModelClasses
        def operation
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Operation
        end
        def operations_list_result
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationsListResult
        end
        def event_subscription_filter
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFilter
        end
        def event_subscription_destination
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionDestination
        end
        def operation_info
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::OperationInfo
        end
        def event_types_list_result
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventTypesListResult
        end
        def topic_shared_access_keys
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicSharedAccessKeys
        end
        def event_subscription_update_parameters
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionUpdateParameters
        end
        def resource
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::Resource
        end
        def event_subscriptions_list_result
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionsListResult
        end
        def event_subscription_full_url
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::EventSubscriptionFullUrl
        end
        def topic_types_list_result
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicTypesListResult
        end
        def topic_regenerate_key_request
          Azure::EventGrid::Mgmt::V2017_09_15_preview::Models::TopicRegenerateKeyRequest
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
end
