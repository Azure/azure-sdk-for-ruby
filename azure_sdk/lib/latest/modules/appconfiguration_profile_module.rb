# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_appconfiguration'

module Azure::Profiles::Latest
  module Appconfiguration
    module Mgmt
      ConfigurationStores = Azure::Appconfiguration::Mgmt::V2020_06_01::ConfigurationStores
      Operations = Azure::Appconfiguration::Mgmt::V2020_06_01::Operations
      PrivateEndpointConnections = Azure::Appconfiguration::Mgmt::V2020_06_01::PrivateEndpointConnections
      PrivateLinkResources = Azure::Appconfiguration::Mgmt::V2020_06_01::PrivateLinkResources

      module Models
        ApiKey = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ApiKey
        ApiKeyListResult = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ApiKeyListResult
        ResourceIdentity = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ResourceIdentity
        RegenerateKeyParameters = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::RegenerateKeyParameters
        EncryptionProperties = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::EncryptionProperties
        ListKeyValueParameters = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ListKeyValueParameters
        PrivateLinkServiceConnectionState = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateLinkServiceConnectionState
        KeyValue = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::KeyValue
        Sku = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::Sku
        OperationDefinitionDisplay = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::OperationDefinitionDisplay
        ConfigurationStoreListResult = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConfigurationStoreListResult
        OperationDefinition = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::OperationDefinition
        CheckNameAvailabilityParameters = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::CheckNameAvailabilityParameters
        OperationDefinitionListResult = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::OperationDefinitionListResult
        UserIdentity = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::UserIdentity
        Error = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::Error
        PrivateEndpoint = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpoint
        Resource = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::Resource
        ConfigurationStoreUpdateParameters = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConfigurationStoreUpdateParameters
        PrivateEndpointConnection = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpointConnection
        KeyVaultProperties = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::KeyVaultProperties
        PrivateEndpointConnectionListResult = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpointConnectionListResult
        NameAvailabilityStatus = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::NameAvailabilityStatus
        PrivateLinkResource = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateLinkResource
        PrivateEndpointConnectionReference = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpointConnectionReference
        PrivateLinkResourceListResult = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateLinkResourceListResult
        ConfigurationStore = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConfigurationStore
        IdentityType = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::IdentityType
        ProvisioningState = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ProvisioningState
        ConnectionStatus = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConnectionStatus
        ActionsRequired = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ActionsRequired
        PublicNetworkAccess = Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PublicNetworkAccess
      end

      class AppconfigurationManagementClass
        attr_reader :configuration_stores, :operations, :private_endpoint_connections, :private_link_resources, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Appconfiguration::Mgmt::V2020_06_01::AppConfigurationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @configuration_stores = @client_0.configuration_stores
          @operations = @client_0.operations
          @private_endpoint_connections = @client_0.private_endpoint_connections
          @private_link_resources = @client_0.private_link_resources

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Appconfiguration/Mgmt"
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
          def api_key
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ApiKey
          end
          def api_key_list_result
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ApiKeyListResult
          end
          def resource_identity
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ResourceIdentity
          end
          def regenerate_key_parameters
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::RegenerateKeyParameters
          end
          def encryption_properties
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::EncryptionProperties
          end
          def list_key_value_parameters
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ListKeyValueParameters
          end
          def private_link_service_connection_state
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateLinkServiceConnectionState
          end
          def key_value
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::KeyValue
          end
          def sku
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::Sku
          end
          def operation_definition_display
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::OperationDefinitionDisplay
          end
          def configuration_store_list_result
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConfigurationStoreListResult
          end
          def operation_definition
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::OperationDefinition
          end
          def check_name_availability_parameters
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::CheckNameAvailabilityParameters
          end
          def operation_definition_list_result
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::OperationDefinitionListResult
          end
          def user_identity
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::UserIdentity
          end
          def error
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::Error
          end
          def private_endpoint
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpoint
          end
          def resource
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::Resource
          end
          def configuration_store_update_parameters
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConfigurationStoreUpdateParameters
          end
          def private_endpoint_connection
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpointConnection
          end
          def key_vault_properties
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::KeyVaultProperties
          end
          def private_endpoint_connection_list_result
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpointConnectionListResult
          end
          def name_availability_status
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::NameAvailabilityStatus
          end
          def private_link_resource
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateLinkResource
          end
          def private_endpoint_connection_reference
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateEndpointConnectionReference
          end
          def private_link_resource_list_result
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PrivateLinkResourceListResult
          end
          def configuration_store
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConfigurationStore
          end
          def identity_type
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::IdentityType
          end
          def provisioning_state
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ProvisioningState
          end
          def connection_status
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ConnectionStatus
          end
          def actions_required
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::ActionsRequired
          end
          def public_network_access
            Azure::Appconfiguration::Mgmt::V2020_06_01::Models::PublicNetworkAccess
          end
        end
      end
    end
  end
end
