# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    EventSubscriptions = Azure::EventGrid::Mgmt::V2018_01_01::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2018_01_01::Operations
    Topics = Azure::EventGrid::Mgmt::V2018_01_01::Topics
    TopicTypes = Azure::EventGrid::Mgmt::V2018_01_01::TopicTypes

    module Models
      OperationsListResult = Azure::EventGrid::Mgmt::V2018_01_01::Models::OperationsListResult
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionDestination
      Operation = Azure::EventGrid::Mgmt::V2018_01_01::Models::Operation
      Resource = Azure::EventGrid::Mgmt::V2018_01_01::Models::Resource
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionFilter
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicSharedAccessKeys
      EventTypesListResult = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventTypesListResult
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicRegenerateKeyRequest
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionFullUrl
      OperationInfo = Azure::EventGrid::Mgmt::V2018_01_01::Models::OperationInfo
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicTypesListResult
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionsListResult
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicUpdateParameters
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionUpdateParameters
      TopicsListResult = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicsListResult
      WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_01_01::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventHubEventSubscriptionDestination
      EventSubscription = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscription
      TrackedResource = Azure::EventGrid::Mgmt::V2018_01_01::Models::TrackedResource
      Topic = Azure::EventGrid::Mgmt::V2018_01_01::Models::Topic
      EventType = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventType
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicTypeInfo
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionProvisioningState
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicProvisioningState
      ResourceRegionType = Azure::EventGrid::Mgmt::V2018_01_01::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicTypeProvisioningState
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

        client_0 = Azure::EventGrid::Mgmt::V2018_01_01::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @event_subscriptions = client_0.event_subscriptions
        @operations = client_0.operations
        @topics = client_0.topics
        @topic_types = client_0.topic_types

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/EventGrid/Mgmt'
        client.add_user_agent_information(profile_information)
      end

    end

    class ModelClasses
      def operations_list_result
        Azure::EventGrid::Mgmt::V2018_01_01::Models::OperationsListResult
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionDestination
      end
      def operation
        Azure::EventGrid::Mgmt::V2018_01_01::Models::Operation
      end
      def resource
        Azure::EventGrid::Mgmt::V2018_01_01::Models::Resource
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionFilter
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicSharedAccessKeys
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventTypesListResult
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicRegenerateKeyRequest
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionFullUrl
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2018_01_01::Models::OperationInfo
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicTypesListResult
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionsListResult
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicUpdateParameters
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionUpdateParameters
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicsListResult
      end
      def web_hook_event_subscription_destination
        Azure::EventGrid::Mgmt::V2018_01_01::Models::WebHookEventSubscriptionDestination
      end
      def event_hub_event_subscription_destination
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventHubEventSubscriptionDestination
      end
      def event_subscription
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscription
      end
      def tracked_resource
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TrackedResource
      end
      def topic
        Azure::EventGrid::Mgmt::V2018_01_01::Models::Topic
      end
      def event_type
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventType
      end
      def topic_type_info
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicTypeInfo
      end
      def event_subscription_provisioning_state
        Azure::EventGrid::Mgmt::V2018_01_01::Models::EventSubscriptionProvisioningState
      end
      def topic_provisioning_state
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicProvisioningState
      end
      def resource_region_type
        Azure::EventGrid::Mgmt::V2018_01_01::Models::ResourceRegionType
      end
      def topic_type_provisioning_state
        Azure::EventGrid::Mgmt::V2018_01_01::Models::TopicTypeProvisioningState
      end
    end
  end
end
