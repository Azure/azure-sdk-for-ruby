# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_appconfiguration'

module Azure::Appconfiguration::Profiles::Latest
  module Mgmt
    ConfigurationStores = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::ConfigurationStores
    Operations = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Operations
    PrivateEndpointConnections = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::PrivateEndpointConnections
    PrivateLinkResources = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::PrivateLinkResources

    module Models
      ListKeyValueParameters = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ListKeyValueParameters
      UserIdentity = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::UserIdentity
      KeyValue = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::KeyValue
      KeyVaultProperties = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::KeyVaultProperties
      OperationDefinitionDisplay = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::OperationDefinitionDisplay
      Sku = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::Sku
      OperationDefinition = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::OperationDefinition
      ConfigurationStoreListResult = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConfigurationStoreListResult
      OperationDefinitionListResult = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::OperationDefinitionListResult
      CheckNameAvailabilityParameters = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::CheckNameAvailabilityParameters
      Error = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::Error
      ApiKey = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ApiKey
      Resource = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::Resource
      RegenerateKeyParameters = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::RegenerateKeyParameters
      PrivateEndpoint = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateEndpoint
      EncryptionProperties = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::EncryptionProperties
      PrivateLinkServiceConnectionState = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateLinkServiceConnectionState
      ConfigurationStoreUpdateParameters = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConfigurationStoreUpdateParameters
      PrivateEndpointConnection = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateEndpointConnection
      ApiKeyListResult = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ApiKeyListResult
      PrivateEndpointConnectionListResult = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateEndpointConnectionListResult
      NameAvailabilityStatus = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::NameAvailabilityStatus
      PrivateLinkResource = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateLinkResource
      ResourceIdentity = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ResourceIdentity
      PrivateLinkResourceListResult = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateLinkResourceListResult
      ConfigurationStore = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConfigurationStore
      IdentityType = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::IdentityType
      ProvisioningState = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ProvisioningState
      ConnectionStatus = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConnectionStatus
      ActionsRequired = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ActionsRequired
    end

    #
    # AppconfigurationManagementClass
    #
    class AppconfigurationManagementClass
      attr_reader :configuration_stores, :operations, :private_endpoint_connections, :private_link_resources, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Appconfiguration::Mgmt::V2019_11_01_preview::AppConfigurationManagementClient.new(configurable.credentials, base_url, options)
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
        profile_information = 'Profiles/Latest/Appconfiguration/Mgmt'
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
      def list_key_value_parameters
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ListKeyValueParameters
      end
      def user_identity
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::UserIdentity
      end
      def key_value
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::KeyValue
      end
      def key_vault_properties
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::KeyVaultProperties
      end
      def operation_definition_display
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::OperationDefinitionDisplay
      end
      def sku
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::Sku
      end
      def operation_definition
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::OperationDefinition
      end
      def configuration_store_list_result
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConfigurationStoreListResult
      end
      def operation_definition_list_result
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::OperationDefinitionListResult
      end
      def check_name_availability_parameters
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::CheckNameAvailabilityParameters
      end
      def error
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::Error
      end
      def api_key
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ApiKey
      end
      def resource
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::Resource
      end
      def regenerate_key_parameters
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::RegenerateKeyParameters
      end
      def private_endpoint
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateEndpoint
      end
      def encryption_properties
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::EncryptionProperties
      end
      def private_link_service_connection_state
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateLinkServiceConnectionState
      end
      def configuration_store_update_parameters
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConfigurationStoreUpdateParameters
      end
      def private_endpoint_connection
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateEndpointConnection
      end
      def api_key_list_result
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ApiKeyListResult
      end
      def private_endpoint_connection_list_result
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateEndpointConnectionListResult
      end
      def name_availability_status
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::NameAvailabilityStatus
      end
      def private_link_resource
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateLinkResource
      end
      def resource_identity
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ResourceIdentity
      end
      def private_link_resource_list_result
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::PrivateLinkResourceListResult
      end
      def configuration_store
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConfigurationStore
      end
      def identity_type
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::IdentityType
      end
      def provisioning_state
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ProvisioningState
      end
      def connection_status
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ConnectionStatus
      end
      def actions_required
        Azure::Appconfiguration::Mgmt::V2019_11_01_preview::Models::ActionsRequired
      end
    end
  end
end
