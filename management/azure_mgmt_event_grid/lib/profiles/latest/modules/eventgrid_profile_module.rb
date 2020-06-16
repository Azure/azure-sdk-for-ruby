# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    Domains = Azure::EventGrid::Mgmt::V2020_06_01::Domains
    DomainTopics = Azure::EventGrid::Mgmt::V2020_06_01::DomainTopics
    EventSubscriptions = Azure::EventGrid::Mgmt::V2020_06_01::EventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2020_06_01::Operations
    Topics = Azure::EventGrid::Mgmt::V2020_06_01::Topics
    PrivateEndpointConnections = Azure::EventGrid::Mgmt::V2020_06_01::PrivateEndpointConnections
    PrivateLinkResources = Azure::EventGrid::Mgmt::V2020_06_01::PrivateLinkResources
    TopicTypes = Azure::EventGrid::Mgmt::V2020_06_01::TopicTypes

    module Models
      AdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::AdvancedFilter
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionFilter
      ConnectionState = Azure::EventGrid::Mgmt::V2020_06_01::Models::ConnectionState
      RetryPolicy = Azure::EventGrid::Mgmt::V2020_06_01::Models::RetryPolicy
      InputSchemaMapping = Azure::EventGrid::Mgmt::V2020_06_01::Models::InputSchemaMapping
      DeadLetterDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::DeadLetterDestination
      Resource = Azure::EventGrid::Mgmt::V2020_06_01::Models::Resource
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionsListResult
      JsonFieldWithDefault = Azure::EventGrid::Mgmt::V2020_06_01::Models::JsonFieldWithDefault
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionFullUrl
      JsonField = Azure::EventGrid::Mgmt::V2020_06_01::Models::JsonField
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicSharedAccessKeys
      DomainUpdateParameters = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainUpdateParameters
      TopicsListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicsListResult
      DomainSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainSharedAccessKeys
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionUpdateParameters
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicUpdateParameters
      OperationInfo = Azure::EventGrid::Mgmt::V2020_06_01::Models::OperationInfo
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionDestination
      Operation = Azure::EventGrid::Mgmt::V2020_06_01::Models::Operation
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicRegenerateKeyRequest
      InboundIpRule = Azure::EventGrid::Mgmt::V2020_06_01::Models::InboundIpRule
      OperationsListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::OperationsListResult
      DomainsListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainsListResult
      PrivateEndpointConnectionListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateEndpointConnectionListResult
      DomainTopicsListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainTopicsListResult
      PrivateLinkResource = Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateLinkResource
      PrivateLinkResourcesListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateLinkResourcesListResult
      PrivateEndpoint = Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateEndpoint
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicTypesListResult
      DomainRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainRegenerateKeyRequest
      EventTypesListResult = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventTypesListResult
      PrivateEndpointConnection = Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateEndpointConnection
      JsonInputSchemaMapping = Azure::EventGrid::Mgmt::V2020_06_01::Models::JsonInputSchemaMapping
      TrackedResource = Azure::EventGrid::Mgmt::V2020_06_01::Models::TrackedResource
      Domain = Azure::EventGrid::Mgmt::V2020_06_01::Models::Domain
      DomainTopic = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainTopic
      NumberInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberInAdvancedFilter
      StorageBlobDeadLetterDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::StorageBlobDeadLetterDestination
      NumberNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberNotInAdvancedFilter
      NumberLessThanAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberLessThanAdvancedFilter
      NumberGreaterThanAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberGreaterThanAdvancedFilter
      NumberLessThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberLessThanOrEqualsAdvancedFilter
      NumberGreaterThanOrEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberGreaterThanOrEqualsAdvancedFilter
      BoolEqualsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::BoolEqualsAdvancedFilter
      StringInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::StringInAdvancedFilter
      StringNotInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::StringNotInAdvancedFilter
      StringBeginsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::StringBeginsWithAdvancedFilter
      StringEndsWithAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::StringEndsWithAdvancedFilter
      StringContainsAdvancedFilter = Azure::EventGrid::Mgmt::V2020_06_01::Models::StringContainsAdvancedFilter
      WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventHubEventSubscriptionDestination
      StorageQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::StorageQueueEventSubscriptionDestination
      HybridConnectionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::HybridConnectionEventSubscriptionDestination
      ServiceBusQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::ServiceBusQueueEventSubscriptionDestination
      ServiceBusTopicEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::ServiceBusTopicEventSubscriptionDestination
      AzureFunctionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_06_01::Models::AzureFunctionEventSubscriptionDestination
      EventSubscription = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscription
      Topic = Azure::EventGrid::Mgmt::V2020_06_01::Models::Topic
      EventType = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventType
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicTypeInfo
      PersistedConnectionStatus = Azure::EventGrid::Mgmt::V2020_06_01::Models::PersistedConnectionStatus
      ResourceProvisioningState = Azure::EventGrid::Mgmt::V2020_06_01::Models::ResourceProvisioningState
      DomainProvisioningState = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainProvisioningState
      InputSchema = Azure::EventGrid::Mgmt::V2020_06_01::Models::InputSchema
      PublicNetworkAccess = Azure::EventGrid::Mgmt::V2020_06_01::Models::PublicNetworkAccess
      IpActionType = Azure::EventGrid::Mgmt::V2020_06_01::Models::IpActionType
      DomainTopicProvisioningState = Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainTopicProvisioningState
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionProvisioningState
      EventDeliverySchema = Azure::EventGrid::Mgmt::V2020_06_01::Models::EventDeliverySchema
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicProvisioningState
      ResourceRegionType = Azure::EventGrid::Mgmt::V2020_06_01::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicTypeProvisioningState
    end

    #
    # EventGridManagementClass
    #
    class EventGridManagementClass
      attr_reader :domains, :domain_topics, :event_subscriptions, :operations, :topics, :private_endpoint_connections, :private_link_resources, :topic_types, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::EventGrid::Mgmt::V2020_06_01::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @domains = @client_0.domains
        @domain_topics = @client_0.domain_topics
        @event_subscriptions = @client_0.event_subscriptions
        @operations = @client_0.operations
        @topics = @client_0.topics
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_resources = @client_0.private_link_resources
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
        Azure::EventGrid::Mgmt::V2020_06_01::Models::AdvancedFilter
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionFilter
      end
      def connection_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::ConnectionState
      end
      def retry_policy
        Azure::EventGrid::Mgmt::V2020_06_01::Models::RetryPolicy
      end
      def input_schema_mapping
        Azure::EventGrid::Mgmt::V2020_06_01::Models::InputSchemaMapping
      end
      def dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DeadLetterDestination
      end
      def resource
        Azure::EventGrid::Mgmt::V2020_06_01::Models::Resource
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionsListResult
      end
      def json_field_with_default
        Azure::EventGrid::Mgmt::V2020_06_01::Models::JsonFieldWithDefault
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionFullUrl
      end
      def json_field
        Azure::EventGrid::Mgmt::V2020_06_01::Models::JsonField
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicSharedAccessKeys
      end
      def domain_update_parameters
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainUpdateParameters
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicsListResult
      end
      def domain_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainSharedAccessKeys
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionUpdateParameters
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicUpdateParameters
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2020_06_01::Models::OperationInfo
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionDestination
      end
      def operation
        Azure::EventGrid::Mgmt::V2020_06_01::Models::Operation
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicRegenerateKeyRequest
      end
      def inbound_ip_rule
        Azure::EventGrid::Mgmt::V2020_06_01::Models::InboundIpRule
      end
      def operations_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::OperationsListResult
      end
      def domains_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainsListResult
      end
      def private_endpoint_connection_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateEndpointConnectionListResult
      end
      def domain_topics_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainTopicsListResult
      end
      def private_link_resource
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateLinkResource
      end
      def private_link_resources_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateLinkResourcesListResult
      end
      def private_endpoint
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateEndpoint
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicTypesListResult
      end
      def domain_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainRegenerateKeyRequest
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventTypesListResult
      end
      def private_endpoint_connection
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PrivateEndpointConnection
      end
      def json_input_schema_mapping
        Azure::EventGrid::Mgmt::V2020_06_01::Models::JsonInputSchemaMapping
      end
      def tracked_resource
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TrackedResource
      end
      def domain
        Azure::EventGrid::Mgmt::V2020_06_01::Models::Domain
      end
      def domain_topic
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainTopic
      end
      def number_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberInAdvancedFilter
      end
      def storage_blob_dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StorageBlobDeadLetterDestination
      end
      def number_not_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberNotInAdvancedFilter
      end
      def number_less_than_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberLessThanAdvancedFilter
      end
      def number_greater_than_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberGreaterThanAdvancedFilter
      end
      def number_less_than_or_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberLessThanOrEqualsAdvancedFilter
      end
      def number_greater_than_or_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::NumberGreaterThanOrEqualsAdvancedFilter
      end
      def bool_equals_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::BoolEqualsAdvancedFilter
      end
      def string_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StringInAdvancedFilter
      end
      def string_not_in_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StringNotInAdvancedFilter
      end
      def string_begins_with_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StringBeginsWithAdvancedFilter
      end
      def string_ends_with_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StringEndsWithAdvancedFilter
      end
      def string_contains_advanced_filter
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StringContainsAdvancedFilter
      end
      def web_hook_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::WebHookEventSubscriptionDestination
      end
      def event_hub_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventHubEventSubscriptionDestination
      end
      def storage_queue_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::StorageQueueEventSubscriptionDestination
      end
      def hybrid_connection_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::HybridConnectionEventSubscriptionDestination
      end
      def service_bus_queue_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::ServiceBusQueueEventSubscriptionDestination
      end
      def service_bus_topic_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::ServiceBusTopicEventSubscriptionDestination
      end
      def azure_function_event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_06_01::Models::AzureFunctionEventSubscriptionDestination
      end
      def event_subscription
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscription
      end
      def topic
        Azure::EventGrid::Mgmt::V2020_06_01::Models::Topic
      end
      def event_type
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventType
      end
      def topic_type_info
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicTypeInfo
      end
      def persisted_connection_status
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PersistedConnectionStatus
      end
      def resource_provisioning_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::ResourceProvisioningState
      end
      def domain_provisioning_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainProvisioningState
      end
      def input_schema
        Azure::EventGrid::Mgmt::V2020_06_01::Models::InputSchema
      end
      def public_network_access
        Azure::EventGrid::Mgmt::V2020_06_01::Models::PublicNetworkAccess
      end
      def ip_action_type
        Azure::EventGrid::Mgmt::V2020_06_01::Models::IpActionType
      end
      def domain_topic_provisioning_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::DomainTopicProvisioningState
      end
      def event_subscription_provisioning_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventSubscriptionProvisioningState
      end
      def event_delivery_schema
        Azure::EventGrid::Mgmt::V2020_06_01::Models::EventDeliverySchema
      end
      def topic_provisioning_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicProvisioningState
      end
      def resource_region_type
        Azure::EventGrid::Mgmt::V2020_06_01::Models::ResourceRegionType
      end
      def topic_type_provisioning_state
        Azure::EventGrid::Mgmt::V2020_06_01::Models::TopicTypeProvisioningState
      end
    end
  end
end
