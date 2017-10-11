# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_grid'

module Azure::EventGrid::Management::Profile_2017_06_15_Preview
    EventSubscriptions = Azure::ARM::EventGrid::Api_2017_06_15_preview::EventSubscriptions
    Operations = Azure::ARM::EventGrid::Api_2017_06_15_preview::Operations
    Topics = Azure::ARM::EventGrid::Api_2017_06_15_preview::Topics
    TopicTypes = Azure::ARM::EventGrid::Api_2017_06_15_preview::TopicTypes

    module Models
      OperationsListResult = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::OperationsListResult
      Operation = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::Operation
      EventSubscriptionFilter = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionFilter
      EventSubscriptionDestination = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionDestination
      EventTypesListResult = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventTypesListResult
      EventSubscriptionUpdateParameters = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionUpdateParameters
      EventSubscriptionsListResult = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionsListResult
      TopicTypesListResult = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicTypesListResult
      TopicsListResult = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicsListResult
      OperationInfo = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::OperationInfo
      TopicSharedAccessKeys = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicSharedAccessKeys
      EventSubscriptionFullUrl = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionFullUrl
      TopicRegenerateKeyRequest = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicRegenerateKeyRequest
      EventSubscription = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscription
      TrackedResource = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TrackedResource
      Topic = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::Topic
      EventType = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventType
      TopicTypeInfo = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicTypeInfo
      EventSubscriptionProvisioningState = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionProvisioningState
      EndpointType = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EndpointType
      OperationOrigin = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::OperationOrigin
      TopicProvisioningState = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicProvisioningState
      ResourceRegionType = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::ResourceRegionType
      TopicTypeProvisioningState = Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicTypeProvisioningState
    end

    #
    # EventGrid
    #
    class EventGridClass
      attr_reader :event_subscriptions, :operations, :topics, :topic_types, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::EventGrid::Api_2017_06_15_preview::EventGridManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @event_subscriptions = client_0.event_subscriptions
        @operations = client_0.operations
        @topics = client_0.topics
        @topic_types = client_0.topic_types

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-06-15-preview')
        case version
          when '2017-06-15-preview'
            client = Azure::ARM::EventGrid::Api_2017_06_15_preview::EventGridManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def operations_list_result
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::OperationsListResult
        end
        def operation
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::Operation
        end
        def event_subscription_filter
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionFilter
        end
        def event_subscription_destination
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionDestination
        end
        def event_types_list_result
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventTypesListResult
        end
        def event_subscription_update_parameters
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionUpdateParameters
        end
        def event_subscriptions_list_result
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionsListResult
        end
        def topic_types_list_result
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicTypesListResult
        end
        def topics_list_result
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicsListResult
        end
        def operation_info
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::OperationInfo
        end
        def topic_shared_access_keys
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicSharedAccessKeys
        end
        def event_subscription_full_url
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionFullUrl
        end
        def topic_regenerate_key_request
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicRegenerateKeyRequest
        end
        def event_subscription
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscription
        end
        def tracked_resource
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TrackedResource
        end
        def topic
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::Topic
        end
        def event_type
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventType
        end
        def topic_type_info
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicTypeInfo
        end
        def event_subscription_provisioning_state
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EventSubscriptionProvisioningState
        end
        def endpoint_type
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::EndpointType
        end
        def operation_origin
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::OperationOrigin
        end
        def topic_provisioning_state
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicProvisioningState
        end
        def resource_region_type
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::ResourceRegionType
        end
        def topic_type_provisioning_state
          Azure::ARM::EventGrid::Api_2017_06_15_preview::Models::TopicTypeProvisioningState
        end
      end
    end
end
