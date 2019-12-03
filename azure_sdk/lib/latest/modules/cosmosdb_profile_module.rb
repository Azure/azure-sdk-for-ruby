# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cosmosdb'

module Azure::Profiles::Latest
  module Cosmosdb
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
      PrivateLinkResources = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::PrivateLinkResources
      PrivateEndpointConnections = Azure::Cosmosdb::Mgmt::V2019_08_01_preview::PrivateEndpointConnections

      module Models
        GremlinGraphListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphListResult
        Capability = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Capability
        FailoverPolicies = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicies
        FailoverPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicy
        RegionForOnlineOffline = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::RegionForOnlineOffline
        CassandraKeyspaceListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceListResult
        Column = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Column
        SqlDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseGetPropertiesResource
        CassandraPartitionKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraPartitionKey
        SqlDatabaseListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseListResult
        ClusterKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ClusterKey
        IncludedPath = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IncludedPath
        CassandraSchema = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraSchema
        CompositePath = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CompositePath
        CassandraTableGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableGetPropertiesResource
        IndexingPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexingPolicy
        MetricAvailability = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricAvailability
        UniqueKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKey
        CassandraTableListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableListResult
        ConflictResolutionPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionPolicy
        GremlinDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseGetPropertiesResource
        PartitionMetricListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionMetricListResult
        PartitionUsagesResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionUsagesResult
        SqlStoredProcedureGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureGetPropertiesResource
        GremlinDatabaseListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseListResult
        SqlStoredProcedureListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureListResult
        GremlinGraphGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphGetPropertiesResource
        PercentileMetric = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetric
        UsagesResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UsagesResult
        SqlTriggerGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerGetPropertiesResource
        ConsistencyPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConsistencyPolicy
        SqlTriggerListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerListResult
        Location = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Location
        Metric = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Metric
        VirtualNetworkRule = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::VirtualNetworkRule
        MongoIndexKeys = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexKeys
        Usage = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Usage
        MongoIndex = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndex
        ARMResourceProperties = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ARMResourceProperties
        MetricValue = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricValue
        TableGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableGetPropertiesResource
        ExtendedResourceProperties = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExtendedResourceProperties
        TableListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableListResult
        MetricName = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricName
        MetricDefinition = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinition
        OperationListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationListResult
        DatabaseAccountUpdateParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountUpdateParameters
        ExcludedPath = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExcludedPath
        DatabaseAccountListReadOnlyKeysResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListReadOnlyKeysResult
        ContainerPartitionKey = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ContainerPartitionKey
        Operation = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Operation
        SqlContainerGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerGetPropertiesResource
        DatabaseAccountConnectionString = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountConnectionString
        PercentileMetricListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetricListResult
        DatabaseAccountListConnectionStringsResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListConnectionStringsResult
        SqlUserDefinedFunctionListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionListResult
        DatabaseAccountRegenerateKeyParameters = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountRegenerateKeyParameters
        MongoDBDatabaseGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseGetPropertiesResource
        ThroughputSettingsResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsResource
        MongoIndexOptions = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexOptions
        OperationDisplay = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationDisplay
        MongoDBCollectionListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionListResult
        SqlDatabaseResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseResource
        CassandraKeyspaceGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceGetPropertiesResource
        GremlinGraphResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphResource
        Indexes = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Indexes
        SqlContainerResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerResource
        UniqueKeyPolicy = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKeyPolicy
        GremlinDatabaseResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseResource
        SqlUserDefinedFunctionGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionGetPropertiesResource
        SqlStoredProcedureResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureResource
        MongoDBDatabaseListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseListResult
        CassandraTableResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableResource
        MetricDefinitionsListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinitionsListResult
        SqlUserDefinedFunctionResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionResource
        SpatialSpec = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SpatialSpec
        CassandraKeyspaceResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceResource
        MetricListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricListResult
        SqlTriggerResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerResource
        DatabaseAccountsListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountsListResult
        TableResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableResource
        MongoDBCollectionGetPropertiesResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionGetPropertiesResource
        MongoDBDatabaseResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseResource
        SqlContainerListResult = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerListResult
        MongoDBCollectionResource = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionResource
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
        CompositePathSortOrder = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CompositePathSortOrder
        SpatialType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SpatialType
        PartitionKind = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionKind
        ConflictResolutionMode = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionMode
        TriggerType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TriggerType
        TriggerOperation = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TriggerOperation
        KeyKind = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::KeyKind
        UnitType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UnitType
        PrimaryAggregationType = Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PrimaryAggregationType
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

      class CosmosdbManagementClass
        attr_reader :database_accounts, :operations, :database, :collection, :collection_region, :database_account_region, :percentile_source_target, :percentile_target, :percentile, :collection_partition_region, :collection_partition, :partition_key_range_id, :partition_key_range_id_region, :sql_resources, :mongo_dbresources, :table_resources, :cassandra_resources, :gremlin_resources, :private_link_resources, :private_endpoint_connections, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Cosmosdb::Mgmt::V2019_08_01::CosmosDBManagementClient.new(configurable.credentials, base_url, options)
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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Cosmosdb/Mgmt"
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

        class ModelClasses
          def gremlin_graph_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphListResult
          end
          def capability
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Capability
          end
          def failover_policies
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicies
          end
          def failover_policy
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::FailoverPolicy
          end
          def region_for_online_offline
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::RegionForOnlineOffline
          end
          def cassandra_keyspace_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceListResult
          end
          def column
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Column
          end
          def sql_database_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseGetPropertiesResource
          end
          def cassandra_partition_key
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraPartitionKey
          end
          def sql_database_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseListResult
          end
          def cluster_key
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ClusterKey
          end
          def included_path
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IncludedPath
          end
          def cassandra_schema
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraSchema
          end
          def composite_path
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CompositePath
          end
          def cassandra_table_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableGetPropertiesResource
          end
          def indexing_policy
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::IndexingPolicy
          end
          def metric_availability
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricAvailability
          end
          def unique_key
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKey
          end
          def cassandra_table_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableListResult
          end
          def conflict_resolution_policy
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConflictResolutionPolicy
          end
          def gremlin_database_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseGetPropertiesResource
          end
          def partition_metric_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionMetricListResult
          end
          def partition_usages_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PartitionUsagesResult
          end
          def sql_stored_procedure_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureGetPropertiesResource
          end
          def gremlin_database_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseListResult
          end
          def sql_stored_procedure_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureListResult
          end
          def gremlin_graph_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphGetPropertiesResource
          end
          def percentile_metric
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetric
          end
          def usages_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UsagesResult
          end
          def sql_trigger_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerGetPropertiesResource
          end
          def consistency_policy
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ConsistencyPolicy
          end
          def sql_trigger_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerListResult
          end
          def location
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Location
          end
          def metric
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Metric
          end
          def virtual_network_rule
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::VirtualNetworkRule
          end
          def mongo_index_keys
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexKeys
          end
          def usage
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Usage
          end
          def mongo_index
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndex
          end
          def armresource_properties
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ARMResourceProperties
          end
          def metric_value
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricValue
          end
          def table_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableGetPropertiesResource
          end
          def extended_resource_properties
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExtendedResourceProperties
          end
          def table_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableListResult
          end
          def metric_name
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricName
          end
          def metric_definition
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinition
          end
          def operation_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationListResult
          end
          def database_account_update_parameters
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountUpdateParameters
          end
          def excluded_path
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ExcludedPath
          end
          def database_account_list_read_only_keys_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListReadOnlyKeysResult
          end
          def container_partition_key
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ContainerPartitionKey
          end
          def operation
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Operation
          end
          def sql_container_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerGetPropertiesResource
          end
          def database_account_connection_string
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountConnectionString
          end
          def percentile_metric_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::PercentileMetricListResult
          end
          def database_account_list_connection_strings_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountListConnectionStringsResult
          end
          def sql_user_defined_function_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionListResult
          end
          def database_account_regenerate_key_parameters
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountRegenerateKeyParameters
          end
          def mongo_dbdatabase_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseGetPropertiesResource
          end
          def throughput_settings_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::ThroughputSettingsResource
          end
          def mongo_index_options
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoIndexOptions
          end
          def operation_display
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::OperationDisplay
          end
          def mongo_dbcollection_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionListResult
          end
          def sql_database_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlDatabaseResource
          end
          def cassandra_keyspace_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceGetPropertiesResource
          end
          def gremlin_graph_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinGraphResource
          end
          def indexes
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::Indexes
          end
          def sql_container_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerResource
          end
          def unique_key_policy
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::UniqueKeyPolicy
          end
          def gremlin_database_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::GremlinDatabaseResource
          end
          def sql_user_defined_function_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionGetPropertiesResource
          end
          def sql_stored_procedure_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlStoredProcedureResource
          end
          def mongo_dbdatabase_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseListResult
          end
          def cassandra_table_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraTableResource
          end
          def metric_definitions_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricDefinitionsListResult
          end
          def sql_user_defined_function_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlUserDefinedFunctionResource
          end
          def spatial_spec
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SpatialSpec
          end
          def cassandra_keyspace_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CassandraKeyspaceResource
          end
          def metric_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MetricListResult
          end
          def sql_trigger_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlTriggerResource
          end
          def database_accounts_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::DatabaseAccountsListResult
          end
          def table_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::TableResource
          end
          def mongo_dbcollection_get_properties_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionGetPropertiesResource
          end
          def mongo_dbdatabase_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBDatabaseResource
          end
          def sql_container_list_result
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SqlContainerListResult
          end
          def mongo_dbcollection_resource
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::MongoDBCollectionResource
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
          def composite_path_sort_order
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::CompositePathSortOrder
          end
          def spatial_type
            Azure::Cosmosdb::Mgmt::V2019_08_01::Models::SpatialType
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
  end
end
