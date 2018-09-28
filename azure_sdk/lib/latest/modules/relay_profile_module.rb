# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_relay'

module Azure::Profiles::Latest
  module Relay
    module Mgmt
      Operations = Azure::Relay::Mgmt::V2017_04_01::Operations
      HybridConnections = Azure::Relay::Mgmt::V2017_04_01::HybridConnections
      WCFRelays = Azure::Relay::Mgmt::V2017_04_01::WCFRelays
      Namespaces = Azure::Relay::Mgmt::V2017_04_01::Namespaces

      module Models
        Operation = Azure::Relay::Mgmt::V2017_04_01::Models::Operation
        Sku = Azure::Relay::Mgmt::V2017_04_01::Models::Sku
        TrackedResource = Azure::Relay::Mgmt::V2017_04_01::Models::TrackedResource
        AccessRights = Azure::Relay::Mgmt::V2017_04_01::Models::AccessRights
        RelayNamespaceListResult = Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespaceListResult
        CheckNameAvailability = Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailability
        HybridConnectionListResult = Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnectionListResult
        Resource = Azure::Relay::Mgmt::V2017_04_01::Models::Resource
        AuthorizationRuleListResult = Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        CheckNameAvailabilityResult = Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        RegenerateAccessKeyParameters = Azure::Relay::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        ResourceNamespacePatch = Azure::Relay::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
        HybridConnection = Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnection
        WcfRelay = Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelay
        RelayNamespace = Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespace
        RelayUpdateParameters = Azure::Relay::Mgmt::V2017_04_01::Models::RelayUpdateParameters
        AuthorizationRule = Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRule
        Relaytype = Azure::Relay::Mgmt::V2017_04_01::Models::Relaytype
        ProvisioningStateEnum = Azure::Relay::Mgmt::V2017_04_01::Models::ProvisioningStateEnum
        AccessKeys = Azure::Relay::Mgmt::V2017_04_01::Models::AccessKeys
        SkuTier = Azure::Relay::Mgmt::V2017_04_01::Models::SkuTier
        KeyType = Azure::Relay::Mgmt::V2017_04_01::Models::KeyType
        WcfRelaysListResult = Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelaysListResult
        UnavailableReason = Azure::Relay::Mgmt::V2017_04_01::Models::UnavailableReason
        OperationDisplay = Azure::Relay::Mgmt::V2017_04_01::Models::OperationDisplay
        OperationListResult = Azure::Relay::Mgmt::V2017_04_01::Models::OperationListResult
        ErrorResponse = Azure::Relay::Mgmt::V2017_04_01::Models::ErrorResponse
      end

      class RelayManagementClass
        attr_reader :operations, :hybrid_connections, :wcfrelays, :namespaces, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Relay::Mgmt::V2017_04_01::RelayManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @hybrid_connections = @client_0.hybrid_connections
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
          def operation
            Azure::Relay::Mgmt::V2017_04_01::Models::Operation
          end
          def sku
            Azure::Relay::Mgmt::V2017_04_01::Models::Sku
          end
          def tracked_resource
            Azure::Relay::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def access_rights
            Azure::Relay::Mgmt::V2017_04_01::Models::AccessRights
          end
          def relay_namespace_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespaceListResult
          end
          def check_name_availability
            Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailability
          end
          def hybrid_connection_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnectionListResult
          end
          def resource
            Azure::Relay::Mgmt::V2017_04_01::Models::Resource
          end
          def authorization_rule_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def check_name_availability_result
            Azure::Relay::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def regenerate_access_key_parameters
            Azure::Relay::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def resource_namespace_patch
            Azure::Relay::Mgmt::V2017_04_01::Models::ResourceNamespacePatch
          end
          def hybrid_connection
            Azure::Relay::Mgmt::V2017_04_01::Models::HybridConnection
          end
          def wcf_relay
            Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelay
          end
          def relay_namespace
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayNamespace
          end
          def relay_update_parameters
            Azure::Relay::Mgmt::V2017_04_01::Models::RelayUpdateParameters
          end
          def authorization_rule
            Azure::Relay::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def relaytype
            Azure::Relay::Mgmt::V2017_04_01::Models::Relaytype
          end
          def provisioning_state_enum
            Azure::Relay::Mgmt::V2017_04_01::Models::ProvisioningStateEnum
          end
          def access_keys
            Azure::Relay::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def sku_tier
            Azure::Relay::Mgmt::V2017_04_01::Models::SkuTier
          end
          def key_type
            Azure::Relay::Mgmt::V2017_04_01::Models::KeyType
          end
          def wcf_relays_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::WcfRelaysListResult
          end
          def unavailable_reason
            Azure::Relay::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def operation_display
            Azure::Relay::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::Relay::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def error_response
            Azure::Relay::Mgmt::V2017_04_01::Models::ErrorResponse
          end
        end
      end
    end
  end
end
