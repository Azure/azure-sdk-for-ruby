# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_relay'

module Azure::Profiles::Latest
  module Relay
    module Mgmt
      Operations = Azure::Relay::Mgmt::V2017_04_01::Operations
      Namespaces = Azure::Relay::Mgmt::V2017_04_01::Namespaces
      HybridConnections = Azure::Relay::Mgmt::V2017_04_01::HybridConnections
      WCFRelays = Azure::Relay::Mgmt::V2017_04_01::WCFRelays

      module Models
        Sku = Azure::Relay::Mgmt::V2017_04_01::Models::Sku
        ErrorResponse = Azure::Relay::Mgmt::V2017_04_01::Models::ErrorResponse
        AccessRights = Azure::Relay::Mgmt::V2017_04_01::Models::AccessRights
        TrackedResource = Azure::Relay::Mgmt::V2017_04_01::Models::TrackedResource
        Resource = Azure::Relay::Mgmt::V2017_04_01::Models::Resource
        KeyType = Azure::Relay::Mgmt::V2017_04_01::Models::KeyType
        RelayNamespaceListResult = Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespaceListResult
        CheckNameAvailability = Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailability
        OperationDisplay = Azure::Relay::Mgmt::V2017_04_01::Models::OperationDisplay
        HybridConnectionListResult = Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnectionListResult
        WcfRelaysListResult = Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelaysListResult
        AuthorizationRuleListResult = Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        OperationListResult = Azure::Relay::Mgmt::V2017_04_01::Models::OperationListResult
        RegenerateAccessKeyParameters = Azure::Relay::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        AccessKeys = Azure::Relay::Mgmt::V2017_04_01::Models::AccessKeys
        RelayNamespace = Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespace
        Operation = Azure::Relay::Mgmt::V2017_04_01::Models::Operation
        RelayUpdateParameters = Azure::Relay::Mgmt::V2017_04_01::Models::RelayUpdateParameters
        Relaytype = Azure::Relay::Mgmt::V2017_04_01::Models::Relaytype
        CheckNameAvailabilityResult = Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        WcfRelay = Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelay
        UnavailableReason = Azure::Relay::Mgmt::V2017_04_01::Models::UnavailableReason
        ProvisioningStateEnum = Azure::Relay::Mgmt::V2017_04_01::Models::ProvisioningStateEnum
        ResourceNamespacePatch = Azure::Relay::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
        AuthorizationRule = Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRule
        SkuTier = Azure::Relay::Mgmt::V2017_04_01::Models::SkuTier
        HybridConnection = Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnection
      end

      class RelayManagementClass
        attr_reader :operations, :namespaces, :hybrid_connections, :wcfrelays, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Relay::Mgmt::V2017_04_01::RelayManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @namespaces = @client_0.namespaces
          @hybrid_connections = @client_0.hybrid_connections
          @wcfrelays = @client_0.wcfrelays

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Relay/Mgmt"
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
          def sku
            Azure::Relay::Mgmt::V2017_04_01::Models::Sku
          end
          def error_response
            Azure::Relay::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def access_rights
            Azure::Relay::Mgmt::V2017_04_01::Models::AccessRights
          end
          def tracked_resource
            Azure::Relay::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def resource
            Azure::Relay::Mgmt::V2017_04_01::Models::Resource
          end
          def key_type
            Azure::Relay::Mgmt::V2017_04_01::Models::KeyType
          end
          def relay_namespace_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespaceListResult
          end
          def check_name_availability
            Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailability
          end
          def operation_display
            Azure::Relay::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def hybrid_connection_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnectionListResult
          end
          def wcf_relays_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelaysListResult
          end
          def authorization_rule_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def operation_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def regenerate_access_key_parameters
            Azure::Relay::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def access_keys
            Azure::Relay::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def relay_namespace
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespace
          end
          def operation
            Azure::Relay::Mgmt::V2017_04_01::Models::Operation
          end
          def relay_update_parameters
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayUpdateParameters
          end
          def relaytype
            Azure::Relay::Mgmt::V2017_04_01::Models::Relaytype
          end
          def check_name_availability_result
            Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def wcf_relay
            Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelay
          end
          def unavailable_reason
            Azure::Relay::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def provisioning_state_enum
            Azure::Relay::Mgmt::V2017_04_01::Models::ProvisioningStateEnum
          end
          def resource_namespace_patch
            Azure::Relay::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
          end
          def authorization_rule
            Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def sku_tier
            Azure::Relay::Mgmt::V2017_04_01::Models::SkuTier
          end
          def hybrid_connection
            Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnection
          end
        end
      end
    end
  end
end
