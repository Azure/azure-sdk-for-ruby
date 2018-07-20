# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_relay'

module Azure::Profiles::Latest
  module Relay
    module Mgmt
      HybridConnections = Azure::Relay::Mgmt::V2017_04_01::HybridConnections
      Operations = Azure::Relay::Mgmt::V2017_04_01::Operations
      WCFRelays = Azure::Relay::Mgmt::V2017_04_01::WCFRelays
      Namespaces = Azure::Relay::Mgmt::V2017_04_01::Namespaces

      module Models
        KeyType = Azure::Relay::Mgmt::V2017_04_01::Models::KeyType
        Sku = Azure::Relay::Mgmt::V2017_04_01::Models::Sku
        CheckNameAvailabilityResult = Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        Resource = Azure::Relay::Mgmt::V2017_04_01::Models::Resource
        SkuTier = Azure::Relay::Mgmt::V2017_04_01::Models::SkuTier
        AccessKeys = Azure::Relay::Mgmt::V2017_04_01::Models::AccessKeys
        AuthorizationRuleListResult = Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        RegenerateAccessKeyParameters = Azure::Relay::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        RelayNamespaceListResult = Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespaceListResult
        CheckNameAvailability = Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailability
        OperationDisplay = Azure::Relay::Mgmt::V2017_04_01::Models::OperationDisplay
        WcfRelaysListResult = Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelaysListResult
        HybridConnectionListResult = Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnectionListResult
        HybridConnection = Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnection
        ResourceNamespacePatch = Azure::Relay::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
        OperationListResult = Azure::Relay::Mgmt::V2017_04_01::Models::OperationListResult
        WcfRelay = Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelay
        ErrorResponse = Azure::Relay::Mgmt::V2017_04_01::Models::ErrorResponse
        RelayUpdateParameters = Azure::Relay::Mgmt::V2017_04_01::Models::RelayUpdateParameters
        AuthorizationRule = Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRule
        RelayNamespace = Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespace
        Operation = Azure::Relay::Mgmt::V2017_04_01::Models::Operation
        TrackedResource = Azure::Relay::Mgmt::V2017_04_01::Models::TrackedResource
        Relaytype = Azure::Relay::Mgmt::V2017_04_01::Models::Relaytype
        ProvisioningStateEnum = Azure::Relay::Mgmt::V2017_04_01::Models::ProvisioningStateEnum
        AccessRights = Azure::Relay::Mgmt::V2017_04_01::Models::AccessRights
        UnavailableReason = Azure::Relay::Mgmt::V2017_04_01::Models::UnavailableReason
      end

      class RelayManagementClass
        attr_reader :hybrid_connections, :operations, :wcfrelays, :namespaces, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Relay::Mgmt::V2017_04_01::RelayManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @hybrid_connections = @client_0.hybrid_connections
          @operations = @client_0.operations
          @wcfrelays = @client_0.wcfrelays
          @namespaces = @client_0.namespaces

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
          def key_type
            Azure::Relay::Mgmt::V2017_04_01::Models::KeyType
          end
          def sku
            Azure::Relay::Mgmt::V2017_04_01::Models::Sku
          end
          def check_name_availability_result
            Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::Relay::Mgmt::V2017_04_01::Models::Resource
          end
          def sku_tier
            Azure::Relay::Mgmt::V2017_04_01::Models::SkuTier
          end
          def access_keys
            Azure::Relay::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def authorization_rule_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def regenerate_access_key_parameters
            Azure::Relay::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
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
          def wcf_relays_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelaysListResult
          end
          def hybrid_connection_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnectionListResult
          end
          def hybrid_connection
            Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnection
          end
          def resource_namespace_patch
            Azure::Relay::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
          end
          def operation_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def wcf_relay
            Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelay
          end
          def error_response
            Azure::Relay::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def relay_update_parameters
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayUpdateParameters
          end
          def authorization_rule
            Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def relay_namespace
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespace
          end
          def operation
            Azure::Relay::Mgmt::V2017_04_01::Models::Operation
          end
          def tracked_resource
            Azure::Relay::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def relaytype
            Azure::Relay::Mgmt::V2017_04_01::Models::Relaytype
          end
          def provisioning_state_enum
            Azure::Relay::Mgmt::V2017_04_01::Models::ProvisioningStateEnum
          end
          def access_rights
            Azure::Relay::Mgmt::V2017_04_01::Models::AccessRights
          end
          def unavailable_reason
            Azure::Relay::Mgmt::V2017_04_01::Models::UnavailableReason
          end
        end
      end
    end
  end
end
