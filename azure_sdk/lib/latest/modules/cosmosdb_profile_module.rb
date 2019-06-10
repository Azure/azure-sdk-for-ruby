# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cosmosdb'

module Azure::Profiles::Latest
  module Cosmosdb
    module Mgmt
      DatabaseAccounts = Azure::Cosmosdb::Mgmt::V2015_04_08::DatabaseAccounts
      Operations = Azure::Cosmosdb::Mgmt::V2015_04_08::Operations
      Database = Azure::Cosmosdb::Mgmt::V2015_04_08::Database
      Collection = Azure::Cosmosdb::Mgmt::V2015_04_08::Collection
      CollectionRegion = Azure::Cosmosdb::Mgmt::V2015_04_08::CollectionRegion
      DatabaseAccountRegion = Azure::Cosmosdb::Mgmt::V2015_04_08::DatabaseAccountRegion
      PercentileSourceTarget = Azure::Cosmosdb::Mgmt::V2015_04_08::PercentileSourceTarget
      PercentileTarget = Azure::Cosmosdb::Mgmt::V2015_04_08::PercentileTarget
      Percentile = Azure::Cosmosdb::Mgmt::V2015_04_08::Percentile
      CollectionPartitionRegion = Azure::Cosmosdb::Mgmt::V2015_04_08::CollectionPartitionRegion
      CollectionPartition = Azure::Cosmosdb::Mgmt::V2015_04_08::CollectionPartition
      PartitionKeyRangeId = Azure::Cosmosdb::Mgmt::V2015_04_08::PartitionKeyRangeId
      PartitionKeyRangeIdRegion = Azure::Cosmosdb::Mgmt::V2015_04_08::PartitionKeyRangeIdRegion

      module Models
        DatabaseAccountRegenerateKeyParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountRegenerateKeyParameters
        SqlDatabaseResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabaseResource
        Capability = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Capability
        SqlDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabaseCreateUpdateParameters
        FailoverPolicy = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::FailoverPolicy
        SqlContainerResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainerResource
        DatabaseAccountListReadOnlyKeysResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountListReadOnlyKeysResult
        DatabaseAccountListKeysResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountListKeysResult
        DatabaseAccountConnectionString = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountConnectionString
        Indexes = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Indexes
        DatabaseAccountListConnectionStringsResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountListConnectionStringsResult
        ExcludedPath = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ExcludedPath
        ConsistencyPolicy = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ConsistencyPolicy
        ContainerPartitionKey = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ContainerPartitionKey
        Location = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Location
        UniqueKeyPolicy = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UniqueKeyPolicy
        VirtualNetworkRule = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::VirtualNetworkRule
        PartitionMetricListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionMetricListResult
        PartitionUsagesResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionUsagesResult
        PercentileMetricListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PercentileMetricListResult
        SqlContainerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainerCreateUpdateParameters
        PercentileMetric = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PercentileMetric
        MongoDBDatabaseResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabaseResource
        MetricListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricListResult
        MongoDBDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabaseCreateUpdateParameters
        Metric = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Metric
        MongoIndexKeys = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoIndexKeys
        MetricValue = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricValue
        MongoIndexOptions = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoIndexOptions
        MetricDefinitionsListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricDefinitionsListResult
        MongoIndex = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoIndex
        MetricDefinition = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricDefinition
        MongoDBCollectionResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollectionResource
        ErrorResponse = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ErrorResponse
        MongoDBCollectionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollectionCreateUpdateParameters
        RegionForOnlineOffline = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::RegionForOnlineOffline
        TableResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::TableResource
        ExtendedResourceProperties = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ExtendedResourceProperties
        TableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::TableCreateUpdateParameters
        DatabaseAccountPatchParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountPatchParameters
        CassandraKeyspaceResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspaceResource
        SqlDatabaseListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabaseListResult
        CassandraKeyspaceCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspaceCreateUpdateParameters
        IndexingPolicy = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IndexingPolicy
        Column = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Column
        ConflictResolutionPolicy = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ConflictResolutionPolicy
        CassandraPartitionKey = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraPartitionKey
        MongoDBDatabaseListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabaseListResult
        ClusterKey = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ClusterKey
        TableListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::TableListResult
        CassandraSchema = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraSchema
        CassandraTableListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTableListResult
        CassandraTableResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTableResource
        GremlinGraphListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraphListResult
        CassandraTableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTableCreateUpdateParameters
        Resource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Resource
        GremlinDatabaseResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabaseResource
        DatabaseAccountsListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountsListResult
        GremlinDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabaseCreateUpdateParameters
        UniqueKey = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UniqueKey
        GremlinGraphResource = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraphResource
        MongoDBCollectionListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollectionListResult
        GremlinGraphCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraphCreateUpdateParameters
        GremlinDatabaseListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabaseListResult
        OperationDisplay = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::OperationDisplay
        MetricAvailability = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricAvailability
        Operation = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Operation
        SqlContainerListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainerListResult
        OperationListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::OperationListResult
        FailoverPolicies = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::FailoverPolicies
        MetricName = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricName
        CassandraKeyspaceListResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspaceListResult
        Usage = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Usage
        IncludedPath = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IncludedPath
        UsagesResult = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UsagesResult
        DatabaseAccount = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccount
        SqlDatabase = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabase
        SqlContainer = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainer
        MongoDBDatabase = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabase
        MongoDBCollection = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollection
        Table = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Table
        CassandraKeyspace = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspace
        CassandraTable = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTable
        GremlinDatabase = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabase
        GremlinGraph = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraph
        DatabaseAccountCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountCreateUpdateParameters
        PartitionUsage = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionUsage
        PercentileMetricValue = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PercentileMetricValue
        PartitionMetric = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionMetric
        DatabaseAccountKind = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountKind
        DatabaseAccountOfferType = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountOfferType
        DefaultConsistencyLevel = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DefaultConsistencyLevel
        IndexingMode = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IndexingMode
        DataType = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DataType
        IndexKind = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IndexKind
        PartitionKind = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionKind
        ConflictResolutionMode = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ConflictResolutionMode
        KeyKind = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::KeyKind
        UnitType = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UnitType
        PrimaryAggregationType = Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PrimaryAggregationType
      end

      class CosmosdbManagementClass
        attr_reader :database_accounts, :operations, :database, :collection, :collection_region, :database_account_region, :percentile_source_target, :percentile_target, :percentile, :collection_partition_region, :collection_partition, :partition_key_range_id, :partition_key_range_id_region, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Cosmosdb::Mgmt::V2015_04_08::CosmosDB.new(configurable.credentials, base_url, options)
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

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Cosmosdb/Mgmt"
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
          def database_account_regenerate_key_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountRegenerateKeyParameters
          end
          def sql_database_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabaseResource
          end
          def capability
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Capability
          end
          def sql_database_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabaseCreateUpdateParameters
          end
          def failover_policy
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::FailoverPolicy
          end
          def sql_container_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainerResource
          end
          def database_account_list_read_only_keys_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountListReadOnlyKeysResult
          end
          def database_account_list_keys_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountListKeysResult
          end
          def database_account_connection_string
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountConnectionString
          end
          def indexes
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Indexes
          end
          def database_account_list_connection_strings_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountListConnectionStringsResult
          end
          def excluded_path
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ExcludedPath
          end
          def consistency_policy
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ConsistencyPolicy
          end
          def container_partition_key
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ContainerPartitionKey
          end
          def location
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Location
          end
          def unique_key_policy
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UniqueKeyPolicy
          end
          def virtual_network_rule
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::VirtualNetworkRule
          end
          def partition_metric_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionMetricListResult
          end
          def partition_usages_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionUsagesResult
          end
          def percentile_metric_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PercentileMetricListResult
          end
          def sql_container_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainerCreateUpdateParameters
          end
          def percentile_metric
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PercentileMetric
          end
          def mongo_dbdatabase_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabaseResource
          end
          def metric_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricListResult
          end
          def mongo_dbdatabase_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabaseCreateUpdateParameters
          end
          def metric
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Metric
          end
          def mongo_index_keys
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoIndexKeys
          end
          def metric_value
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricValue
          end
          def mongo_index_options
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoIndexOptions
          end
          def metric_definitions_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricDefinitionsListResult
          end
          def mongo_index
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoIndex
          end
          def metric_definition
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricDefinition
          end
          def mongo_dbcollection_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollectionResource
          end
          def error_response
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ErrorResponse
          end
          def mongo_dbcollection_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollectionCreateUpdateParameters
          end
          def region_for_online_offline
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::RegionForOnlineOffline
          end
          def table_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::TableResource
          end
          def extended_resource_properties
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ExtendedResourceProperties
          end
          def table_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::TableCreateUpdateParameters
          end
          def database_account_patch_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountPatchParameters
          end
          def cassandra_keyspace_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspaceResource
          end
          def sql_database_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabaseListResult
          end
          def cassandra_keyspace_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspaceCreateUpdateParameters
          end
          def indexing_policy
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IndexingPolicy
          end
          def column
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Column
          end
          def conflict_resolution_policy
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ConflictResolutionPolicy
          end
          def cassandra_partition_key
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraPartitionKey
          end
          def mongo_dbdatabase_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabaseListResult
          end
          def cluster_key
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ClusterKey
          end
          def table_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::TableListResult
          end
          def cassandra_schema
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraSchema
          end
          def cassandra_table_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTableListResult
          end
          def cassandra_table_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTableResource
          end
          def gremlin_graph_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraphListResult
          end
          def cassandra_table_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTableCreateUpdateParameters
          end
          def resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Resource
          end
          def gremlin_database_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabaseResource
          end
          def database_accounts_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountsListResult
          end
          def gremlin_database_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabaseCreateUpdateParameters
          end
          def unique_key
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UniqueKey
          end
          def gremlin_graph_resource
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraphResource
          end
          def mongo_dbcollection_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollectionListResult
          end
          def gremlin_graph_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraphCreateUpdateParameters
          end
          def gremlin_database_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabaseListResult
          end
          def operation_display
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::OperationDisplay
          end
          def metric_availability
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricAvailability
          end
          def operation
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Operation
          end
          def sql_container_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainerListResult
          end
          def operation_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::OperationListResult
          end
          def failover_policies
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::FailoverPolicies
          end
          def metric_name
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MetricName
          end
          def cassandra_keyspace_list_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspaceListResult
          end
          def usage
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Usage
          end
          def included_path
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IncludedPath
          end
          def usages_result
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UsagesResult
          end
          def database_account
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccount
          end
          def sql_database
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlDatabase
          end
          def sql_container
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::SqlContainer
          end
          def mongo_dbdatabase
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBDatabase
          end
          def mongo_dbcollection
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::MongoDBCollection
          end
          def table
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::Table
          end
          def cassandra_keyspace
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraKeyspace
          end
          def cassandra_table
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::CassandraTable
          end
          def gremlin_database
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinDatabase
          end
          def gremlin_graph
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::GremlinGraph
          end
          def database_account_create_update_parameters
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountCreateUpdateParameters
          end
          def partition_usage
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionUsage
          end
          def percentile_metric_value
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PercentileMetricValue
          end
          def partition_metric
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionMetric
          end
          def database_account_kind
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountKind
          end
          def database_account_offer_type
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DatabaseAccountOfferType
          end
          def default_consistency_level
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DefaultConsistencyLevel
          end
          def indexing_mode
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IndexingMode
          end
          def data_type
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::DataType
          end
          def index_kind
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::IndexKind
          end
          def partition_kind
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PartitionKind
          end
          def conflict_resolution_mode
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::ConflictResolutionMode
          end
          def key_kind
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::KeyKind
          end
          def unit_type
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::UnitType
          end
          def primary_aggregation_type
            Azure::Cosmosdb::Mgmt::V2015_04_08::Models::PrimaryAggregationType
          end
        end
      end
    end
  end
end
