# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Management::Profile_Latest
  module EventHub
    Operations = Azure::ARM::EventHub::Api_2017_04_01::Operations
    Namespaces = Azure::ARM::EventHub::Api_2017_04_01::Namespaces
    DisasterRecoveryConfigs = Azure::ARM::EventHub::Api_2017_04_01::DisasterRecoveryConfigs
    EventHubs = Azure::ARM::EventHub::Api_2017_04_01::EventHubs
    ConsumerGroups = Azure::ARM::EventHub::Api_2017_04_01::ConsumerGroups

    module Models
      CaptureDescription = Azure::ARM::EventHub::Api_2017_04_01::Models::CaptureDescription
      Destination = Azure::ARM::EventHub::Api_2017_04_01::Models::Destination
      Resource = Azure::ARM::EventHub::Api_2017_04_01::Models::Resource
      Operation = Azure::ARM::EventHub::Api_2017_04_01::Models::Operation
      ErrorResponse = Azure::ARM::EventHub::Api_2017_04_01::Models::ErrorResponse
      OperationListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::OperationListResult
      EventHubListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::EventHubListResult
      AccessKeys = Azure::ARM::EventHub::Api_2017_04_01::Models::AccessKeys
      ArmDisasterRecoveryListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::ArmDisasterRecoveryListResult
      Sku = Azure::ARM::EventHub::Api_2017_04_01::Models::Sku
      ConsumerGroupListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroupListResult
      AuthorizationRuleListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRuleListResult
      CheckNameAvailabilityParameter = Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityParameter
      EHNamespaceListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespaceListResult
      CheckNameAvailabilityResult = Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityResult
      RegenerateAccessKeyParameters = Azure::ARM::EventHub::Api_2017_04_01::Models::RegenerateAccessKeyParameters
      OperationDisplay = Azure::ARM::EventHub::Api_2017_04_01::Models::OperationDisplay
      TrackedResource = Azure::ARM::EventHub::Api_2017_04_01::Models::TrackedResource
      EHNamespace = Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespace
      AuthorizationRule = Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRule
      Eventhub = Azure::ARM::EventHub::Api_2017_04_01::Models::Eventhub
      ConsumerGroup = Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroup
      ArmDisasterRecovery = Azure::ARM::EventHub::Api_2017_04_01::Models::ArmDisasterRecovery
      SkuName = Azure::ARM::EventHub::Api_2017_04_01::Models::SkuName
      SkuTier = Azure::ARM::EventHub::Api_2017_04_01::Models::SkuTier
      AccessRights = Azure::ARM::EventHub::Api_2017_04_01::Models::AccessRights
      KeyType = Azure::ARM::EventHub::Api_2017_04_01::Models::KeyType
      EntityStatus = Azure::ARM::EventHub::Api_2017_04_01::Models::EntityStatus
      EncodingCaptureDescription = Azure::ARM::EventHub::Api_2017_04_01::Models::EncodingCaptureDescription
      UnavailableReason = Azure::ARM::EventHub::Api_2017_04_01::Models::UnavailableReason
      ProvisioningStateDR = Azure::ARM::EventHub::Api_2017_04_01::Models::ProvisioningStateDR
      RoleDisasterRecovery = Azure::ARM::EventHub::Api_2017_04_01::Models::RoleDisasterRecovery
    end

    #
    # EventHub
    #
    class EventHubClass
      attr_reader :operations, :namespaces, :disaster_recovery_configs, :event_hubs, :consumer_groups, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::EventHub::Api_2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @namespaces = client_0.namespaces
        @disaster_recovery_configs = client_0.disaster_recovery_configs
        @event_hubs = client_0.event_hubs
        @consumer_groups = client_0.consumer_groups

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-04-01')
        case version
          when '2017-04-01'
            client = Azure::ARM::EventHub::Api_2017_04_01::EventHubManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def capture_description
          Azure::ARM::EventHub::Api_2017_04_01::Models::CaptureDescription
        end
        def destination
          Azure::ARM::EventHub::Api_2017_04_01::Models::Destination
        end
        def resource
          Azure::ARM::EventHub::Api_2017_04_01::Models::Resource
        end
        def operation
          Azure::ARM::EventHub::Api_2017_04_01::Models::Operation
        end
        def error_response
          Azure::ARM::EventHub::Api_2017_04_01::Models::ErrorResponse
        end
        def operation_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::OperationListResult
        end
        def event_hub_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::EventHubListResult
        end
        def access_keys
          Azure::ARM::EventHub::Api_2017_04_01::Models::AccessKeys
        end
        def arm_disaster_recovery_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::ArmDisasterRecoveryListResult
        end
        def sku
          Azure::ARM::EventHub::Api_2017_04_01::Models::Sku
        end
        def consumer_group_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroupListResult
        end
        def authorization_rule_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRuleListResult
        end
        def check_name_availability_parameter
          Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityParameter
        end
        def ehnamespace_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespaceListResult
        end
        def check_name_availability_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityResult
        end
        def regenerate_access_key_parameters
          Azure::ARM::EventHub::Api_2017_04_01::Models::RegenerateAccessKeyParameters
        end
        def operation_display
          Azure::ARM::EventHub::Api_2017_04_01::Models::OperationDisplay
        end
        def tracked_resource
          Azure::ARM::EventHub::Api_2017_04_01::Models::TrackedResource
        end
        def ehnamespace
          Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespace
        end
        def authorization_rule
          Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRule
        end
        def eventhub
          Azure::ARM::EventHub::Api_2017_04_01::Models::Eventhub
        end
        def consumer_group
          Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroup
        end
        def arm_disaster_recovery
          Azure::ARM::EventHub::Api_2017_04_01::Models::ArmDisasterRecovery
        end
        def sku_name
          Azure::ARM::EventHub::Api_2017_04_01::Models::SkuName
        end
        def sku_tier
          Azure::ARM::EventHub::Api_2017_04_01::Models::SkuTier
        end
        def access_rights
          Azure::ARM::EventHub::Api_2017_04_01::Models::AccessRights
        end
        def key_type
          Azure::ARM::EventHub::Api_2017_04_01::Models::KeyType
        end
        def entity_status
          Azure::ARM::EventHub::Api_2017_04_01::Models::EntityStatus
        end
        def encoding_capture_description
          Azure::ARM::EventHub::Api_2017_04_01::Models::EncodingCaptureDescription
        end
        def unavailable_reason
          Azure::ARM::EventHub::Api_2017_04_01::Models::UnavailableReason
        end
        def provisioning_state_dr
          Azure::ARM::EventHub::Api_2017_04_01::Models::ProvisioningStateDR
        end
        def role_disaster_recovery
          Azure::ARM::EventHub::Api_2017_04_01::Models::RoleDisasterRecovery
        end
      end
    end
  end
end
