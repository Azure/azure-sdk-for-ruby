# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_sql'

module Azure::SQL::Management::Profile_2014_04_01
    DatabaseAdvisors = Azure::ARM::SQL::Api_2014_04_01::DatabaseAdvisors
    BackupLongTermRetentionPolicies = Azure::ARM::SQL::Api_2014_04_01::BackupLongTermRetentionPolicies
    BackupLongTermRetentionVaults = Azure::ARM::SQL::Api_2014_04_01::BackupLongTermRetentionVaults
    RestorePoints = Azure::ARM::SQL::Api_2014_04_01::RestorePoints
    RecoverableDatabases = Azure::ARM::SQL::Api_2014_04_01::RecoverableDatabases
    RestorableDroppedDatabases = Azure::ARM::SQL::Api_2014_04_01::RestorableDroppedDatabases
    Capabilities = Azure::ARM::SQL::Api_2014_04_01::Capabilities
    ServerConnectionPolicies = Azure::ARM::SQL::Api_2014_04_01::ServerConnectionPolicies
    DatabaseThreatDetectionPolicies = Azure::ARM::SQL::Api_2014_04_01::DatabaseThreatDetectionPolicies
    DataMaskingPolicies = Azure::ARM::SQL::Api_2014_04_01::DataMaskingPolicies
    DataMaskingRules = Azure::ARM::SQL::Api_2014_04_01::DataMaskingRules
    TransparentDataEncryptionConfigurations = Azure::ARM::SQL::Api_2014_04_01::TransparentDataEncryptionConfigurations
    FirewallRules = Azure::ARM::SQL::Api_2014_04_01::FirewallRules
    GeoBackupPolicies = Azure::ARM::SQL::Api_2014_04_01::GeoBackupPolicies
    Databases = Azure::ARM::SQL::Api_2014_04_01::Databases
    ElasticPools = Azure::ARM::SQL::Api_2014_04_01::ElasticPools
    Operations = Azure::ARM::SQL::Api_2014_04_01::Operations
    Queries = Azure::ARM::SQL::Api_2014_04_01::Queries
    QueryStatistics = Azure::ARM::SQL::Api_2014_04_01::QueryStatistics
    ReplicationLinks = Azure::ARM::SQL::Api_2014_04_01::ReplicationLinks
    ServerAzureADAdministrators = Azure::ARM::SQL::Api_2014_04_01::ServerAzureADAdministrators
    ServerCommunicationLinks = Azure::ARM::SQL::Api_2014_04_01::ServerCommunicationLinks
    Servers = Azure::ARM::SQL::Api_2014_04_01::Servers
    ServiceObjectives = Azure::ARM::SQL::Api_2014_04_01::ServiceObjectives
    ElasticPoolActivities = Azure::ARM::SQL::Api_2014_04_01::ElasticPoolActivities
    ElasticPoolDatabaseActivities = Azure::ARM::SQL::Api_2014_04_01::ElasticPoolDatabaseActivities
    RecommendedElasticPools = Azure::ARM::SQL::Api_2014_04_01::RecommendedElasticPools
    ServiceTierAdvisors = Azure::ARM::SQL::Api_2014_04_01::ServiceTierAdvisors
    TransparentDataEncryptions = Azure::ARM::SQL::Api_2014_04_01::TransparentDataEncryptions
    TransparentDataEncryptionActivities = Azure::ARM::SQL::Api_2014_04_01::TransparentDataEncryptionActivities
    ServerTableAuditingPolicies = Azure::ARM::SQL::Api_2014_04_01::ServerTableAuditingPolicies
    DatabaseTableAuditingPolicies = Azure::ARM::SQL::Api_2014_04_01::DatabaseTableAuditingPolicies
    DatabaseConnectionPolicies = Azure::ARM::SQL::Api_2014_04_01::DatabaseConnectionPolicies
    ServerUsages = Azure::ARM::SQL::Api_2014_04_01::ServerUsages
    DatabaseUsages = Azure::ARM::SQL::Api_2014_04_01::DatabaseUsages

    module Models
      FirewallRuleListResult = Azure::ARM::SQL::Api_2014_04_01::Models::FirewallRuleListResult
      Resource = Azure::ARM::SQL::Api_2014_04_01::Models::Resource
      SloUsageMetric = Azure::ARM::SQL::Api_2014_04_01::Models::SloUsageMetric
      ServerUsage = Azure::ARM::SQL::Api_2014_04_01::Models::ServerUsage
      AdvisorListResult = Azure::ARM::SQL::Api_2014_04_01::Models::AdvisorListResult
      ServerCommunicationLinkListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServerCommunicationLinkListResult
      ElasticPoolDatabaseActivityListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolDatabaseActivityListResult
      ServerUsageListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServerUsageListResult
      ElasticPoolListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolListResult
      ServerAdministratorListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServerAdministratorListResult
      RecommendedElasticPoolListMetricsResult = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPoolListMetricsResult
      DatabaseUsage = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseUsage
      RecommendedElasticPoolListResult = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPoolListResult
      ReplicationLinkListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationLinkListResult
      MaxSizeCapability = Azure::ARM::SQL::Api_2014_04_01::Models::MaxSizeCapability
      RecommendedElasticPoolMetric = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPoolMetric
      EditionCapability = Azure::ARM::SQL::Api_2014_04_01::Models::EditionCapability
      DatabaseUsageListResult = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseUsageListResult
      ElasticPoolPerDatabaseMaxDtuCapability = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolPerDatabaseMaxDtuCapability
      QueryStatisticListResult = Azure::ARM::SQL::Api_2014_04_01::Models::QueryStatisticListResult
      ElasticPoolEditionCapability = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolEditionCapability
      TopQueriesListResult = Azure::ARM::SQL::Api_2014_04_01::Models::TopQueriesListResult
      LocationCapabilities = Azure::ARM::SQL::Api_2014_04_01::Models::LocationCapabilities
      TopQueries = Azure::ARM::SQL::Api_2014_04_01::Models::TopQueries
      CheckNameAvailabilityRequest = Azure::ARM::SQL::Api_2014_04_01::Models::CheckNameAvailabilityRequest
      QueryStatistic = Azure::ARM::SQL::Api_2014_04_01::Models::QueryStatistic
      DatabaseTableAuditingPolicyListResult = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseTableAuditingPolicyListResult
      TableAuditingPolicyProperties = Azure::ARM::SQL::Api_2014_04_01::Models::TableAuditingPolicyProperties
      ServerListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServerListResult
      GeoBackupPolicyListResult = Azure::ARM::SQL::Api_2014_04_01::Models::GeoBackupPolicyListResult
      OperationImpact = Azure::ARM::SQL::Api_2014_04_01::Models::OperationImpact
      ImportExtensionRequest = Azure::ARM::SQL::Api_2014_04_01::Models::ImportExtensionRequest
      ServiceTierAdvisorListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServiceTierAdvisorListResult
      TransparentDataEncryptionActivityListResult = Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionActivityListResult
      ElasticPoolActivityListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolActivityListResult
      RecoverableDatabaseListResult = Azure::ARM::SQL::Api_2014_04_01::Models::RecoverableDatabaseListResult
      ExportRequest = Azure::ARM::SQL::Api_2014_04_01::Models::ExportRequest
      ServiceObjectiveCapability = Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjectiveCapability
      MetricValue = Azure::ARM::SQL::Api_2014_04_01::Models::MetricValue
      ElasticPoolDtuCapability = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolDtuCapability
      MetricName = Azure::ARM::SQL::Api_2014_04_01::Models::MetricName
      CheckNameAvailabilityResponse = Azure::ARM::SQL::Api_2014_04_01::Models::CheckNameAvailabilityResponse
      Metric = Azure::ARM::SQL::Api_2014_04_01::Models::Metric
      DataMaskingRuleListResult = Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingRuleListResult
      MetricListResult = Azure::ARM::SQL::Api_2014_04_01::Models::MetricListResult
      ServerTableAuditingPolicyListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServerTableAuditingPolicyListResult
      MetricAvailability = Azure::ARM::SQL::Api_2014_04_01::Models::MetricAvailability
      RestorePointListResult = Azure::ARM::SQL::Api_2014_04_01::Models::RestorePointListResult
      MetricDefinition = Azure::ARM::SQL::Api_2014_04_01::Models::MetricDefinition
      ElasticPoolPerDatabaseMinDtuCapability = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolPerDatabaseMinDtuCapability
      MetricDefinitionListResult = Azure::ARM::SQL::Api_2014_04_01::Models::MetricDefinitionListResult
      ServiceObjectiveListResult = Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjectiveListResult
      OperationDisplay = Azure::ARM::SQL::Api_2014_04_01::Models::OperationDisplay
      DatabaseListResult = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseListResult
      Operation = Azure::ARM::SQL::Api_2014_04_01::Models::Operation
      ServerVersionCapability = Azure::ARM::SQL::Api_2014_04_01::Models::ServerVersionCapability
      OperationListResult = Azure::ARM::SQL::Api_2014_04_01::Models::OperationListResult
      RestorableDroppedDatabaseListResult = Azure::ARM::SQL::Api_2014_04_01::Models::RestorableDroppedDatabaseListResult
      QueryMetric = Azure::ARM::SQL::Api_2014_04_01::Models::QueryMetric
      TransparentDataEncryptionListResult = Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionListResult
      QueryInterval = Azure::ARM::SQL::Api_2014_04_01::Models::QueryInterval
      ProxyResource = Azure::ARM::SQL::Api_2014_04_01::Models::ProxyResource
      Advisor = Azure::ARM::SQL::Api_2014_04_01::Models::Advisor
      BackupLongTermRetentionPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::BackupLongTermRetentionPolicy
      BackupLongTermRetentionVault = Azure::ARM::SQL::Api_2014_04_01::Models::BackupLongTermRetentionVault
      TrackedResource = Azure::ARM::SQL::Api_2014_04_01::Models::TrackedResource
      RestorePoint = Azure::ARM::SQL::Api_2014_04_01::Models::RestorePoint
      RecoverableDatabase = Azure::ARM::SQL::Api_2014_04_01::Models::RecoverableDatabase
      RestorableDroppedDatabase = Azure::ARM::SQL::Api_2014_04_01::Models::RestorableDroppedDatabase
      ServerConnectionPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::ServerConnectionPolicy
      DatabaseSecurityAlertPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseSecurityAlertPolicy
      DataMaskingPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingPolicy
      DataMaskingRule = Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingRule
      TransparentDataEncryption = Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryption
      RecommendedIndex = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndex
      ServiceTierAdvisor = Azure::ARM::SQL::Api_2014_04_01::Models::ServiceTierAdvisor
      DatabaseUpdate = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseUpdate
      ElasticPoolUpdate = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolUpdate
      TransparentDataEncryptionActivity = Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionActivity
      ElasticPoolDatabaseActivity = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolDatabaseActivity
      ElasticPoolActivity = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolActivity
      Database = Azure::ARM::SQL::Api_2014_04_01::Models::Database
      ElasticPool = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPool
      RecommendedElasticPool = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPool
      FirewallRule = Azure::ARM::SQL::Api_2014_04_01::Models::FirewallRule
      GeoBackupPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::GeoBackupPolicy
      ImportExportResponse = Azure::ARM::SQL::Api_2014_04_01::Models::ImportExportResponse
      ImportRequest = Azure::ARM::SQL::Api_2014_04_01::Models::ImportRequest
      ReplicationLink = Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationLink
      ServerAzureADAdministrator = Azure::ARM::SQL::Api_2014_04_01::Models::ServerAzureADAdministrator
      ServerCommunicationLink = Azure::ARM::SQL::Api_2014_04_01::Models::ServerCommunicationLink
      Server = Azure::ARM::SQL::Api_2014_04_01::Models::Server
      ServerUpdate = Azure::ARM::SQL::Api_2014_04_01::Models::ServerUpdate
      ServiceObjective = Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjective
      DatabaseConnectionPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseConnectionPolicy
      DatabaseTableAuditingPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseTableAuditingPolicy
      ServerTableAuditingPolicy = Azure::ARM::SQL::Api_2014_04_01::Models::ServerTableAuditingPolicy
      AdvisorStatus = Azure::ARM::SQL::Api_2014_04_01::Models::AdvisorStatus
      AutoExecuteStatus = Azure::ARM::SQL::Api_2014_04_01::Models::AutoExecuteStatus
      BackupLongTermRetentionPolicyState = Azure::ARM::SQL::Api_2014_04_01::Models::BackupLongTermRetentionPolicyState
      RestorePointType = Azure::ARM::SQL::Api_2014_04_01::Models::RestorePointType
      CapabilityStatus = Azure::ARM::SQL::Api_2014_04_01::Models::CapabilityStatus
      MaxSizeUnits = Azure::ARM::SQL::Api_2014_04_01::Models::MaxSizeUnits
      PerformanceLevelUnit = Azure::ARM::SQL::Api_2014_04_01::Models::PerformanceLevelUnit
      ServerConnectionType = Azure::ARM::SQL::Api_2014_04_01::Models::ServerConnectionType
      SecurityAlertPolicyState = Azure::ARM::SQL::Api_2014_04_01::Models::SecurityAlertPolicyState
      SecurityAlertPolicyEmailAccountAdmins = Azure::ARM::SQL::Api_2014_04_01::Models::SecurityAlertPolicyEmailAccountAdmins
      SecurityAlertPolicyUseServerDefault = Azure::ARM::SQL::Api_2014_04_01::Models::SecurityAlertPolicyUseServerDefault
      DataMaskingState = Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingState
      DataMaskingRuleState = Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingRuleState
      DataMaskingFunction = Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingFunction
      TransparentDataEncryptionStatus = Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionStatus
      RecommendedIndexAction = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndexAction
      RecommendedIndexState = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndexState
      RecommendedIndexType = Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndexType
      ServiceObjectiveName = Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjectiveName
      CreateMode = Azure::ARM::SQL::Api_2014_04_01::Models::CreateMode
      DatabaseEdition = Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseEdition
      ReadScale = Azure::ARM::SQL::Api_2014_04_01::Models::ReadScale
      SampleName = Azure::ARM::SQL::Api_2014_04_01::Models::SampleName
      ElasticPoolState = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolState
      ElasticPoolEdition = Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolEdition
      TransparentDataEncryptionActivityStatus = Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionActivityStatus
      GeoBackupPolicyState = Azure::ARM::SQL::Api_2014_04_01::Models::GeoBackupPolicyState
      StorageKeyType = Azure::ARM::SQL::Api_2014_04_01::Models::StorageKeyType
      AuthenticationType = Azure::ARM::SQL::Api_2014_04_01::Models::AuthenticationType
      UnitType = Azure::ARM::SQL::Api_2014_04_01::Models::UnitType
      PrimaryAggregationType = Azure::ARM::SQL::Api_2014_04_01::Models::PrimaryAggregationType
      UnitDefinitionType = Azure::ARM::SQL::Api_2014_04_01::Models::UnitDefinitionType
      QueryAggregationFunction = Azure::ARM::SQL::Api_2014_04_01::Models::QueryAggregationFunction
      QueryExecutionType = Azure::ARM::SQL::Api_2014_04_01::Models::QueryExecutionType
      QueryObservedMetricType = Azure::ARM::SQL::Api_2014_04_01::Models::QueryObservedMetricType
      QueryMetricUnit = Azure::ARM::SQL::Api_2014_04_01::Models::QueryMetricUnit
      ReplicationRole = Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationRole
      ReplicationState = Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationState
      ServerVersion = Azure::ARM::SQL::Api_2014_04_01::Models::ServerVersion
      ServerState = Azure::ARM::SQL::Api_2014_04_01::Models::ServerState
      CheckNameAvailabilityReason = Azure::ARM::SQL::Api_2014_04_01::Models::CheckNameAvailabilityReason
    end

    #
    # SQL
    #
    class SQLClass
      attr_reader :database_advisors, :backup_long_term_retention_policies, :backup_long_term_retention_vaults, :restore_points, :recoverable_databases, :restorable_dropped_databases, :capabilities, :server_connection_policies, :database_threat_detection_policies, :data_masking_policies, :data_masking_rules, :transparent_data_encryption_configurations, :firewall_rules, :geo_backup_policies, :databases, :elastic_pools, :operations, :queries, :query_statistics, :replication_links, :server_azure_adadministrators, :server_communication_links, :servers, :service_objectives, :elastic_pool_activities, :elastic_pool_database_activities, :recommended_elastic_pools, :service_tier_advisors, :transparent_data_encryptions, :transparent_data_encryption_activities, :server_table_auditing_policies, :database_table_auditing_policies, :database_connection_policies, :server_usages, :database_usages, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::SQL::Api_2014_04_01::SqlManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @database_advisors = client_0.database_advisors
        @backup_long_term_retention_policies = client_0.backup_long_term_retention_policies
        @backup_long_term_retention_vaults = client_0.backup_long_term_retention_vaults
        @restore_points = client_0.restore_points
        @recoverable_databases = client_0.recoverable_databases
        @restorable_dropped_databases = client_0.restorable_dropped_databases
        @capabilities = client_0.capabilities
        @server_connection_policies = client_0.server_connection_policies
        @database_threat_detection_policies = client_0.database_threat_detection_policies
        @data_masking_policies = client_0.data_masking_policies
        @data_masking_rules = client_0.data_masking_rules
        @transparent_data_encryption_configurations = client_0.transparent_data_encryption_configurations
        @firewall_rules = client_0.firewall_rules
        @geo_backup_policies = client_0.geo_backup_policies
        @databases = client_0.databases
        @elastic_pools = client_0.elastic_pools
        @operations = client_0.operations
        @queries = client_0.queries
        @query_statistics = client_0.query_statistics
        @replication_links = client_0.replication_links
        @server_azure_adadministrators = client_0.server_azure_adadministrators
        @server_communication_links = client_0.server_communication_links
        @servers = client_0.servers
        @service_objectives = client_0.service_objectives
        @elastic_pool_activities = client_0.elastic_pool_activities
        @elastic_pool_database_activities = client_0.elastic_pool_database_activities
        @recommended_elastic_pools = client_0.recommended_elastic_pools
        @service_tier_advisors = client_0.service_tier_advisors
        @transparent_data_encryptions = client_0.transparent_data_encryptions
        @transparent_data_encryption_activities = client_0.transparent_data_encryption_activities
        @server_table_auditing_policies = client_0.server_table_auditing_policies
        @database_table_auditing_policies = client_0.database_table_auditing_policies
        @database_connection_policies = client_0.database_connection_policies
        @server_usages = client_0.server_usages
        @database_usages = client_0.database_usages

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2014-04-01')
        case version
          when '2014-04-01'
            client = Azure::ARM::SQL::Api_2014_04_01::SqlManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def firewall_rule_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::FirewallRuleListResult
        end
        def resource
          Azure::ARM::SQL::Api_2014_04_01::Models::Resource
        end
        def slo_usage_metric
          Azure::ARM::SQL::Api_2014_04_01::Models::SloUsageMetric
        end
        def server_usage
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerUsage
        end
        def advisor_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::AdvisorListResult
        end
        def server_communication_link_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerCommunicationLinkListResult
        end
        def elastic_pool_database_activity_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolDatabaseActivityListResult
        end
        def server_usage_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerUsageListResult
        end
        def elastic_pool_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolListResult
        end
        def server_administrator_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerAdministratorListResult
        end
        def recommended_elastic_pool_list_metrics_result
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPoolListMetricsResult
        end
        def database_usage
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseUsage
        end
        def recommended_elastic_pool_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPoolListResult
        end
        def replication_link_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationLinkListResult
        end
        def max_size_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::MaxSizeCapability
        end
        def recommended_elastic_pool_metric
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPoolMetric
        end
        def edition_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::EditionCapability
        end
        def database_usage_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseUsageListResult
        end
        def elastic_pool_per_database_max_dtu_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolPerDatabaseMaxDtuCapability
        end
        def query_statistic_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryStatisticListResult
        end
        def elastic_pool_edition_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolEditionCapability
        end
        def top_queries_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::TopQueriesListResult
        end
        def location_capabilities
          Azure::ARM::SQL::Api_2014_04_01::Models::LocationCapabilities
        end
        def top_queries
          Azure::ARM::SQL::Api_2014_04_01::Models::TopQueries
        end
        def check_name_availability_request
          Azure::ARM::SQL::Api_2014_04_01::Models::CheckNameAvailabilityRequest
        end
        def query_statistic
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryStatistic
        end
        def database_table_auditing_policy_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseTableAuditingPolicyListResult
        end
        def table_auditing_policy_properties
          Azure::ARM::SQL::Api_2014_04_01::Models::TableAuditingPolicyProperties
        end
        def server_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerListResult
        end
        def geo_backup_policy_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::GeoBackupPolicyListResult
        end
        def operation_impact
          Azure::ARM::SQL::Api_2014_04_01::Models::OperationImpact
        end
        def import_extension_request
          Azure::ARM::SQL::Api_2014_04_01::Models::ImportExtensionRequest
        end
        def service_tier_advisor_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServiceTierAdvisorListResult
        end
        def transparent_data_encryption_activity_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionActivityListResult
        end
        def elastic_pool_activity_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolActivityListResult
        end
        def recoverable_database_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::RecoverableDatabaseListResult
        end
        def export_request
          Azure::ARM::SQL::Api_2014_04_01::Models::ExportRequest
        end
        def service_objective_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjectiveCapability
        end
        def metric_value
          Azure::ARM::SQL::Api_2014_04_01::Models::MetricValue
        end
        def elastic_pool_dtu_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolDtuCapability
        end
        def metric_name
          Azure::ARM::SQL::Api_2014_04_01::Models::MetricName
        end
        def check_name_availability_response
          Azure::ARM::SQL::Api_2014_04_01::Models::CheckNameAvailabilityResponse
        end
        def metric
          Azure::ARM::SQL::Api_2014_04_01::Models::Metric
        end
        def data_masking_rule_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingRuleListResult
        end
        def metric_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::MetricListResult
        end
        def server_table_auditing_policy_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerTableAuditingPolicyListResult
        end
        def metric_availability
          Azure::ARM::SQL::Api_2014_04_01::Models::MetricAvailability
        end
        def restore_point_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::RestorePointListResult
        end
        def metric_definition
          Azure::ARM::SQL::Api_2014_04_01::Models::MetricDefinition
        end
        def elastic_pool_per_database_min_dtu_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolPerDatabaseMinDtuCapability
        end
        def metric_definition_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::MetricDefinitionListResult
        end
        def service_objective_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjectiveListResult
        end
        def operation_display
          Azure::ARM::SQL::Api_2014_04_01::Models::OperationDisplay
        end
        def database_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseListResult
        end
        def operation
          Azure::ARM::SQL::Api_2014_04_01::Models::Operation
        end
        def server_version_capability
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerVersionCapability
        end
        def operation_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::OperationListResult
        end
        def restorable_dropped_database_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::RestorableDroppedDatabaseListResult
        end
        def query_metric
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryMetric
        end
        def transparent_data_encryption_list_result
          Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionListResult
        end
        def query_interval
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryInterval
        end
        def proxy_resource
          Azure::ARM::SQL::Api_2014_04_01::Models::ProxyResource
        end
        def advisor
          Azure::ARM::SQL::Api_2014_04_01::Models::Advisor
        end
        def backup_long_term_retention_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::BackupLongTermRetentionPolicy
        end
        def backup_long_term_retention_vault
          Azure::ARM::SQL::Api_2014_04_01::Models::BackupLongTermRetentionVault
        end
        def tracked_resource
          Azure::ARM::SQL::Api_2014_04_01::Models::TrackedResource
        end
        def restore_point
          Azure::ARM::SQL::Api_2014_04_01::Models::RestorePoint
        end
        def recoverable_database
          Azure::ARM::SQL::Api_2014_04_01::Models::RecoverableDatabase
        end
        def restorable_dropped_database
          Azure::ARM::SQL::Api_2014_04_01::Models::RestorableDroppedDatabase
        end
        def server_connection_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerConnectionPolicy
        end
        def database_security_alert_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseSecurityAlertPolicy
        end
        def data_masking_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingPolicy
        end
        def data_masking_rule
          Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingRule
        end
        def transparent_data_encryption
          Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryption
        end
        def recommended_index
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndex
        end
        def service_tier_advisor
          Azure::ARM::SQL::Api_2014_04_01::Models::ServiceTierAdvisor
        end
        def database_update
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseUpdate
        end
        def elastic_pool_update
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolUpdate
        end
        def transparent_data_encryption_activity
          Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionActivity
        end
        def elastic_pool_database_activity
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolDatabaseActivity
        end
        def elastic_pool_activity
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolActivity
        end
        def database
          Azure::ARM::SQL::Api_2014_04_01::Models::Database
        end
        def elastic_pool
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPool
        end
        def recommended_elastic_pool
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedElasticPool
        end
        def firewall_rule
          Azure::ARM::SQL::Api_2014_04_01::Models::FirewallRule
        end
        def geo_backup_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::GeoBackupPolicy
        end
        def import_export_response
          Azure::ARM::SQL::Api_2014_04_01::Models::ImportExportResponse
        end
        def import_request
          Azure::ARM::SQL::Api_2014_04_01::Models::ImportRequest
        end
        def replication_link
          Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationLink
        end
        def server_azure_adadministrator
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerAzureADAdministrator
        end
        def server_communication_link
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerCommunicationLink
        end
        def server
          Azure::ARM::SQL::Api_2014_04_01::Models::Server
        end
        def server_update
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerUpdate
        end
        def service_objective
          Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjective
        end
        def database_connection_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseConnectionPolicy
        end
        def database_table_auditing_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseTableAuditingPolicy
        end
        def server_table_auditing_policy
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerTableAuditingPolicy
        end
        def advisor_status
          Azure::ARM::SQL::Api_2014_04_01::Models::AdvisorStatus
        end
        def auto_execute_status
          Azure::ARM::SQL::Api_2014_04_01::Models::AutoExecuteStatus
        end
        def backup_long_term_retention_policy_state
          Azure::ARM::SQL::Api_2014_04_01::Models::BackupLongTermRetentionPolicyState
        end
        def restore_point_type
          Azure::ARM::SQL::Api_2014_04_01::Models::RestorePointType
        end
        def capability_status
          Azure::ARM::SQL::Api_2014_04_01::Models::CapabilityStatus
        end
        def max_size_units
          Azure::ARM::SQL::Api_2014_04_01::Models::MaxSizeUnits
        end
        def performance_level_unit
          Azure::ARM::SQL::Api_2014_04_01::Models::PerformanceLevelUnit
        end
        def server_connection_type
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerConnectionType
        end
        def security_alert_policy_state
          Azure::ARM::SQL::Api_2014_04_01::Models::SecurityAlertPolicyState
        end
        def security_alert_policy_email_account_admins
          Azure::ARM::SQL::Api_2014_04_01::Models::SecurityAlertPolicyEmailAccountAdmins
        end
        def security_alert_policy_use_server_default
          Azure::ARM::SQL::Api_2014_04_01::Models::SecurityAlertPolicyUseServerDefault
        end
        def data_masking_state
          Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingState
        end
        def data_masking_rule_state
          Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingRuleState
        end
        def data_masking_function
          Azure::ARM::SQL::Api_2014_04_01::Models::DataMaskingFunction
        end
        def transparent_data_encryption_status
          Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionStatus
        end
        def recommended_index_action
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndexAction
        end
        def recommended_index_state
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndexState
        end
        def recommended_index_type
          Azure::ARM::SQL::Api_2014_04_01::Models::RecommendedIndexType
        end
        def service_objective_name
          Azure::ARM::SQL::Api_2014_04_01::Models::ServiceObjectiveName
        end
        def create_mode
          Azure::ARM::SQL::Api_2014_04_01::Models::CreateMode
        end
        def database_edition
          Azure::ARM::SQL::Api_2014_04_01::Models::DatabaseEdition
        end
        def read_scale
          Azure::ARM::SQL::Api_2014_04_01::Models::ReadScale
        end
        def sample_name
          Azure::ARM::SQL::Api_2014_04_01::Models::SampleName
        end
        def elastic_pool_state
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolState
        end
        def elastic_pool_edition
          Azure::ARM::SQL::Api_2014_04_01::Models::ElasticPoolEdition
        end
        def transparent_data_encryption_activity_status
          Azure::ARM::SQL::Api_2014_04_01::Models::TransparentDataEncryptionActivityStatus
        end
        def geo_backup_policy_state
          Azure::ARM::SQL::Api_2014_04_01::Models::GeoBackupPolicyState
        end
        def storage_key_type
          Azure::ARM::SQL::Api_2014_04_01::Models::StorageKeyType
        end
        def authentication_type
          Azure::ARM::SQL::Api_2014_04_01::Models::AuthenticationType
        end
        def unit_type
          Azure::ARM::SQL::Api_2014_04_01::Models::UnitType
        end
        def primary_aggregation_type
          Azure::ARM::SQL::Api_2014_04_01::Models::PrimaryAggregationType
        end
        def unit_definition_type
          Azure::ARM::SQL::Api_2014_04_01::Models::UnitDefinitionType
        end
        def query_aggregation_function
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryAggregationFunction
        end
        def query_execution_type
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryExecutionType
        end
        def query_observed_metric_type
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryObservedMetricType
        end
        def query_metric_unit
          Azure::ARM::SQL::Api_2014_04_01::Models::QueryMetricUnit
        end
        def replication_role
          Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationRole
        end
        def replication_state
          Azure::ARM::SQL::Api_2014_04_01::Models::ReplicationState
        end
        def server_version
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerVersion
        end
        def server_state
          Azure::ARM::SQL::Api_2014_04_01::Models::ServerState
        end
        def check_name_availability_reason
          Azure::ARM::SQL::Api_2014_04_01::Models::CheckNameAvailabilityReason
        end
      end
    end
end
