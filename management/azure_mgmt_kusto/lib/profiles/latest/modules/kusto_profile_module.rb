# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kusto'

module Azure::Kusto::Profiles::Latest
  module Mgmt
    Clusters = Azure::Kusto::Mgmt::V2019_09_07::Clusters
    Databases = Azure::Kusto::Mgmt::V2019_09_07::Databases
    AttachedDatabaseConfigurations = Azure::Kusto::Mgmt::V2019_09_07::AttachedDatabaseConfigurations
    DataConnections = Azure::Kusto::Mgmt::V2019_09_07::DataConnections
    Operations = Azure::Kusto::Mgmt::V2019_09_07::Operations

    module Models
      FollowerDatabaseDefinition = Azure::Kusto::Mgmt::V2019_09_07::Models::FollowerDatabaseDefinition
      TrustedExternalTenant = Azure::Kusto::Mgmt::V2019_09_07::Models::TrustedExternalTenant
      FollowerDatabaseListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::FollowerDatabaseListResult
      VirtualNetworkConfiguration = Azure::Kusto::Mgmt::V2019_09_07::Models::VirtualNetworkConfiguration
      DatabasePrincipalListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalListResult
      AzureSku = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureSku
      OptimizedAutoscale = Azure::Kusto::Mgmt::V2019_09_07::Models::OptimizedAutoscale
      AzureResourceSku = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureResourceSku
      KeyVaultProperties = Azure::Kusto::Mgmt::V2019_09_07::Models::KeyVaultProperties
      SkuDescription = Azure::Kusto::Mgmt::V2019_09_07::Models::SkuDescription
      SkuLocationInfoItem = Azure::Kusto::Mgmt::V2019_09_07::Models::SkuLocationInfoItem
      SkuDescriptionList = Azure::Kusto::Mgmt::V2019_09_07::Models::SkuDescriptionList
      IdentityUserAssignedIdentitiesValue = Azure::Kusto::Mgmt::V2019_09_07::Models::IdentityUserAssignedIdentitiesValue
      CheckNameResult = Azure::Kusto::Mgmt::V2019_09_07::Models::CheckNameResult
      DatabaseStatistics = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabaseStatistics
      Identity = Azure::Kusto::Mgmt::V2019_09_07::Models::Identity
      OperationDisplay = Azure::Kusto::Mgmt::V2019_09_07::Models::OperationDisplay
      ListResourceSkusResult = Azure::Kusto::Mgmt::V2019_09_07::Models::ListResourceSkusResult
      DataConnectionValidationResult = Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionValidationResult
      ClusterCheckNameRequest = Azure::Kusto::Mgmt::V2019_09_07::Models::ClusterCheckNameRequest
      DatabasePrincipalListRequest = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalListRequest
      ClusterListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::ClusterListResult
      DataConnectionValidation = Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionValidation
      AzureCapacity = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureCapacity
      Resource = Azure::Kusto::Mgmt::V2019_09_07::Models::Resource
      AttachedDatabaseConfigurationListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfigurationListResult
      OperationListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::OperationListResult
      DatabasePrincipal = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipal
      Operation = Azure::Kusto::Mgmt::V2019_09_07::Models::Operation
      DataConnectionCheckNameRequest = Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionCheckNameRequest
      DataConnectionValidationListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionValidationListResult
      DatabaseListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabaseListResult
      DataConnectionListResult = Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionListResult
      CheckNameRequest = Azure::Kusto::Mgmt::V2019_09_07::Models::CheckNameRequest
      Cluster = Azure::Kusto::Mgmt::V2019_09_07::Models::Cluster
      ClusterUpdate = Azure::Kusto::Mgmt::V2019_09_07::Models::ClusterUpdate
      ReadWriteDatabase = Azure::Kusto::Mgmt::V2019_09_07::Models::ReadWriteDatabase
      ReadOnlyFollowingDatabase = Azure::Kusto::Mgmt::V2019_09_07::Models::ReadOnlyFollowingDatabase
      ProxyResource = Azure::Kusto::Mgmt::V2019_09_07::Models::ProxyResource
      AttachedDatabaseConfiguration = Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration
      Database = Azure::Kusto::Mgmt::V2019_09_07::Models::Database
      DataConnection = Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnection
      EventHubDataConnection = Azure::Kusto::Mgmt::V2019_09_07::Models::EventHubDataConnection
      IotHubDataConnection = Azure::Kusto::Mgmt::V2019_09_07::Models::IotHubDataConnection
      EventGridDataConnection = Azure::Kusto::Mgmt::V2019_09_07::Models::EventGridDataConnection
      TrackedResource = Azure::Kusto::Mgmt::V2019_09_07::Models::TrackedResource
      AzureEntityResource = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureEntityResource
      State = Azure::Kusto::Mgmt::V2019_09_07::Models::State
      ProvisioningState = Azure::Kusto::Mgmt::V2019_09_07::Models::ProvisioningState
      AzureSkuName = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureSkuName
      AzureSkuTier = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureSkuTier
      AzureScaleType = Azure::Kusto::Mgmt::V2019_09_07::Models::AzureScaleType
      DefaultPrincipalsModificationKind = Azure::Kusto::Mgmt::V2019_09_07::Models::DefaultPrincipalsModificationKind
      PrincipalsModificationKind = Azure::Kusto::Mgmt::V2019_09_07::Models::PrincipalsModificationKind
      DataFormat = Azure::Kusto::Mgmt::V2019_09_07::Models::DataFormat
      IdentityType = Azure::Kusto::Mgmt::V2019_09_07::Models::IdentityType
      DatabasePrincipalRole = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalRole
      DatabasePrincipalType = Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalType
      Type = Azure::Kusto::Mgmt::V2019_09_07::Models::Type
      Reason = Azure::Kusto::Mgmt::V2019_09_07::Models::Reason
    end

    #
    # KustoManagementClass
    #
    class KustoManagementClass
      attr_reader :clusters, :databases, :attached_database_configurations, :data_connections, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Kusto::Mgmt::V2019_09_07::KustoManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @clusters = @client_0.clusters
        @databases = @client_0.databases
        @attached_database_configurations = @client_0.attached_database_configurations
        @data_connections = @client_0.data_connections
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Kusto/Mgmt'
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
      def follower_database_definition
        Azure::Kusto::Mgmt::V2019_09_07::Models::FollowerDatabaseDefinition
      end
      def trusted_external_tenant
        Azure::Kusto::Mgmt::V2019_09_07::Models::TrustedExternalTenant
      end
      def follower_database_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::FollowerDatabaseListResult
      end
      def virtual_network_configuration
        Azure::Kusto::Mgmt::V2019_09_07::Models::VirtualNetworkConfiguration
      end
      def database_principal_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalListResult
      end
      def azure_sku
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureSku
      end
      def optimized_autoscale
        Azure::Kusto::Mgmt::V2019_09_07::Models::OptimizedAutoscale
      end
      def azure_resource_sku
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureResourceSku
      end
      def key_vault_properties
        Azure::Kusto::Mgmt::V2019_09_07::Models::KeyVaultProperties
      end
      def sku_description
        Azure::Kusto::Mgmt::V2019_09_07::Models::SkuDescription
      end
      def sku_location_info_item
        Azure::Kusto::Mgmt::V2019_09_07::Models::SkuLocationInfoItem
      end
      def sku_description_list
        Azure::Kusto::Mgmt::V2019_09_07::Models::SkuDescriptionList
      end
      def identity_user_assigned_identities_value
        Azure::Kusto::Mgmt::V2019_09_07::Models::IdentityUserAssignedIdentitiesValue
      end
      def check_name_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::CheckNameResult
      end
      def database_statistics
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabaseStatistics
      end
      def identity
        Azure::Kusto::Mgmt::V2019_09_07::Models::Identity
      end
      def operation_display
        Azure::Kusto::Mgmt::V2019_09_07::Models::OperationDisplay
      end
      def list_resource_skus_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::ListResourceSkusResult
      end
      def data_connection_validation_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionValidationResult
      end
      def cluster_check_name_request
        Azure::Kusto::Mgmt::V2019_09_07::Models::ClusterCheckNameRequest
      end
      def database_principal_list_request
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalListRequest
      end
      def cluster_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::ClusterListResult
      end
      def data_connection_validation
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionValidation
      end
      def azure_capacity
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureCapacity
      end
      def resource
        Azure::Kusto::Mgmt::V2019_09_07::Models::Resource
      end
      def attached_database_configuration_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfigurationListResult
      end
      def operation_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::OperationListResult
      end
      def database_principal
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipal
      end
      def operation
        Azure::Kusto::Mgmt::V2019_09_07::Models::Operation
      end
      def data_connection_check_name_request
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionCheckNameRequest
      end
      def data_connection_validation_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionValidationListResult
      end
      def database_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabaseListResult
      end
      def data_connection_list_result
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnectionListResult
      end
      def check_name_request
        Azure::Kusto::Mgmt::V2019_09_07::Models::CheckNameRequest
      end
      def cluster
        Azure::Kusto::Mgmt::V2019_09_07::Models::Cluster
      end
      def cluster_update
        Azure::Kusto::Mgmt::V2019_09_07::Models::ClusterUpdate
      end
      def read_write_database
        Azure::Kusto::Mgmt::V2019_09_07::Models::ReadWriteDatabase
      end
      def read_only_following_database
        Azure::Kusto::Mgmt::V2019_09_07::Models::ReadOnlyFollowingDatabase
      end
      def proxy_resource
        Azure::Kusto::Mgmt::V2019_09_07::Models::ProxyResource
      end
      def attached_database_configuration
        Azure::Kusto::Mgmt::V2019_09_07::Models::AttachedDatabaseConfiguration
      end
      def database
        Azure::Kusto::Mgmt::V2019_09_07::Models::Database
      end
      def data_connection
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataConnection
      end
      def event_hub_data_connection
        Azure::Kusto::Mgmt::V2019_09_07::Models::EventHubDataConnection
      end
      def iot_hub_data_connection
        Azure::Kusto::Mgmt::V2019_09_07::Models::IotHubDataConnection
      end
      def event_grid_data_connection
        Azure::Kusto::Mgmt::V2019_09_07::Models::EventGridDataConnection
      end
      def tracked_resource
        Azure::Kusto::Mgmt::V2019_09_07::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureEntityResource
      end
      def state
        Azure::Kusto::Mgmt::V2019_09_07::Models::State
      end
      def provisioning_state
        Azure::Kusto::Mgmt::V2019_09_07::Models::ProvisioningState
      end
      def azure_sku_name
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureSkuName
      end
      def azure_sku_tier
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureSkuTier
      end
      def azure_scale_type
        Azure::Kusto::Mgmt::V2019_09_07::Models::AzureScaleType
      end
      def default_principals_modification_kind
        Azure::Kusto::Mgmt::V2019_09_07::Models::DefaultPrincipalsModificationKind
      end
      def principals_modification_kind
        Azure::Kusto::Mgmt::V2019_09_07::Models::PrincipalsModificationKind
      end
      def data_format
        Azure::Kusto::Mgmt::V2019_09_07::Models::DataFormat
      end
      def identity_type
        Azure::Kusto::Mgmt::V2019_09_07::Models::IdentityType
      end
      def database_principal_role
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalRole
      end
      def database_principal_type
        Azure::Kusto::Mgmt::V2019_09_07::Models::DatabasePrincipalType
      end
      def type
        Azure::Kusto::Mgmt::V2019_09_07::Models::Type
      end
      def reason
        Azure::Kusto::Mgmt::V2019_09_07::Models::Reason
      end
    end
  end
end
