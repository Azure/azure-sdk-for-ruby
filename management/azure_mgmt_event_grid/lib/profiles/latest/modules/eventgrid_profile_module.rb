# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Profiles::Latest
  module Mgmt
    Domains = Azure::EventGrid::Mgmt::V2020_04_01_preview::Domains
    DomainTopics = Azure::EventGrid::Mgmt::V2020_04_01_preview::DomainTopics
    EventChannels = Azure::EventGrid::Mgmt::V2020_04_01_preview::EventChannels
    EventSubscriptions = Azure::EventGrid::Mgmt::V2020_04_01_preview::EventSubscriptions
    SystemTopicEventSubscriptions = Azure::EventGrid::Mgmt::V2020_04_01_preview::SystemTopicEventSubscriptions
    PartnerTopicEventSubscriptions = Azure::EventGrid::Mgmt::V2020_04_01_preview::PartnerTopicEventSubscriptions
    Operations = Azure::EventGrid::Mgmt::V2020_04_01_preview::Operations
    PartnerNamespaces = Azure::EventGrid::Mgmt::V2020_04_01_preview::PartnerNamespaces
    PartnerRegistrations = Azure::EventGrid::Mgmt::V2020_04_01_preview::PartnerRegistrations
    PartnerTopics = Azure::EventGrid::Mgmt::V2020_04_01_preview::PartnerTopics
    PrivateEndpointConnections = Azure::EventGrid::Mgmt::V2020_04_01_preview::PrivateEndpointConnections
    PrivateLinkResources = Azure::EventGrid::Mgmt::V2020_04_01_preview::PrivateLinkResources
    SystemTopics = Azure::EventGrid::Mgmt::V2020_04_01_preview::SystemTopics
    Topics = Azure::EventGrid::Mgmt::V2020_04_01_preview::Topics
    ExtensionTopics = Azure::EventGrid::Mgmt::V2020_04_01_preview::ExtensionTopics
    TopicTypes = Azure::EventGrid::Mgmt::V2020_04_01_preview::TopicTypes

    module Models
      PartnerTopicTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicTypesListResult
      PrivateEndpoint = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpoint
      PartnerTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicsListResult
      PartnerNamespacesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespacesListResult
      PartnerNamespaceUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceUpdateParameters
      InboundIpRule = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InboundIpRule
      PrivateLinkResource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResource
      UserIdentityProperties = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::UserIdentityProperties
      OperationsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationsListResult
      Resource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Resource
      Operation = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Operation
      JsonFieldWithDefault = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonFieldWithDefault
      OperationInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationInfo
      PartnerRegistrationEventTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationEventTypesListResult
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionsListResult
      DomainUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainUpdateParameters
      ConnectionState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ConnectionState
      DomainSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainSharedAccessKeys
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFullUrl
      PartnerRegistrationsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationsListResult
      EventChannelsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelsListResult
      EventChannelSource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelSource
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionDestination
      AdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AdvancedFilter
      EventSubscriptionIdentity = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionIdentity
      PartnerRegistrationUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationUpdateParameters
      DeliveryWithResourceIdentity = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeliveryWithResourceIdentity
      PartnerNamespaceRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceRegenerateKeyRequest
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFilter
      InputSchemaMapping = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchemaMapping
      RetryPolicy = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::RetryPolicy
      IdentityInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IdentityInfo
      DeadLetterDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterDestination
      PartnerTopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicUpdateParameters
      DeadLetterWithResourceIdentity = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterWithResourceIdentity
      DomainsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainsListResult
      DomainTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicsListResult
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypesListResult
      EventChannelFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelFilter
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicRegenerateKeyRequest
      PartnerNamespaceSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceSharedAccessKeys
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicSharedAccessKeys
      JsonField = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonField
      TopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicsListResult
      DomainRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainRegenerateKeyRequest
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicUpdateParameters
      PrivateEndpointConnectionListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnectionListResult
      SystemTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicsListResult
      EventTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventTypesListResult
      SystemTopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicUpdateParameters
      ResourceSku = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceSku
      PrivateLinkResourcesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResourcesListResult
      EventChannelDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelDestination
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionUpdateParameters
      PrivateEndpointConnection = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnection
      JsonInputSchemaMapping = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonInputSchemaMapping
      TrackedResource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TrackedResource
      Domain = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Domain
      DomainTopic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopic
      NumberInAdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::NumberInAdvancedFilter
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
      EventChannel = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannel
      StorageBlobDeadLetterDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageBlobDeadLetterDestination
      WebHookEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventHubEventSubscriptionDestination
      StorageQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageQueueEventSubscriptionDestination
      HybridConnectionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::HybridConnectionEventSubscriptionDestination
      ServiceBusQueueEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ServiceBusQueueEventSubscriptionDestination
      ServiceBusTopicEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ServiceBusTopicEventSubscriptionDestination
      AzureFunctionEventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AzureFunctionEventSubscriptionDestination
      EventSubscription = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscription
      PartnerNamespace = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespace
      PartnerRegistration = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistration
      EventType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventType
      PartnerTopic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopic
      PartnerTopicType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicType
      SystemTopic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopic
      Topic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Topic
      ExtensionTopic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ExtensionTopic
      TopicTypeInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeInfo
      PersistedConnectionStatus = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PersistedConnectionStatus
      ResourceProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceProvisioningState
      DomainProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainProvisioningState
      InputSchema = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchema
      PublicNetworkAccess = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PublicNetworkAccess
      IpActionType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IpActionType
      Sku = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Sku
      IdentityType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IdentityType
      DomainTopicProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicProvisioningState
      EventChannelProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelProvisioningState
      EventSubscriptionProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionProvisioningState
      EventSubscriptionIdentityType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionIdentityType
      EventDeliverySchema = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventDeliverySchema
      PartnerNamespaceProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceProvisioningState
      PartnerRegistrationProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationProvisioningState
      PartnerRegistrationVisibilityState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationVisibilityState
      PartnerTopicProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicProvisioningState
      PartnerTopicActivationState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicActivationState
      PartnerTopicTypeAuthorizationState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicTypeAuthorizationState
      TopicProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicProvisioningState
      ResourceRegionType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeProvisioningState
    end

    #
    # EventGridManagementClass
    #
    class EventGridManagementClass
      attr_reader :domains, :domain_topics, :event_channels, :event_subscriptions, :system_topic_event_subscriptions, :partner_topic_event_subscriptions, :operations, :partner_namespaces, :partner_registrations, :partner_topics, :private_endpoint_connections, :private_link_resources, :system_topics, :topics, :extension_topics, :topic_types, :configurable, :base_url, :options, :model_classes

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
        @event_channels = @client_0.event_channels
        @event_subscriptions = @client_0.event_subscriptions
        @system_topic_event_subscriptions = @client_0.system_topic_event_subscriptions
        @partner_topic_event_subscriptions = @client_0.partner_topic_event_subscriptions
        @operations = @client_0.operations
        @partner_namespaces = @client_0.partner_namespaces
        @partner_registrations = @client_0.partner_registrations
        @partner_topics = @client_0.partner_topics
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_resources = @client_0.private_link_resources
        @system_topics = @client_0.system_topics
        @topics = @client_0.topics
        @extension_topics = @client_0.extension_topics
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
      def partner_topic_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicTypesListResult
      end
      def private_endpoint
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpoint
      end
      def partner_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicsListResult
      end
      def partner_namespaces_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespacesListResult
      end
      def partner_namespace_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceUpdateParameters
      end
      def inbound_ip_rule
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InboundIpRule
      end
      def private_link_resource
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResource
      end
      def user_identity_properties
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::UserIdentityProperties
      end
      def operations_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationsListResult
      end
      def resource
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Resource
      end
      def operation
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Operation
      end
      def json_field_with_default
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonFieldWithDefault
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationInfo
      end
      def partner_registration_event_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationEventTypesListResult
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionsListResult
      end
      def domain_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainUpdateParameters
      end
      def connection_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ConnectionState
      end
      def domain_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainSharedAccessKeys
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFullUrl
      end
      def partner_registrations_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationsListResult
      end
      def event_channels_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelsListResult
      end
      def event_channel_source
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelSource
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionDestination
      end
      def advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AdvancedFilter
      end
      def event_subscription_identity
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionIdentity
      end
      def partner_registration_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationUpdateParameters
      end
      def delivery_with_resource_identity
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeliveryWithResourceIdentity
      end
      def partner_namespace_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceRegenerateKeyRequest
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFilter
      end
      def input_schema_mapping
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchemaMapping
      end
      def retry_policy
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::RetryPolicy
      end
      def identity_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IdentityInfo
      end
      def dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterDestination
      end
      def partner_topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicUpdateParameters
      end
      def dead_letter_with_resource_identity
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterWithResourceIdentity
      end
      def domains_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainsListResult
      end
      def domain_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicsListResult
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypesListResult
      end
      def event_channel_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelFilter
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicRegenerateKeyRequest
      end
      def partner_namespace_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceSharedAccessKeys
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicSharedAccessKeys
      end
      def json_field
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonField
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicsListResult
      end
      def domain_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainRegenerateKeyRequest
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicUpdateParameters
      end
      def private_endpoint_connection_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnectionListResult
      end
      def system_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicsListResult
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventTypesListResult
      end
      def system_topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicUpdateParameters
      end
      def resource_sku
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceSku
      end
      def private_link_resources_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResourcesListResult
      end
      def event_channel_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelDestination
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionUpdateParameters
      end
      def private_endpoint_connection
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnection
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
      def event_channel
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannel
      end
      def storage_blob_dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::StorageBlobDeadLetterDestination
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
      def partner_namespace
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespace
      end
      def partner_registration
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistration
      end
      def event_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventType
      end
      def partner_topic
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopic
      end
      def partner_topic_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicType
      end
      def system_topic
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopic
      end
      def topic
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Topic
      end
      def extension_topic
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ExtensionTopic
      end
      def topic_type_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypeInfo
      end
      def persisted_connection_status
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PersistedConnectionStatus
      end
      def resource_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceProvisioningState
      end
      def domain_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainProvisioningState
      end
      def input_schema
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchema
      end
      def public_network_access
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PublicNetworkAccess
      end
      def ip_action_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IpActionType
      end
      def sku
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Sku
      end
      def identity_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IdentityType
      end
      def domain_topic_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicProvisioningState
      end
      def event_channel_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelProvisioningState
      end
      def event_subscription_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionProvisioningState
      end
      def event_subscription_identity_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionIdentityType
      end
      def event_delivery_schema
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventDeliverySchema
      end
      def partner_namespace_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceProvisioningState
      end
      def partner_registration_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationProvisioningState
      end
      def partner_registration_visibility_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationVisibilityState
      end
      def partner_topic_provisioning_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicProvisioningState
      end
      def partner_topic_activation_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicActivationState
      end
      def partner_topic_type_authorization_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicTypeAuthorizationState
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
