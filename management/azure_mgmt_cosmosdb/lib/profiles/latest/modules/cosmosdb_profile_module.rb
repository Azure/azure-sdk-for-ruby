# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cosmosdb'

module Azure::Cosmosdb::Profiles::Latest
  module Mgmt
    DatabaseAccounts = Azure::Cosmosdb::Mgmt::V2020_09_01::DatabaseAccounts
    Operations = Azure::Cosmosdb::Mgmt::V2020_09_01::Operations
    Database = Azure::Cosmosdb::Mgmt::V2020_09_01::Database
    Collection = Azure::Cosmosdb::Mgmt::V2020_09_01::Collection
    CollectionRegion = Azure::Cosmosdb::Mgmt::V2020_09_01::CollectionRegion
    DatabaseAccountRegion = Azure::Cosmosdb::Mgmt::V2020_09_01::DatabaseAccountRegion
    PercentileSourceTarget = Azure::Cosmosdb::Mgmt::V2020_09_01::PercentileSourceTarget
    PercentileTarget = Azure::Cosmosdb::Mgmt::V2020_09_01::PercentileTarget
    Percentile = Azure::Cosmosdb::Mgmt::V2020_09_01::Percentile
    CollectionPartitionRegion = Azure::Cosmosdb::Mgmt::V2020_09_01::CollectionPartitionRegion
    CollectionPartition = Azure::Cosmosdb::Mgmt::V2020_09_01::CollectionPartition
    PartitionKeyRangeId = Azure::Cosmosdb::Mgmt::V2020_09_01::PartitionKeyRangeId
    PartitionKeyRangeIdRegion = Azure::Cosmosdb::Mgmt::V2020_09_01::PartitionKeyRangeIdRegion
    SqlResources = Azure::Cosmosdb::Mgmt::V2020_09_01::SqlResources
    MongoDBResources = Azure::Cosmosdb::Mgmt::V2020_09_01::MongoDBResources
    TableResources = Azure::Cosmosdb::Mgmt::V2020_09_01::TableResources
    CassandraResources = Azure::Cosmosdb::Mgmt::V2020_09_01::CassandraResources
    GremlinResources = Azure::Cosmosdb::Mgmt::V2020_09_01::GremlinResources
    NotebookWorkspaces = Azure::Cosmosdb::Mgmt::V2020_09_01::NotebookWorkspaces
    PrivateLinkResources = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::PrivateLinkResources
    PrivateEndpointConnections = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::PrivateEndpointConnections

    module Models
      ErrorResponseUpdatedFormat = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ErrorResponseUpdatedFormat
      IpAddressOrRange = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IpAddressOrRange
      FailoverPolicies = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::FailoverPolicies
      Capability = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Capability
      RegionForOnlineOffline = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::RegionForOnlineOffline
      FailoverPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::FailoverPolicy
      ARMResourceProperties = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ARMResourceProperties
      MetricAvailability = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricAvailability
      PartitionUsagesResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionUsagesResult
      BackupPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::BackupPolicy
      CassandraKeyspaceListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceListResult
      Column = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Column
      SqlDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseGetPropertiesResource
      CassandraPartitionKey = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraPartitionKey
      NotebookWorkspaceListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspaceListResult
      ClusterKey = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ClusterKey
      Indexes = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Indexes
      CassandraSchema = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraSchema
      ExcludedPath = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ExcludedPath
      CassandraTableGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableGetPropertiesResource
      SpatialSpec = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SpatialSpec
      UsagesResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UsagesResult
      ContainerPartitionKey = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ContainerPartitionKey
      Usage = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Usage
      UniqueKeyPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UniqueKeyPolicy
      CassandraTableListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableListResult
      SqlContainerGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerGetPropertiesResource
      GremlinDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseGetPropertiesResource
      MetricName = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricName
      SqlStoredProcedureGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureGetPropertiesResource
      OperationListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::OperationListResult
      SqlStoredProcedureListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureListResult
      GremlinDatabaseListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseListResult
      PartitionMetricListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionMetricListResult
      GremlinGraphGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphGetPropertiesResource
      SqlTriggerGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerGetPropertiesResource
      Operation = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Operation
      SqlTriggerListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerListResult
      OperationDisplay = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::OperationDisplay
      PercentileMetric = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PercentileMetric
      GremlinGraphListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphListResult
      MongoDBDatabaseListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseListResult
      MongoIndexOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoIndexOptions
      ConsistencyPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConsistencyPolicy
      MongoDBCollectionGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionGetPropertiesResource
      Location = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Location
      MetricValue = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricValue
      VirtualNetworkRule = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::VirtualNetworkRule
      TableGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableGetPropertiesResource
      MetricDefinition = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricDefinition
      OptionsResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::OptionsResource
      CassandraKeyspaceGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceGetPropertiesResource
      ExtendedResourceProperties = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ExtendedResourceProperties
      CorsPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CorsPolicy
      ThroughputPolicyResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputPolicyResource
      NotebookWorkspaceConnectionInfoResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspaceConnectionInfoResult
      AutoUpgradePolicyResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::AutoUpgradePolicyResource
      IncludedPath = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IncludedPath
      AutoscaleSettingsResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::AutoscaleSettingsResource
      IndexingPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IndexingPolicy
      ThroughputSettingsGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsGetPropertiesResource
      ConflictResolutionPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConflictResolutionPolicy
      GremlinGraphResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphResource
      SqlContainerListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerListResult
      GremlinDatabaseResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseResource
      SqlUserDefinedFunctionGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionGetPropertiesResource
      DatabaseAccountUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountUpdateParameters
      PercentileMetricListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PercentileMetricListResult
      DatabaseAccountListReadOnlyKeysResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountListReadOnlyKeysResult
      MetricListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricListResult
      CassandraTableResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableResource
      MongoIndex = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoIndex
      DatabaseAccountConnectionString = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountConnectionString
      MongoDBCollectionListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionListResult
      DatabaseAccountListConnectionStringsResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountListConnectionStringsResult
      TableListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableListResult
      DatabaseAccountRegenerateKeyParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountRegenerateKeyParameters
      DatabaseAccountsListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountsListResult
      ThroughputSettingsResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsResource
      CompositePath = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CompositePath
      CassandraKeyspaceResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceResource
      SqlTriggerResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerResource
      PeriodicModeProperties = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PeriodicModeProperties
      SqlDatabaseResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseResource
      MongoDBDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseGetPropertiesResource
      AutoscaleSettings = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::AutoscaleSettings
      Metric = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Metric
      CreateUpdateOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CreateUpdateOptions
      ApiProperties = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ApiProperties
      TableResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableResource
      UniqueKey = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UniqueKey
      SqlContainerResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerResource
      MongoIndexKeys = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoIndexKeys
      MongoDBCollectionResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionResource
      SqlDatabaseListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseListResult
      SqlStoredProcedureResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureResource
      MetricDefinitionsListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricDefinitionsListResult
      MongoDBDatabaseResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseResource
      SqlUserDefinedFunctionListResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionListResult
      SqlUserDefinedFunctionResource = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionResource
      DatabaseAccountGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountGetResults
      SqlDatabaseGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseGetPropertiesOptions
      SqlDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseGetResults
      SqlContainerGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerGetPropertiesOptions
      SqlContainerGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerGetResults
      SqlStoredProcedureGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureGetResults
      SqlUserDefinedFunctionGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionGetResults
      SqlTriggerGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerGetResults
      MongoDBDatabaseGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseGetPropertiesOptions
      MongoDBDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseGetResults
      MongoDBCollectionGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionGetPropertiesOptions
      MongoDBCollectionGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionGetResults
      TableGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableGetPropertiesOptions
      TableGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableGetResults
      CassandraKeyspaceGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceGetPropertiesOptions
      CassandraKeyspaceGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceGetResults
      CassandraTableGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableGetPropertiesOptions
      CassandraTableGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableGetResults
      GremlinDatabaseGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseGetPropertiesOptions
      GremlinDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseGetResults
      GremlinGraphGetPropertiesOptions = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphGetPropertiesOptions
      GremlinGraphGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphGetResults
      ThroughputSettingsGetResults = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsGetResults
      DatabaseAccountCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountCreateUpdateParameters
      DatabaseAccountListKeysResult = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountListKeysResult
      ThroughputSettingsUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsUpdateParameters
      SqlDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseCreateUpdateParameters
      SqlContainerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerCreateUpdateParameters
      SqlStoredProcedureCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureCreateUpdateParameters
      SqlUserDefinedFunctionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionCreateUpdateParameters
      SqlTriggerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerCreateUpdateParameters
      MongoDBDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseCreateUpdateParameters
      MongoDBCollectionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionCreateUpdateParameters
      TableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableCreateUpdateParameters
      CassandraKeyspaceCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceCreateUpdateParameters
      CassandraTableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableCreateUpdateParameters
      GremlinDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseCreateUpdateParameters
      GremlinGraphCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphCreateUpdateParameters
      PartitionUsage = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionUsage
      PercentileMetricValue = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PercentileMetricValue
      PartitionMetric = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionMetric
      PeriodicModeBackupPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PeriodicModeBackupPolicy
      ContinuousModeBackupPolicy = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ContinuousModeBackupPolicy
      NotebookWorkspaceCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspaceCreateUpdateParameters
      NotebookWorkspace = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspace
      DatabaseAccountKind = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountKind
      DatabaseAccountOfferType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountOfferType
      DefaultConsistencyLevel = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DefaultConsistencyLevel
      ConnectorOffer = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConnectorOffer
      PublicNetworkAccess = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PublicNetworkAccess
      ServerVersion = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ServerVersion
      IndexingMode = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IndexingMode
      DataType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DataType
      IndexKind = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IndexKind
      CompositePathSortOrder = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CompositePathSortOrder
      SpatialType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SpatialType
      PartitionKind = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionKind
      ConflictResolutionMode = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConflictResolutionMode
      TriggerType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TriggerType
      TriggerOperation = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TriggerOperation
      KeyKind = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::KeyKind
      UnitType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UnitType
      PrimaryAggregationType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PrimaryAggregationType
      BackupPolicyType = Azure::Cosmosdb::Mgmt::V2020_09_01::Models::BackupPolicyType
      PrivateEndpointProperty = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateEndpointProperty
      PrivateLinkServiceConnectionStateProperty = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateLinkServiceConnectionStateProperty
      PrivateLinkResourceListResult = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateLinkResourceListResult
      ErrorResponse = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::ErrorResponse
      PrivateEndpointConnectionListResult = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateEndpointConnectionListResult
      ARMProxyResource = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::ARMProxyResource
      Resource = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::Resource
      PrivateLinkResource = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateLinkResource
      ProxyResource = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::ProxyResource
      PrivateEndpointConnection = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateEndpointConnection
      TrackedResource = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::TrackedResource
      AzureEntityResource = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::AzureEntityResource
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

        @client_0 = Azure::Cosmosdb::Mgmt::V2020_09_01::CosmosDBManagementClient.new(configurable.credentials, base_url, options)
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

        @client_1 = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::CosmosDBManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @private_link_resources = @client_1.private_link_resources
        @private_endpoint_connections = @client_1.private_endpoint_connections

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Cosmosdb/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def error_response_updated_format
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ErrorResponseUpdatedFormat
      end
      def ip_address_or_range
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IpAddressOrRange
      end
      def failover_policies
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::FailoverPolicies
      end
      def capability
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Capability
      end
      def region_for_online_offline
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::RegionForOnlineOffline
      end
      def failover_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::FailoverPolicy
      end
      def armresource_properties
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ARMResourceProperties
      end
      def metric_availability
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricAvailability
      end
      def partition_usages_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionUsagesResult
      end
      def backup_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::BackupPolicy
      end
      def cassandra_keyspace_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceListResult
      end
      def column
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Column
      end
      def sql_database_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseGetPropertiesResource
      end
      def cassandra_partition_key
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraPartitionKey
      end
      def notebook_workspace_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspaceListResult
      end
      def cluster_key
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ClusterKey
      end
      def indexes
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Indexes
      end
      def cassandra_schema
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraSchema
      end
      def excluded_path
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ExcludedPath
      end
      def cassandra_table_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableGetPropertiesResource
      end
      def spatial_spec
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SpatialSpec
      end
      def usages_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UsagesResult
      end
      def container_partition_key
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ContainerPartitionKey
      end
      def usage
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Usage
      end
      def unique_key_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UniqueKeyPolicy
      end
      def cassandra_table_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableListResult
      end
      def sql_container_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerGetPropertiesResource
      end
      def gremlin_database_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseGetPropertiesResource
      end
      def metric_name
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricName
      end
      def sql_stored_procedure_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureGetPropertiesResource
      end
      def operation_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::OperationListResult
      end
      def sql_stored_procedure_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureListResult
      end
      def gremlin_database_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseListResult
      end
      def partition_metric_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionMetricListResult
      end
      def gremlin_graph_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphGetPropertiesResource
      end
      def sql_trigger_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerGetPropertiesResource
      end
      def operation
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Operation
      end
      def sql_trigger_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerListResult
      end
      def operation_display
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::OperationDisplay
      end
      def percentile_metric
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PercentileMetric
      end
      def gremlin_graph_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphListResult
      end
      def mongo_dbdatabase_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseListResult
      end
      def mongo_index_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoIndexOptions
      end
      def consistency_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConsistencyPolicy
      end
      def mongo_dbcollection_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionGetPropertiesResource
      end
      def location
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Location
      end
      def metric_value
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricValue
      end
      def virtual_network_rule
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::VirtualNetworkRule
      end
      def table_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableGetPropertiesResource
      end
      def metric_definition
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricDefinition
      end
      def options_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::OptionsResource
      end
      def cassandra_keyspace_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceGetPropertiesResource
      end
      def extended_resource_properties
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ExtendedResourceProperties
      end
      def cors_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CorsPolicy
      end
      def throughput_policy_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputPolicyResource
      end
      def notebook_workspace_connection_info_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspaceConnectionInfoResult
      end
      def auto_upgrade_policy_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::AutoUpgradePolicyResource
      end
      def included_path
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IncludedPath
      end
      def autoscale_settings_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::AutoscaleSettingsResource
      end
      def indexing_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IndexingPolicy
      end
      def throughput_settings_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsGetPropertiesResource
      end
      def conflict_resolution_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConflictResolutionPolicy
      end
      def gremlin_graph_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphResource
      end
      def sql_container_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerListResult
      end
      def gremlin_database_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseResource
      end
      def sql_user_defined_function_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionGetPropertiesResource
      end
      def database_account_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountUpdateParameters
      end
      def percentile_metric_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PercentileMetricListResult
      end
      def database_account_list_read_only_keys_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountListReadOnlyKeysResult
      end
      def metric_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricListResult
      end
      def cassandra_table_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableResource
      end
      def mongo_index
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoIndex
      end
      def database_account_connection_string
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountConnectionString
      end
      def mongo_dbcollection_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionListResult
      end
      def database_account_list_connection_strings_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountListConnectionStringsResult
      end
      def table_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableListResult
      end
      def database_account_regenerate_key_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountRegenerateKeyParameters
      end
      def database_accounts_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountsListResult
      end
      def throughput_settings_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsResource
      end
      def composite_path
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CompositePath
      end
      def cassandra_keyspace_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceResource
      end
      def sql_trigger_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerResource
      end
      def periodic_mode_properties
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PeriodicModeProperties
      end
      def sql_database_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseResource
      end
      def mongo_dbdatabase_get_properties_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseGetPropertiesResource
      end
      def autoscale_settings
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::AutoscaleSettings
      end
      def metric
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::Metric
      end
      def create_update_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CreateUpdateOptions
      end
      def api_properties
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ApiProperties
      end
      def table_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableResource
      end
      def unique_key
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UniqueKey
      end
      def sql_container_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerResource
      end
      def mongo_index_keys
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoIndexKeys
      end
      def mongo_dbcollection_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionResource
      end
      def sql_database_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseListResult
      end
      def sql_stored_procedure_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureResource
      end
      def metric_definitions_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MetricDefinitionsListResult
      end
      def mongo_dbdatabase_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseResource
      end
      def sql_user_defined_function_list_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionListResult
      end
      def sql_user_defined_function_resource
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionResource
      end
      def database_account_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountGetResults
      end
      def sql_database_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseGetPropertiesOptions
      end
      def sql_database_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseGetResults
      end
      def sql_container_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerGetPropertiesOptions
      end
      def sql_container_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerGetResults
      end
      def sql_stored_procedure_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureGetResults
      end
      def sql_user_defined_function_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionGetResults
      end
      def sql_trigger_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerGetResults
      end
      def mongo_dbdatabase_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseGetPropertiesOptions
      end
      def mongo_dbdatabase_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseGetResults
      end
      def mongo_dbcollection_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionGetPropertiesOptions
      end
      def mongo_dbcollection_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionGetResults
      end
      def table_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableGetPropertiesOptions
      end
      def table_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableGetResults
      end
      def cassandra_keyspace_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceGetPropertiesOptions
      end
      def cassandra_keyspace_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceGetResults
      end
      def cassandra_table_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableGetPropertiesOptions
      end
      def cassandra_table_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableGetResults
      end
      def gremlin_database_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseGetPropertiesOptions
      end
      def gremlin_database_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseGetResults
      end
      def gremlin_graph_get_properties_options
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphGetPropertiesOptions
      end
      def gremlin_graph_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphGetResults
      end
      def throughput_settings_get_results
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsGetResults
      end
      def database_account_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountCreateUpdateParameters
      end
      def database_account_list_keys_result
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountListKeysResult
      end
      def throughput_settings_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ThroughputSettingsUpdateParameters
      end
      def sql_database_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlDatabaseCreateUpdateParameters
      end
      def sql_container_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlContainerCreateUpdateParameters
      end
      def sql_stored_procedure_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlStoredProcedureCreateUpdateParameters
      end
      def sql_user_defined_function_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlUserDefinedFunctionCreateUpdateParameters
      end
      def sql_trigger_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SqlTriggerCreateUpdateParameters
      end
      def mongo_dbdatabase_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBDatabaseCreateUpdateParameters
      end
      def mongo_dbcollection_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::MongoDBCollectionCreateUpdateParameters
      end
      def table_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TableCreateUpdateParameters
      end
      def cassandra_keyspace_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraKeyspaceCreateUpdateParameters
      end
      def cassandra_table_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CassandraTableCreateUpdateParameters
      end
      def gremlin_database_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinDatabaseCreateUpdateParameters
      end
      def gremlin_graph_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::GremlinGraphCreateUpdateParameters
      end
      def partition_usage
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionUsage
      end
      def percentile_metric_value
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PercentileMetricValue
      end
      def partition_metric
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionMetric
      end
      def periodic_mode_backup_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PeriodicModeBackupPolicy
      end
      def continuous_mode_backup_policy
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ContinuousModeBackupPolicy
      end
      def notebook_workspace_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspaceCreateUpdateParameters
      end
      def notebook_workspace
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::NotebookWorkspace
      end
      def database_account_kind
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountKind
      end
      def database_account_offer_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DatabaseAccountOfferType
      end
      def default_consistency_level
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DefaultConsistencyLevel
      end
      def connector_offer
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConnectorOffer
      end
      def public_network_access
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PublicNetworkAccess
      end
      def server_version
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ServerVersion
      end
      def indexing_mode
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IndexingMode
      end
      def data_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::DataType
      end
      def index_kind
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::IndexKind
      end
      def composite_path_sort_order
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::CompositePathSortOrder
      end
      def spatial_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::SpatialType
      end
      def partition_kind
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PartitionKind
      end
      def conflict_resolution_mode
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::ConflictResolutionMode
      end
      def trigger_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TriggerType
      end
      def trigger_operation
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::TriggerOperation
      end
      def key_kind
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::KeyKind
      end
      def unit_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::UnitType
      end
      def primary_aggregation_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::PrimaryAggregationType
      end
      def backup_policy_type
        Azure::Cosmosdb::Mgmt::V2020_09_01::Models::BackupPolicyType
      end
      def private_endpoint_property
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateEndpointProperty
      end
      def private_link_service_connection_state_property
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateLinkServiceConnectionStateProperty
      end
      def private_link_resource_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateLinkResourceListResult
      end
      def error_response
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::ErrorResponse
      end
      def private_endpoint_connection_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateEndpointConnectionListResult
      end
      def armproxy_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::ARMProxyResource
      end
      def resource
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::Resource
      end
      def private_link_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateLinkResource
      end
      def proxy_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::ProxyResource
      end
      def private_endpoint_connection
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::PrivateEndpointConnection
      end
      def tracked_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01_preview::Models::AzureEntityResource
      end
    end
  end
end
