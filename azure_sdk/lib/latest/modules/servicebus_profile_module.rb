# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_bus'

module Azure::Profiles::Latest
  module ServiceBus
    module Mgmt
      DisasterRecoveryConfigs = Azure::ServiceBus::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      MigrationConfigs = Azure::ServiceBus::Mgmt::V2017_04_01::MigrationConfigs
      Queues = Azure::ServiceBus::Mgmt::V2017_04_01::Queues
      Rules = Azure::ServiceBus::Mgmt::V2017_04_01::Rules
      PremiumMessagingRegionsOperations = Azure::ServiceBus::Mgmt::V2017_04_01::PremiumMessagingRegionsOperations
      EventHubs = Azure::ServiceBus::Mgmt::V2017_04_01::EventHubs
      Topics = Azure::ServiceBus::Mgmt::V2017_04_01::Topics
      Operations = Azure::ServiceBus::Mgmt::V2017_04_01::Operations
      Namespaces = Azure::ServiceBus::Mgmt::V2017_04_01::Namespaces
      Regions = Azure::ServiceBus::Mgmt::V2017_04_01::Regions
      Subscriptions = Azure::ServiceBus::Mgmt::V2017_04_01::Subscriptions

      module Models
        KeyType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::KeyType
        AccessRights = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessRights
        SkuTier = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuTier
        EntityStatus = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EntityStatus
        Resource = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Resource
        SBSku = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSku
        SBNamespaceListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceListResult
        SBNamespaceMigrate = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceMigrate
        SBAuthorizationRuleListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRuleListResult
        SqlFilter = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlFilter
        CorrelationFilter = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CorrelationFilter
        MessageCountDetails = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MessageCountDetails
        OperationDisplay = Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationDisplay
        CheckNameAvailability = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailability
        Operation = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Operation
        AuthorizationRuleProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AuthorizationRuleProperties
        OperationListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationListResult
        AccessKeys = Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessKeys
        RegenerateAccessKeyParameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        SBQueueListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueueListResult
        SBTopicListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopicListResult
        EventHubListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult
        CaptureDescription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CaptureDescription
        CheckNameAvailabilityResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        SBSubscriptionListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscriptionListResult
        PremiumMessagingRegionsListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsListResult
        RuleListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RuleListResult
        Destination = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Destination
        MigrationConfigListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigListResult
        ArmDisasterRecoveryListResult = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        SBNamespace = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace
        PremiumMessagingRegionsProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsProperties
        Action = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Action
        SBQueue = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueue
        ResourceNamespacePatch = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
        SBNamespaceUpdateParameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceUpdateParameters
        SBAuthorizationRule = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRule
        SqlRuleAction = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlRuleAction
        SBTopic = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopic
        SBSubscription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscription
        Rule = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Rule
        MigrationConfigProperties = Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigProperties
        PremiumMessagingRegions = Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegions
        Eventhub = Azure::ServiceBus::Mgmt::V2017_04_01::Models::Eventhub
        ArmDisasterRecovery = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        ProvisioningStateDR = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        ErrorResponse = Azure::ServiceBus::Mgmt::V2017_04_01::Models::ErrorResponse
        UnavailableReason = Azure::ServiceBus::Mgmt::V2017_04_01::Models::UnavailableReason
        EncodingCaptureDescription = Azure::ServiceBus::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        TrackedResource = Azure::ServiceBus::Mgmt::V2017_04_01::Models::TrackedResource
        NameSpaceType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::NameSpaceType
        SkuName = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuName
        RoleDisasterRecovery = Azure::ServiceBus::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        FilterType = Azure::ServiceBus::Mgmt::V2017_04_01::Models::FilterType
      end

      class ServiceBusManagementClass
        attr_reader :disaster_recovery_configs, :migration_configs, :queues, :rules, :premium_messaging_regions_operations, :event_hubs, :topics, :operations, :namespaces, :regions, :subscriptions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceBus::Mgmt::V2017_04_01::ServiceBusManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @disaster_recovery_configs = @client_0.disaster_recovery_configs
          @migration_configs = @client_0.migration_configs
          @queues = @client_0.queues
          @rules = @client_0.rules
          @premium_messaging_regions_operations = @client_0.premium_messaging_regions_operations
          @event_hubs = @client_0.event_hubs
          @topics = @client_0.topics
          @operations = @client_0.operations
          @namespaces = @client_0.namespaces
          @regions = @client_0.regions
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
          def key_type
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::KeyType
          end
          def access_rights
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessRights
          end
          def sku_tier
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SkuTier
          end
          def entity_status
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EntityStatus
          end
          def resource
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Resource
          end
          def sbsku
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSku
          end
          def sbnamespace_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceListResult
          end
          def sbnamespace_migrate
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespaceMigrate
          end
          def sbauthorization_rule_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBAuthorizationRuleListResult
          end
          def sql_filter
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlFilter
          end
          def correlation_filter
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CorrelationFilter
          end
          def message_count_details
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MessageCountDetails
          end
          def operation_display
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def check_name_availability
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailability
          end
          def operation
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Operation
          end
          def authorization_rule_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AuthorizationRuleProperties
          end
          def operation_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def access_keys
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def regenerate_access_key_parameters
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def sbqueue_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueueListResult
          end
          def sbtopic_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBTopicListResult
          end
          def event_hub_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def capture_description
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def check_name_availability_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def sbsubscription_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBSubscriptionListResult
          end
          def premium_messaging_regions_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsListResult
          end
          def rule_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::RuleListResult
          end
          def destination
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Destination
          end
          def migration_config_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigListResult
          end
          def arm_disaster_recovery_list_result
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def sbnamespace
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace
          end
          def premium_messaging_regions_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegionsProperties
          end
          def action
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Action
          end
          def sbqueue
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBQueue
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
          def sql_rule_action
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::SqlRuleAction
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
          def migration_config_properties
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::MigrationConfigProperties
          end
          def premium_messaging_regions
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::PremiumMessagingRegions
          end
          def eventhub
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::Eventhub
          end
          def arm_disaster_recovery
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def provisioning_state_dr
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
          def error_response
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def unavailable_reason
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def encoding_capture_description
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def tracked_resource
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def name_space_type
            Azure::ServiceBus::Mgmt::V2017_04_01::Models::NameSpaceType
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
        end
      end
    end
  end
end
