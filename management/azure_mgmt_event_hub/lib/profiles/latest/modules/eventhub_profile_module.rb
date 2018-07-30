# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::EventHub::Profiles::Latest
  module Mgmt
    Operations = Azure::EventHub::Mgmt::V2017_04_01::Operations
    Namespaces = Azure::EventHub::Mgmt::V2017_04_01::Namespaces
    DisasterRecoveryConfigs = Azure::EventHub::Mgmt::V2017_04_01::DisasterRecoveryConfigs
    EventHubs = Azure::EventHub::Mgmt::V2017_04_01::EventHubs
    ConsumerGroups = Azure::EventHub::Mgmt::V2017_04_01::ConsumerGroups
    Regions = Azure::EventHub::Mgmt::V2017_04_01::Regions

    module Models
      MessagingRegionsProperties = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsProperties
      CaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
      Resource = Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
      ErrorResponse = Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
      ArmDisasterRecoveryListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
      EventHubListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
      MessagingRegionsListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsListResult
      AccessKeys = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
      ConsumerGroupListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
      Destination = Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
      CheckNameAvailabilityParameter = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
      EHNamespaceListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
      CheckNameAvailabilityResult = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
      RegenerateAccessKeyParameters = Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
      OperationDisplay = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
      AuthorizationRuleListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
      Operation = Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
      Sku = Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
      OperationListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
      TrackedResource = Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
      EHNamespace = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
      AuthorizationRule = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
      Eventhub = Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
      ConsumerGroup = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
      ArmDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
      MessagingRegions = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegions
      MessagingPlan = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingPlan
      SkuName = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
      SkuTier = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
      AccessRights = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
      KeyType = Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
      EntityStatus = Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
      EncodingCaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
      UnavailableReason = Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
      ProvisioningStateDR = Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
      RoleDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
    end

    #
    # EventHubManagementClass
    #
    class EventHubManagementClass
      attr_reader :operations, :namespaces, :disaster_recovery_configs, :event_hubs, :consumer_groups, :regions, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::EventHub::Mgmt::V2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @namespaces = @client_0.namespaces
        @disaster_recovery_configs = @client_0.disaster_recovery_configs
        @event_hubs = @client_0.event_hubs
        @consumer_groups = @client_0.consumer_groups
        @regions = @client_0.regions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/EventHub/Mgmt'
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
      def messaging_regions_properties
        Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsProperties
      end
      def capture_description
        Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
      end
      def resource
        Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
      end
      def error_response
        Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
      end
      def arm_disaster_recovery_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
      end
      def event_hub_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
      end
      def messaging_regions_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsListResult
      end
      def access_keys
        Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
      end
      def consumer_group_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
      end
      def destination
        Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
      end
      def check_name_availability_parameter
        Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
      end
      def ehnamespace_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
      end
      def check_name_availability_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
      end
      def regenerate_access_key_parameters
        Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
      end
      def operation_display
        Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
      end
      def authorization_rule_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
      end
      def operation
        Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
      end
      def sku
        Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
      end
      def operation_list_result
        Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
      end
      def tracked_resource
        Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
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
      def messaging_regions
        Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegions
      end
      def messaging_plan
        Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingPlan
      end
      def sku_name
        Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
      end
      def sku_tier
        Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
      end
      def access_rights
        Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
      end
      def key_type
        Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
      end
      def entity_status
        Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
      end
      def encoding_capture_description
        Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
      end
      def unavailable_reason
        Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
      end
      def provisioning_state_dr
        Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
      end
      def role_disaster_recovery
        Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
      end
    end
  end
end
