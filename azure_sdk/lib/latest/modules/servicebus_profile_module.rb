# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_bus'

module Azure::Profiles::Latest
  module ServiceBus
    module Mgmt
      Regions = Azure::ServiceBus::Mgmt::V2017_04_01::Regions
      Operations = Azure::ServiceBus::Mgmt::V2017_04_01::Operations
      Queues = Azure::ServiceBus::Mgmt::V2017_04_01::Queues
      Rules = Azure::ServiceBus::Mgmt::V2017_04_01::Rules
      PremiumMessagingRegionsOperations = Azure::ServiceBus::Mgmt::V2017_04_01::PremiumMessagingRegionsOperations
      Namespaces = Azure::ServiceBus::Mgmt::V2017_04_01::Namespaces
      DisasterRecoveryConfigs = Azure::ServiceBus::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      EventHubs = Azure::ServiceBus::Mgmt::V2017_04_01::EventHubs
      Topics = Azure::ServiceBus::Mgmt::V2017_04_01::Topics
      Subscriptions = Azure::ServiceBus::Mgmt::V2017_04_01::Subscriptions

      module Models
        OperationDisplay = Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationDisplay
        OperationListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationListResult
        ErrorResponse = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ErrorResponse
        Operation = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Operation
        TrackedResource = Azure::ServiceBus::Mgmt::V2017_04_01::Models::TrackedResource
        KeyType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::KeyType
        SBQueueListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueueListResult
        PremiumMessagingRegionsListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsListResult
        SBSku = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSku
        SBTopicListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopicListResult
        SBNamespaceListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceListResult
        PremiumMessagingRegionsProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsProperties
        SBSubscriptionListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscriptionListResult
        AuthorizationRuleProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AuthorizationRuleProperties
        RuleListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RuleListResult
        CheckNameAvailabilityResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        Resource = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Resource
        MessageCountDetails = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MessageCountDetails
        SBAuthorizationRuleListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRuleListResult
        CorrelationFilter = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CorrelationFilter
        SqlFilter = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlFilter
        CaptureDescription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CaptureDescription
        Destination = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Destination
        EventHubListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult
        AccessKeys = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessKeys
        ArmDisasterRecoveryListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        SBNamespaceUpdateParameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceUpdateParameters
        CheckNameAvailability = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailability
        Action = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Action
        SBNamespace = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace
        RegenerateAccessKeyParameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        ResourceNamespacePatch = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
        SBQueue = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueue
        SBTopic = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopic
        SBSubscription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscription
        Rule = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Rule
        SBAuthorizationRule = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRule
        PremiumMessagingRegions = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegions
        ArmDisasterRecovery = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        Eventhub = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Eventhub
        SkuTier = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuTier
        SqlRuleAction = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlRuleAction
        AccessRights = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessRights
        EntityStatus = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EntityStatus
        EncodingCaptureDescription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        UnavailableReason = Azure::ServiceBus::Mgmt::V2017_04_01::Models::UnavailableReason
        SkuName = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuName
        RoleDisasterRecovery = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        FilterType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::FilterType
        ProvisioningStateDR = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ProvisioningStateDR
      end

      class ServiceBusManagementClass
        attr_reader :regions, :operations, :queues, :rules, :premium_messaging_regions_operations, :namespaces, :disaster_recovery_configs, :event_hubs, :topics, :subscriptions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceBus::Mgmt::V2017_04_01::ServiceBusManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @regions = @client_0.regions
          @operations = @client_0.operations
          @queues = @client_0.queues
          @rules = @client_0.rules
          @premium_messaging_regions_operations = @client_0.premium_messaging_regions_operations
          @namespaces = @client_0.namespaces
          @disaster_recovery_configs = @client_0.disaster_recovery_configs
          @event_hubs = @client_0.event_hubs
          @topics = @client_0.topics
          @subscriptions = @client_0.subscriptions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServiceBus/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def operation_display
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def error_response
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def operation
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Operation
          end
          def tracked_resource
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def key_type
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::KeyType
          end
          def sbqueue_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueueListResult
          end
          def premium_messaging_regions_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsListResult
          end
          def sbsku
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSku
          end
          def sbtopic_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopicListResult
          end
          def sbnamespace_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceListResult
          end
          def premium_messaging_regions_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsProperties
          end
          def sbsubscription_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscriptionListResult
          end
          def authorization_rule_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AuthorizationRuleProperties
          end
          def rule_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RuleListResult
          end
          def check_name_availability_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Resource
          end
          def message_count_details
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MessageCountDetails
          end
          def sbauthorization_rule_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRuleListResult
          end
          def correlation_filter
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CorrelationFilter
          end
          def sql_filter
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlFilter
          end
          def capture_description
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def destination
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Destination
          end
          def event_hub_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def access_keys
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def arm_disaster_recovery_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def sbnamespace_update_parameters
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceUpdateParameters
          end
          def check_name_availability
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailability
          end
          def action
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Action
          end
          def sbnamespace
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace
          end
          def regenerate_access_key_parameters
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def resource_namespace_patch
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
          end
          def sbqueue
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueue
          end
          def sbtopic
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopic
          end
          def sbsubscription
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscription
          end
          def rule
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Rule
          end
          def sbauthorization_rule
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRule
          end
          def premium_messaging_regions
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegions
          end
          def arm_disaster_recovery
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def eventhub
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Eventhub
          end
          def sku_tier
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuTier
          end
          def sql_rule_action
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlRuleAction
          end
          def access_rights
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessRights
          end
          def entity_status
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EntityStatus
          end
          def encoding_capture_description
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def unavailable_reason
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def sku_name
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuName
          end
          def role_disaster_recovery
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
          end
          def filter_type
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::FilterType
          end
          def provisioning_state_dr
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
        end
      end
    end
  end
end
