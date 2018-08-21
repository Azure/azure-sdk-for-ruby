# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Latest
  module EventHub
    module Mgmt
      EventHubs = Azure::EventHub::Mgmt::V2017_04_01::EventHubs
      Operations = Azure::EventHub::Mgmt::V2017_04_01::Operations
      ConsumerGroups = Azure::EventHub::Mgmt::V2017_04_01::ConsumerGroups
      Namespaces = Azure::EventHub::Mgmt::V2017_04_01::Namespaces
      DisasterRecoveryConfigs = Azure::EventHub::Mgmt::V2017_04_01::DisasterRecoveryConfigs

      module Models
        KeyType = Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
        Sku = Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
        CaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
        Destination = Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
        EventHubListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
        AccessKeys = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
        ArmDisasterRecoveryListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        ConsumerGroupListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
        Resource = Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
        AuthorizationRuleListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        CheckNameAvailabilityParameter = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
        EHNamespace = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
        AuthorizationRule = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
        Eventhub = Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
        ConsumerGroup = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
        ArmDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        CheckNameAvailabilityResult = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        AccessRights = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
        OperationDisplay = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
        SkuName = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
        OperationListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
        EncodingCaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        UnavailableReason = Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
        EntityStatus = Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
        RoleDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        RegenerateAccessKeyParameters = Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        ProvisioningStateDR = Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        ErrorResponse = Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
        SkuTier = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
        TrackedResource = Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
        Operation = Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
      end

      class EventHubManagementClass
        attr_reader :event_hubs, :operations, :consumer_groups, :namespaces, :disaster_recovery_configs, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @event_hubs = @client_0.event_hubs
          @operations = @client_0.operations
          @consumer_groups = @client_0.consumer_groups
          @namespaces = @client_0.namespaces
          @disaster_recovery_configs = @client_0.disaster_recovery_configs

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EventHub/Mgmt"
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
            Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
          end
          def sku
            Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
          end
          def capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def destination
            Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
          end
          def event_hub_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def access_keys
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def arm_disaster_recovery_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def consumer_group_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
          end
          def resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
          end
          def authorization_rule_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def check_name_availability_parameter
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
          end
          def authorization_rule
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def eventhub
            Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
          end
          def consumer_group
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
          end
          def arm_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def check_name_availability_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def access_rights
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
          end
          def operation_display
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def sku_name
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def encoding_capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def unavailable_reason
            Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def entity_status
            Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
          end
          def role_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
          end
          def regenerate_access_key_parameters
            Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def provisioning_state_dr
            Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
          def error_response
            Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def operation
            Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
          end
        end
      end
    end
  end
end
