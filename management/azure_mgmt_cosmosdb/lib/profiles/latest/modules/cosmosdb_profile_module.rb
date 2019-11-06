# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cosmosdb'

module Azure::Cosmosdb::Profiles::Latest
  module Mgmt
    DatabaseAccounts = Azure::Cosmosdb::Mgmt::V2019_08_01::DatabaseAccounts
    Operations = Azure::Cosmosdb::Mgmt::V2019_08_01::Operations
    Database = Azure::Cosmosdb::Mgmt::V2019_08_01::Database
    Collection = Azure::Cosmosdb::Mgmt::V2019_08_01::Collection
    CollectionRegion = Azure::Cosmosdb::Mgmt::V2019_08_01::CollectionRegion
    DatabaseAccountRegion = Azure::Cosmosdb::Mgmt::V2019_08_01::DatabaseAccountRegion
    PercentileSourceTarget = Azure::Cosmosdb::Mgmt::V2019_08_01::PercentileSourceTarget
    PercentileTarget = Azure::Cosmosdb::Mgmt::V2019_08_01::PercentileTarget
    Percentile = Azure::Cosmosdb::Mgmt::V2019_08_01::Percentile
    CollectionPartitionRegion = Azure::Cosmosdb::Mgmt::V2019_08_01::CollectionPartitionRegion
    CollectionPartition = Azure::Cosmosdb::Mgmt::V2019_08_01::CollectionPartition
    PartitionKeyRangeId = Azure::Cosmosdb::Mgmt::V2019_08_01::PartitionKeyRangeId
    PartitionKeyRangeIdRegion = Azure::Cosmosdb::Mgmt::V2019_08_01::PartitionKeyRangeIdRegion
    SqlResources = Azure::Cosmosdb::Mgmt::V2019_08_01::SqlResources
    MongoDBResources = Azure::Cosmosdb::Mgmt::V2019_08_01::MongoDBResources
    TableResources = Azure::Cosmosdb::Mgmt::V2019_08_01::TableResources
    CassandraResources = Azure::Cosmosdb::Mgmt::V2019_08_01::CassandraResources
    GremlinResources = Azure::Cosmosdb::Mgmt::V2019_08_01::GremlinResources

    module Models
      GremlinDatabaseListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseListResult
      ConsistencyPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConsistencyPolicy
      Capability = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Capability
      OperationDisplay = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationDisplay
      FailoverPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicy
      GremlinGraphListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphListResult
      CassandraSchema = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraSchema
      TableResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableResource
      Operation = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Operation
      CassandraTableListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableListResult
      Indexes = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Indexes
      PartitionUsagesResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionUsagesResult
      ExcludedPath = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExcludedPath
      Location = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Location
      ContainerPartitionKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ContainerPartitionKey
      VirtualNetworkRule = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::VirtualNetworkRule
      UniqueKeyPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKeyPolicy
      MongoDBCollectionResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionResource
      GremlinGraphResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphResource
      ErrorResponse = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ErrorResponse
      OperationListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationListResult
      FailoverPolicies = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicies
      GremlinDatabaseResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseResource
      RegionForOnlineOffline = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::RegionForOnlineOffline
      MetricName = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricName
      ARMResourceProperties = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ARMResourceProperties
      CassandraTableResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableResource
      ARMProxyResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ARMProxyResource
      MongoIndexKeys = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexKeys
      ExtendedResourceProperties = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExtendedResourceProperties
      MongoIndex = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndex
      MongoDBCollectionListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionListResult
      PartitionMetricListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionMetricListResult
      TableListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableListResult
      DatabaseAccountUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountUpdateParameters
      CassandraKeyspaceListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceListResult
      DatabaseAccountListReadOnlyKeysResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListReadOnlyKeysResult
      CassandraPartitionKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraPartitionKey
      PercentileMetricListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetricListResult
      DatabaseAccountsListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountsListResult
      DatabaseAccountConnectionString = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountConnectionString
      IncludedPath = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IncludedPath
      DatabaseAccountListConnectionStringsResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListConnectionStringsResult
      UniqueKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKey
      DatabaseAccountRegenerateKeyParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountRegenerateKeyParameters
      SqlContainerListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerListResult
      ThroughputSettingsResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsResource
      SqlUserDefinedFunctionListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionListResult
      PercentileMetric = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetric
      MongoDBDatabaseListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseListResult
      SqlDatabaseResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseResource
      Usage = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Usage
      MetricListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricListResult
      UsagesResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UsagesResult
      SqlContainerResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerResource
      ClusterKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ClusterKey
      Metric = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Metric
      IndexingPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexingPolicy
      SqlStoredProcedureResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureResource
      SqlStoredProcedureListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureListResult
      MetricValue = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricValue
      MongoIndexOptions = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexOptions
      SqlUserDefinedFunctionResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionResource
      Column = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Column
      MetricDefinitionsListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinitionsListResult
      ConflictResolutionPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionPolicy
      SqlTriggerResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerResource
      CassandraKeyspaceResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceResource
      MetricDefinition = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinition
      SqlTriggerListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerListResult
      MongoDBDatabaseResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseResource
      SqlDatabaseListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseListResult
      MetricAvailability = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricAvailability
      DatabaseAccountGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountGetResults
      SqlDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseGetResults
      SqlContainerGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerGetResults
      SqlStoredProcedureGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureGetResults
      SqlUserDefinedFunctionGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionGetResults
      SqlTriggerGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerGetResults
      MongoDBDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseGetResults
      MongoDBCollectionGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionGetResults
      TableGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableGetResults
      CassandraKeyspaceGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceGetResults
      CassandraTableGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableGetResults
      GremlinDatabaseGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseGetResults
      GremlinGraphGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphGetResults
      ThroughputSettingsGetResults = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsGetResults
      DatabaseAccountCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountCreateUpdateParameters
      DatabaseAccountListKeysResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListKeysResult
      ThroughputSettingsUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsUpdateParameters
      SqlDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseCreateUpdateParameters
      SqlContainerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerCreateUpdateParameters
      SqlStoredProcedureCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureCreateUpdateParameters
      SqlUserDefinedFunctionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionCreateUpdateParameters
      SqlTriggerCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerCreateUpdateParameters
      MongoDBDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseCreateUpdateParameters
      MongoDBCollectionCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionCreateUpdateParameters
      TableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableCreateUpdateParameters
      CassandraKeyspaceCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceCreateUpdateParameters
      CassandraTableCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableCreateUpdateParameters
      GremlinDatabaseCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseCreateUpdateParameters
      GremlinGraphCreateUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphCreateUpdateParameters
      PartitionUsage = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionUsage
      PercentileMetricValue = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetricValue
      PartitionMetric = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionMetric
      DatabaseAccountKind = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountKind
      DatabaseAccountOfferType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountOfferType
      DefaultConsistencyLevel = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DefaultConsistencyLevel
      ConnectorOffer = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConnectorOffer
      IndexingMode = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexingMode
      DataType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DataType
      IndexKind = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexKind
      PartitionKind = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionKind
      ConflictResolutionMode = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionMode
      TriggerType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TriggerType
      TriggerOperation = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TriggerOperation
      KeyKind = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::KeyKind
      UnitType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UnitType
      PrimaryAggregationType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PrimaryAggregationType
    end

    #
    # CosmosdbManagementClass
    #
    class CosmosdbManagementClass
      attr_reader :database_accounts, :operations, :database, :collection, :collection_region, :database_account_region, :percentile_source_target, :percentile_target, :percentile, :collection_partition_region, :collection_partition, :partition_key_range_id, :partition_key_range_id_region, :sql_resources, :mongo_dbresources, :table_resources, :cassandra_resources, :gremlin_resources, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Cosmosdb::Mgmt::V2019_08_01::CosmosDB.new(configurable.credentials, base_url, options)
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
      def gremlin_database_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseListResult
      end
      def consistency_policy
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConsistencyPolicy
      end
      def capability
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Capability
      end
      def operation_display
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationDisplay
      end
      def failover_policy
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicy
      end
      def gremlin_graph_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphListResult
      end
      def cassandra_schema
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraSchema
      end
      def table_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableResource
      end
      def operation
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Operation
      end
      def cassandra_table_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableListResult
      end
      def indexes
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Indexes
      end
      def partition_usages_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionUsagesResult
      end
      def excluded_path
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExcludedPath
      end
      def location
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Location
      end
      def container_partition_key
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ContainerPartitionKey
      end
      def virtual_network_rule
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::VirtualNetworkRule
      end
      def unique_key_policy
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKeyPolicy
      end
      def mongo_dbcollection_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionResource
      end
      def gremlin_graph_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphResource
      end
      def error_response
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ErrorResponse
      end
      def operation_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationListResult
      end
      def failover_policies
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicies
      end
      def gremlin_database_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseResource
      end
      def region_for_online_offline
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::RegionForOnlineOffline
      end
      def metric_name
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricName
      end
      def armresource_properties
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ARMResourceProperties
      end
      def cassandra_table_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableResource
      end
      def armproxy_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ARMProxyResource
      end
      def mongo_index_keys
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexKeys
      end
      def extended_resource_properties
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExtendedResourceProperties
      end
      def mongo_index
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndex
      end
      def mongo_dbcollection_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionListResult
      end
      def partition_metric_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionMetricListResult
      end
      def table_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableListResult
      end
      def database_account_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountUpdateParameters
      end
      def cassandra_keyspace_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceListResult
      end
      def database_account_list_read_only_keys_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListReadOnlyKeysResult
      end
      def cassandra_partition_key
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraPartitionKey
      end
      def percentile_metric_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetricListResult
      end
      def database_accounts_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountsListResult
      end
      def database_account_connection_string
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountConnectionString
      end
      def included_path
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IncludedPath
      end
      def database_account_list_connection_strings_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListConnectionStringsResult
      end
      def unique_key
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKey
      end
      def database_account_regenerate_key_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountRegenerateKeyParameters
      end
      def sql_container_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerListResult
      end
      def throughput_settings_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsResource
      end
      def sql_user_defined_function_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionListResult
      end
      def percentile_metric
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetric
      end
      def mongo_dbdatabase_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseListResult
      end
      def sql_database_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseResource
      end
      def usage
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Usage
      end
      def metric_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricListResult
      end
      def usages_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UsagesResult
      end
      def sql_container_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerResource
      end
      def cluster_key
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ClusterKey
      end
      def metric
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Metric
      end
      def indexing_policy
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexingPolicy
      end
      def sql_stored_procedure_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureResource
      end
      def sql_stored_procedure_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureListResult
      end
      def metric_value
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricValue
      end
      def mongo_index_options
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexOptions
      end
      def sql_user_defined_function_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionResource
      end
      def column
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Column
      end
      def metric_definitions_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinitionsListResult
      end
      def conflict_resolution_policy
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionPolicy
      end
      def sql_trigger_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerResource
      end
      def cassandra_keyspace_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceResource
      end
      def metric_definition
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinition
      end
      def sql_trigger_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerListResult
      end
      def mongo_dbdatabase_resource
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseResource
      end
      def sql_database_list_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseListResult
      end
      def metric_availability
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricAvailability
      end
      def database_account_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountGetResults
      end
      def sql_database_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseGetResults
      end
      def sql_container_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerGetResults
      end
      def sql_stored_procedure_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureGetResults
      end
      def sql_user_defined_function_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionGetResults
      end
      def sql_trigger_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerGetResults
      end
      def mongo_dbdatabase_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseGetResults
      end
      def mongo_dbcollection_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionGetResults
      end
      def table_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableGetResults
      end
      def cassandra_keyspace_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceGetResults
      end
      def cassandra_table_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableGetResults
      end
      def gremlin_database_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseGetResults
      end
      def gremlin_graph_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphGetResults
      end
      def throughput_settings_get_results
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsGetResults
      end
      def database_account_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountCreateUpdateParameters
      end
      def database_account_list_keys_result
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListKeysResult
      end
      def throughput_settings_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsUpdateParameters
      end
      def sql_database_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseCreateUpdateParameters
      end
      def sql_container_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerCreateUpdateParameters
      end
      def sql_stored_procedure_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureCreateUpdateParameters
      end
      def sql_user_defined_function_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionCreateUpdateParameters
      end
      def sql_trigger_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerCreateUpdateParameters
      end
      def mongo_dbdatabase_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseCreateUpdateParameters
      end
      def mongo_dbcollection_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionCreateUpdateParameters
      end
      def table_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableCreateUpdateParameters
      end
      def cassandra_keyspace_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceCreateUpdateParameters
      end
      def cassandra_table_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableCreateUpdateParameters
      end
      def gremlin_database_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseCreateUpdateParameters
      end
      def gremlin_graph_create_update_parameters
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphCreateUpdateParameters
      end
      def partition_usage
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionUsage
      end
      def percentile_metric_value
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetricValue
      end
      def partition_metric
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionMetric
      end
      def database_account_kind
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountKind
      end
      def database_account_offer_type
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountOfferType
      end
      def default_consistency_level
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DefaultConsistencyLevel
      end
      def connector_offer
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConnectorOffer
      end
      def indexing_mode
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexingMode
      end
      def data_type
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DataType
      end
      def index_kind
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexKind
      end
      def partition_kind
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionKind
      end
      def conflict_resolution_mode
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionMode
      end
      def trigger_type
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TriggerType
      end
      def trigger_operation
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TriggerOperation
      end
      def key_kind
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::KeyKind
      end
      def unit_type
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UnitType
      end
      def primary_aggregation_type
        Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PrimaryAggregationType
      end
    end
  end
end
