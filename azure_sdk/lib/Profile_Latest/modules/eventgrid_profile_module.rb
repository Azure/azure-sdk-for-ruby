# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'


module Azure::Profiles::Management::Profile_Latest
  module EventGrid
    EventSubscriptions = Azure::ARM::EventGrid::Api_2017_09_15_preview::EventSubscriptions
    Operations = Azure::ARM::EventGrid::Api_2017_09_15_preview::Operations
    Topics = Azure::ARM::EventGrid::Api_2017_09_15_preview::Topics
    TopicTypes = Azure::ARM::EventGrid::Api_2017_09_15_preview::TopicTypes

    module Models
      Operation = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::Operation
      OperationsListResult = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::OperationsListResult
      EventSubscriptionFilter = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionFilter
      EventSubscriptionDestination = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionDestination
      OperationInfo = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::OperationInfo
      EventTypesListResult = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventTypesListResult
      TopicSharedAccessKeys = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicSharedAccessKeys
      EventSubscriptionUpdateParameters = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionUpdateParameters
      EventSubscriptionsListResult = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionsListResult
      EventSubscriptionFullUrl = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionFullUrl
      TopicTypesListResult = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicTypesListResult
      TopicRegenerateKeyRequest = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicRegenerateKeyRequest
      TopicsListResult = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicsListResult
      WebHookEventSubscriptionDestination = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::WebHookEventSubscriptionDestination
      EventHubEventSubscriptionDestination = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventHubEventSubscriptionDestination
      EventSubscription = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscription
      TrackedResource = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TrackedResource
      Topic = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::Topic
      EventType = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventType
      TopicTypeInfo = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicTypeInfo
      EventSubscriptionProvisioningState = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionProvisioningState
      OperationOrigin = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::OperationOrigin
      TopicProvisioningState = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicProvisioningState
      ResourceRegionType = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicTypeProvisioningState
    end

    #
    # EventGrid
    #
    class EventGridClass
      attr_accessor :event_subscriptions, :operations, :topics, :topic_types, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::EventGrid::Api_2017_09_15_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.event_subscriptions = Azure::ARM::EventGrid::Api_2017_09_15_preview::EventSubscriptions.new(client)
        self.operations = Azure::ARM::EventGrid::Api_2017_09_15_preview::Operations.new(client)
        self.topics = Azure::ARM::EventGrid::Api_2017_09_15_preview::Topics.new(client)
        self.topic_types = Azure::ARM::EventGrid::Api_2017_09_15_preview::TopicTypes.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-09-15-preview'
            client = Azure::ARM::EventGrid::Api_2017_09_15_preview::EventGridManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def operation
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::Operation
        end
        def operations_list_result
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::OperationsListResult
        end
        def event_subscription_filter
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionFilter
        end
        def event_subscription_destination
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionDestination
        end
        def operation_info
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::OperationInfo
        end
        def event_types_list_result
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventTypesListResult
        end
        def topic_shared_access_keys
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicSharedAccessKeys
        end
        def event_subscription_update_parameters
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionUpdateParameters
        end
        def event_subscriptions_list_result
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionsListResult
        end
        def event_subscription_full_url
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionFullUrl
        end
        def topic_types_list_result
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicTypesListResult
        end
        def topic_regenerate_key_request
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicRegenerateKeyRequest
        end
        def topics_list_result
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicsListResult
        end
        def web_hook_event_subscription_destination
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::WebHookEventSubscriptionDestination
        end
        def event_hub_event_subscription_destination
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventHubEventSubscriptionDestination
        end
        def event_subscription
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscription
        end
        def tracked_resource
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TrackedResource
        end
        def topic
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::Topic
        end
        def event_type
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventType
        end
        def topic_type_info
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicTypeInfo
        end
        def event_subscription_provisioning_state
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::EventSubscriptionProvisioningState
        end
        def operation_origin
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::OperationOrigin
        end
        def topic_provisioning_state
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicProvisioningState
        end
        def resource_region_type
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::ResourceRegionType
        end
        def topic_type_provisioning_state
          Azure::ARM::EventGrid::Api_2017_09_15_preview::Models::TopicTypeProvisioningState
        end
      end
    end
  end
end
