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
      DeadLetterWithResourceIdentity = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterWithResourceIdentity
      PrivateEndpoint = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpoint
      ConnectionState = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ConnectionState
      PartnerNamespaceSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceSharedAccessKeys
      InputSchemaMapping = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchemaMapping
      PartnerRegistrationsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationsListResult
      ResourceSku = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceSku
      PartnerRegistrationUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationUpdateParameters
      IdentityInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IdentityInfo
      SkuDefinitionsForResourceType = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SkuDefinitionsForResourceType
      JsonField = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonField
      PartnerNamespaceRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceRegenerateKeyRequest
      Resource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Resource
      PartnerNamespacesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespacesListResult
      JsonFieldWithDefault = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonFieldWithDefault
      DomainUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainUpdateParameters
      Operation = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Operation
      DomainSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainSharedAccessKeys
      EventTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventTypesListResult
      SkuDefinitionsForResourceTypeListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SkuDefinitionsForResourceTypeListResult
      PartnerTopicTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicTypesListResult
      EventChannelSource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelSource
      PrivateEndpointConnectionListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnectionListResult
      OperationsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationsListResult
      PartnerTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicsListResult
      EventSubscriptionDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionDestination
      PartnerTopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicUpdateParameters
      DeliveryWithResourceIdentity = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeliveryWithResourceIdentity
      PrivateLinkResource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResource
      EventSubscriptionFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFilter
      PartnerRegistrationEventTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationEventTypesListResult
      DeadLetterDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterDestination
      PrivateLinkResourcesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResourcesListResult
      InboundIpRule = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InboundIpRule
      PartnerNamespaceUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceUpdateParameters
      TopicTypesListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypesListResult
      DomainRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainRegenerateKeyRequest
      TopicRegenerateKeyRequest = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicRegenerateKeyRequest
      EventChannelDestination = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelDestination
      TopicSharedAccessKeys = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicSharedAccessKeys
      EventSubscriptionIdentity = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionIdentity
      TopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicsListResult
      RetryPolicy = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::RetryPolicy
      TopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicUpdateParameters
      UserIdentityProperties = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::UserIdentityProperties
      SystemTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicsListResult
      DomainTopicsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicsListResult
      SystemTopicUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicUpdateParameters
      AdvancedFilter = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AdvancedFilter
      EventSubscriptionUpdateParameters = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionUpdateParameters
      DomainsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainsListResult
      EventSubscriptionFullUrl = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFullUrl
      OperationInfo = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationInfo
      EventChannelsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelsListResult
      EventSubscriptionsListResult = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionsListResult
      PrivateEndpointConnection = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnection
      JsonInputSchemaMapping = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonInputSchemaMapping
      TrackedResource = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TrackedResource
      Domain = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Domain
      DomainTopic = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopic
      EventChannel = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannel
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
      def dead_letter_with_resource_identity
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterWithResourceIdentity
      end
      def private_endpoint
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpoint
      end
      def connection_state
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ConnectionState
      end
      def partner_namespace_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceSharedAccessKeys
      end
      def input_schema_mapping
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InputSchemaMapping
      end
      def partner_registrations_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationsListResult
      end
      def resource_sku
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ResourceSku
      end
      def partner_registration_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationUpdateParameters
      end
      def identity_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::IdentityInfo
      end
      def sku_definitions_for_resource_type
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SkuDefinitionsForResourceType
      end
      def json_field
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonField
      end
      def partner_namespace_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceRegenerateKeyRequest
      end
      def resource
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Resource
      end
      def partner_namespaces_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespacesListResult
      end
      def json_field_with_default
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::JsonFieldWithDefault
      end
      def domain_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainUpdateParameters
      end
      def operation
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::Operation
      end
      def domain_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainSharedAccessKeys
      end
      def event_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventTypesListResult
      end
      def sku_definitions_for_resource_type_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SkuDefinitionsForResourceTypeListResult
      end
      def partner_topic_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicTypesListResult
      end
      def event_channel_source
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelSource
      end
      def private_endpoint_connection_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateEndpointConnectionListResult
      end
      def operations_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationsListResult
      end
      def partner_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicsListResult
      end
      def event_subscription_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionDestination
      end
      def partner_topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerTopicUpdateParameters
      end
      def delivery_with_resource_identity
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeliveryWithResourceIdentity
      end
      def private_link_resource
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResource
      end
      def event_subscription_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFilter
      end
      def partner_registration_event_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerRegistrationEventTypesListResult
      end
      def dead_letter_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DeadLetterDestination
      end
      def private_link_resources_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PrivateLinkResourcesListResult
      end
      def inbound_ip_rule
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::InboundIpRule
      end
      def partner_namespace_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::PartnerNamespaceUpdateParameters
      end
      def topic_types_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicTypesListResult
      end
      def domain_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainRegenerateKeyRequest
      end
      def topic_regenerate_key_request
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicRegenerateKeyRequest
      end
      def event_channel_destination
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelDestination
      end
      def topic_shared_access_keys
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicSharedAccessKeys
      end
      def event_subscription_identity
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionIdentity
      end
      def topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicsListResult
      end
      def retry_policy
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::RetryPolicy
      end
      def topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::TopicUpdateParameters
      end
      def user_identity_properties
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::UserIdentityProperties
      end
      def system_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicsListResult
      end
      def domain_topics_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainTopicsListResult
      end
      def system_topic_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::SystemTopicUpdateParameters
      end
      def advanced_filter
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::AdvancedFilter
      end
      def event_subscription_update_parameters
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionUpdateParameters
      end
      def domains_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::DomainsListResult
      end
      def event_subscription_full_url
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionFullUrl
      end
      def operation_info
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::OperationInfo
      end
      def event_channels_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannelsListResult
      end
      def event_subscriptions_list_result
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventSubscriptionsListResult
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
      def event_channel
        Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::EventChannel
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
