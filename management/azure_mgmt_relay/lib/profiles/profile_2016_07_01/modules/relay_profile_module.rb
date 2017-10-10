# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_relay'

module Azure::Relay::Management::Profile_2016_07_01
    Operations = Azure::ARM::Relay::Api_2016_07_01::Operations
    Namespaces = Azure::ARM::Relay::Api_2016_07_01::Namespaces
    HybridConnections = Azure::ARM::Relay::Api_2016_07_01::HybridConnections
    WCFRelays = Azure::ARM::Relay::Api_2016_07_01::WCFRelays

    module Models
      AuthorizationRuleListResult = Azure::ARM::Relay::Api_2016_07_01::Models::AuthorizationRuleListResult
      RelayNamespaceListResult = Azure::ARM::Relay::Api_2016_07_01::Models::RelayNamespaceListResult
      OperationDisplay = Azure::ARM::Relay::Api_2016_07_01::Models::OperationDisplay
      HybridConnectionListResult = Azure::ARM::Relay::Api_2016_07_01::Models::HybridConnectionListResult
      RelayNamespaceUpdateParameter = Azure::ARM::Relay::Api_2016_07_01::Models::RelayNamespaceUpdateParameter
      WcfRelaysListResult = Azure::ARM::Relay::Api_2016_07_01::Models::WcfRelaysListResult
      AuthorizationRuleKeys = Azure::ARM::Relay::Api_2016_07_01::Models::AuthorizationRuleKeys
      Operation = Azure::ARM::Relay::Api_2016_07_01::Models::Operation
      RegenerateKeysParameters = Azure::ARM::Relay::Api_2016_07_01::Models::RegenerateKeysParameters
      OperationListResult = Azure::ARM::Relay::Api_2016_07_01::Models::OperationListResult
      ErrorResponse = Azure::ARM::Relay::Api_2016_07_01::Models::ErrorResponse
      CheckNameAvailability = Azure::ARM::Relay::Api_2016_07_01::Models::CheckNameAvailability
      Sku = Azure::ARM::Relay::Api_2016_07_01::Models::Sku
      CheckNameAvailabilityResult = Azure::ARM::Relay::Api_2016_07_01::Models::CheckNameAvailabilityResult
      TrackedResource = Azure::ARM::Relay::Api_2016_07_01::Models::TrackedResource
      HybridConnection = Azure::ARM::Relay::Api_2016_07_01::Models::HybridConnection
      WcfRelay = Azure::ARM::Relay::Api_2016_07_01::Models::WcfRelay
      RelayNamespace = Azure::ARM::Relay::Api_2016_07_01::Models::RelayNamespace
      AuthorizationRule = Azure::ARM::Relay::Api_2016_07_01::Models::AuthorizationRule
      Relaytype = Azure::ARM::Relay::Api_2016_07_01::Models::Relaytype
      AccessRights = Azure::ARM::Relay::Api_2016_07_01::Models::AccessRights
      PolicyKey = Azure::ARM::Relay::Api_2016_07_01::Models::PolicyKey
      UnavailableReason = Azure::ARM::Relay::Api_2016_07_01::Models::UnavailableReason
    end

    #
    # Relay
    #
    class RelayClass
      attr_accessor :operations, :namespaces, :hybrid_connections, :wcfrelays, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Relay::Api_2016_07_01::RelayManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = client.operations
        self.namespaces = client.namespaces
        self.hybrid_connections = client.hybrid_connections
        self.wcfrelays = client.wcfrelays
        self.model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::Relay::Api_2016_07_01::RelayManagementClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def authorization_rule_list_result
          Azure::ARM::Relay::Api_2016_07_01::Models::AuthorizationRuleListResult
        end
        def relay_namespace_list_result
          Azure::ARM::Relay::Api_2016_07_01::Models::RelayNamespaceListResult
        end
        def operation_display
          Azure::ARM::Relay::Api_2016_07_01::Models::OperationDisplay
        end
        def hybrid_connection_list_result
          Azure::ARM::Relay::Api_2016_07_01::Models::HybridConnectionListResult
        end
        def relay_namespace_update_parameter
          Azure::ARM::Relay::Api_2016_07_01::Models::RelayNamespaceUpdateParameter
        end
        def wcf_relays_list_result
          Azure::ARM::Relay::Api_2016_07_01::Models::WcfRelaysListResult
        end
        def authorization_rule_keys
          Azure::ARM::Relay::Api_2016_07_01::Models::AuthorizationRuleKeys
        end
        def operation
          Azure::ARM::Relay::Api_2016_07_01::Models::Operation
        end
        def regenerate_keys_parameters
          Azure::ARM::Relay::Api_2016_07_01::Models::RegenerateKeysParameters
        end
        def operation_list_result
          Azure::ARM::Relay::Api_2016_07_01::Models::OperationListResult
        end
        def error_response
          Azure::ARM::Relay::Api_2016_07_01::Models::ErrorResponse
        end
        def check_name_availability
          Azure::ARM::Relay::Api_2016_07_01::Models::CheckNameAvailability
        end
        def sku
          Azure::ARM::Relay::Api_2016_07_01::Models::Sku
        end
        def check_name_availability_result
          Azure::ARM::Relay::Api_2016_07_01::Models::CheckNameAvailabilityResult
        end
        def tracked_resource
          Azure::ARM::Relay::Api_2016_07_01::Models::TrackedResource
        end
        def hybrid_connection
          Azure::ARM::Relay::Api_2016_07_01::Models::HybridConnection
        end
        def wcf_relay
          Azure::ARM::Relay::Api_2016_07_01::Models::WcfRelay
        end
        def relay_namespace
          Azure::ARM::Relay::Api_2016_07_01::Models::RelayNamespace
        end
        def authorization_rule
          Azure::ARM::Relay::Api_2016_07_01::Models::AuthorizationRule
        end
        def relaytype
          Azure::ARM::Relay::Api_2016_07_01::Models::Relaytype
        end
        def access_rights
          Azure::ARM::Relay::Api_2016_07_01::Models::AccessRights
        end
        def policy_key
          Azure::ARM::Relay::Api_2016_07_01::Models::PolicyKey
        end
        def unavailable_reason
          Azure::ARM::Relay::Api_2016_07_01::Models::UnavailableReason
        end
      end
    end
end
