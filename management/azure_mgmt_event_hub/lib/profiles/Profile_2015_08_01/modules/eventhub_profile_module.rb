# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_event_hub'


module Azure::Profiles::EventHubModule::Management::Profile_2015_08_01
  module EventHub
    Operations = Azure::ARM::EventHub::Api_2015_08_01::Operations
    Namespaces = Azure::ARM::EventHub::Api_2015_08_01::Namespaces
    EventHubs = Azure::ARM::EventHub::Api_2015_08_01::EventHubs
    ConsumerGroups = Azure::ARM::EventHub::Api_2015_08_01::ConsumerGroups

    module Models
      SharedAccessAuthorizationRuleListResult = Azure::ARM::EventHub::Api_2015_08_01::Models::SharedAccessAuthorizationRuleListResult
      ResourceListKeys = Azure::ARM::EventHub::Api_2015_08_01::Models::ResourceListKeys
      Operation = Azure::ARM::EventHub::Api_2015_08_01::Models::Operation
      RegenerateKeysParameters = Azure::ARM::EventHub::Api_2015_08_01::Models::RegenerateKeysParameters
      OperationDisplay = Azure::ARM::EventHub::Api_2015_08_01::Models::OperationDisplay
      OperationListResult = Azure::ARM::EventHub::Api_2015_08_01::Models::OperationListResult
      NamespaceCreateOrUpdateParameters = Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceCreateOrUpdateParameters
      CheckNameAvailabilityResult = Azure::ARM::EventHub::Api_2015_08_01::Models::CheckNameAvailabilityResult
      NamespaceListResult = Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceListResult
      EventHubCreateOrUpdateParameters = Azure::ARM::EventHub::Api_2015_08_01::Models::EventHubCreateOrUpdateParameters
      NamespaceUpdateParameter = Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceUpdateParameter
      CheckNameAvailabilityParameter = Azure::ARM::EventHub::Api_2015_08_01::Models::CheckNameAvailabilityParameter
      EventHubListResult = Azure::ARM::EventHub::Api_2015_08_01::Models::EventHubListResult
      Sku = Azure::ARM::EventHub::Api_2015_08_01::Models::Sku
      ConsumerGroupCreateOrUpdateParameters = Azure::ARM::EventHub::Api_2015_08_01::Models::ConsumerGroupCreateOrUpdateParameters
      SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::ARM::EventHub::Api_2015_08_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
      ConsumerGroupListResult = Azure::ARM::EventHub::Api_2015_08_01::Models::ConsumerGroupListResult
      TrackedResource = Azure::ARM::EventHub::Api_2015_08_01::Models::TrackedResource
      NamespaceResource = Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceResource
      SharedAccessAuthorizationRuleResource = Azure::ARM::EventHub::Api_2015_08_01::Models::SharedAccessAuthorizationRuleResource
      EventHubResource = Azure::ARM::EventHub::Api_2015_08_01::Models::EventHubResource
      ConsumerGroupResource = Azure::ARM::EventHub::Api_2015_08_01::Models::ConsumerGroupResource
      SkuName = Azure::ARM::EventHub::Api_2015_08_01::Models::SkuName
      SkuTier = Azure::ARM::EventHub::Api_2015_08_01::Models::SkuTier
      NamespaceState = Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceState
      AccessRights = Azure::ARM::EventHub::Api_2015_08_01::Models::AccessRights
      Policykey = Azure::ARM::EventHub::Api_2015_08_01::Models::Policykey
      EntityStatus = Azure::ARM::EventHub::Api_2015_08_01::Models::EntityStatus
      UnavailableReason = Azure::ARM::EventHub::Api_2015_08_01::Models::UnavailableReason
    end

    #
    # EventHub
    #
    class EventHubClass
      attr_accessor :operations, :namespaces, :event_hubs, :consumer_groups, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::EventHub::Api_2015_08_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::EventHub::Api_2015_08_01::Operations.new(client)
        self.namespaces = Azure::ARM::EventHub::Api_2015_08_01::Namespaces.new(client)
        self.event_hubs = Azure::ARM::EventHub::Api_2015_08_01::EventHubs.new(client)
        self.consumer_groups = Azure::ARM::EventHub::Api_2015_08_01::ConsumerGroups.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-08-01'
            client = Azure::ARM::EventHub::Api_2015_08_01::EventHubManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def shared_access_authorization_rule_list_result
          Azure::ARM::EventHub::Api_2015_08_01::Models::SharedAccessAuthorizationRuleListResult
        end
        def resource_list_keys
          Azure::ARM::EventHub::Api_2015_08_01::Models::ResourceListKeys
        end
        def operation
          Azure::ARM::EventHub::Api_2015_08_01::Models::Operation
        end
        def regenerate_keys_parameters
          Azure::ARM::EventHub::Api_2015_08_01::Models::RegenerateKeysParameters
        end
        def operation_display
          Azure::ARM::EventHub::Api_2015_08_01::Models::OperationDisplay
        end
        def operation_list_result
          Azure::ARM::EventHub::Api_2015_08_01::Models::OperationListResult
        end
        def namespace_create_or_update_parameters
          Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceCreateOrUpdateParameters
        end
        def check_name_availability_result
          Azure::ARM::EventHub::Api_2015_08_01::Models::CheckNameAvailabilityResult
        end
        def namespace_list_result
          Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceListResult
        end
        def event_hub_create_or_update_parameters
          Azure::ARM::EventHub::Api_2015_08_01::Models::EventHubCreateOrUpdateParameters
        end
        def namespace_update_parameter
          Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceUpdateParameter
        end
        def check_name_availability_parameter
          Azure::ARM::EventHub::Api_2015_08_01::Models::CheckNameAvailabilityParameter
        end
        def event_hub_list_result
          Azure::ARM::EventHub::Api_2015_08_01::Models::EventHubListResult
        end
        def sku
          Azure::ARM::EventHub::Api_2015_08_01::Models::Sku
        end
        def consumer_group_create_or_update_parameters
          Azure::ARM::EventHub::Api_2015_08_01::Models::ConsumerGroupCreateOrUpdateParameters
        end
        def shared_access_authorization_rule_create_or_update_parameters
          Azure::ARM::EventHub::Api_2015_08_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        end
        def consumer_group_list_result
          Azure::ARM::EventHub::Api_2015_08_01::Models::ConsumerGroupListResult
        end
        def tracked_resource
          Azure::ARM::EventHub::Api_2015_08_01::Models::TrackedResource
        end
        def namespace_resource
          Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceResource
        end
        def shared_access_authorization_rule_resource
          Azure::ARM::EventHub::Api_2015_08_01::Models::SharedAccessAuthorizationRuleResource
        end
        def event_hub_resource
          Azure::ARM::EventHub::Api_2015_08_01::Models::EventHubResource
        end
        def consumer_group_resource
          Azure::ARM::EventHub::Api_2015_08_01::Models::ConsumerGroupResource
        end
        def sku_name
          Azure::ARM::EventHub::Api_2015_08_01::Models::SkuName
        end
        def sku_tier
          Azure::ARM::EventHub::Api_2015_08_01::Models::SkuTier
        end
        def namespace_state
          Azure::ARM::EventHub::Api_2015_08_01::Models::NamespaceState
        end
        def access_rights
          Azure::ARM::EventHub::Api_2015_08_01::Models::AccessRights
        end
        def policykey
          Azure::ARM::EventHub::Api_2015_08_01::Models::Policykey
        end
        def entity_status
          Azure::ARM::EventHub::Api_2015_08_01::Models::EntityStatus
        end
        def unavailable_reason
          Azure::ARM::EventHub::Api_2015_08_01::Models::UnavailableReason
        end
      end
    end
  end
end
