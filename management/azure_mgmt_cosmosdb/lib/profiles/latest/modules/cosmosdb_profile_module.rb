# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cosmosdb'

module Azure::Cosmosdb::Profiles::Latest
  module Mgmt
    DatabaseAccounts = Azure::Cosmosdb::Mgmt::V2021_01_15::DatabaseAccounts
    Operations = Azure::Cosmosdb::Mgmt::V2021_01_15::Operations
    Database = Azure::Cosmosdb::Mgmt::V2021_01_15::Database
    Collection = Azure::Cosmosdb::Mgmt::V2021_01_15::Collection
    CollectionRegion = Azure::Cosmosdb::Mgmt::V2021_01_15::CollectionRegion
    DatabaseAccountRegion = Azure::Cosmosdb::Mgmt::V2021_01_15::DatabaseAccountRegion
    PercentileSourceTarget = Azure::Cosmosdb::Mgmt::V2021_01_15::PercentileSourceTarget
    PercentileTarget = Azure::Cosmosdb::Mgmt::V2021_01_15::PercentileTarget
    Percentile = Azure::Cosmosdb::Mgmt::V2021_01_15::Percentile
    CollectionPartitionRegion = Azure::Cosmosdb::Mgmt::V2021_01_15::CollectionPartitionRegion
    CollectionPartition = Azure::Cosmosdb::Mgmt::V2021_01_15::CollectionPartition
    PartitionKeyRangeId = Azure::Cosmosdb::Mgmt::V2021_01_15::PartitionKeyRangeId
    PartitionKeyRangeIdRegion = Azure::Cosmosdb::Mgmt::V2021_01_15::PartitionKeyRangeIdRegion
    SqlResources = Azure::Cosmosdb::Mgmt::V2021_01_15::SqlResources
    MongoDBResources = Azure::Cosmosdb::Mgmt::V2021_01_15::MongoDBResources
    TableResources = Azure::Cosmosdb::Mgmt::V2021_01_15::TableResources
    CassandraResources = Azure::Cosmosdb::Mgmt::V2021_01_15::CassandraResources
    GremlinResources = Azure::Cosmosdb::Mgmt::V2021_01_15::GremlinResources
    NotebookWorkspaces = Azure::Cosmosdb::Mgmt::V2021_01_15::NotebookWorkspaces
    PrivateLinkResources = Azure::Cosmosdb::Mgmt::V2021_01_15::PrivateLinkResources
    PrivateEndpointConnections = Azure::Cosmosdb::Mgmt::V2021_01_15::PrivateEndpointConnections

    module Models
      ErrorResponseUpdatedFormat = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ErrorResponseUpdatedFormat
      FailoverPolicies = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::FailoverPolicies
      ManagedServiceIdentity = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ManagedServiceIdentity
      RegionForOnlineOffline = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::RegionForOnlineOffline
      ConsistencyPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConsistencyPolicy
      ARMResourceProperties = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ARMResourceProperties
      Location = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Location
      ARMProxyResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ARMProxyResource
      VirtualNetworkRule = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::VirtualNetworkRule
      ExtendedResourceProperties = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ExtendedResourceProperties
      PrivateLinkServiceConnectionStateProperty = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateLinkServiceConnectionStateProperty
      ThroughputPolicyResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputPolicyResource
      ApiProperties = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ApiProperties
      AutoUpgradePolicyResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AutoUpgradePolicyResource
      CorsPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CorsPolicy
      AutoscaleSettingsResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AutoscaleSettingsResource
      DatabaseAccountsListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountsListResult
      ThroughputSettingsGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsGetPropertiesResource
      ClusterKey = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ClusterKey
      CassandraSchema = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraSchema
      SqlDatabaseListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseListResult
      CassandraTableGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableGetPropertiesResource
      IncludedPath = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IncludedPath
      MetricDefinition = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricDefinition
      CompositePath = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CompositePath
      MetricAvailability = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricAvailability
      IndexingPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IndexingPolicy
      CassandraTableListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableListResult
      UniqueKey = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UniqueKey
      GremlinDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseGetPropertiesResource
      ConflictResolutionPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConflictResolutionPolicy
      PartitionUsagesResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionUsagesResult
      PrivateEndpointConnectionListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateEndpointConnectionListResult
      UsagesResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UsagesResult
      SqlContainerListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerListResult
      GremlinDatabaseListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseListResult
      NotebookWorkspaceConnectionInfoResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspaceConnectionInfoResult
      GremlinGraphGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphGetPropertiesResource
      SqlUserDefinedFunctionGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionGetPropertiesResource
      Usage = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Usage
      SqlUserDefinedFunctionListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionListResult
      MetricName = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricName
      Resource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Resource
      GremlinGraphListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphListResult
      MongoDBDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseGetPropertiesResource
      ErrorResponse = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ErrorResponse
      PartitionMetricListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionMetricListResult
      ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      MongoIndexKeys = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoIndexKeys
      IpAddressOrRange = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IpAddressOrRange
      MongoIndex = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoIndex
      Capability = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Capability
      PercentileMetricListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PercentileMetricListResult
      FailoverPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::FailoverPolicy
      MongoDBCollectionListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionListResult
      PrivateEndpointProperty = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateEndpointProperty
      MetricListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricListResult
      Metric = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Metric
      TableListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableListResult
      MongoDBDatabaseResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseResource
      MetricValue = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricValue
      BackupPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::BackupPolicy
      CassandraKeyspaceListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceListResult
      MongoDBCollectionResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionResource
      CassandraPartitionKey = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraPartitionKey
      SqlDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseGetPropertiesResource
      Indexes = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Indexes
      OperationListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::OperationListResult
      SpatialSpec = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SpatialSpec
      Operation = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Operation
      UniqueKeyPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UniqueKeyPolicy
      OperationDisplay = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::OperationDisplay
      PrivateLinkResourceListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateLinkResourceListResult
      DatabaseAccountUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountUpdateParameters
      SqlStoredProcedureListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureListResult
      DatabaseAccountListReadOnlyKeysResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountListReadOnlyKeysResult
      SqlTriggerGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerGetPropertiesResource
      OptionsResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::OptionsResource
      PeriodicModeProperties = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PeriodicModeProperties
      DatabaseAccountConnectionString = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountConnectionString
      MongoIndexOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoIndexOptions
      DatabaseAccountListConnectionStringsResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountListConnectionStringsResult
      PercentileMetric = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PercentileMetric
      DatabaseAccountRegenerateKeyParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountRegenerateKeyParameters
      CassandraKeyspaceGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceGetPropertiesResource
      ThroughputSettingsResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsResource
      Column = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Column
      GremlinGraphResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphResource
      ExcludedPath = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ExcludedPath
      SqlDatabaseResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseResource
      SqlContainerGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerGetPropertiesResource
      AutoscaleSettings = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AutoscaleSettings
      NotebookWorkspaceListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspaceListResult
      CreateUpdateOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CreateUpdateOptions
      MongoDBDatabaseListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseListResult
      GremlinDatabaseResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseResource
      TableGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableGetPropertiesResource
      SqlContainerResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerResource
      CassandraTableResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableResource
      SqlStoredProcedureGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureGetPropertiesResource
      SqlStoredProcedureResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureResource
      MongoDBCollectionGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionGetPropertiesResource
      CassandraKeyspaceResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceResource
      ContainerPartitionKey = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ContainerPartitionKey
      SqlUserDefinedFunctionResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionResource
      MetricDefinitionsListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricDefinitionsListResult
      TableResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableResource
      SqlTriggerListResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerListResult
      SqlTriggerResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerResource
      PrivateEndpointConnection = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateEndpointConnection
      DatabaseAccountGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountGetResults
      SqlDatabaseGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseGetPropertiesOptions
      SqlDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseGetResults
      SqlContainerGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerGetPropertiesOptions
      SqlContainerGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerGetResults
      SqlStoredProcedureGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureGetResults
      SqlUserDefinedFunctionGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionGetResults
      SqlTriggerGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerGetResults
      MongoDBDatabaseGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseGetPropertiesOptions
      MongoDBDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseGetResults
      MongoDBCollectionGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionGetPropertiesOptions
      MongoDBCollectionGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionGetResults
      TableGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableGetPropertiesOptions
      TableGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableGetResults
      CassandraKeyspaceGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceGetPropertiesOptions
      CassandraKeyspaceGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceGetResults
      CassandraTableGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableGetPropertiesOptions
      CassandraTableGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableGetResults
      GremlinDatabaseGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseGetPropertiesOptions
      GremlinDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseGetResults
      GremlinGraphGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphGetPropertiesOptions
      GremlinGraphGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphGetResults
      ThroughputSettingsGetResults = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsGetResults
      DatabaseAccountCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountCreateUpdateParameters
      DatabaseAccountListKeysResult = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountListKeysResult
      ThroughputSettingsUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsUpdateParameters
      SqlDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseCreateUpdateParameters
      SqlContainerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerCreateUpdateParameters
      SqlStoredProcedureCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureCreateUpdateParameters
      SqlUserDefinedFunctionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionCreateUpdateParameters
      SqlTriggerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerCreateUpdateParameters
      MongoDBDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseCreateUpdateParameters
      MongoDBCollectionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionCreateUpdateParameters
      TableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableCreateUpdateParameters
      CassandraKeyspaceCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceCreateUpdateParameters
      CassandraTableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableCreateUpdateParameters
      GremlinDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseCreateUpdateParameters
      GremlinGraphCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphCreateUpdateParameters
      PartitionUsage = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionUsage
      PercentileMetricValue = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PercentileMetricValue
      PartitionMetric = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionMetric
      PeriodicModeBackupPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PeriodicModeBackupPolicy
      ContinuousModeBackupPolicy = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ContinuousModeBackupPolicy
      TrackedResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TrackedResource
      AzureEntityResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AzureEntityResource
      ProxyResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ProxyResource
      NotebookWorkspaceCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspaceCreateUpdateParameters
      NotebookWorkspace = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspace
      PrivateLinkResource = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateLinkResource
      DatabaseAccountKind = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountKind
      ResourceIdentityType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ResourceIdentityType
      DatabaseAccountOfferType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountOfferType
      DefaultConsistencyLevel = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DefaultConsistencyLevel
      ConnectorOffer = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConnectorOffer
      PublicNetworkAccess = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PublicNetworkAccess
      ServerVersion = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ServerVersion
      NetworkAclBypass = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NetworkAclBypass
      IndexingMode = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IndexingMode
      DataType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DataType
      IndexKind = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IndexKind
      CompositePathSortOrder = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CompositePathSortOrder
      SpatialType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SpatialType
      PartitionKind = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionKind
      ConflictResolutionMode = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConflictResolutionMode
      TriggerType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TriggerType
      TriggerOperation = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TriggerOperation
      KeyKind = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::KeyKind
      UnitType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UnitType
      PrimaryAggregationType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrimaryAggregationType
      BackupPolicyType = Azure::Cosmosdb::Mgmt::V2021_01_15::Models::BackupPolicyType
    end

    #
    # CosmosdbManagementClass
    #
    class CosmosdbManagementClass
      attr_reader :database_accounts, :operations, :database, :collection, :collection_region, :database_account_region, :percentile_source_target, :percentile_target, :percentile, :collection_partition_region, :collection_partition, :partition_key_range_id, :partition_key_range_id_region, :sql_resources, :mongo_dbresources, :table_resources, :cassandra_resources, :gremlin_resources, :notebook_workspaces, :private_link_resources, :private_endpoint_connections, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Cosmosdb::Mgmt::V2021_01_15::CosmosDBManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @database_accounts = @client_0.database_accounts
        @operations = @client_0.operations
        @database = @client_0.database
        @collection = @client_0.collection
        @collection_region = @client_0.collection_region
        @database_account_region = @client_0.database_account_region
        @percentile_source_target = @client_0.percentile_source_target
        @percentile_target = @client_0.percentile_target
        @percentile = @client_0.percentile
        @collection_partition_region = @client_0.collection_partition_region
        @collection_partition = @client_0.collection_partition
        @partition_key_range_id = @client_0.partition_key_range_id
        @partition_key_range_id_region = @client_0.partition_key_range_id_region
        @sql_resources = @client_0.sql_resources
        @mongo_dbresources = @client_0.mongo_dbresources
        @table_resources = @client_0.table_resources
        @cassandra_resources = @client_0.cassandra_resources
        @gremlin_resources = @client_0.gremlin_resources
        @notebook_workspaces = @client_0.notebook_workspaces
        @private_link_resources = @client_0.private_link_resources
        @private_endpoint_connections = @client_0.private_endpoint_connections

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Cosmosdb/Mgmt'
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
      def error_response_updated_format
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ErrorResponseUpdatedFormat
      end
      def failover_policies
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::FailoverPolicies
      end
      def managed_service_identity
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ManagedServiceIdentity
      end
      def region_for_online_offline
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::RegionForOnlineOffline
      end
      def consistency_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConsistencyPolicy
      end
      def armresource_properties
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ARMResourceProperties
      end
      def location
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Location
      end
      def armproxy_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ARMProxyResource
      end
      def virtual_network_rule
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::VirtualNetworkRule
      end
      def extended_resource_properties
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ExtendedResourceProperties
      end
      def private_link_service_connection_state_property
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateLinkServiceConnectionStateProperty
      end
      def throughput_policy_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputPolicyResource
      end
      def api_properties
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ApiProperties
      end
      def auto_upgrade_policy_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AutoUpgradePolicyResource
      end
      def cors_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CorsPolicy
      end
      def autoscale_settings_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AutoscaleSettingsResource
      end
      def database_accounts_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountsListResult
      end
      def throughput_settings_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsGetPropertiesResource
      end
      def cluster_key
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ClusterKey
      end
      def cassandra_schema
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraSchema
      end
      def sql_database_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseListResult
      end
      def cassandra_table_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableGetPropertiesResource
      end
      def included_path
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IncludedPath
      end
      def metric_definition
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricDefinition
      end
      def composite_path
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CompositePath
      end
      def metric_availability
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricAvailability
      end
      def indexing_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IndexingPolicy
      end
      def cassandra_table_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableListResult
      end
      def unique_key
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UniqueKey
      end
      def gremlin_database_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseGetPropertiesResource
      end
      def conflict_resolution_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConflictResolutionPolicy
      end
      def partition_usages_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionUsagesResult
      end
      def private_endpoint_connection_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateEndpointConnectionListResult
      end
      def usages_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UsagesResult
      end
      def sql_container_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerListResult
      end
      def gremlin_database_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseListResult
      end
      def notebook_workspace_connection_info_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspaceConnectionInfoResult
      end
      def gremlin_graph_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphGetPropertiesResource
      end
      def sql_user_defined_function_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionGetPropertiesResource
      end
      def usage
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Usage
      end
      def sql_user_defined_function_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionListResult
      end
      def metric_name
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricName
      end
      def resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Resource
      end
      def gremlin_graph_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphListResult
      end
      def mongo_dbdatabase_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseGetPropertiesResource
      end
      def error_response
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ErrorResponse
      end
      def partition_metric_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionMetricListResult
      end
      def managed_service_identity_user_assigned_identities_value
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      end
      def mongo_index_keys
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoIndexKeys
      end
      def ip_address_or_range
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IpAddressOrRange
      end
      def mongo_index
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoIndex
      end
      def capability
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Capability
      end
      def percentile_metric_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PercentileMetricListResult
      end
      def failover_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::FailoverPolicy
      end
      def mongo_dbcollection_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionListResult
      end
      def private_endpoint_property
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateEndpointProperty
      end
      def metric_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricListResult
      end
      def metric
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Metric
      end
      def table_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableListResult
      end
      def mongo_dbdatabase_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseResource
      end
      def metric_value
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricValue
      end
      def backup_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::BackupPolicy
      end
      def cassandra_keyspace_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceListResult
      end
      def mongo_dbcollection_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionResource
      end
      def cassandra_partition_key
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraPartitionKey
      end
      def sql_database_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseGetPropertiesResource
      end
      def indexes
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Indexes
      end
      def operation_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::OperationListResult
      end
      def spatial_spec
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SpatialSpec
      end
      def operation
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Operation
      end
      def unique_key_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UniqueKeyPolicy
      end
      def operation_display
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::OperationDisplay
      end
      def private_link_resource_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateLinkResourceListResult
      end
      def database_account_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountUpdateParameters
      end
      def sql_stored_procedure_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureListResult
      end
      def database_account_list_read_only_keys_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountListReadOnlyKeysResult
      end
      def sql_trigger_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerGetPropertiesResource
      end
      def options_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::OptionsResource
      end
      def periodic_mode_properties
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PeriodicModeProperties
      end
      def database_account_connection_string
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountConnectionString
      end
      def mongo_index_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoIndexOptions
      end
      def database_account_list_connection_strings_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountListConnectionStringsResult
      end
      def percentile_metric
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PercentileMetric
      end
      def database_account_regenerate_key_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountRegenerateKeyParameters
      end
      def cassandra_keyspace_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceGetPropertiesResource
      end
      def throughput_settings_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsResource
      end
      def column
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::Column
      end
      def gremlin_graph_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphResource
      end
      def excluded_path
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ExcludedPath
      end
      def sql_database_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseResource
      end
      def sql_container_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerGetPropertiesResource
      end
      def autoscale_settings
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AutoscaleSettings
      end
      def notebook_workspace_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspaceListResult
      end
      def create_update_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CreateUpdateOptions
      end
      def mongo_dbdatabase_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseListResult
      end
      def gremlin_database_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseResource
      end
      def table_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableGetPropertiesResource
      end
      def sql_container_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerResource
      end
      def cassandra_table_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableResource
      end
      def sql_stored_procedure_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureGetPropertiesResource
      end
      def sql_stored_procedure_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureResource
      end
      def mongo_dbcollection_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionGetPropertiesResource
      end
      def cassandra_keyspace_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceResource
      end
      def container_partition_key
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ContainerPartitionKey
      end
      def sql_user_defined_function_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionResource
      end
      def metric_definitions_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MetricDefinitionsListResult
      end
      def table_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableResource
      end
      def sql_trigger_list_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerListResult
      end
      def sql_trigger_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerResource
      end
      def private_endpoint_connection
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateEndpointConnection
      end
      def database_account_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountGetResults
      end
      def sql_database_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseGetPropertiesOptions
      end
      def sql_database_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseGetResults
      end
      def sql_container_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerGetPropertiesOptions
      end
      def sql_container_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerGetResults
      end
      def sql_stored_procedure_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureGetResults
      end
      def sql_user_defined_function_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionGetResults
      end
      def sql_trigger_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerGetResults
      end
      def mongo_dbdatabase_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseGetPropertiesOptions
      end
      def mongo_dbdatabase_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseGetResults
      end
      def mongo_dbcollection_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionGetPropertiesOptions
      end
      def mongo_dbcollection_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionGetResults
      end
      def table_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableGetPropertiesOptions
      end
      def table_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableGetResults
      end
      def cassandra_keyspace_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceGetPropertiesOptions
      end
      def cassandra_keyspace_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceGetResults
      end
      def cassandra_table_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableGetPropertiesOptions
      end
      def cassandra_table_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableGetResults
      end
      def gremlin_database_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseGetPropertiesOptions
      end
      def gremlin_database_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseGetResults
      end
      def gremlin_graph_get_properties_options
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphGetPropertiesOptions
      end
      def gremlin_graph_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphGetResults
      end
      def throughput_settings_get_results
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsGetResults
      end
      def database_account_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountCreateUpdateParameters
      end
      def database_account_list_keys_result
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountListKeysResult
      end
      def throughput_settings_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ThroughputSettingsUpdateParameters
      end
      def sql_database_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlDatabaseCreateUpdateParameters
      end
      def sql_container_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlContainerCreateUpdateParameters
      end
      def sql_stored_procedure_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlStoredProcedureCreateUpdateParameters
      end
      def sql_user_defined_function_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlUserDefinedFunctionCreateUpdateParameters
      end
      def sql_trigger_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SqlTriggerCreateUpdateParameters
      end
      def mongo_dbdatabase_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBDatabaseCreateUpdateParameters
      end
      def mongo_dbcollection_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::MongoDBCollectionCreateUpdateParameters
      end
      def table_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TableCreateUpdateParameters
      end
      def cassandra_keyspace_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraKeyspaceCreateUpdateParameters
      end
      def cassandra_table_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CassandraTableCreateUpdateParameters
      end
      def gremlin_database_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinDatabaseCreateUpdateParameters
      end
      def gremlin_graph_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::GremlinGraphCreateUpdateParameters
      end
      def partition_usage
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionUsage
      end
      def percentile_metric_value
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PercentileMetricValue
      end
      def partition_metric
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionMetric
      end
      def periodic_mode_backup_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PeriodicModeBackupPolicy
      end
      def continuous_mode_backup_policy
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ContinuousModeBackupPolicy
      end
      def tracked_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::AzureEntityResource
      end
      def proxy_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ProxyResource
      end
      def notebook_workspace_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspaceCreateUpdateParameters
      end
      def notebook_workspace
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NotebookWorkspace
      end
      def private_link_resource
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrivateLinkResource
      end
      def database_account_kind
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountKind
      end
      def resource_identity_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ResourceIdentityType
      end
      def database_account_offer_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DatabaseAccountOfferType
      end
      def default_consistency_level
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DefaultConsistencyLevel
      end
      def connector_offer
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConnectorOffer
      end
      def public_network_access
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PublicNetworkAccess
      end
      def server_version
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ServerVersion
      end
      def network_acl_bypass
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::NetworkAclBypass
      end
      def indexing_mode
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IndexingMode
      end
      def data_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::DataType
      end
      def index_kind
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::IndexKind
      end
      def composite_path_sort_order
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::CompositePathSortOrder
      end
      def spatial_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::SpatialType
      end
      def partition_kind
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PartitionKind
      end
      def conflict_resolution_mode
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::ConflictResolutionMode
      end
      def trigger_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TriggerType
      end
      def trigger_operation
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::TriggerOperation
      end
      def key_kind
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::KeyKind
      end
      def unit_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::UnitType
      end
      def primary_aggregation_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::PrimaryAggregationType
      end
      def backup_policy_type
        Azure::Cosmosdb::Mgmt::V2021_01_15::Models::BackupPolicyType
      end
    end
  end
end
