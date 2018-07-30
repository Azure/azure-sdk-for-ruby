# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Latest
  module EventHub
    module Mgmt
      ConsumerGroups = Azure::EventHub::Mgmt::V2017_04_01::ConsumerGroups
      Operations = Azure::EventHub::Mgmt::V2017_04_01::Operations
      Namespaces = Azure::EventHub::Mgmt::V2017_04_01::Namespaces
      DisasterRecoveryConfigs = Azure::EventHub::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      EventHubs = Azure::EventHub::Mgmt::V2017_04_01::EventHubs

      module Models
        KeyType = Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
        Sku = Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
        CheckNameAvailabilityResult = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        Resource = Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
        SkuName = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
        SkuTier = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
        CaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
        Destination = Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
        OperationDisplay = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
        EventHubListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
        AccessKeys = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
        OperationListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
        ConsumerGroupListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
        ArmDisasterRecoveryListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
        AuthorizationRuleListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        CheckNameAvailabilityParameter = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
        EHNamespace = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
        ErrorResponse = Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
        Eventhub = Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
        AuthorizationRule = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
        RegenerateAccessKeyParameters = Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        ConsumerGroup = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
        Operation = Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
        TrackedResource = Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
        EntityStatus = Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
        ArmDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        AccessRights = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
        ProvisioningStateDR = Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        EncodingCaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        UnavailableReason = Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
        RoleDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
      end

      class EventHubManagementClass
        attr_reader :consumer_groups, :operations, :namespaces, :disaster_recovery_configs, :event_hubs, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @consumer_groups = @client_0.consumer_groups
          @operations = @client_0.operations
          @namespaces = @client_0.namespaces
          @disaster_recovery_configs = @client_0.disaster_recovery_configs
          @event_hubs = @client_0.event_hubs

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
          def check_name_availability_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
          end
          def sku_name
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
          end
          def capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def destination
            Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
          end
          def operation_display
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def event_hub_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def access_keys
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def consumer_group_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
          end
          def arm_disaster_recovery_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
          end
          def authorization_rule_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def check_name_availability_parameter
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
          end
          def error_response
            Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def eventhub
            Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
          end
          def authorization_rule
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def regenerate_access_key_parameters
            Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def consumer_group
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
          end
          def operation
            Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def entity_status
            Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
          end
          def arm_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def access_rights
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
          end
          def provisioning_state_dr
            Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
          def encoding_capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def unavailable_reason
            Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def role_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
          end
        end
      end
    end
  end
end
