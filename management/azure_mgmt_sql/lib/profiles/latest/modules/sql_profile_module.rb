# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_sql'

module Azure::SQL::Profiles::Latest
  module Mgmt
    BackupLongTermRetentionVaults = Azure::SQL::Mgmt::V2014_04_01::BackupLongTermRetentionVaults
    RecoverableDatabases = Azure::SQL::Mgmt::V2014_04_01::RecoverableDatabases
    RestorableDroppedDatabases = Azure::SQL::Mgmt::V2014_04_01::RestorableDroppedDatabases
    ServerConnectionPolicies = Azure::SQL::Mgmt::V2014_04_01::ServerConnectionPolicies
    DatabaseThreatDetectionPolicies = Azure::SQL::Mgmt::V2014_04_01::DatabaseThreatDetectionPolicies
    DataMaskingPolicies = Azure::SQL::Mgmt::V2014_04_01::DataMaskingPolicies
    DataMaskingRules = Azure::SQL::Mgmt::V2014_04_01::DataMaskingRules
    TransparentDataEncryptionConfigurations = Azure::SQL::Mgmt::V2014_04_01::TransparentDataEncryptionConfigurations
    Extensions = Azure::SQL::Mgmt::V2014_04_01::Extensions
    DisasterRecoveryConfigurations = Azure::SQL::Mgmt::V2014_04_01::DisasterRecoveryConfigurations
    GeoBackupPolicies = Azure::SQL::Mgmt::V2014_04_01::GeoBackupPolicies
    Queries = Azure::SQL::Mgmt::V2014_04_01::Queries
    QueryStatistics = Azure::SQL::Mgmt::V2014_04_01::QueryStatistics
    QueryTexts = Azure::SQL::Mgmt::V2014_04_01::QueryTexts
    RecommendedElasticPools = Azure::SQL::Mgmt::V2014_04_01::RecommendedElasticPools
    ReplicationLinks = Azure::SQL::Mgmt::V2014_04_01::ReplicationLinks
    ServerAzureADAdministrators = Azure::SQL::Mgmt::V2014_04_01::ServerAzureADAdministrators
    ServerCommunicationLinks = Azure::SQL::Mgmt::V2014_04_01::ServerCommunicationLinks
    ServiceObjectives = Azure::SQL::Mgmt::V2014_04_01::ServiceObjectives
    ElasticPoolActivities = Azure::SQL::Mgmt::V2014_04_01::ElasticPoolActivities
    ElasticPoolDatabaseActivities = Azure::SQL::Mgmt::V2014_04_01::ElasticPoolDatabaseActivities
    ServiceTierAdvisors = Azure::SQL::Mgmt::V2014_04_01::ServiceTierAdvisors
    TransparentDataEncryptions = Azure::SQL::Mgmt::V2014_04_01::TransparentDataEncryptions
    TransparentDataEncryptionActivities = Azure::SQL::Mgmt::V2014_04_01::TransparentDataEncryptionActivities
    ServerTableAuditingPolicies = Azure::SQL::Mgmt::V2014_04_01::ServerTableAuditingPolicies
    DatabaseTableAuditingPolicies = Azure::SQL::Mgmt::V2014_04_01::DatabaseTableAuditingPolicies
    DatabaseConnectionPolicies = Azure::SQL::Mgmt::V2014_04_01::DatabaseConnectionPolicies
    ServerUsages = Azure::SQL::Mgmt::V2014_04_01::ServerUsages
    DatabaseUsages = Azure::SQL::Mgmt::V2014_04_01::DatabaseUsages
    ServerAdvisors = Azure::SQL::Mgmt::V2015_05_01_preview::ServerAdvisors
    DatabaseAdvisors = Azure::SQL::Mgmt::V2015_05_01_preview::DatabaseAdvisors
    DatabaseRecommendedActions = Azure::SQL::Mgmt::V2015_05_01_preview::DatabaseRecommendedActions
    DatabaseAutomaticTuningOperations = Azure::SQL::Mgmt::V2015_05_01_preview::DatabaseAutomaticTuningOperations
    EncryptionProtectors = Azure::SQL::Mgmt::V2015_05_01_preview::EncryptionProtectors
    FailoverGroups = Azure::SQL::Mgmt::V2015_05_01_preview::FailoverGroups
    ManagedInstances = Azure::SQL::Mgmt::V2015_05_01_preview::ManagedInstances
    ServerKeys = Azure::SQL::Mgmt::V2015_05_01_preview::ServerKeys
    SyncAgents = Azure::SQL::Mgmt::V2015_05_01_preview::SyncAgents
    SyncGroups = Azure::SQL::Mgmt::V2015_05_01_preview::SyncGroups
    Servers = Azure::SQL::Mgmt::V2015_05_01_preview::Servers
    SyncMembers = Azure::SQL::Mgmt::V2015_05_01_preview::SyncMembers
    SubscriptionUsages = Azure::SQL::Mgmt::V2015_05_01_preview::SubscriptionUsages
    VirtualNetworkRules = Azure::SQL::Mgmt::V2015_05_01_preview::VirtualNetworkRules
    FirewallRules = Azure::SQL::Mgmt::V2015_05_01_preview::FirewallRules
    Operations = Azure::SQL::Mgmt::V2015_05_01_preview::Operations
    BackupLongTermRetentionPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::BackupLongTermRetentionPolicies
    ExtendedDatabaseBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ExtendedDatabaseBlobAuditingPolicies
    ExtendedServerBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ExtendedServerBlobAuditingPolicies
    ServerBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ServerBlobAuditingPolicies
    DatabaseVulnerabilityAssessmentRuleBaselines = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseVulnerabilityAssessmentRuleBaselines
    DatabaseVulnerabilityAssessments = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseVulnerabilityAssessments
    JobAgents = Azure::SQL::Mgmt::V2017_03_01_preview::JobAgents
    JobCredentials = Azure::SQL::Mgmt::V2017_03_01_preview::JobCredentials
    DataWarehouseUserActivitiesOperations = Azure::SQL::Mgmt::V2017_03_01_preview::DataWarehouseUserActivitiesOperations
    JobExecutions = Azure::SQL::Mgmt::V2017_03_01_preview::JobExecutions
    JobStepExecutions = Azure::SQL::Mgmt::V2017_03_01_preview::JobStepExecutions
    JobSteps = Azure::SQL::Mgmt::V2017_03_01_preview::JobSteps
    Jobs = Azure::SQL::Mgmt::V2017_03_01_preview::Jobs
    JobTargetExecutions = Azure::SQL::Mgmt::V2017_03_01_preview::JobTargetExecutions
    JobVersions = Azure::SQL::Mgmt::V2017_03_01_preview::JobVersions
    LongTermRetentionBackups = Azure::SQL::Mgmt::V2017_03_01_preview::LongTermRetentionBackups
    JobTargetGroups = Azure::SQL::Mgmt::V2017_03_01_preview::JobTargetGroups
    ManagedDatabases = Azure::SQL::Mgmt::V2017_03_01_preview::ManagedDatabases
    ServerAutomaticTuningOperations = Azure::SQL::Mgmt::V2017_03_01_preview::ServerAutomaticTuningOperations
    ServerDnsAliases = Azure::SQL::Mgmt::V2017_03_01_preview::ServerDnsAliases
    ServerSecurityAlertPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ServerSecurityAlertPolicies
    RestorePoints = Azure::SQL::Mgmt::V2017_03_01_preview::RestorePoints
    DatabaseBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseBlobAuditingPolicies
    ElasticPoolOperations = Azure::SQL::Mgmt::V2017_10_01_preview::ElasticPoolOperations
    DatabaseVulnerabilityAssessmentScans = Azure::SQL::Mgmt::V2017_10_01_preview::DatabaseVulnerabilityAssessmentScans
    InstanceFailoverGroups = Azure::SQL::Mgmt::V2017_10_01_preview::InstanceFailoverGroups
    BackupShortTermRetentionPolicies = Azure::SQL::Mgmt::V2017_10_01_preview::BackupShortTermRetentionPolicies
    TdeCertificates = Azure::SQL::Mgmt::V2017_10_01_preview::TdeCertificates
    ManagedInstanceTdeCertificates = Azure::SQL::Mgmt::V2017_10_01_preview::ManagedInstanceTdeCertificates
    DatabaseOperations = Azure::SQL::Mgmt::V2017_10_01_preview::DatabaseOperations
    Capabilities = Azure::SQL::Mgmt::V2017_10_01_preview::Capabilities
    Databases = Azure::SQL::Mgmt::V2017_10_01_preview::Databases
    ElasticPools = Azure::SQL::Mgmt::V2017_10_01_preview::ElasticPools

    module Models
      ServerState = Azure::SQL::Mgmt::V2014_04_01::Models::ServerState
      TransparentDataEncryptionActivityStatus = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivityStatus
      MetricValue = Azure::SQL::Mgmt::V2014_04_01::Models::MetricValue
      ServiceObjectiveListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveListResult
      DataMaskingRuleListResult = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRuleListResult
      QueryText = Azure::SQL::Mgmt::V2014_04_01::Models::QueryText
      DatabaseUsageListResult = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseUsageListResult
      TransparentDataEncryptionListResult = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionListResult
      DatabaseUsage = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseUsage
      ExtensionListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ExtensionListResult
      ServerUsageListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServerUsageListResult
      ServerCommunicationLinkListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServerCommunicationLinkListResult
      ServerUsage = Azure::SQL::Mgmt::V2014_04_01::Models::ServerUsage
      DisasterRecoveryConfigurationListResult = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationListResult
      ServerAdministratorListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServerAdministratorListResult
      ElasticPoolPerDatabaseMaxDtuCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMaxDtuCapability
      ReplicationLinkListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLinkListResult
      CheckNameAvailabilityResponse = Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityResponse
      RecommendedElasticPoolListMetricsResult = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPoolListMetricsResult
      SloUsageMetric = Azure::SQL::Mgmt::V2014_04_01::Models::SloUsageMetric
      GeoBackupPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicyListResult
      TableAuditingPolicyProperties = Azure::SQL::Mgmt::V2014_04_01::Models::TableAuditingPolicyProperties
      ImportExtensionRequest = Azure::SQL::Mgmt::V2014_04_01::Models::ImportExtensionRequest
      TransparentDataEncryptionActivityListResult = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivityListResult
      RecommendedElasticPoolListResult = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPoolListResult
      ElasticPoolDatabaseActivityListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDatabaseActivityListResult
      RecommendedElasticPoolMetric = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPoolMetric
      ElasticPoolActivityListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolActivityListResult
      ExportRequest = Azure::SQL::Mgmt::V2014_04_01::Models::ExportRequest
      QueryTextListResult = Azure::SQL::Mgmt::V2014_04_01::Models::QueryTextListResult
      BackupLongTermRetentionVaultListResult = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionVaultListResult
      MetricName = Azure::SQL::Mgmt::V2014_04_01::Models::MetricName
      RestorableDroppedDatabaseListResult = Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabaseListResult
      Metric = Azure::SQL::Mgmt::V2014_04_01::Models::Metric
      ElasticPoolPerDatabaseMinDtuCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMinDtuCapability
      MetricListResult = Azure::SQL::Mgmt::V2014_04_01::Models::MetricListResult
      MetricAvailability = Azure::SQL::Mgmt::V2014_04_01::Models::MetricAvailability
      ServerTableAuditingPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicyListResult
      MetricDefinition = Azure::SQL::Mgmt::V2014_04_01::Models::MetricDefinition
      OperationImpact = Azure::SQL::Mgmt::V2014_04_01::Models::OperationImpact
      MetricDefinitionListResult = Azure::SQL::Mgmt::V2014_04_01::Models::MetricDefinitionListResult
      BackupLongTermRetentionPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyListResult
      CheckNameAvailabilityRequest = Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityRequest
      QueryMetric = Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetric
      ServiceTierAdvisorListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisorListResult
      QueryInterval = Azure::SQL::Mgmt::V2014_04_01::Models::QueryInterval
      RecoverableDatabaseListResult = Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabaseListResult
      QueryStatistic = Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatistic
      DatabaseTableAuditingPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicyListResult
      TopQueries = Azure::SQL::Mgmt::V2014_04_01::Models::TopQueries
      ElasticPoolDtuCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDtuCapability
      TopQueriesListResult = Azure::SQL::Mgmt::V2014_04_01::Models::TopQueriesListResult
      AdvisorListResult = Azure::SQL::Mgmt::V2014_04_01::Models::AdvisorListResult
      QueryStatisticListResult = Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatisticListResult
      BackupLongTermRetentionVault = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionVault
      RecoverableDatabase = Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabase
      RestorableDroppedDatabase = Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabase
      ServerConnectionPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionPolicy
      ServiceTierAdvisor = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisor
      TransparentDataEncryption = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryption
      RecommendedIndex = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndex
      DatabaseSecurityAlertPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseSecurityAlertPolicy
      DataMaskingPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingPolicy
      DataMaskingRule = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRule
      DisasterRecoveryConfiguration = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfiguration
      GeoBackupPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicy
      ImportExportResponse = Azure::SQL::Mgmt::V2014_04_01::Models::ImportExportResponse
      ImportRequest = Azure::SQL::Mgmt::V2014_04_01::Models::ImportRequest
      RecommendedElasticPool = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPool
      ReplicationLink = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLink
      ServerAzureADAdministrator = Azure::SQL::Mgmt::V2014_04_01::Models::ServerAzureADAdministrator
      ServerCommunicationLink = Azure::SQL::Mgmt::V2014_04_01::Models::ServerCommunicationLink
      ServiceObjective = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjective
      ElasticPoolActivity = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolActivity
      ElasticPoolDatabaseActivity = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDatabaseActivity
      TransparentDataEncryptionActivity = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivity
      DatabaseConnectionPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseConnectionPolicy
      DatabaseTableAuditingPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy
      ServerTableAuditingPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicy
      BackupLongTermRetentionPolicyState = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyState
      MaxSizeUnits = Azure::SQL::Mgmt::V2014_04_01::Models::MaxSizeUnits
      CheckNameAvailabilityReason = Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityReason
      ServerConnectionType = Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionType
      DatabaseEdition = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseEdition
      ServiceObjectiveName = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveName
      TransparentDataEncryptionStatus = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionStatus
      RecommendedIndexAction = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexAction
      RecommendedIndexState = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexState
      RecommendedIndexType = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexType
      ReadScale = Azure::SQL::Mgmt::V2014_04_01::Models::ReadScale
      SecurityAlertPolicyEmailAccountAdmins = Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyEmailAccountAdmins
      SecurityAlertPolicyUseServerDefault = Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyUseServerDefault
      DataMaskingState = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingState
      DataMaskingRuleState = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRuleState
      DataMaskingFunction = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingFunction
      DisasterRecoveryConfigurationStatus = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationStatus
      DisasterRecoveryConfigurationAutoFailover = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationAutoFailover
      DisasterRecoveryConfigurationFailoverPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationFailoverPolicy
      DisasterRecoveryConfigurationRole = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationRole
      ElasticPoolEdition = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolEdition
      GeoBackupPolicyState = Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicyState
      StorageKeyType = Azure::SQL::Mgmt::V2014_04_01::Models::StorageKeyType
      AuthenticationType = Azure::SQL::Mgmt::V2014_04_01::Models::AuthenticationType
      UnitType = Azure::SQL::Mgmt::V2014_04_01::Models::UnitType
      PrimaryAggregationType = Azure::SQL::Mgmt::V2014_04_01::Models::PrimaryAggregationType
      UnitDefinitionType = Azure::SQL::Mgmt::V2014_04_01::Models::UnitDefinitionType
      QueryAggregationFunction = Azure::SQL::Mgmt::V2014_04_01::Models::QueryAggregationFunction
      QueryExecutionType = Azure::SQL::Mgmt::V2014_04_01::Models::QueryExecutionType
      QueryObservedMetricType = Azure::SQL::Mgmt::V2014_04_01::Models::QueryObservedMetricType
      QueryMetricUnit = Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetricUnit
      ReplicationRole = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationRole
      ReplicationState = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationState
      ServerVersion = Azure::SQL::Mgmt::V2014_04_01::Models::ServerVersion
      ServerListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerListResult
      RecommendedActionImplementationInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionImplementationInfo
      RecommendedActionImpactRecord = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionImpactRecord
      ManagedInstanceUpdate = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceUpdate
      FirewallRuleList = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleList
      ResourceIdentity = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceIdentity
      SyncGroupSchema = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchema
      SyncDatabaseIdListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdListResult
      SyncGroupSchemaTable = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTable
      SyncFullSchemaTable = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTable
      SyncGroupSchemaTableColumn = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTableColumn
      ManagedInstanceListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceListResult
      EncryptionProtectorListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtectorListResult
      SyncFullSchemaTableColumn = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTableColumn
      FailoverGroupReadOnlyEndpoint = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadOnlyEndpoint
      RecommendedActionStateInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionStateInfo
      SyncGroupLogProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogProperties
      RecommendedActionErrorInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionErrorInfo
      FailoverGroupListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupListResult
      RecommendedActionMetricInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionMetricInfo
      SyncFullSchemaPropertiesListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaPropertiesListResult
      FirewallRuleListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleListResult
      ServerKeyListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyListResult
      VirtualNetworkRuleListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleListResult
      SyncGroupLogListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogListResult
      PartnerInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::PartnerInfo
      SubscriptionUsageListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsageListResult
      SyncGroupListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupListResult
      SyncAgentListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentListResult
      FailoverGroupReadWriteEndpoint = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadWriteEndpoint
      ResourceWithWritableName = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceWithWritableName
      SyncFullSchemaProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaProperties
      SyncAgentKeyProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentKeyProperties
      FailoverGroupUpdate = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupUpdate
      SyncMemberListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberListResult
      AutomaticTuningOptions = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningOptions
      SyncAgentLinkedDatabaseListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabaseListResult
      RecommendedAction = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedAction
      SyncDatabaseIdProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdProperties
      DatabaseAutomaticTuning = Azure::SQL::Mgmt::V2015_05_01_preview::Models::DatabaseAutomaticTuning
      FailoverGroup = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroup
      OperationDisplay = Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationDisplay
      ManagedInstance = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstance
      Operation = Azure::SQL::Mgmt::V2015_05_01_preview::Models::Operation
      EncryptionProtector = Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtector
      OperationListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationListResult
      ProxyResourceWithWritableName = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ProxyResourceWithWritableName
      SyncAgentLinkedDatabase = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabase
      ServerKey = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKey
      SyncAgent = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgent
      SubscriptionUsage = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsage
      SyncGroup = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroup
      SyncMember = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMember
      RecommendedActionCurrentState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionCurrentState
      VirtualNetworkRule = Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRule
      AutoExecuteStatusInheritedFrom = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatusInheritedFrom
      IsRetryable = Azure::SQL::Mgmt::V2015_05_01_preview::Models::IsRetryable
      RecommendedActionInitiatedBy = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionInitiatedBy
      Advisor = Azure::SQL::Mgmt::V2015_05_01_preview::Models::Advisor
      AutomaticTuningMode = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningMode
      ImplementationMethod = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ImplementationMethod
      ServerKeyType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyType
      AutomaticTuningDisabledReason = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningDisabledReason
      IdentityType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::IdentityType
      SyncAgentState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentState
      FailoverGroupReplicationRole = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReplicationRole
      SyncGroupLogType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogType
      OperationOrigin = Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationOrigin
      SyncGroupState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupState
      SyncMemberDbType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberDbType
      FirewallRule = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRule
      SyncConflictResolutionPolicy = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncConflictResolutionPolicy
      SyncDirection = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDirection
      SyncMemberState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberState
      VirtualNetworkRuleState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleState
      Server = Azure::SQL::Mgmt::V2015_05_01_preview::Models::Server
      ServerUpdate = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerUpdate
      AdvisorStatus = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AdvisorStatus
      AutoExecuteStatus = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatus
      DataWarehouseUserActivities = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DataWarehouseUserActivities
      JobCredential = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredential
      JobAgent = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgent
      JobStep = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStep
      JobExecution = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecution
      JobVersion = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersion
      JobTargetGroup = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroup
      ManagedDatabase = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabase
      Job = Azure::SQL::Mgmt::V2017_03_01_preview::Models::Job
      ServerDnsAlias = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAlias
      ServerAutomaticTuning = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerAutomaticTuning
      LongTermRetentionBackup = Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackup
      ServerSecurityAlertPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerSecurityAlertPolicy
      JobAgentState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentState
      JobExecutionLifecycle = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionLifecycle
      ProvisioningState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ProvisioningState
      JobTargetType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetType
      JobScheduleType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobScheduleType
      JobStepActionType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionType
      DatabaseBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseBlobAuditingPolicy
      JobStepOutputType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutputType
      JobTargetGroupMembershipType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupMembershipType
      ManagedDatabaseStatus = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseStatus
      AutomaticTuningServerMode = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerMode
      AutomaticTuningServerReason = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerReason
      LongTermRetentionDatabaseState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionDatabaseState
      ManagedDatabaseCreateMode = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseCreateMode
      JobStepActionSource = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionSource
      VulnerabilityAssessmentPolicyBaselineName = Azure::SQL::Mgmt::V2017_03_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
      SecurityAlertPolicyState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SecurityAlertPolicyState
      RestorePointType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointType
      BlobAuditingPolicyState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::BlobAuditingPolicyState
      AutomaticTuningOptionModeDesired = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeDesired
      AutomaticTuningOptionModeActual = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeActual
      BackupLongTermRetentionPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::BackupLongTermRetentionPolicy
      RestorePoint = Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePoint
      JobSchedule = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobSchedule
      JobAgentUpdate = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentUpdate
      ManagedDatabaseUpdate = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseUpdate
      DatabaseVulnerabilityAssessmentListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentListResult
      JobTargetGroupListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupListResult
      CompleteDatabaseRestoreDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::CompleteDatabaseRestoreDefinition
      ServerDnsAliasListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasListResult
      JobStepListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepListResult
      JobAgentListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentListResult
      ServerDnsAliasAcquisition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasAcquisition
      ImportExportDatabaseDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportDatabaseDefinition
      JobTarget = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTarget
      DatabaseVulnerabilityAssessmentRuleBaselineItem = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaselineItem
      JobCredentialListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredentialListResult
      JobExecutionTarget = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionTarget
      ManagedDatabaseListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseListResult
      LongTermRetentionBackupListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackupListResult
      JobExecutionListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult
      CreateDatabaseRestorePointDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::CreateDatabaseRestorePointDefinition
      JobStepExecutionOptions = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepExecutionOptions
      AutomaticTuningServerOptions = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerOptions
      JobListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobListResult
      JobStepAction = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepAction
      JobVersionListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersionListResult
      JobStepOutput = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutput
      ExtendedDatabaseBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedDatabaseBlobAuditingPolicy
      ExtendedServerBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedServerBlobAuditingPolicy
      ServerBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerBlobAuditingPolicy
      ImportExportOperationResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportOperationResult
      DatabaseVulnerabilityAssessmentRuleBaseline = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaseline
      RestorePointListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointListResult
      ElasticPoolEditionCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolEditionCapability
      LocationCapabilities = Azure::SQL::Mgmt::V2017_10_01_preview::Models::LocationCapabilities
      ManagementOperationState = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagementOperationState
      DatabaseStatus = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseStatus
      CatalogCollationType = Azure::SQL::Mgmt::V2017_10_01_preview::Models::CatalogCollationType
      Resource = Azure::SQL::Mgmt::V2017_10_01_preview::Models::Resource
      ServerVersionCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ServerVersionCapability
      DatabaseListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseListResult
      ServiceObjectiveCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ServiceObjectiveCapability
      ElasticPoolPerDatabaseMinPerformanceLevelCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerDatabaseMinPerformanceLevelCapability
      BackupShortTermRetentionPolicyListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::BackupShortTermRetentionPolicyListResult
      ElasticPoolPerDatabaseMaxPerformanceLevelCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerDatabaseMaxPerformanceLevelCapability
      ElasticPoolPerformanceLevelCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerformanceLevelCapability
      VulnerabilityAssessmentScanError = Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanError
      InstanceFailoverGroupReadOnlyEndpoint = Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupReadOnlyEndpoint
      VulnerabilityAssessmentScanRecordListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanRecordListResult
      ProxyResource = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ProxyResource
      ManagedInstanceVcoresCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceVcoresCapability
      TrackedResource = Azure::SQL::Mgmt::V2017_10_01_preview::Models::TrackedResource
      ManagedInstanceFamilyCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceFamilyCapability
      MaxSizeRangeCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::MaxSizeRangeCapability
      ManagedInstanceVersionCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceVersionCapability
      ManagedInstanceEditionCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceEditionCapability
      ManagedInstancePairInfo = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstancePairInfo
      ElasticPoolOperationListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolOperationListResult
      LogSizeCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::LogSizeCapability
      InstanceFailoverGroupListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupListResult
      PerformanceLevelCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::PerformanceLevelCapability
      DatabaseUpdate = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseUpdate
      PartnerRegionInfo = Azure::SQL::Mgmt::V2017_10_01_preview::Models::PartnerRegionInfo
      ElasticPoolOperation = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolOperation
      ElasticPoolPerDatabaseSettings = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerDatabaseSettings
      VulnerabilityAssessmentScanRecord = Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanRecord
      DatabaseVulnerabilityAssessmentScansExport = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseVulnerabilityAssessmentScansExport
      ElasticPoolUpdate = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolUpdate
      LicenseTypeCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::LicenseTypeCapability
      ElasticPool = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPool
      Database = Azure::SQL::Mgmt::V2017_10_01_preview::Models::Database
      InstanceFailoverGroupReadWriteEndpoint = Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupReadWriteEndpoint
      InstanceFailoverGroup = Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroup
      BackupShortTermRetentionPolicy = Azure::SQL::Mgmt::V2017_10_01_preview::Models::BackupShortTermRetentionPolicy
      TdeCertificate = Azure::SQL::Mgmt::V2017_10_01_preview::Models::TdeCertificate
      VulnerabilityAssessmentScanTriggerType = Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanTriggerType
      VulnerabilityAssessmentScanState = Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanState
      MaxSizeUnit = Azure::SQL::Mgmt::V2017_10_01_preview::Models::MaxSizeUnit
      LogSizeUnit = Azure::SQL::Mgmt::V2017_10_01_preview::Models::LogSizeUnit
      DatabaseLicenseType = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseLicenseType
      DatabaseReadScale = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseReadScale
      ElasticPoolLicenseType = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolLicenseType
      InstanceFailoverGroupReplicationRole = Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupReplicationRole
      CapabilityGroup = Azure::SQL::Mgmt::V2017_10_01_preview::Models::CapabilityGroup
      ReadWriteEndpointFailoverPolicy = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ReadWriteEndpointFailoverPolicy
      ReadOnlyEndpointFailoverPolicy = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ReadOnlyEndpointFailoverPolicy
      CapabilityStatus = Azure::SQL::Mgmt::V2017_10_01_preview::Models::CapabilityStatus
      PerformanceLevelUnit = Azure::SQL::Mgmt::V2017_10_01_preview::Models::PerformanceLevelUnit
      CreateMode = Azure::SQL::Mgmt::V2017_10_01_preview::Models::CreateMode
      SampleName = Azure::SQL::Mgmt::V2017_10_01_preview::Models::SampleName
      VulnerabilityAssessmentRecurringScansProperties = Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
      ResourceMoveDefinition = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ResourceMoveDefinition
      ElasticPoolState = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolState
      DatabaseOperationListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseOperationListResult
      MaxSizeCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::MaxSizeCapability
      DatabaseOperation = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseOperation
      EditionCapability = Azure::SQL::Mgmt::V2017_10_01_preview::Models::EditionCapability
      Sku = Azure::SQL::Mgmt::V2017_10_01_preview::Models::Sku
      DatabaseVulnerabilityAssessment = Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseVulnerabilityAssessment
      ElasticPoolListResult = Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolListResult
    end

    #
    # SQLManagementClass
    #
    class SQLManagementClass
      attr_reader :backup_long_term_retention_vaults, :recoverable_databases, :restorable_dropped_databases, :server_connection_policies, :database_threat_detection_policies, :data_masking_policies, :data_masking_rules, :transparent_data_encryption_configurations, :extensions, :disaster_recovery_configurations, :geo_backup_policies, :queries, :query_statistics, :query_texts, :recommended_elastic_pools, :replication_links, :server_azure_adadministrators, :server_communication_links, :service_objectives, :elastic_pool_activities, :elastic_pool_database_activities, :service_tier_advisors, :transparent_data_encryptions, :transparent_data_encryption_activities, :server_table_auditing_policies, :database_table_auditing_policies, :database_connection_policies, :server_usages, :database_usages, :server_advisors, :database_advisors, :database_recommended_actions, :database_automatic_tuning_operations, :encryption_protectors, :failover_groups, :managed_instances, :server_keys, :sync_agents, :sync_groups, :servers, :sync_members, :subscription_usages, :virtual_network_rules, :firewall_rules, :operations, :backup_long_term_retention_policies, :extended_database_blob_auditing_policies, :extended_server_blob_auditing_policies, :server_blob_auditing_policies, :database_vulnerability_assessment_rule_baselines, :database_vulnerability_assessments, :job_agents, :job_credentials, :data_warehouse_user_activities_operations, :job_executions, :job_step_executions, :job_steps, :jobs, :job_target_executions, :job_versions, :long_term_retention_backups, :job_target_groups, :managed_databases, :server_automatic_tuning_operations, :server_dns_aliases, :server_security_alert_policies, :restore_points, :database_blob_auditing_policies, :elastic_pool_operations, :database_vulnerability_assessment_scans, :instance_failover_groups, :backup_short_term_retention_policies, :tde_certificates, :managed_instance_tde_certificates, :database_operations, :capabilities, :databases, :elastic_pools, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::SQL::Mgmt::V2014_04_01::SqlManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @backup_long_term_retention_vaults = @client_0.backup_long_term_retention_vaults
        @recoverable_databases = @client_0.recoverable_databases
        @restorable_dropped_databases = @client_0.restorable_dropped_databases
        @server_connection_policies = @client_0.server_connection_policies
        @database_threat_detection_policies = @client_0.database_threat_detection_policies
        @data_masking_policies = @client_0.data_masking_policies
        @data_masking_rules = @client_0.data_masking_rules
        @transparent_data_encryption_configurations = @client_0.transparent_data_encryption_configurations
        @extensions = @client_0.extensions
        @disaster_recovery_configurations = @client_0.disaster_recovery_configurations
        @geo_backup_policies = @client_0.geo_backup_policies
        @queries = @client_0.queries
        @query_statistics = @client_0.query_statistics
        @query_texts = @client_0.query_texts
        @recommended_elastic_pools = @client_0.recommended_elastic_pools
        @replication_links = @client_0.replication_links
        @server_azure_adadministrators = @client_0.server_azure_adadministrators
        @server_communication_links = @client_0.server_communication_links
        @service_objectives = @client_0.service_objectives
        @elastic_pool_activities = @client_0.elastic_pool_activities
        @elastic_pool_database_activities = @client_0.elastic_pool_database_activities
        @service_tier_advisors = @client_0.service_tier_advisors
        @transparent_data_encryptions = @client_0.transparent_data_encryptions
        @transparent_data_encryption_activities = @client_0.transparent_data_encryption_activities
        @server_table_auditing_policies = @client_0.server_table_auditing_policies
        @database_table_auditing_policies = @client_0.database_table_auditing_policies
        @database_connection_policies = @client_0.database_connection_policies
        @server_usages = @client_0.server_usages
        @database_usages = @client_0.database_usages

        @client_1 = Azure::SQL::Mgmt::V2015_05_01_preview::SqlManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @server_advisors = @client_1.server_advisors
        @database_advisors = @client_1.database_advisors
        @database_recommended_actions = @client_1.database_recommended_actions
        @database_automatic_tuning_operations = @client_1.database_automatic_tuning_operations
        @encryption_protectors = @client_1.encryption_protectors
        @failover_groups = @client_1.failover_groups
        @managed_instances = @client_1.managed_instances
        @server_keys = @client_1.server_keys
        @sync_agents = @client_1.sync_agents
        @sync_groups = @client_1.sync_groups
        @servers = @client_1.servers
        @sync_members = @client_1.sync_members
        @subscription_usages = @client_1.subscription_usages
        @virtual_network_rules = @client_1.virtual_network_rules
        @firewall_rules = @client_1.firewall_rules
        @operations = @client_1.operations

        @client_2 = Azure::SQL::Mgmt::V2017_03_01_preview::SqlManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @backup_long_term_retention_policies = @client_2.backup_long_term_retention_policies
        @extended_database_blob_auditing_policies = @client_2.extended_database_blob_auditing_policies
        @extended_server_blob_auditing_policies = @client_2.extended_server_blob_auditing_policies
        @server_blob_auditing_policies = @client_2.server_blob_auditing_policies
        @database_vulnerability_assessment_rule_baselines = @client_2.database_vulnerability_assessment_rule_baselines
        @database_vulnerability_assessments = @client_2.database_vulnerability_assessments
        @job_agents = @client_2.job_agents
        @job_credentials = @client_2.job_credentials
        @data_warehouse_user_activities_operations = @client_2.data_warehouse_user_activities_operations
        @job_executions = @client_2.job_executions
        @job_step_executions = @client_2.job_step_executions
        @job_steps = @client_2.job_steps
        @jobs = @client_2.jobs
        @job_target_executions = @client_2.job_target_executions
        @job_versions = @client_2.job_versions
        @long_term_retention_backups = @client_2.long_term_retention_backups
        @job_target_groups = @client_2.job_target_groups
        @managed_databases = @client_2.managed_databases
        @server_automatic_tuning_operations = @client_2.server_automatic_tuning_operations
        @server_dns_aliases = @client_2.server_dns_aliases
        @server_security_alert_policies = @client_2.server_security_alert_policies
        @restore_points = @client_2.restore_points
        @database_blob_auditing_policies = @client_2.database_blob_auditing_policies

        @client_3 = Azure::SQL::Mgmt::V2017_10_01_preview::SqlManagementClient.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @elastic_pool_operations = @client_3.elastic_pool_operations
        @database_vulnerability_assessment_scans = @client_3.database_vulnerability_assessment_scans
        @instance_failover_groups = @client_3.instance_failover_groups
        @backup_short_term_retention_policies = @client_3.backup_short_term_retention_policies
        @tde_certificates = @client_3.tde_certificates
        @managed_instance_tde_certificates = @client_3.managed_instance_tde_certificates
        @database_operations = @client_3.database_operations
        @capabilities = @client_3.capabilities
        @databases = @client_3.databases
        @elastic_pools = @client_3.elastic_pools

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/SQL/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_3.respond_to?method
          @client_3.send(method, *args)
        elsif @client_2.respond_to?method
          @client_2.send(method, *args)
        elsif @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def server_state
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerState
      end
      def transparent_data_encryption_activity_status
        Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivityStatus
      end
      def metric_value
        Azure::SQL::Mgmt::V2014_04_01::Models::MetricValue
      end
      def service_objective_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveListResult
      end
      def data_masking_rule_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRuleListResult
      end
      def query_text
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryText
      end
      def database_usage_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseUsageListResult
      end
      def transparent_data_encryption_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionListResult
      end
      def database_usage
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseUsage
      end
      def extension_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ExtensionListResult
      end
      def server_usage_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerUsageListResult
      end
      def server_communication_link_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerCommunicationLinkListResult
      end
      def server_usage
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerUsage
      end
      def disaster_recovery_configuration_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationListResult
      end
      def server_administrator_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerAdministratorListResult
      end
      def elastic_pool_per_database_max_dtu_capability
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMaxDtuCapability
      end
      def replication_link_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLinkListResult
      end
      def check_name_availability_response
        Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityResponse
      end
      def recommended_elastic_pool_list_metrics_result
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPoolListMetricsResult
      end
      def slo_usage_metric
        Azure::SQL::Mgmt::V2014_04_01::Models::SloUsageMetric
      end
      def geo_backup_policy_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicyListResult
      end
      def table_auditing_policy_properties
        Azure::SQL::Mgmt::V2014_04_01::Models::TableAuditingPolicyProperties
      end
      def import_extension_request
        Azure::SQL::Mgmt::V2014_04_01::Models::ImportExtensionRequest
      end
      def transparent_data_encryption_activity_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivityListResult
      end
      def recommended_elastic_pool_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPoolListResult
      end
      def elastic_pool_database_activity_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDatabaseActivityListResult
      end
      def recommended_elastic_pool_metric
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPoolMetric
      end
      def elastic_pool_activity_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolActivityListResult
      end
      def export_request
        Azure::SQL::Mgmt::V2014_04_01::Models::ExportRequest
      end
      def query_text_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryTextListResult
      end
      def backup_long_term_retention_vault_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionVaultListResult
      end
      def metric_name
        Azure::SQL::Mgmt::V2014_04_01::Models::MetricName
      end
      def restorable_dropped_database_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabaseListResult
      end
      def metric
        Azure::SQL::Mgmt::V2014_04_01::Models::Metric
      end
      def elastic_pool_per_database_min_dtu_capability
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMinDtuCapability
      end
      def metric_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::MetricListResult
      end
      def metric_availability
        Azure::SQL::Mgmt::V2014_04_01::Models::MetricAvailability
      end
      def server_table_auditing_policy_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicyListResult
      end
      def metric_definition
        Azure::SQL::Mgmt::V2014_04_01::Models::MetricDefinition
      end
      def operation_impact
        Azure::SQL::Mgmt::V2014_04_01::Models::OperationImpact
      end
      def metric_definition_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::MetricDefinitionListResult
      end
      def backup_long_term_retention_policy_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyListResult
      end
      def check_name_availability_request
        Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityRequest
      end
      def query_metric
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetric
      end
      def service_tier_advisor_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisorListResult
      end
      def query_interval
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryInterval
      end
      def recoverable_database_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabaseListResult
      end
      def query_statistic
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatistic
      end
      def database_table_auditing_policy_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicyListResult
      end
      def top_queries
        Azure::SQL::Mgmt::V2014_04_01::Models::TopQueries
      end
      def elastic_pool_dtu_capability
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDtuCapability
      end
      def top_queries_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::TopQueriesListResult
      end
      def advisor_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::AdvisorListResult
      end
      def query_statistic_list_result
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatisticListResult
      end
      def backup_long_term_retention_vault
        Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionVault
      end
      def recoverable_database
        Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabase
      end
      def restorable_dropped_database
        Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabase
      end
      def server_connection_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionPolicy
      end
      def service_tier_advisor
        Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisor
      end
      def transparent_data_encryption
        Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryption
      end
      def recommended_index
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndex
      end
      def database_security_alert_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseSecurityAlertPolicy
      end
      def data_masking_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingPolicy
      end
      def data_masking_rule
        Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRule
      end
      def disaster_recovery_configuration
        Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfiguration
      end
      def geo_backup_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicy
      end
      def import_export_response
        Azure::SQL::Mgmt::V2014_04_01::Models::ImportExportResponse
      end
      def import_request
        Azure::SQL::Mgmt::V2014_04_01::Models::ImportRequest
      end
      def recommended_elastic_pool
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPool
      end
      def replication_link
        Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLink
      end
      def server_azure_adadministrator
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerAzureADAdministrator
      end
      def server_communication_link
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerCommunicationLink
      end
      def service_objective
        Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjective
      end
      def elastic_pool_activity
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolActivity
      end
      def elastic_pool_database_activity
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDatabaseActivity
      end
      def transparent_data_encryption_activity
        Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivity
      end
      def database_connection_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseConnectionPolicy
      end
      def database_table_auditing_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy
      end
      def server_table_auditing_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicy
      end
      def backup_long_term_retention_policy_state
        Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyState
      end
      def max_size_units
        Azure::SQL::Mgmt::V2014_04_01::Models::MaxSizeUnits
      end
      def check_name_availability_reason
        Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityReason
      end
      def server_connection_type
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionType
      end
      def database_edition
        Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseEdition
      end
      def service_objective_name
        Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveName
      end
      def transparent_data_encryption_status
        Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionStatus
      end
      def recommended_index_action
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexAction
      end
      def recommended_index_state
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexState
      end
      def recommended_index_type
        Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexType
      end
      def read_scale
        Azure::SQL::Mgmt::V2014_04_01::Models::ReadScale
      end
      def security_alert_policy_email_account_admins
        Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyEmailAccountAdmins
      end
      def security_alert_policy_use_server_default
        Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyUseServerDefault
      end
      def data_masking_state
        Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingState
      end
      def data_masking_rule_state
        Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRuleState
      end
      def data_masking_function
        Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingFunction
      end
      def disaster_recovery_configuration_status
        Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationStatus
      end
      def disaster_recovery_configuration_auto_failover
        Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationAutoFailover
      end
      def disaster_recovery_configuration_failover_policy
        Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationFailoverPolicy
      end
      def disaster_recovery_configuration_role
        Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationRole
      end
      def elastic_pool_edition
        Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolEdition
      end
      def geo_backup_policy_state
        Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicyState
      end
      def storage_key_type
        Azure::SQL::Mgmt::V2014_04_01::Models::StorageKeyType
      end
      def authentication_type
        Azure::SQL::Mgmt::V2014_04_01::Models::AuthenticationType
      end
      def unit_type
        Azure::SQL::Mgmt::V2014_04_01::Models::UnitType
      end
      def primary_aggregation_type
        Azure::SQL::Mgmt::V2014_04_01::Models::PrimaryAggregationType
      end
      def unit_definition_type
        Azure::SQL::Mgmt::V2014_04_01::Models::UnitDefinitionType
      end
      def query_aggregation_function
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryAggregationFunction
      end
      def query_execution_type
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryExecutionType
      end
      def query_observed_metric_type
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryObservedMetricType
      end
      def query_metric_unit
        Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetricUnit
      end
      def replication_role
        Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationRole
      end
      def replication_state
        Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationState
      end
      def server_version
        Azure::SQL::Mgmt::V2014_04_01::Models::ServerVersion
      end
      def server_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerListResult
      end
      def recommended_action_implementation_info
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionImplementationInfo
      end
      def recommended_action_impact_record
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionImpactRecord
      end
      def managed_instance_update
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceUpdate
      end
      def firewall_rule_list
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleList
      end
      def resource_identity
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceIdentity
      end
      def sync_group_schema
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchema
      end
      def sync_database_id_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdListResult
      end
      def sync_group_schema_table
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTable
      end
      def sync_full_schema_table
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTable
      end
      def sync_group_schema_table_column
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTableColumn
      end
      def managed_instance_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceListResult
      end
      def encryption_protector_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtectorListResult
      end
      def sync_full_schema_table_column
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTableColumn
      end
      def failover_group_read_only_endpoint
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadOnlyEndpoint
      end
      def recommended_action_state_info
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionStateInfo
      end
      def sync_group_log_properties
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogProperties
      end
      def recommended_action_error_info
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionErrorInfo
      end
      def failover_group_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupListResult
      end
      def recommended_action_metric_info
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionMetricInfo
      end
      def sync_full_schema_properties_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaPropertiesListResult
      end
      def firewall_rule_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleListResult
      end
      def server_key_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyListResult
      end
      def virtual_network_rule_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleListResult
      end
      def sync_group_log_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogListResult
      end
      def partner_info
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::PartnerInfo
      end
      def subscription_usage_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsageListResult
      end
      def sync_group_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupListResult
      end
      def sync_agent_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentListResult
      end
      def failover_group_read_write_endpoint
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadWriteEndpoint
      end
      def resource_with_writable_name
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceWithWritableName
      end
      def sync_full_schema_properties
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaProperties
      end
      def sync_agent_key_properties
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentKeyProperties
      end
      def failover_group_update
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupUpdate
      end
      def sync_member_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberListResult
      end
      def automatic_tuning_options
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningOptions
      end
      def sync_agent_linked_database_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabaseListResult
      end
      def recommended_action
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedAction
      end
      def sync_database_id_properties
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdProperties
      end
      def database_automatic_tuning
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::DatabaseAutomaticTuning
      end
      def failover_group
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroup
      end
      def operation_display
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationDisplay
      end
      def managed_instance
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstance
      end
      def operation
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::Operation
      end
      def encryption_protector
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtector
      end
      def operation_list_result
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationListResult
      end
      def proxy_resource_with_writable_name
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ProxyResourceWithWritableName
      end
      def sync_agent_linked_database
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabase
      end
      def server_key
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKey
      end
      def sync_agent
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgent
      end
      def subscription_usage
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsage
      end
      def sync_group
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroup
      end
      def sync_member
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMember
      end
      def recommended_action_current_state
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionCurrentState
      end
      def virtual_network_rule
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRule
      end
      def auto_execute_status_inherited_from
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatusInheritedFrom
      end
      def is_retryable
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::IsRetryable
      end
      def recommended_action_initiated_by
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionInitiatedBy
      end
      def advisor
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::Advisor
      end
      def automatic_tuning_mode
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningMode
      end
      def implementation_method
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ImplementationMethod
      end
      def server_key_type
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyType
      end
      def automatic_tuning_disabled_reason
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningDisabledReason
      end
      def identity_type
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::IdentityType
      end
      def sync_agent_state
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentState
      end
      def failover_group_replication_role
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReplicationRole
      end
      def sync_group_log_type
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogType
      end
      def operation_origin
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationOrigin
      end
      def sync_group_state
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupState
      end
      def sync_member_db_type
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberDbType
      end
      def firewall_rule
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRule
      end
      def sync_conflict_resolution_policy
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncConflictResolutionPolicy
      end
      def sync_direction
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDirection
      end
      def sync_member_state
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberState
      end
      def virtual_network_rule_state
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleState
      end
      def server
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::Server
      end
      def server_update
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerUpdate
      end
      def advisor_status
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::AdvisorStatus
      end
      def auto_execute_status
        Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatus
      end
      def data_warehouse_user_activities
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::DataWarehouseUserActivities
      end
      def job_credential
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredential
      end
      def job_agent
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgent
      end
      def job_step
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStep
      end
      def job_execution
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecution
      end
      def job_version
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersion
      end
      def job_target_group
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroup
      end
      def managed_database
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabase
      end
      def job
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::Job
      end
      def server_dns_alias
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAlias
      end
      def server_automatic_tuning
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerAutomaticTuning
      end
      def long_term_retention_backup
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackup
      end
      def server_security_alert_policy
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerSecurityAlertPolicy
      end
      def job_agent_state
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentState
      end
      def job_execution_lifecycle
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionLifecycle
      end
      def provisioning_state
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ProvisioningState
      end
      def job_target_type
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetType
      end
      def job_schedule_type
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobScheduleType
      end
      def job_step_action_type
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionType
      end
      def database_blob_auditing_policy
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseBlobAuditingPolicy
      end
      def job_step_output_type
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutputType
      end
      def job_target_group_membership_type
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupMembershipType
      end
      def managed_database_status
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseStatus
      end
      def automatic_tuning_server_mode
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerMode
      end
      def automatic_tuning_server_reason
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerReason
      end
      def long_term_retention_database_state
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionDatabaseState
      end
      def managed_database_create_mode
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseCreateMode
      end
      def job_step_action_source
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionSource
      end
      def vulnerability_assessment_policy_baseline_name
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
      end
      def security_alert_policy_state
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::SecurityAlertPolicyState
      end
      def restore_point_type
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointType
      end
      def blob_auditing_policy_state
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::BlobAuditingPolicyState
      end
      def automatic_tuning_option_mode_desired
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeDesired
      end
      def automatic_tuning_option_mode_actual
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeActual
      end
      def backup_long_term_retention_policy
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::BackupLongTermRetentionPolicy
      end
      def restore_point
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePoint
      end
      def job_schedule
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobSchedule
      end
      def job_agent_update
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentUpdate
      end
      def managed_database_update
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseUpdate
      end
      def database_vulnerability_assessment_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentListResult
      end
      def job_target_group_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupListResult
      end
      def complete_database_restore_definition
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::CompleteDatabaseRestoreDefinition
      end
      def server_dns_alias_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasListResult
      end
      def job_step_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepListResult
      end
      def job_agent_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentListResult
      end
      def server_dns_alias_acquisition
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasAcquisition
      end
      def import_export_database_definition
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportDatabaseDefinition
      end
      def job_target
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTarget
      end
      def database_vulnerability_assessment_rule_baseline_item
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaselineItem
      end
      def job_credential_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredentialListResult
      end
      def job_execution_target
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionTarget
      end
      def managed_database_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseListResult
      end
      def long_term_retention_backup_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackupListResult
      end
      def job_execution_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult
      end
      def create_database_restore_point_definition
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::CreateDatabaseRestorePointDefinition
      end
      def job_step_execution_options
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepExecutionOptions
      end
      def automatic_tuning_server_options
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerOptions
      end
      def job_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobListResult
      end
      def job_step_action
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepAction
      end
      def job_version_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersionListResult
      end
      def job_step_output
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutput
      end
      def extended_database_blob_auditing_policy
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedDatabaseBlobAuditingPolicy
      end
      def extended_server_blob_auditing_policy
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedServerBlobAuditingPolicy
      end
      def server_blob_auditing_policy
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerBlobAuditingPolicy
      end
      def import_export_operation_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportOperationResult
      end
      def database_vulnerability_assessment_rule_baseline
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaseline
      end
      def restore_point_list_result
        Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointListResult
      end
      def elastic_pool_edition_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolEditionCapability
      end
      def location_capabilities
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::LocationCapabilities
      end
      def management_operation_state
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagementOperationState
      end
      def database_status
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseStatus
      end
      def catalog_collation_type
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::CatalogCollationType
      end
      def resource
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::Resource
      end
      def server_version_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ServerVersionCapability
      end
      def database_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseListResult
      end
      def service_objective_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ServiceObjectiveCapability
      end
      def elastic_pool_per_database_min_performance_level_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerDatabaseMinPerformanceLevelCapability
      end
      def backup_short_term_retention_policy_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::BackupShortTermRetentionPolicyListResult
      end
      def elastic_pool_per_database_max_performance_level_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerDatabaseMaxPerformanceLevelCapability
      end
      def elastic_pool_performance_level_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerformanceLevelCapability
      end
      def vulnerability_assessment_scan_error
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanError
      end
      def instance_failover_group_read_only_endpoint
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupReadOnlyEndpoint
      end
      def vulnerability_assessment_scan_record_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanRecordListResult
      end
      def proxy_resource
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ProxyResource
      end
      def managed_instance_vcores_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceVcoresCapability
      end
      def tracked_resource
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::TrackedResource
      end
      def managed_instance_family_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceFamilyCapability
      end
      def max_size_range_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::MaxSizeRangeCapability
      end
      def managed_instance_version_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceVersionCapability
      end
      def managed_instance_edition_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstanceEditionCapability
      end
      def managed_instance_pair_info
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ManagedInstancePairInfo
      end
      def elastic_pool_operation_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolOperationListResult
      end
      def log_size_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::LogSizeCapability
      end
      def instance_failover_group_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupListResult
      end
      def performance_level_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::PerformanceLevelCapability
      end
      def database_update
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseUpdate
      end
      def partner_region_info
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::PartnerRegionInfo
      end
      def elastic_pool_operation
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolOperation
      end
      def elastic_pool_per_database_settings
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolPerDatabaseSettings
      end
      def vulnerability_assessment_scan_record
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanRecord
      end
      def database_vulnerability_assessment_scans_export
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseVulnerabilityAssessmentScansExport
      end
      def elastic_pool_update
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolUpdate
      end
      def license_type_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::LicenseTypeCapability
      end
      def elastic_pool
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPool
      end
      def database
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::Database
      end
      def instance_failover_group_read_write_endpoint
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupReadWriteEndpoint
      end
      def instance_failover_group
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroup
      end
      def backup_short_term_retention_policy
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::BackupShortTermRetentionPolicy
      end
      def tde_certificate
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::TdeCertificate
      end
      def vulnerability_assessment_scan_trigger_type
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanTriggerType
      end
      def vulnerability_assessment_scan_state
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentScanState
      end
      def max_size_unit
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::MaxSizeUnit
      end
      def log_size_unit
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::LogSizeUnit
      end
      def database_license_type
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseLicenseType
      end
      def database_read_scale
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseReadScale
      end
      def elastic_pool_license_type
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolLicenseType
      end
      def instance_failover_group_replication_role
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::InstanceFailoverGroupReplicationRole
      end
      def capability_group
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::CapabilityGroup
      end
      def read_write_endpoint_failover_policy
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ReadWriteEndpointFailoverPolicy
      end
      def read_only_endpoint_failover_policy
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ReadOnlyEndpointFailoverPolicy
      end
      def capability_status
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::CapabilityStatus
      end
      def performance_level_unit
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::PerformanceLevelUnit
      end
      def create_mode
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::CreateMode
      end
      def sample_name
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::SampleName
      end
      def vulnerability_assessment_recurring_scans_properties
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
      end
      def resource_move_definition
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ResourceMoveDefinition
      end
      def elastic_pool_state
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolState
      end
      def database_operation_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseOperationListResult
      end
      def max_size_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::MaxSizeCapability
      end
      def database_operation
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseOperation
      end
      def edition_capability
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::EditionCapability
      end
      def sku
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::Sku
      end
      def database_vulnerability_assessment
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::DatabaseVulnerabilityAssessment
      end
      def elastic_pool_list_result
        Azure::SQL::Mgmt::V2017_10_01_preview::Models::ElasticPoolListResult
      end
    end
  end
end
