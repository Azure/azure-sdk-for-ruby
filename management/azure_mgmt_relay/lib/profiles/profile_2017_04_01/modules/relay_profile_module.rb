# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_relay'

module Azure::Relay::Management::Profile_2017_04_01
    Operations = Azure::ARM::Relay::Api_2017_04_01::Operations
    Namespaces = Azure::ARM::Relay::Api_2017_04_01::Namespaces
    HybridConnections = Azure::ARM::Relay::Api_2017_04_01::HybridConnections
    WCFRelays = Azure::ARM::Relay::Api_2017_04_01::WCFRelays

    module Models
      RelayNamespaceListResult = Azure::ARM::Relay::Api_2017_04_01::Models::RelayNamespaceListResult
      OperationDisplay = Azure::ARM::Relay::Api_2017_04_01::Models::OperationDisplay
      CheckNameAvailability = Azure::ARM::Relay::Api_2017_04_01::Models::CheckNameAvailability
      HybridConnectionListResult = Azure::ARM::Relay::Api_2017_04_01::Models::HybridConnectionListResult
      CheckNameAvailabilityResult = Azure::ARM::Relay::Api_2017_04_01::Models::CheckNameAvailabilityResult
      WcfRelaysListResult = Azure::ARM::Relay::Api_2017_04_01::Models::WcfRelaysListResult
      ErrorResponse = Azure::ARM::Relay::Api_2017_04_01::Models::ErrorResponse
      OperationListResult = Azure::ARM::Relay::Api_2017_04_01::Models::OperationListResult
      AuthorizationRuleListResult = Azure::ARM::Relay::Api_2017_04_01::Models::AuthorizationRuleListResult
      Sku = Azure::ARM::Relay::Api_2017_04_01::Models::Sku
      AccessKeys = Azure::ARM::Relay::Api_2017_04_01::Models::AccessKeys
      Operation = Azure::ARM::Relay::Api_2017_04_01::Models::Operation
      RegenerateAccessKeyParameters = Azure::ARM::Relay::Api_2017_04_01::Models::RegenerateAccessKeyParameters
      TrackedResource = Azure::ARM::Relay::Api_2017_04_01::Models::TrackedResource
      ResourceNamespacePatch = Azure::ARM::Relay::Api_2017_04_01::Models::ResourceNamespacePatch
      HybridConnection = Azure::ARM::Relay::Api_2017_04_01::Models::HybridConnection
      WcfRelay = Azure::ARM::Relay::Api_2017_04_01::Models::WcfRelay
      RelayNamespace = Azure::ARM::Relay::Api_2017_04_01::Models::RelayNamespace
      RelayUpdateParameters = Azure::ARM::Relay::Api_2017_04_01::Models::RelayUpdateParameters
      AuthorizationRule = Azure::ARM::Relay::Api_2017_04_01::Models::AuthorizationRule
      Relaytype = Azure::ARM::Relay::Api_2017_04_01::Models::Relaytype
      SkuTier = Azure::ARM::Relay::Api_2017_04_01::Models::SkuTier
      ProvisioningStateEnum = Azure::ARM::Relay::Api_2017_04_01::Models::ProvisioningStateEnum
      AccessRights = Azure::ARM::Relay::Api_2017_04_01::Models::AccessRights
      KeyType = Azure::ARM::Relay::Api_2017_04_01::Models::KeyType
      UnavailableReason = Azure::ARM::Relay::Api_2017_04_01::Models::UnavailableReason
    end

    #
    # Relay
    #
    class RelayClass
      attr_reader :operations, :namespaces, :hybrid_connections, :wcfrelays, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Relay::Api_2017_04_01::RelayManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @namespaces = client_0.namespaces
        @hybrid_connections = client_0.hybrid_connections
        @wcfrelays = client_0.wcfrelays

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
            client = Azure::ARM::Relay::Api_2017_04_01::RelayManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def relay_namespace_list_result
          Azure::ARM::Relay::Api_2017_04_01::Models::RelayNamespaceListResult
        end
        def operation_display
          Azure::ARM::Relay::Api_2017_04_01::Models::OperationDisplay
        end
        def check_name_availability
          Azure::ARM::Relay::Api_2017_04_01::Models::CheckNameAvailability
        end
        def hybrid_connection_list_result
          Azure::ARM::Relay::Api_2017_04_01::Models::HybridConnectionListResult
        end
        def check_name_availability_result
          Azure::ARM::Relay::Api_2017_04_01::Models::CheckNameAvailabilityResult
        end
        def wcf_relays_list_result
          Azure::ARM::Relay::Api_2017_04_01::Models::WcfRelaysListResult
        end
        def error_response
          Azure::ARM::Relay::Api_2017_04_01::Models::ErrorResponse
        end
        def operation_list_result
          Azure::ARM::Relay::Api_2017_04_01::Models::OperationListResult
        end
        def authorization_rule_list_result
          Azure::ARM::Relay::Api_2017_04_01::Models::AuthorizationRuleListResult
        end
        def sku
          Azure::ARM::Relay::Api_2017_04_01::Models::Sku
        end
        def access_keys
          Azure::ARM::Relay::Api_2017_04_01::Models::AccessKeys
        end
        def operation
          Azure::ARM::Relay::Api_2017_04_01::Models::Operation
        end
        def regenerate_access_key_parameters
          Azure::ARM::Relay::Api_2017_04_01::Models::RegenerateAccessKeyParameters
        end
        def tracked_resource
          Azure::ARM::Relay::Api_2017_04_01::Models::TrackedResource
        end
        def resource_namespace_patch
          Azure::ARM::Relay::Api_2017_04_01::Models::ResourceNamespacePatch
        end
        def hybrid_connection
          Azure::ARM::Relay::Api_2017_04_01::Models::HybridConnection
        end
        def wcf_relay
          Azure::ARM::Relay::Api_2017_04_01::Models::WcfRelay
        end
        def relay_namespace
          Azure::ARM::Relay::Api_2017_04_01::Models::RelayNamespace
        end
        def relay_update_parameters
          Azure::ARM::Relay::Api_2017_04_01::Models::RelayUpdateParameters
        end
        def authorization_rule
          Azure::ARM::Relay::Api_2017_04_01::Models::AuthorizationRule
        end
        def relaytype
          Azure::ARM::Relay::Api_2017_04_01::Models::Relaytype
        end
        def sku_tier
          Azure::ARM::Relay::Api_2017_04_01::Models::SkuTier
        end
        def provisioning_state_enum
          Azure::ARM::Relay::Api_2017_04_01::Models::ProvisioningStateEnum
        end
        def access_rights
          Azure::ARM::Relay::Api_2017_04_01::Models::AccessRights
        end
        def key_type
          Azure::ARM::Relay::Api_2017_04_01::Models::KeyType
        end
        def unavailable_reason
          Azure::ARM::Relay::Api_2017_04_01::Models::UnavailableReason
        end
      end
    end
end
