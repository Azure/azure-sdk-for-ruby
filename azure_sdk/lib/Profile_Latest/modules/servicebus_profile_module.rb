# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_bus'


module Azure::Profiles::Management::Profile_Latest
  module ServiceBus
    Operations = Azure::ARM::ServiceBus::Api_2017_04_01::Operations
    Namespaces = Azure::ARM::ServiceBus::Api_2017_04_01::Namespaces
    Queues = Azure::ARM::ServiceBus::Api_2017_04_01::Queues
    Topics = Azure::ARM::ServiceBus::Api_2017_04_01::Topics
    Subscriptions = Azure::ARM::ServiceBus::Api_2017_04_01::Subscriptions
    Rules = Azure::ARM::ServiceBus::Api_2017_04_01::Rules
    Regions = Azure::ARM::ServiceBus::Api_2017_04_01::Regions
    PremiumMessagingRegionsOperations = Azure::ARM::ServiceBus::Api_2017_04_01::PremiumMessagingRegionsOperations
    EventHubs = Azure::ARM::ServiceBus::Api_2017_04_01::EventHubs

    module Models
      CheckNameAvailability = Azure::ARM::ServiceBus::Api_2017_04_01::Models::CheckNameAvailability
      PremiumMessagingRegionsListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::PremiumMessagingRegionsListResult
      SBQueueListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBQueueListResult
      PremiumMessagingRegionsProperties = Azure::ARM::ServiceBus::Api_2017_04_01::Models::PremiumMessagingRegionsProperties
      EventHubListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::EventHubListResult
      SBTopicListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBTopicListResult
      CaptureDescription = Azure::ARM::ServiceBus::Api_2017_04_01::Models::CaptureDescription
      RuleListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::RuleListResult
      SBAuthorizationRuleListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBAuthorizationRuleListResult
      SBSubscriptionListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBSubscriptionListResult
      AccessKeys = Azure::ARM::ServiceBus::Api_2017_04_01::Models::AccessKeys
      CorrelationFilter = Azure::ARM::ServiceBus::Api_2017_04_01::Models::CorrelationFilter
      MessageCountDetails = Azure::ARM::ServiceBus::Api_2017_04_01::Models::MessageCountDetails
      CheckNameAvailabilityResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::CheckNameAvailabilityResult
      SBSku = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBSku
      OperationDisplay = Azure::ARM::ServiceBus::Api_2017_04_01::Models::OperationDisplay
      Destination = Azure::ARM::ServiceBus::Api_2017_04_01::Models::Destination
      Operation = Azure::ARM::ServiceBus::Api_2017_04_01::Models::Operation
      RegenerateAccessKeyParameters = Azure::ARM::ServiceBus::Api_2017_04_01::Models::RegenerateAccessKeyParameters
      OperationListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::OperationListResult
      SBNamespaceListResult = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBNamespaceListResult
      ErrorResponse = Azure::ARM::ServiceBus::Api_2017_04_01::Models::ErrorResponse
      Action = Azure::ARM::ServiceBus::Api_2017_04_01::Models::Action
      AuthorizationRuleProperties = Azure::ARM::ServiceBus::Api_2017_04_01::Models::AuthorizationRuleProperties
      SqlFilter = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SqlFilter
      TrackedResource = Azure::ARM::ServiceBus::Api_2017_04_01::Models::TrackedResource
      ResourceNamespacePatch = Azure::ARM::ServiceBus::Api_2017_04_01::Models::ResourceNamespacePatch
      SBNamespace = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBNamespace
      SBNamespaceUpdateParameters = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBNamespaceUpdateParameters
      SBAuthorizationRule = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBAuthorizationRule
      SBQueue = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBQueue
      SBTopic = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBTopic
      SBSubscription = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBSubscription
      Rule = Azure::ARM::ServiceBus::Api_2017_04_01::Models::Rule
      SqlRuleAction = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SqlRuleAction
      PremiumMessagingRegions = Azure::ARM::ServiceBus::Api_2017_04_01::Models::PremiumMessagingRegions
      Eventhub = Azure::ARM::ServiceBus::Api_2017_04_01::Models::Eventhub
      SkuName = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SkuName
      SkuTier = Azure::ARM::ServiceBus::Api_2017_04_01::Models::SkuTier
      AccessRights = Azure::ARM::ServiceBus::Api_2017_04_01::Models::AccessRights
      KeyType = Azure::ARM::ServiceBus::Api_2017_04_01::Models::KeyType
      EntityStatus = Azure::ARM::ServiceBus::Api_2017_04_01::Models::EntityStatus
      UnavailableReason = Azure::ARM::ServiceBus::Api_2017_04_01::Models::UnavailableReason
      FilterType = Azure::ARM::ServiceBus::Api_2017_04_01::Models::FilterType
      EncodingCaptureDescription = Azure::ARM::ServiceBus::Api_2017_04_01::Models::EncodingCaptureDescription
    end

    #
    # ServiceBus
    #
    class ServiceBusClass
      attr_accessor :operations, :namespaces, :queues, :topics, :subscriptions, :rules, :regions, :premium_messaging_regions_operations, :event_hubs, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ServiceBus::Api_2017_04_01::ServiceBusManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::ServiceBus::Api_2017_04_01::Operations.new(client)
        self.namespaces = Azure::ARM::ServiceBus::Api_2017_04_01::Namespaces.new(client)
        self.queues = Azure::ARM::ServiceBus::Api_2017_04_01::Queues.new(client)
        self.topics = Azure::ARM::ServiceBus::Api_2017_04_01::Topics.new(client)
        self.subscriptions = Azure::ARM::ServiceBus::Api_2017_04_01::Subscriptions.new(client)
        self.rules = Azure::ARM::ServiceBus::Api_2017_04_01::Rules.new(client)
        self.regions = Azure::ARM::ServiceBus::Api_2017_04_01::Regions.new(client)
        self.premium_messaging_regions_operations = Azure::ARM::ServiceBus::Api_2017_04_01::PremiumMessagingRegionsOperations.new(client)
        self.event_hubs = Azure::ARM::ServiceBus::Api_2017_04_01::EventHubs.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-01'
            client = Azure::ARM::ServiceBus::Api_2017_04_01::ServiceBusManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def check_name_availability
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::CheckNameAvailability
        end
        def premium_messaging_regions_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::PremiumMessagingRegionsListResult
        end
        def sbqueue_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBQueueListResult
        end
        def premium_messaging_regions_properties
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::PremiumMessagingRegionsProperties
        end
        def event_hub_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::EventHubListResult
        end
        def sbtopic_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBTopicListResult
        end
        def capture_description
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::CaptureDescription
        end
        def rule_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::RuleListResult
        end
        def sbauthorization_rule_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBAuthorizationRuleListResult
        end
        def sbsubscription_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBSubscriptionListResult
        end
        def access_keys
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::AccessKeys
        end
        def correlation_filter
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::CorrelationFilter
        end
        def message_count_details
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::MessageCountDetails
        end
        def check_name_availability_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::CheckNameAvailabilityResult
        end
        def sbsku
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBSku
        end
        def operation_display
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::OperationDisplay
        end
        def destination
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::Destination
        end
        def operation
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::Operation
        end
        def regenerate_access_key_parameters
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::RegenerateAccessKeyParameters
        end
        def operation_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::OperationListResult
        end
        def sbnamespace_list_result
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBNamespaceListResult
        end
        def error_response
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::ErrorResponse
        end
        def action
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::Action
        end
        def authorization_rule_properties
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::AuthorizationRuleProperties
        end
        def sql_filter
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SqlFilter
        end
        def tracked_resource
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::TrackedResource
        end
        def resource_namespace_patch
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::ResourceNamespacePatch
        end
        def sbnamespace
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBNamespace
        end
        def sbnamespace_update_parameters
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBNamespaceUpdateParameters
        end
        def sbauthorization_rule
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBAuthorizationRule
        end
        def sbqueue
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBQueue
        end
        def sbtopic
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBTopic
        end
        def sbsubscription
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SBSubscription
        end
        def rule
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::Rule
        end
        def sql_rule_action
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SqlRuleAction
        end
        def premium_messaging_regions
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::PremiumMessagingRegions
        end
        def eventhub
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::Eventhub
        end
        def sku_name
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SkuName
        end
        def sku_tier
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::SkuTier
        end
        def access_rights
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::AccessRights
        end
        def key_type
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::KeyType
        end
        def entity_status
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::EntityStatus
        end
        def unavailable_reason
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::UnavailableReason
        end
        def filter_type
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::FilterType
        end
        def encoding_capture_description
          Azure::ARM::ServiceBus::Api_2017_04_01::Models::EncodingCaptureDescription
        end
      end
    end
  end
end
