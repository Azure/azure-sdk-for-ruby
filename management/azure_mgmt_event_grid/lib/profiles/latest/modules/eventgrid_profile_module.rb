# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    Domains = Azure::EventGrid::Mgmt::V2020_04_01_preview::Domains
    DomainTopics = Azure::EventGrid::Mgmt::V2020_04_01_preview::DomainTopics
    EventSubscriptions = Azure::EventGrid::Mgmt::V2020_04_01_preview::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2020_04_01_preview::Operations
    Topics = Azure::EventGrid::Mgmt::V2020_04_01_preview::Topics
    TopicTypes = Azure::EventGrid::Mgmt::V2020_04_01_preview::TopicTypes

    module Models
      AdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AdvancedFilter
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFilter
      InboundIpRule = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InboundIpRule
      RetryPolicy = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::RetryPolicy
      JsonField = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonField
      DeadLetterDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterDestination
      Resource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Resource
      JsonFieldWithDefault = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonFieldWithDefault
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicRegenerateKeyRequest
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypesListResult
      DomainsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainsListResult
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionUpdateParameters
      DomainRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainRegenerateKeyRequest
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFullUrl
      DomainTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicsListResult
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionsListResult
      InputSchemaMapping = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchemaMapping
      OperationInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationInfo
      DomainUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainUpdateParameters
      Operation = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Operation
      EventTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventTypesListResult
      OperationsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationsListResult
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicSharedAccessKeys
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicUpdateParameters
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionDestination
      TopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicsListResult
      DomainSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainSharedAccessKeys
      JsonInputSchemaMapping = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonInputSchemaMapping
      TrackedResource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TrackedResource
      Domain = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Domain
      DomainTopic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopic
      NumberInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberInAdvancedFilter
      StorageBlobDeadLetterDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageBlobDeadLetterDestination
      NumberNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberNotInAdvancedFilter
      NumberLessThanAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberLessThanAdvancedFilter
      NumberGreaterThanAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberGreaterThanAdvancedFilter
      NumberLessThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberLessThanOrEqualsAdvancedFilter
      NumberGreaterThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberGreaterThanOrEqualsAdvancedFilter
      BoolEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::BoolEqualsAdvancedFilter
      StringInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringInAdvancedFilter
      StringNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringNotInAdvancedFilter
      StringBeginsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringBeginsWithAdvancedFilter
      StringEndsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringEndsWithAdvancedFilter
      StringContainsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringContainsAdvancedFilter
      WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventHubEventSubscriptionDestination
      StorageQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageQueueEventSubscriptionDestination
      HybridConnectionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::HybridConnectionEventSubscriptionDestination
      ServiceBusQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ServiceBusQueueEventSubscriptionDestination
      ServiceBusTopicEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ServiceBusTopicEventSubscriptionDestination
      AzureFunctionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AzureFunctionEventSubscriptionDestination
      EventSubscription = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscription
      Topic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Topic
      EventType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventType
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeInfo
      DomainProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainProvisioningState
      InputSchema = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchema
      IpActionType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IpActionType
      DomainTopicProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicProvisioningState
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionProvisioningState
      EventDeliverySchema = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventDeliverySchema
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicProvisioningState
      ResourceRegionType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeProvisioningState
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

        @client_0 = Azure::EventGrid::Mgmt::V2020_04_01_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
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
      def advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AdvancedFilter
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFilter
      end
      def inbound_ip_rule
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InboundIpRule
      end
      def retry_policy
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::RetryPolicy
      end
      def json_field
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonField
      end
      def dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterDestination
      end
      def resource
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Resource
      end
      def json_field_with_default
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonFieldWithDefault
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicRegenerateKeyRequest
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypesListResult
      end
      def domains_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainsListResult
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionUpdateParameters
      end
      def domain_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainRegenerateKeyRequest
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFullUrl
      end
      def domain_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicsListResult
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionsListResult
      end
      def input_schema_mapping
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchemaMapping
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationInfo
      end
      def domain_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainUpdateParameters
      end
      def operation
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Operation
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventTypesListResult
      end
      def operations_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationsListResult
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicSharedAccessKeys
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicUpdateParameters
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionDestination
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicsListResult
      end
      def domain_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainSharedAccessKeys
      end
      def json_input_schema_mapping
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonInputSchemaMapping
      end
      def tracked_resource
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TrackedResource
      end
      def domain
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Domain
      end
      def domain_topic
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopic
      end
      def number_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberInAdvancedFilter
      end
      def storage_blob_dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageBlobDeadLetterDestination
      end
      def number_not_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberNotInAdvancedFilter
      end
      def number_less_than_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberLessThanAdvancedFilter
      end
      def number_greater_than_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberGreaterThanAdvancedFilter
      end
      def number_less_than_or_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberLessThanOrEqualsAdvancedFilter
      end
      def number_greater_than_or_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberGreaterThanOrEqualsAdvancedFilter
      end
      def bool_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::BoolEqualsAdvancedFilter
      end
      def string_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringInAdvancedFilter
      end
      def string_not_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringNotInAdvancedFilter
      end
      def string_begins_with_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringBeginsWithAdvancedFilter
      end
      def string_ends_with_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringEndsWithAdvancedFilter
      end
      def string_contains_advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StringContainsAdvancedFilter
      end
      def web_hook_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::WebHookEventSubscriptionDestination
      end
      def event_hub_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventHubEventSubscriptionDestination
      end
      def storage_queue_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageQueueEventSubscriptionDestination
      end
      def hybrid_connection_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::HybridConnectionEventSubscriptionDestination
      end
      def service_bus_queue_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ServiceBusQueueEventSubscriptionDestination
      end
      def service_bus_topic_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ServiceBusTopicEventSubscriptionDestination
      end
      def azure_function_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AzureFunctionEventSubscriptionDestination
      end
      def event_subscription
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscription
      end
      def topic
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Topic
      end
      def event_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventType
      end
      def topic_type_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeInfo
      end
      def domain_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainProvisioningState
      end
      def input_schema
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchema
      end
      def ip_action_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IpActionType
      end
      def domain_topic_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicProvisioningState
      end
      def event_subscription_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionProvisioningState
      end
      def event_delivery_schema
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventDeliverySchema
      end
      def topic_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicProvisioningState
      end
      def resource_region_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceRegionType
      end
      def topic_type_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeProvisioningState
      end
    end
  end
end
