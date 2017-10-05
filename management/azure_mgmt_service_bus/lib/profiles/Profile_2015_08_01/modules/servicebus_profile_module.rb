# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_service_bus'


module Azure::Profiles::ServiceBusModule::Management::Profile_2015_08_01
  module ServiceBus
    Operations = Azure::ARM::ServiceBus::Api_2015_08_01::Operations
    Namespaces = Azure::ARM::ServiceBus::Api_2015_08_01::Namespaces
    Queues = Azure::ARM::ServiceBus::Api_2015_08_01::Queues
    Topics = Azure::ARM::ServiceBus::Api_2015_08_01::Topics
    Subscriptions = Azure::ARM::ServiceBus::Api_2015_08_01::Subscriptions

    module Models
      QueueCreateOrUpdateParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::QueueCreateOrUpdateParameters
      MessageCountDetails = Azure::ARM::ServiceBus::Api_2015_08_01::Models::MessageCountDetails
      RegenerateKeysParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::RegenerateKeysParameters
      NamespaceCreateOrUpdateParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceCreateOrUpdateParameters
      CheckNameAvailability = Azure::ARM::ServiceBus::Api_2015_08_01::Models::CheckNameAvailability
      NamespaceListResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceListResult
      SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
      QueueListResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::QueueListResult
      SharedAccessAuthorizationRuleListResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SharedAccessAuthorizationRuleListResult
      TopicCreateOrUpdateParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::TopicCreateOrUpdateParameters
      Sku = Azure::ARM::ServiceBus::Api_2015_08_01::Models::Sku
      OperationListResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::OperationListResult
      NamespaceUpdateParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceUpdateParameters
      TopicListResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::TopicListResult
      ResourceListKeys = Azure::ARM::ServiceBus::Api_2015_08_01::Models::ResourceListKeys
      SubscriptionCreateOrUpdateParameters = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SubscriptionCreateOrUpdateParameters
      CheckNameAvailabilityResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::CheckNameAvailabilityResult
      Operation = Azure::ARM::ServiceBus::Api_2015_08_01::Models::Operation
      OperationDisplay = Azure::ARM::ServiceBus::Api_2015_08_01::Models::OperationDisplay
      SubscriptionListResult = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SubscriptionListResult
      TrackedResource = Azure::ARM::ServiceBus::Api_2015_08_01::Models::TrackedResource
      NamespaceResource = Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceResource
      SharedAccessAuthorizationRuleResource = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SharedAccessAuthorizationRuleResource
      QueueResource = Azure::ARM::ServiceBus::Api_2015_08_01::Models::QueueResource
      TopicResource = Azure::ARM::ServiceBus::Api_2015_08_01::Models::TopicResource
      SubscriptionResource = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SubscriptionResource
      SkuName = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SkuName
      SkuTier = Azure::ARM::ServiceBus::Api_2015_08_01::Models::SkuTier
      NamespaceState = Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceState
      AccessRights = Azure::ARM::ServiceBus::Api_2015_08_01::Models::AccessRights
      Policykey = Azure::ARM::ServiceBus::Api_2015_08_01::Models::Policykey
      EntityAvailabilityStatus = Azure::ARM::ServiceBus::Api_2015_08_01::Models::EntityAvailabilityStatus
      EntityStatus = Azure::ARM::ServiceBus::Api_2015_08_01::Models::EntityStatus
      UnavailableReason = Azure::ARM::ServiceBus::Api_2015_08_01::Models::UnavailableReason
    end

    #
    # ServiceBus
    #
    class ServiceBusClass
      attr_accessor :operations, :namespaces, :queues, :topics, :subscriptions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ServiceBus::Api_2015_08_01::ServiceBusManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::ServiceBus::Api_2015_08_01::Operations.new(client)
        self.namespaces = Azure::ARM::ServiceBus::Api_2015_08_01::Namespaces.new(client)
        self.queues = Azure::ARM::ServiceBus::Api_2015_08_01::Queues.new(client)
        self.topics = Azure::ARM::ServiceBus::Api_2015_08_01::Topics.new(client)
        self.subscriptions = Azure::ARM::ServiceBus::Api_2015_08_01::Subscriptions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-08-01'
            client = Azure::ARM::ServiceBus::Api_2015_08_01::ServiceBusManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def queue_create_or_update_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::QueueCreateOrUpdateParameters
        end
        def message_count_details
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::MessageCountDetails
        end
        def regenerate_keys_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::RegenerateKeysParameters
        end
        def namespace_create_or_update_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceCreateOrUpdateParameters
        end
        def check_name_availability
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::CheckNameAvailability
        end
        def namespace_list_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceListResult
        end
        def shared_access_authorization_rule_create_or_update_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        end
        def queue_list_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::QueueListResult
        end
        def shared_access_authorization_rule_list_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SharedAccessAuthorizationRuleListResult
        end
        def topic_create_or_update_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::TopicCreateOrUpdateParameters
        end
        def sku
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::Sku
        end
        def operation_list_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::OperationListResult
        end
        def namespace_update_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceUpdateParameters
        end
        def topic_list_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::TopicListResult
        end
        def resource_list_keys
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::ResourceListKeys
        end
        def subscription_create_or_update_parameters
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SubscriptionCreateOrUpdateParameters
        end
        def check_name_availability_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::CheckNameAvailabilityResult
        end
        def operation
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::Operation
        end
        def operation_display
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::OperationDisplay
        end
        def subscription_list_result
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SubscriptionListResult
        end
        def tracked_resource
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::TrackedResource
        end
        def namespace_resource
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceResource
        end
        def shared_access_authorization_rule_resource
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SharedAccessAuthorizationRuleResource
        end
        def queue_resource
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::QueueResource
        end
        def topic_resource
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::TopicResource
        end
        def subscription_resource
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SubscriptionResource
        end
        def sku_name
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SkuName
        end
        def sku_tier
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::SkuTier
        end
        def namespace_state
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::NamespaceState
        end
        def access_rights
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::AccessRights
        end
        def policykey
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::Policykey
        end
        def entity_availability_status
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::EntityAvailabilityStatus
        end
        def entity_status
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::EntityStatus
        end
        def unavailable_reason
          Azure::ARM::ServiceBus::Api_2015_08_01::Models::UnavailableReason
        end
      end
    end
  end
end
