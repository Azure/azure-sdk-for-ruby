# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_event_hub'


module Azure::Profiles::EventHubModule::Management::Profile_2017_04_01
  module EventHub
    Operations = Azure::ARM::EventHub::Api_2017_04_01::Operations
    Namespaces = Azure::ARM::EventHub::Api_2017_04_01::Namespaces
    EventHubs = Azure::ARM::EventHub::Api_2017_04_01::EventHubs
    ConsumerGroups = Azure::ARM::EventHub::Api_2017_04_01::ConsumerGroups

    module Models
      CaptureDescription = Azure::ARM::EventHub::Api_2017_04_01::Models::CaptureDescription
      RegenerateAccessKeyParameters = Azure::ARM::EventHub::Api_2017_04_01::Models::RegenerateAccessKeyParameters
      Destination = Azure::ARM::EventHub::Api_2017_04_01::Models::Destination
      Sku = Azure::ARM::EventHub::Api_2017_04_01::Models::Sku
      OperationDisplay = Azure::ARM::EventHub::Api_2017_04_01::Models::OperationDisplay
      EHNamespaceListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespaceListResult
      AuthorizationRuleListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRuleListResult
      EventHubListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::EventHubListResult
      ErrorResponse = Azure::ARM::EventHub::Api_2017_04_01::Models::ErrorResponse
      Operation = Azure::ARM::EventHub::Api_2017_04_01::Models::Operation
      ConsumerGroupListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroupListResult
      OperationListResult = Azure::ARM::EventHub::Api_2017_04_01::Models::OperationListResult
      CheckNameAvailabilityParameter = Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityParameter
      AccessKeys = Azure::ARM::EventHub::Api_2017_04_01::Models::AccessKeys
      CheckNameAvailabilityResult = Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityResult
      TrackedResource = Azure::ARM::EventHub::Api_2017_04_01::Models::TrackedResource
      EHNamespace = Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespace
      AuthorizationRule = Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRule
      Eventhub = Azure::ARM::EventHub::Api_2017_04_01::Models::Eventhub
      ConsumerGroup = Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroup
      SkuName = Azure::ARM::EventHub::Api_2017_04_01::Models::SkuName
      SkuTier = Azure::ARM::EventHub::Api_2017_04_01::Models::SkuTier
      AccessRights = Azure::ARM::EventHub::Api_2017_04_01::Models::AccessRights
      KeyType = Azure::ARM::EventHub::Api_2017_04_01::Models::KeyType
      EntityStatus = Azure::ARM::EventHub::Api_2017_04_01::Models::EntityStatus
      EncodingCaptureDescription = Azure::ARM::EventHub::Api_2017_04_01::Models::EncodingCaptureDescription
      UnavailableReason = Azure::ARM::EventHub::Api_2017_04_01::Models::UnavailableReason
    end

    #
    # EventHub
    #
    class EventHubClass
      attr_accessor :operations, :namespaces, :event_hubs, :consumer_groups, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::EventHub::Api_2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::EventHub::Api_2017_04_01::Operations.new(client)
        self.namespaces = Azure::ARM::EventHub::Api_2017_04_01::Namespaces.new(client)
        self.event_hubs = Azure::ARM::EventHub::Api_2017_04_01::EventHubs.new(client)
        self.consumer_groups = Azure::ARM::EventHub::Api_2017_04_01::ConsumerGroups.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
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
        def regenerate_access_key_parameters
          Azure::ARM::EventHub::Api_2017_04_01::Models::RegenerateAccessKeyParameters
        end
        def destination
          Azure::ARM::EventHub::Api_2017_04_01::Models::Destination
        end
        def sku
          Azure::ARM::EventHub::Api_2017_04_01::Models::Sku
        end
        def operation_display
          Azure::ARM::EventHub::Api_2017_04_01::Models::OperationDisplay
        end
        def ehnamespace_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::EHNamespaceListResult
        end
        def authorization_rule_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::AuthorizationRuleListResult
        end
        def event_hub_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::EventHubListResult
        end
        def error_response
          Azure::ARM::EventHub::Api_2017_04_01::Models::ErrorResponse
        end
        def operation
          Azure::ARM::EventHub::Api_2017_04_01::Models::Operation
        end
        def consumer_group_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::ConsumerGroupListResult
        end
        def operation_list_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::OperationListResult
        end
        def check_name_availability_parameter
          Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityParameter
        end
        def access_keys
          Azure::ARM::EventHub::Api_2017_04_01::Models::AccessKeys
        end
        def check_name_availability_result
          Azure::ARM::EventHub::Api_2017_04_01::Models::CheckNameAvailabilityResult
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
      end
    end
  end
end
