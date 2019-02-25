# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_bus'

module Azure::Profiles::Latest
  module ServiceBus
    module Mgmt
      Topics = Azure::ServiceBus::Mgmt::V2017_04_01::Topics
      Namespaces = Azure::ServiceBus::Mgmt::V2017_04_01::Namespaces
      Subscriptions = Azure::ServiceBus::Mgmt::V2017_04_01::Subscriptions
      DisasterRecoveryConfigs = Azure::ServiceBus::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      MigrationConfigs = Azure::ServiceBus::Mgmt::V2017_04_01::MigrationConfigs
      Queues = Azure::ServiceBus::Mgmt::V2017_04_01::Queues
      Rules = Azure::ServiceBus::Mgmt::V2017_04_01::Rules
      PremiumMessagingRegionsOperations = Azure::ServiceBus::Mgmt::V2017_04_01::PremiumMessagingRegionsOperations
      Regions = Azure::ServiceBus::Mgmt::V2017_04_01::Regions
      EventHubs = Azure::ServiceBus::Mgmt::V2017_04_01::EventHubs
      Operations = Azure::ServiceBus::Mgmt::V2017_04_01::Operations

      module Models
        AccessRights = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessRights
        ErrorResponse = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ErrorResponse
        TrackedResource = Azure::ServiceBus::Mgmt::V2017_04_01::Models::TrackedResource
        SBQueueListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueueListResult
        Destination = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Destination
        SBTopicListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopicListResult
        MigrationConfigListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigListResult
        PremiumMessagingRegionsListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsListResult
        ArmDisasterRecoveryListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        SBSubscriptionListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscriptionListResult
        SBAuthorizationRuleListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRuleListResult
        MessageCountDetails = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MessageCountDetails
        PremiumMessagingRegionsProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsProperties
        SBNamespaceListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceListResult
        AuthorizationRuleProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AuthorizationRuleProperties
        CheckNameAvailability = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailability
        CaptureDescription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CaptureDescription
        EventHubListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult
        SqlFilter = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlFilter
        AccessKeys = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessKeys
        CorrelationFilter = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CorrelationFilter
        SBSku = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSku
        ResourceNamespacePatch = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
        SBNamespaceUpdateParameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceUpdateParameters
        SBAuthorizationRule = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRule
        SBQueue = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueue
        RegenerateAccessKeyParameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        SBNamespace = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace
        Rule = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Rule
        SBSubscription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscription
        RuleListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RuleListResult
        Eventhub = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Eventhub
        PremiumMessagingRegions = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegions
        MigrationConfigProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigProperties
        SqlRuleAction = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlRuleAction
        SBTopic = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopic
        FilterType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::FilterType
        ArmDisasterRecovery = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        UnavailableReason = Azure::ServiceBus::Mgmt::V2017_04_01::Models::UnavailableReason
        RoleDisasterRecovery = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        EncodingCaptureDescription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        KeyType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::KeyType
        ProvisioningStateDR = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        SkuTier = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuTier
        Resource = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Resource
        OperationDisplay = Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationDisplay
        Operation = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Operation
        OperationListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationListResult
        CheckNameAvailabilityResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        Action = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Action
        SkuName = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuName
        EntityStatus = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EntityStatus
      end

      class ServiceBusManagementClass
        attr_reader :topics, :namespaces, :subscriptions, :disaster_recovery_configs, :migration_configs, :queues, :rules, :premium_messaging_regions_operations, :regions, :event_hubs, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceBus::Mgmt::V2017_04_01::ServiceBusManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @topics = @client_0.topics
          @namespaces = @client_0.namespaces
          @subscriptions = @client_0.subscriptions
          @disaster_recovery_configs = @client_0.disaster_recovery_configs
          @migration_configs = @client_0.migration_configs
          @queues = @client_0.queues
          @rules = @client_0.rules
          @premium_messaging_regions_operations = @client_0.premium_messaging_regions_operations
          @regions = @client_0.regions
          @event_hubs = @client_0.event_hubs
          @operations = @client_0.operations

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
          def access_rights
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessRights
          end
          def error_response
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def tracked_resource
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def sbqueue_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueueListResult
          end
          def destination
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Destination
          end
          def sbtopic_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopicListResult
          end
          def migration_config_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigListResult
          end
          def premium_messaging_regions_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsListResult
          end
          def arm_disaster_recovery_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def sbsubscription_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscriptionListResult
          end
          def sbauthorization_rule_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRuleListResult
          end
          def message_count_details
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MessageCountDetails
          end
          def premium_messaging_regions_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsProperties
          end
          def sbnamespace_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceListResult
          end
          def authorization_rule_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AuthorizationRuleProperties
          end
          def check_name_availability
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailability
          end
          def capture_description
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def event_hub_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def sql_filter
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlFilter
          end
          def access_keys
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def correlation_filter
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CorrelationFilter
          end
          def sbsku
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSku
          end
          def resource_namespace_patch
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
          end
          def sbnamespace_update_parameters
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceUpdateParameters
          end
          def sbauthorization_rule
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRule
          end
          def sbqueue
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueue
          end
          def regenerate_access_key_parameters
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def sbnamespace
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace
          end
          def rule
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Rule
          end
          def sbsubscription
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscription
          end
          def rule_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RuleListResult
          end
          def eventhub
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Eventhub
          end
          def premium_messaging_regions
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegions
          end
          def migration_config_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigProperties
          end
          def sql_rule_action
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlRuleAction
          end
          def sbtopic
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopic
          end
          def filter_type
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::FilterType
          end
          def arm_disaster_recovery
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def unavailable_reason
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def role_disaster_recovery
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
          end
          def encoding_capture_description
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def key_type
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::KeyType
          end
          def provisioning_state_dr
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
          def sku_tier
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuTier
          end
          def resource
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Resource
          end
          def operation_display
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def operation
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Operation
          end
          def operation_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def check_name_availability_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def action
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Action
          end
          def sku_name
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuName
          end
          def entity_status
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EntityStatus
          end
        end
      end
    end
  end
end
