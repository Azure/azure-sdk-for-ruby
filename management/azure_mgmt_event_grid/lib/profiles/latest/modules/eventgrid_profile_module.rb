# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    Domains = Azure::EventGrid::Mgmt::V2019_06_01::Domains
    DomainTopics = Azure::EventGrid::Mgmt::V2019_06_01::DomainTopics
    EventSubscriptions = Azure::EventGrid::Mgmt::V2019_06_01::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2019_06_01::Operations
    Topics = Azure::EventGrid::Mgmt::V2019_06_01::Topics
    TopicTypes = Azure::EventGrid::Mgmt::V2019_06_01::TopicTypes

    module Models
      DeadLetterDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::DeadLetterDestination
      Resource = Azure::EventGrid::Mgmt::V2019_06_01::Models::Resource
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicRegenerateKeyRequest
      DomainUpdateParameters = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainUpdateParameters
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicTypesListResult
      DomainSharedAccessKeys = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainSharedAccessKeys
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicUpdateParameters
      EventTypesListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventTypesListResult
      TopicsListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicsListResult
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionDestination
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicSharedAccessKeys
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionFilter
      OperationInfo = Azure::EventGrid::Mgmt::V2019_06_01::Models::OperationInfo
      DomainsListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainsListResult
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionsListResult
      DomainTopicsListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainTopicsListResult
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionFullUrl
      RetryPolicy = Azure::EventGrid::Mgmt::V2019_06_01::Models::RetryPolicy
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionUpdateParameters
      AdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::AdvancedFilter
      Operation = Azure::EventGrid::Mgmt::V2019_06_01::Models::Operation
      DomainRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainRegenerateKeyRequest
      OperationsListResult = Azure::EventGrid::Mgmt::V2019_06_01::Models::OperationsListResult
      TrackedResource = Azure::EventGrid::Mgmt::V2019_06_01::Models::TrackedResource
      Domain = Azure::EventGrid::Mgmt::V2019_06_01::Models::Domain
      DomainTopic = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainTopic
      NumberInAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberInAdvancedFilter
      StorageBlobDeadLetterDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::StorageBlobDeadLetterDestination
      NumberNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberNotInAdvancedFilter
      NumberLessThanAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberLessThanAdvancedFilter
      NumberGreaterThanAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberGreaterThanAdvancedFilter
      NumberLessThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberLessThanOrEqualsAdvancedFilter
      NumberGreaterThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberGreaterThanOrEqualsAdvancedFilter
      BoolEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::BoolEqualsAdvancedFilter
      StringInAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::StringInAdvancedFilter
      StringNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::StringNotInAdvancedFilter
      StringBeginsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::StringBeginsWithAdvancedFilter
      StringEndsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::StringEndsWithAdvancedFilter
      StringContainsAdvancedFilter = Azure::EventGrid::Mgmt::V2019_06_01::Models::StringContainsAdvancedFilter
      WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventHubEventSubscriptionDestination
      StorageQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::StorageQueueEventSubscriptionDestination
      HybridConnectionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::HybridConnectionEventSubscriptionDestination
      ServiceBusQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2019_06_01::Models::ServiceBusQueueEventSubscriptionDestination
      EventSubscription = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscription
      Topic = Azure::EventGrid::Mgmt::V2019_06_01::Models::Topic
      EventType = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventType
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicTypeInfo
      DomainProvisioningState = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainProvisioningState
      DomainTopicProvisioningState = Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainTopicProvisioningState
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionProvisioningState
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicProvisioningState
      ResourceRegionType = Azure::EventGrid::Mgmt::V2019_06_01::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicTypeProvisioningState
    end

    #
    # EventGridManagementClass
    #
    class EventGridManagementClass
      attr_reader :domains, :domain_topics, :event_subscriptions, :operations, :topics, :topic_types, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::EventGrid::Mgmt::V2019_06_01::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @domains = @client_0.domains
        @domain_topics = @client_0.domain_topics
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
      def dead_letter_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DeadLetterDestination
      end
      def resource
        Azure::EventGrid::Mgmt::V2019_06_01::Models::Resource
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicRegenerateKeyRequest
      end
      def domain_update_parameters
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainUpdateParameters
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicTypesListResult
      end
      def domain_shared_access_keys
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainSharedAccessKeys
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicUpdateParameters
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventTypesListResult
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicsListResult
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionDestination
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicSharedAccessKeys
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionFilter
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2019_06_01::Models::OperationInfo
      end
      def domains_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainsListResult
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionsListResult
      end
      def domain_topics_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainTopicsListResult
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionFullUrl
      end
      def retry_policy
        Azure::EventGrid::Mgmt::V2019_06_01::Models::RetryPolicy
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionUpdateParameters
      end
      def advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::AdvancedFilter
      end
      def operation
        Azure::EventGrid::Mgmt::V2019_06_01::Models::Operation
      end
      def domain_regenerate_key_request
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainRegenerateKeyRequest
      end
      def operations_list_result
        Azure::EventGrid::Mgmt::V2019_06_01::Models::OperationsListResult
      end
      def tracked_resource
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TrackedResource
      end
      def domain
        Azure::EventGrid::Mgmt::V2019_06_01::Models::Domain
      end
      def domain_topic
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainTopic
      end
      def number_in_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberInAdvancedFilter
      end
      def storage_blob_dead_letter_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StorageBlobDeadLetterDestination
      end
      def number_not_in_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberNotInAdvancedFilter
      end
      def number_less_than_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberLessThanAdvancedFilter
      end
      def number_greater_than_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberGreaterThanAdvancedFilter
      end
      def number_less_than_or_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberLessThanOrEqualsAdvancedFilter
      end
      def number_greater_than_or_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::NumberGreaterThanOrEqualsAdvancedFilter
      end
      def bool_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::BoolEqualsAdvancedFilter
      end
      def string_in_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StringInAdvancedFilter
      end
      def string_not_in_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StringNotInAdvancedFilter
      end
      def string_begins_with_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StringBeginsWithAdvancedFilter
      end
      def string_ends_with_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StringEndsWithAdvancedFilter
      end
      def string_contains_advanced_filter
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StringContainsAdvancedFilter
      end
      def web_hook_event_subscription_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::WebHookEventSubscriptionDestination
      end
      def event_hub_event_subscription_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventHubEventSubscriptionDestination
      end
      def storage_queue_event_subscription_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::StorageQueueEventSubscriptionDestination
      end
      def hybrid_connection_event_subscription_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::HybridConnectionEventSubscriptionDestination
      end
      def service_bus_queue_event_subscription_destination
        Azure::EventGrid::Mgmt::V2019_06_01::Models::ServiceBusQueueEventSubscriptionDestination
      end
      def event_subscription
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscription
      end
      def topic
        Azure::EventGrid::Mgmt::V2019_06_01::Models::Topic
      end
      def event_type
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventType
      end
      def topic_type_info
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicTypeInfo
      end
      def domain_provisioning_state
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainProvisioningState
      end
      def domain_topic_provisioning_state
        Azure::EventGrid::Mgmt::V2019_06_01::Models::DomainTopicProvisioningState
      end
      def event_subscription_provisioning_state
        Azure::EventGrid::Mgmt::V2019_06_01::Models::EventSubscriptionProvisioningState
      end
      def topic_provisioning_state
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicProvisioningState
      end
      def resource_region_type
        Azure::EventGrid::Mgmt::V2019_06_01::Models::ResourceRegionType
      end
      def topic_type_provisioning_state
        Azure::EventGrid::Mgmt::V2019_06_01::Models::TopicTypeProvisioningState
      end
    end
  end
end
