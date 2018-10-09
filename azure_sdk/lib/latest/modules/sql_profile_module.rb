# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_sql'

module Azure::Profiles::Latest
  module SQL
    module Mgmt
      Capabilities = Azure::SQL::Mgmt::V2014_04_01::Capabilities
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
      ElasticPools = Azure::SQL::Mgmt::V2014_04_01::ElasticPools
      GeoBackupPolicies = Azure::SQL::Mgmt::V2014_04_01::GeoBackupPolicies
      QueryStatistics = Azure::SQL::Mgmt::V2014_04_01::QueryStatistics
      Queries = Azure::SQL::Mgmt::V2014_04_01::Queries
      RecommendedElasticPools = Azure::SQL::Mgmt::V2014_04_01::RecommendedElasticPools
      QueryTexts = Azure::SQL::Mgmt::V2014_04_01::QueryTexts
      ReplicationLinks = Azure::SQL::Mgmt::V2014_04_01::ReplicationLinks
      ServerCommunicationLinks = Azure::SQL::Mgmt::V2014_04_01::ServerCommunicationLinks
      ServerAzureADAdministrators = Azure::SQL::Mgmt::V2014_04_01::ServerAzureADAdministrators
      ElasticPoolActivities = Azure::SQL::Mgmt::V2014_04_01::ElasticPoolActivities
      ServiceObjectives = Azure::SQL::Mgmt::V2014_04_01::ServiceObjectives
      ServiceTierAdvisors = Azure::SQL::Mgmt::V2014_04_01::ServiceTierAdvisors
      ElasticPoolDatabaseActivities = Azure::SQL::Mgmt::V2014_04_01::ElasticPoolDatabaseActivities
      TransparentDataEncryptions = Azure::SQL::Mgmt::V2014_04_01::TransparentDataEncryptions
      TransparentDataEncryptionActivities = Azure::SQL::Mgmt::V2014_04_01::TransparentDataEncryptionActivities
      ServerTableAuditingPolicies = Azure::SQL::Mgmt::V2014_04_01::ServerTableAuditingPolicies
      DatabaseTableAuditingPolicies = Azure::SQL::Mgmt::V2014_04_01::DatabaseTableAuditingPolicies
      DatabaseConnectionPolicies = Azure::SQL::Mgmt::V2014_04_01::DatabaseConnectionPolicies
      ServerUsages = Azure::SQL::Mgmt::V2014_04_01::ServerUsages
      DatabaseUsages = Azure::SQL::Mgmt::V2014_04_01::DatabaseUsages
      FailoverGroups = Azure::SQL::Mgmt::V2015_05_01_preview::FailoverGroups
      SyncAgents = Azure::SQL::Mgmt::V2015_05_01_preview::SyncAgents
      EncryptionProtectors = Azure::SQL::Mgmt::V2015_05_01_preview::EncryptionProtectors
      Servers = Azure::SQL::Mgmt::V2015_05_01_preview::Servers
      Operations = Azure::SQL::Mgmt::V2015_05_01_preview::Operations
      SyncMembers = Azure::SQL::Mgmt::V2015_05_01_preview::SyncMembers
      SubscriptionUsages = Azure::SQL::Mgmt::V2015_05_01_preview::SubscriptionUsages
      SyncGroups = Azure::SQL::Mgmt::V2015_05_01_preview::SyncGroups
      VirtualNetworkRules = Azure::SQL::Mgmt::V2015_05_01_preview::VirtualNetworkRules
      FirewallRules = Azure::SQL::Mgmt::V2015_05_01_preview::FirewallRules
      ServerAdvisors = Azure::SQL::Mgmt::V2015_05_01_preview::ServerAdvisors
      DatabaseRecommendedActions = Azure::SQL::Mgmt::V2015_05_01_preview::DatabaseRecommendedActions
      DatabaseAdvisors = Azure::SQL::Mgmt::V2015_05_01_preview::DatabaseAdvisors
      DatabaseAutomaticTuningOperations = Azure::SQL::Mgmt::V2015_05_01_preview::DatabaseAutomaticTuningOperations
      ManagedInstances = Azure::SQL::Mgmt::V2015_05_01_preview::ManagedInstances
      ServerKeys = Azure::SQL::Mgmt::V2015_05_01_preview::ServerKeys
      DatabaseBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseBlobAuditingPolicies
      Jobs = Azure::SQL::Mgmt::V2017_03_01_preview::Jobs
      BackupLongTermRetentionPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::BackupLongTermRetentionPolicies
      Databases = Azure::SQL::Mgmt::V2017_03_01_preview::Databases
      ExtendedDatabaseBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ExtendedDatabaseBlobAuditingPolicies
      ExtendedServerBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ExtendedServerBlobAuditingPolicies
      ServerBlobAuditingPolicies = Azure::SQL::Mgmt::V2017_03_01_preview::ServerBlobAuditingPolicies
      DatabaseOperations = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseOperations
      DatabaseVulnerabilityAssessmentRuleBaselines = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseVulnerabilityAssessmentRuleBaselines
      DatabaseVulnerabilityAssessments = Azure::SQL::Mgmt::V2017_03_01_preview::DatabaseVulnerabilityAssessments
      DataWarehouseUserActivitiesOperations = Azure::SQL::Mgmt::V2017_03_01_preview::DataWarehouseUserActivitiesOperations
      JobAgents = Azure::SQL::Mgmt::V2017_03_01_preview::JobAgents
      JobCredentials = Azure::SQL::Mgmt::V2017_03_01_preview::JobCredentials
      JobExecutions = Azure::SQL::Mgmt::V2017_03_01_preview::JobExecutions
      JobStepExecutions = Azure::SQL::Mgmt::V2017_03_01_preview::JobStepExecutions
      JobSteps = Azure::SQL::Mgmt::V2017_03_01_preview::JobSteps
      JobTargetExecutions = Azure::SQL::Mgmt::V2017_03_01_preview::JobTargetExecutions
      JobTargetGroups = Azure::SQL::Mgmt::V2017_03_01_preview::JobTargetGroups
      JobVersions = Azure::SQL::Mgmt::V2017_03_01_preview::JobVersions
      LongTermRetentionBackups = Azure::SQL::Mgmt::V2017_03_01_preview::LongTermRetentionBackups
      ManagedDatabases = Azure::SQL::Mgmt::V2017_03_01_preview::ManagedDatabases
      ServerAutomaticTuningOperations = Azure::SQL::Mgmt::V2017_03_01_preview::ServerAutomaticTuningOperations
      ServerDnsAliases = Azure::SQL::Mgmt::V2017_03_01_preview::ServerDnsAliases
      RestorePoints = Azure::SQL::Mgmt::V2017_03_01_preview::RestorePoints

      module Models
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
        MaxSizeCapability = Azure::SQL::Mgmt::V2014_04_01::Models::MaxSizeCapability
        ServerAdministratorListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServerAdministratorListResult
        EditionCapability = Azure::SQL::Mgmt::V2014_04_01::Models::EditionCapability
        ElasticPoolPerDatabaseMaxDtuCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMaxDtuCapability
        ElasticPoolListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolListResult
        ElasticPoolEditionCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolEditionCapability
        ReplicationLinkListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLinkListResult
        LocationCapabilities = Azure::SQL::Mgmt::V2014_04_01::Models::LocationCapabilities
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
        RestorableDroppedDatabaseListResult = Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabaseListResult
        Metric = Azure::SQL::Mgmt::V2014_04_01::Models::Metric
        ElasticPoolPerDatabaseMinDtuCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMinDtuCapability
        MetricListResult = Azure::SQL::Mgmt::V2014_04_01::Models::MetricListResult
        ServerVersionCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ServerVersionCapability
        MetricAvailability = Azure::SQL::Mgmt::V2014_04_01::Models::MetricAvailability
        ServerTableAuditingPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicyListResult
        MetricDefinition = Azure::SQL::Mgmt::V2014_04_01::Models::MetricDefinition
        OperationImpact = Azure::SQL::Mgmt::V2014_04_01::Models::OperationImpact
        MetricDefinitionListResult = Azure::SQL::Mgmt::V2014_04_01::Models::MetricDefinitionListResult
        BackupLongTermRetentionPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyListResult
        ServiceObjectiveCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveCapability
        QueryMetric = Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetric
        ServiceTierAdvisorListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisorListResult
        CheckNameAvailabilityRequest = Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityRequest
        QueryInterval = Azure::SQL::Mgmt::V2014_04_01::Models::QueryInterval
        QueryStatistic = Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatistic
        RecoverableDatabaseListResult = Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabaseListResult
        DatabaseTableAuditingPolicyListResult = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicyListResult
        TopQueries = Azure::SQL::Mgmt::V2014_04_01::Models::TopQueries
        AdvisorListResult = Azure::SQL::Mgmt::V2014_04_01::Models::AdvisorListResult
        TopQueriesListResult = Azure::SQL::Mgmt::V2014_04_01::Models::TopQueriesListResult
        ElasticPoolDtuCapability = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDtuCapability
        BackupLongTermRetentionVault = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionVault
        RestorableDroppedDatabase = Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabase
        QueryStatisticListResult = Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatisticListResult
        ServiceTierAdvisor = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisor
        TransparentDataEncryption = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryption
        RecoverableDatabase = Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabase
        DatabaseSecurityAlertPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseSecurityAlertPolicy
        RecommendedIndex = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndex
        ServerConnectionPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionPolicy
        ElasticPool = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPool
        DisasterRecoveryConfiguration = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfiguration
        DataMaskingPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingPolicy
        GeoBackupPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicy
        ImportExportResponse = Azure::SQL::Mgmt::V2014_04_01::Models::ImportExportResponse
        ElasticPoolUpdate = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolUpdate
        DataMaskingRule = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRule
        ReplicationLink = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLink
        ImportRequest = Azure::SQL::Mgmt::V2014_04_01::Models::ImportRequest
        RecommendedElasticPool = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPool
        ServerCommunicationLink = Azure::SQL::Mgmt::V2014_04_01::Models::ServerCommunicationLink
        ServerAzureADAdministrator = Azure::SQL::Mgmt::V2014_04_01::Models::ServerAzureADAdministrator
        ServiceObjective = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjective
        TransparentDataEncryptionActivity = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivity
        ElasticPoolActivity = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolActivity
        ServerTableAuditingPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicy
        DatabaseConnectionPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseConnectionPolicy
        DatabaseTableAuditingPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy
        ElasticPoolDatabaseActivity = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDatabaseActivity
        BackupLongTermRetentionPolicyState = Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyState
        CapabilityStatus = Azure::SQL::Mgmt::V2014_04_01::Models::CapabilityStatus
        MaxSizeUnits = Azure::SQL::Mgmt::V2014_04_01::Models::MaxSizeUnits
        PerformanceLevelUnit = Azure::SQL::Mgmt::V2014_04_01::Models::PerformanceLevelUnit
        CheckNameAvailabilityReason = Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityReason
        ServerConnectionType = Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionType
        ServiceObjectiveName = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveName
        TransparentDataEncryptionStatus = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionStatus
        RecommendedIndexAction = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexAction
        DatabaseEdition = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseEdition
        RecommendedIndexType = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexType
        ReadScale = Azure::SQL::Mgmt::V2014_04_01::Models::ReadScale
        RecommendedIndexState = Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexState
        SecurityAlertPolicyEmailAccountAdmins = Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyEmailAccountAdmins
        SecurityAlertPolicyUseServerDefault = Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyUseServerDefault
        DataMaskingState = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingState
        SecurityAlertPolicyState = Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyState
        DataMaskingFunction = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingFunction
        DisasterRecoveryConfigurationStatus = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationStatus
        DisasterRecoveryConfigurationAutoFailover = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationAutoFailover
        DataMaskingRuleState = Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRuleState
        DisasterRecoveryConfigurationRole = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationRole
        ElasticPoolState = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolState
        ElasticPoolEdition = Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolEdition
        DisasterRecoveryConfigurationFailoverPolicy = Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationFailoverPolicy
        StorageKeyType = Azure::SQL::Mgmt::V2014_04_01::Models::StorageKeyType
        AuthenticationType = Azure::SQL::Mgmt::V2014_04_01::Models::AuthenticationType
        UnitType = Azure::SQL::Mgmt::V2014_04_01::Models::UnitType
        GeoBackupPolicyState = Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicyState
        UnitDefinitionType = Azure::SQL::Mgmt::V2014_04_01::Models::UnitDefinitionType
        QueryAggregationFunction = Azure::SQL::Mgmt::V2014_04_01::Models::QueryAggregationFunction
        QueryExecutionType = Azure::SQL::Mgmt::V2014_04_01::Models::QueryExecutionType
        PrimaryAggregationType = Azure::SQL::Mgmt::V2014_04_01::Models::PrimaryAggregationType
        QueryMetricUnit = Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetricUnit
        ReplicationState = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationState
        ServerVersion = Azure::SQL::Mgmt::V2014_04_01::Models::ServerVersion
        QueryObservedMetricType = Azure::SQL::Mgmt::V2014_04_01::Models::QueryObservedMetricType
        TransparentDataEncryptionActivityStatus = Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivityStatus
        ServerState = Azure::SQL::Mgmt::V2014_04_01::Models::ServerState
        ReplicationRole = Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationRole
        MetricName = Azure::SQL::Mgmt::V2014_04_01::Models::MetricName
        MetricValue = Azure::SQL::Mgmt::V2014_04_01::Models::MetricValue
        ServiceObjectiveListResult = Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveListResult
        RecommendedActionImplementationInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionImplementationInfo
        RecommendedActionImpactRecord = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionImpactRecord
        ManagedInstanceUpdate = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceUpdate
        OperationDisplay = Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationDisplay
        OperationListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationListResult
        ResourceIdentity = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceIdentity
        FirewallRuleList = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleList
        SyncDatabaseIdListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdListResult
        SyncGroupSchema = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchema
        SyncFullSchemaTable = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTable
        SyncGroupSchemaTable = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTable
        ManagedInstanceListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceListResult
        SyncGroupSchemaTableColumn = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTableColumn
        SyncFullSchemaTableColumn = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTableColumn
        EncryptionProtectorListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtectorListResult
        SyncGroupLogProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogProperties
        FailoverGroupReadOnlyEndpoint = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadOnlyEndpoint
        Operation = Azure::SQL::Mgmt::V2015_05_01_preview::Models::Operation
        FailoverGroupListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupListResult
        RecommendedActionErrorInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionErrorInfo
        RecommendedActionStateInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionStateInfo
        RecommendedActionMetricInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionMetricInfo
        SyncFullSchemaPropertiesListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaPropertiesListResult
        PartnerInfo = Azure::SQL::Mgmt::V2015_05_01_preview::Models::PartnerInfo
        ResourceWithWritableName = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceWithWritableName
        SubscriptionUsageListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsageListResult
        SyncGroupListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupListResult
        SyncAgentListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentListResult
        FailoverGroupReadWriteEndpoint = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadWriteEndpoint
        SyncAgentKeyProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentKeyProperties
        SyncFullSchemaProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaProperties
        SyncMemberListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberListResult
        FailoverGroupUpdate = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupUpdate
        SyncAgentLinkedDatabaseListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabaseListResult
        AutomaticTuningOptions = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningOptions
        ServerKeyListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyListResult
        VirtualNetworkRuleListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleListResult
        SyncDatabaseIdProperties = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdProperties
        RecommendedAction = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedAction
        DatabaseAutomaticTuning = Azure::SQL::Mgmt::V2015_05_01_preview::Models::DatabaseAutomaticTuning
        Advisor = Azure::SQL::Mgmt::V2015_05_01_preview::Models::Advisor
        SyncGroupLogListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogListResult
        ProxyResourceWithWritableName = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ProxyResourceWithWritableName
        FailoverGroup = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroup
        ServerUpdate = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerUpdate
        ManagedInstance = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstance
        EncryptionProtector = Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtector
        SyncAgent = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgent
        SyncAgentLinkedDatabase = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabase
        ServerKey = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKey
        SubscriptionUsage = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsage
        VirtualNetworkRule = Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRule
        Server = Azure::SQL::Mgmt::V2015_05_01_preview::Models::Server
        SyncMember = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMember
        AutoExecuteStatus = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatus
        AutoExecuteStatusInheritedFrom = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatusInheritedFrom
        SyncGroup = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroup
        RecommendedActionInitiatedBy = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionInitiatedBy
        ImplementationMethod = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ImplementationMethod
        IsRetryable = Azure::SQL::Mgmt::V2015_05_01_preview::Models::IsRetryable
        AdvisorStatus = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AdvisorStatus
        RecommendedActionCurrentState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionCurrentState
        AutomaticTuningDisabledReason = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningDisabledReason
        AutomaticTuningMode = Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningMode
        ReadOnlyEndpointFailoverPolicy = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ReadOnlyEndpointFailoverPolicy
        FailoverGroupReplicationRole = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReplicationRole
        IdentityType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::IdentityType
        ServerKeyType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyType
        ReadWriteEndpointFailoverPolicy = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ReadWriteEndpointFailoverPolicy
        SyncGroupLogType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogType
        SyncConflictResolutionPolicy = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncConflictResolutionPolicy
        SyncGroupState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupState
        SyncAgentState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentState
        SyncMemberDbType = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberDbType
        VirtualNetworkRuleState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleState
        SyncDirection = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDirection
        SyncMemberState = Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberState
        FirewallRuleListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleListResult
        FirewallRule = Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRule
        OperationOrigin = Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationOrigin
        ServerListResult = Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerListResult
        JobAgentListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentListResult
        CreateDatabaseRestorePointDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::CreateDatabaseRestorePointDefinition
        JobAgentUpdate = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentUpdate
        JobStepListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepListResult
        JobVersionListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersionListResult
        ServerDnsAliasAcquisition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasAcquisition
        AutomaticTuningServerOptions = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerOptions
        JobExecutionTarget = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionTarget
        CompleteDatabaseRestoreDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::CompleteDatabaseRestoreDefinition
        JobStepExecutionOptions = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepExecutionOptions
        JobSchedule = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobSchedule
        ImportExportDatabaseDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportDatabaseDefinition
        ManagedDatabaseListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseListResult
        RestorePointListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointListResult
        JobStepAction = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepAction
        DatabaseVulnerabilityAssessmentRuleBaselineItem = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaselineItem
        JobExecutionListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult
        ExtendedDatabaseBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedDatabaseBlobAuditingPolicy
        ExtendedServerBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedServerBlobAuditingPolicy
        DatabaseOperationListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseOperationListResult
        DatabaseOperation = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseOperation
        ImportExportOperationResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportOperationResult
        JobStepOutput = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutput
        DatabaseVulnerabilityAssessment = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessment
        DataWarehouseUserActivities = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DataWarehouseUserActivities
        DatabaseVulnerabilityAssessmentRuleBaseline = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaseline
        JobAgent = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgent
        JobCredential = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredential
        JobExecution = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecution
        ServerBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerBlobAuditingPolicy
        JobTargetGroup = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroup
        JobStep = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStep
        LongTermRetentionBackup = Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackup
        JobVersion = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersion
        ServerAutomaticTuning = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerAutomaticTuning
        ManagedDatabase = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabase
        ManagementOperationState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagementOperationState
        ServerDnsAlias = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAlias
        CatalogCollationType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::CatalogCollationType
        DatabaseStatus = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseStatus
        JobExecutionLifecycle = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionLifecycle
        JobAgentState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentState
        JobScheduleType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobScheduleType
        DatabaseListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseListResult
        JobStepActionSource = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionSource
        JobStepActionType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionType
        JobTargetType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetType
        JobStepOutputType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutputType
        JobTargetGroupMembershipType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupMembershipType
        ProxyResource = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ProxyResource
        ManagedDatabaseCreateMode = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseCreateMode
        CreateMode = Azure::SQL::Mgmt::V2017_03_01_preview::Models::CreateMode
        ManagedDatabaseStatus = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseStatus
        LongTermRetentionDatabaseState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionDatabaseState
        TrackedResource = Azure::SQL::Mgmt::V2017_03_01_preview::Models::TrackedResource
        AutomaticTuningServerReason = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerReason
        VulnerabilityAssessmentPolicyBaselineName = Azure::SQL::Mgmt::V2017_03_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
        AutomaticTuningServerMode = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerMode
        BackupLongTermRetentionPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::BackupLongTermRetentionPolicy
        Database = Azure::SQL::Mgmt::V2017_03_01_preview::Models::Database
        DatabaseUpdate = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseUpdate
        Job = Azure::SQL::Mgmt::V2017_03_01_preview::Models::Job
        Sku = Azure::SQL::Mgmt::V2017_03_01_preview::Models::Sku
        DatabaseBlobAuditingPolicy = Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseBlobAuditingPolicy
        RestorePoint = Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePoint
        Resource = Azure::SQL::Mgmt::V2017_03_01_preview::Models::Resource
        BlobAuditingPolicyState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::BlobAuditingPolicyState
        AutomaticTuningOptionModeDesired = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeDesired
        ProvisioningState = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ProvisioningState
        JobListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobListResult
        AutomaticTuningOptionModeActual = Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeActual
        SampleName = Azure::SQL::Mgmt::V2017_03_01_preview::Models::SampleName
        RestorePointType = Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointType
        JobCredentialListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredentialListResult
        VulnerabilityAssessmentRecurringScansProperties = Azure::SQL::Mgmt::V2017_03_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
        ManagedDatabaseUpdate = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseUpdate
        JobTargetGroupListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupListResult
        ResourceMoveDefinition = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ResourceMoveDefinition
        ServerDnsAliasListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasListResult
        JobTarget = Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTarget
        LongTermRetentionBackupListResult = Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackupListResult
      end

      class SQLManagementClass
        attr_reader :capabilities, :backup_long_term_retention_vaults, :recoverable_databases, :restorable_dropped_databases, :server_connection_policies, :database_threat_detection_policies, :data_masking_policies, :data_masking_rules, :transparent_data_encryption_configurations, :extensions, :disaster_recovery_configurations, :elastic_pools, :geo_backup_policies, :query_statistics, :queries, :recommended_elastic_pools, :query_texts, :replication_links, :server_communication_links, :server_azure_adadministrators, :elastic_pool_activities, :service_objectives, :service_tier_advisors, :elastic_pool_database_activities, :transparent_data_encryptions, :transparent_data_encryption_activities, :server_table_auditing_policies, :database_table_auditing_policies, :database_connection_policies, :server_usages, :database_usages, :failover_groups, :sync_agents, :encryption_protectors, :servers, :operations, :sync_members, :subscription_usages, :sync_groups, :virtual_network_rules, :firewall_rules, :server_advisors, :database_recommended_actions, :database_advisors, :database_automatic_tuning_operations, :managed_instances, :server_keys, :database_blob_auditing_policies, :jobs, :backup_long_term_retention_policies, :databases, :extended_database_blob_auditing_policies, :extended_server_blob_auditing_policies, :server_blob_auditing_policies, :database_operations, :database_vulnerability_assessment_rule_baselines, :database_vulnerability_assessments, :data_warehouse_user_activities_operations, :job_agents, :job_credentials, :job_executions, :job_step_executions, :job_steps, :job_target_executions, :job_target_groups, :job_versions, :long_term_retention_backups, :managed_databases, :server_automatic_tuning_operations, :server_dns_aliases, :restore_points, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::SQL::Mgmt::V2014_04_01::SqlManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @capabilities = @client_0.capabilities
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
          @elastic_pools = @client_0.elastic_pools
          @geo_backup_policies = @client_0.geo_backup_policies
          @query_statistics = @client_0.query_statistics
          @queries = @client_0.queries
          @recommended_elastic_pools = @client_0.recommended_elastic_pools
          @query_texts = @client_0.query_texts
          @replication_links = @client_0.replication_links
          @server_communication_links = @client_0.server_communication_links
          @server_azure_adadministrators = @client_0.server_azure_adadministrators
          @elastic_pool_activities = @client_0.elastic_pool_activities
          @service_objectives = @client_0.service_objectives
          @service_tier_advisors = @client_0.service_tier_advisors
          @elastic_pool_database_activities = @client_0.elastic_pool_database_activities
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
          @failover_groups = @client_1.failover_groups
          @sync_agents = @client_1.sync_agents
          @encryption_protectors = @client_1.encryption_protectors
          @servers = @client_1.servers
          @operations = @client_1.operations
          @sync_members = @client_1.sync_members
          @subscription_usages = @client_1.subscription_usages
          @sync_groups = @client_1.sync_groups
          @virtual_network_rules = @client_1.virtual_network_rules
          @firewall_rules = @client_1.firewall_rules
          @server_advisors = @client_1.server_advisors
          @database_recommended_actions = @client_1.database_recommended_actions
          @database_advisors = @client_1.database_advisors
          @database_automatic_tuning_operations = @client_1.database_automatic_tuning_operations
          @managed_instances = @client_1.managed_instances
          @server_keys = @client_1.server_keys

          @client_2 = Azure::SQL::Mgmt::V2017_03_01_preview::SqlManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @database_blob_auditing_policies = @client_2.database_blob_auditing_policies
          @jobs = @client_2.jobs
          @backup_long_term_retention_policies = @client_2.backup_long_term_retention_policies
          @databases = @client_2.databases
          @extended_database_blob_auditing_policies = @client_2.extended_database_blob_auditing_policies
          @extended_server_blob_auditing_policies = @client_2.extended_server_blob_auditing_policies
          @server_blob_auditing_policies = @client_2.server_blob_auditing_policies
          @database_operations = @client_2.database_operations
          @database_vulnerability_assessment_rule_baselines = @client_2.database_vulnerability_assessment_rule_baselines
          @database_vulnerability_assessments = @client_2.database_vulnerability_assessments
          @data_warehouse_user_activities_operations = @client_2.data_warehouse_user_activities_operations
          @job_agents = @client_2.job_agents
          @job_credentials = @client_2.job_credentials
          @job_executions = @client_2.job_executions
          @job_step_executions = @client_2.job_step_executions
          @job_steps = @client_2.job_steps
          @job_target_executions = @client_2.job_target_executions
          @job_target_groups = @client_2.job_target_groups
          @job_versions = @client_2.job_versions
          @long_term_retention_backups = @client_2.long_term_retention_backups
          @managed_databases = @client_2.managed_databases
          @server_automatic_tuning_operations = @client_2.server_automatic_tuning_operations
          @server_dns_aliases = @client_2.server_dns_aliases
          @restore_points = @client_2.restore_points

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/SQL/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
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
          def max_size_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::MaxSizeCapability
          end
          def server_administrator_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerAdministratorListResult
          end
          def edition_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::EditionCapability
          end
          def elastic_pool_per_database_max_dtu_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolPerDatabaseMaxDtuCapability
          end
          def elastic_pool_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolListResult
          end
          def elastic_pool_edition_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolEditionCapability
          end
          def replication_link_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLinkListResult
          end
          def location_capabilities
            Azure::SQL::Mgmt::V2014_04_01::Models::LocationCapabilities
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
          def server_version_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerVersionCapability
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
          def service_objective_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveCapability
          end
          def query_metric
            Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetric
          end
          def service_tier_advisor_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisorListResult
          end
          def check_name_availability_request
            Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityRequest
          end
          def query_interval
            Azure::SQL::Mgmt::V2014_04_01::Models::QueryInterval
          end
          def query_statistic
            Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatistic
          end
          def recoverable_database_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabaseListResult
          end
          def database_table_auditing_policy_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicyListResult
          end
          def top_queries
            Azure::SQL::Mgmt::V2014_04_01::Models::TopQueries
          end
          def advisor_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::AdvisorListResult
          end
          def top_queries_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::TopQueriesListResult
          end
          def elastic_pool_dtu_capability
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDtuCapability
          end
          def backup_long_term_retention_vault
            Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionVault
          end
          def restorable_dropped_database
            Azure::SQL::Mgmt::V2014_04_01::Models::RestorableDroppedDatabase
          end
          def query_statistic_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::QueryStatisticListResult
          end
          def service_tier_advisor
            Azure::SQL::Mgmt::V2014_04_01::Models::ServiceTierAdvisor
          end
          def transparent_data_encryption
            Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryption
          end
          def recoverable_database
            Azure::SQL::Mgmt::V2014_04_01::Models::RecoverableDatabase
          end
          def database_security_alert_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseSecurityAlertPolicy
          end
          def recommended_index
            Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndex
          end
          def server_connection_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionPolicy
          end
          def elastic_pool
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPool
          end
          def disaster_recovery_configuration
            Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfiguration
          end
          def data_masking_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingPolicy
          end
          def geo_backup_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicy
          end
          def import_export_response
            Azure::SQL::Mgmt::V2014_04_01::Models::ImportExportResponse
          end
          def elastic_pool_update
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolUpdate
          end
          def data_masking_rule
            Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRule
          end
          def replication_link
            Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationLink
          end
          def import_request
            Azure::SQL::Mgmt::V2014_04_01::Models::ImportRequest
          end
          def recommended_elastic_pool
            Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedElasticPool
          end
          def server_communication_link
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerCommunicationLink
          end
          def server_azure_adadministrator
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerAzureADAdministrator
          end
          def service_objective
            Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjective
          end
          def transparent_data_encryption_activity
            Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivity
          end
          def elastic_pool_activity
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolActivity
          end
          def server_table_auditing_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerTableAuditingPolicy
          end
          def database_connection_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseConnectionPolicy
          end
          def database_table_auditing_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy
          end
          def elastic_pool_database_activity
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolDatabaseActivity
          end
          def backup_long_term_retention_policy_state
            Azure::SQL::Mgmt::V2014_04_01::Models::BackupLongTermRetentionPolicyState
          end
          def capability_status
            Azure::SQL::Mgmt::V2014_04_01::Models::CapabilityStatus
          end
          def max_size_units
            Azure::SQL::Mgmt::V2014_04_01::Models::MaxSizeUnits
          end
          def performance_level_unit
            Azure::SQL::Mgmt::V2014_04_01::Models::PerformanceLevelUnit
          end
          def check_name_availability_reason
            Azure::SQL::Mgmt::V2014_04_01::Models::CheckNameAvailabilityReason
          end
          def server_connection_type
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerConnectionType
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
          def database_edition
            Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseEdition
          end
          def recommended_index_type
            Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexType
          end
          def read_scale
            Azure::SQL::Mgmt::V2014_04_01::Models::ReadScale
          end
          def recommended_index_state
            Azure::SQL::Mgmt::V2014_04_01::Models::RecommendedIndexState
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
          def security_alert_policy_state
            Azure::SQL::Mgmt::V2014_04_01::Models::SecurityAlertPolicyState
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
          def data_masking_rule_state
            Azure::SQL::Mgmt::V2014_04_01::Models::DataMaskingRuleState
          end
          def disaster_recovery_configuration_role
            Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationRole
          end
          def elastic_pool_state
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolState
          end
          def elastic_pool_edition
            Azure::SQL::Mgmt::V2014_04_01::Models::ElasticPoolEdition
          end
          def disaster_recovery_configuration_failover_policy
            Azure::SQL::Mgmt::V2014_04_01::Models::DisasterRecoveryConfigurationFailoverPolicy
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
          def geo_backup_policy_state
            Azure::SQL::Mgmt::V2014_04_01::Models::GeoBackupPolicyState
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
          def primary_aggregation_type
            Azure::SQL::Mgmt::V2014_04_01::Models::PrimaryAggregationType
          end
          def query_metric_unit
            Azure::SQL::Mgmt::V2014_04_01::Models::QueryMetricUnit
          end
          def replication_state
            Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationState
          end
          def server_version
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerVersion
          end
          def query_observed_metric_type
            Azure::SQL::Mgmt::V2014_04_01::Models::QueryObservedMetricType
          end
          def transparent_data_encryption_activity_status
            Azure::SQL::Mgmt::V2014_04_01::Models::TransparentDataEncryptionActivityStatus
          end
          def server_state
            Azure::SQL::Mgmt::V2014_04_01::Models::ServerState
          end
          def replication_role
            Azure::SQL::Mgmt::V2014_04_01::Models::ReplicationRole
          end
          def metric_name
            Azure::SQL::Mgmt::V2014_04_01::Models::MetricName
          end
          def metric_value
            Azure::SQL::Mgmt::V2014_04_01::Models::MetricValue
          end
          def service_objective_list_result
            Azure::SQL::Mgmt::V2014_04_01::Models::ServiceObjectiveListResult
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
          def operation_display
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationDisplay
          end
          def operation_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationListResult
          end
          def resource_identity
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceIdentity
          end
          def firewall_rule_list
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleList
          end
          def sync_database_id_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdListResult
          end
          def sync_group_schema
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchema
          end
          def sync_full_schema_table
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTable
          end
          def sync_group_schema_table
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTable
          end
          def managed_instance_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstanceListResult
          end
          def sync_group_schema_table_column
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupSchemaTableColumn
          end
          def sync_full_schema_table_column
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaTableColumn
          end
          def encryption_protector_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtectorListResult
          end
          def sync_group_log_properties
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogProperties
          end
          def failover_group_read_only_endpoint
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReadOnlyEndpoint
          end
          def operation
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::Operation
          end
          def failover_group_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupListResult
          end
          def recommended_action_error_info
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionErrorInfo
          end
          def recommended_action_state_info
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionStateInfo
          end
          def recommended_action_metric_info
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionMetricInfo
          end
          def sync_full_schema_properties_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaPropertiesListResult
          end
          def partner_info
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::PartnerInfo
          end
          def resource_with_writable_name
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ResourceWithWritableName
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
          def sync_agent_key_properties
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentKeyProperties
          end
          def sync_full_schema_properties
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncFullSchemaProperties
          end
          def sync_member_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberListResult
          end
          def failover_group_update
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupUpdate
          end
          def sync_agent_linked_database_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabaseListResult
          end
          def automatic_tuning_options
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningOptions
          end
          def server_key_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyListResult
          end
          def virtual_network_rule_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleListResult
          end
          def sync_database_id_properties
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDatabaseIdProperties
          end
          def recommended_action
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedAction
          end
          def database_automatic_tuning
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::DatabaseAutomaticTuning
          end
          def advisor
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::Advisor
          end
          def sync_group_log_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogListResult
          end
          def proxy_resource_with_writable_name
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ProxyResourceWithWritableName
          end
          def failover_group
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroup
          end
          def server_update
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerUpdate
          end
          def managed_instance
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ManagedInstance
          end
          def encryption_protector
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::EncryptionProtector
          end
          def sync_agent
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgent
          end
          def sync_agent_linked_database
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentLinkedDatabase
          end
          def server_key
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKey
          end
          def subscription_usage
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SubscriptionUsage
          end
          def virtual_network_rule
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRule
          end
          def server
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::Server
          end
          def sync_member
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMember
          end
          def auto_execute_status
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatus
          end
          def auto_execute_status_inherited_from
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutoExecuteStatusInheritedFrom
          end
          def sync_group
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroup
          end
          def recommended_action_initiated_by
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionInitiatedBy
          end
          def implementation_method
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ImplementationMethod
          end
          def is_retryable
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::IsRetryable
          end
          def advisor_status
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::AdvisorStatus
          end
          def recommended_action_current_state
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::RecommendedActionCurrentState
          end
          def automatic_tuning_disabled_reason
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningDisabledReason
          end
          def automatic_tuning_mode
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::AutomaticTuningMode
          end
          def read_only_endpoint_failover_policy
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ReadOnlyEndpointFailoverPolicy
          end
          def failover_group_replication_role
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FailoverGroupReplicationRole
          end
          def identity_type
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::IdentityType
          end
          def server_key_type
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerKeyType
          end
          def read_write_endpoint_failover_policy
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ReadWriteEndpointFailoverPolicy
          end
          def sync_group_log_type
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupLogType
          end
          def sync_conflict_resolution_policy
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncConflictResolutionPolicy
          end
          def sync_group_state
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncGroupState
          end
          def sync_agent_state
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncAgentState
          end
          def sync_member_db_type
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberDbType
          end
          def virtual_network_rule_state
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::VirtualNetworkRuleState
          end
          def sync_direction
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncDirection
          end
          def sync_member_state
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::SyncMemberState
          end
          def firewall_rule_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRuleListResult
          end
          def firewall_rule
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::FirewallRule
          end
          def operation_origin
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::OperationOrigin
          end
          def server_list_result
            Azure::SQL::Mgmt::V2015_05_01_preview::Models::ServerListResult
          end
          def job_agent_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentListResult
          end
          def create_database_restore_point_definition
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::CreateDatabaseRestorePointDefinition
          end
          def job_agent_update
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentUpdate
          end
          def job_step_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepListResult
          end
          def job_version_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersionListResult
          end
          def server_dns_alias_acquisition
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasAcquisition
          end
          def automatic_tuning_server_options
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerOptions
          end
          def job_execution_target
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionTarget
          end
          def complete_database_restore_definition
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::CompleteDatabaseRestoreDefinition
          end
          def job_step_execution_options
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepExecutionOptions
          end
          def job_schedule
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobSchedule
          end
          def import_export_database_definition
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportDatabaseDefinition
          end
          def managed_database_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseListResult
          end
          def restore_point_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointListResult
          end
          def job_step_action
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepAction
          end
          def database_vulnerability_assessment_rule_baseline_item
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaselineItem
          end
          def job_execution_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionListResult
          end
          def extended_database_blob_auditing_policy
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedDatabaseBlobAuditingPolicy
          end
          def extended_server_blob_auditing_policy
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ExtendedServerBlobAuditingPolicy
          end
          def database_operation_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseOperationListResult
          end
          def database_operation
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseOperation
          end
          def import_export_operation_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ImportExportOperationResult
          end
          def job_step_output
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutput
          end
          def database_vulnerability_assessment
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessment
          end
          def data_warehouse_user_activities
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DataWarehouseUserActivities
          end
          def database_vulnerability_assessment_rule_baseline
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseVulnerabilityAssessmentRuleBaseline
          end
          def job_agent
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgent
          end
          def job_credential
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredential
          end
          def job_execution
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecution
          end
          def server_blob_auditing_policy
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerBlobAuditingPolicy
          end
          def job_target_group
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroup
          end
          def job_step
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStep
          end
          def long_term_retention_backup
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackup
          end
          def job_version
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobVersion
          end
          def server_automatic_tuning
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerAutomaticTuning
          end
          def managed_database
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabase
          end
          def management_operation_state
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagementOperationState
          end
          def server_dns_alias
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAlias
          end
          def catalog_collation_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::CatalogCollationType
          end
          def database_status
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseStatus
          end
          def job_execution_lifecycle
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobExecutionLifecycle
          end
          def job_agent_state
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobAgentState
          end
          def job_schedule_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobScheduleType
          end
          def database_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseListResult
          end
          def job_step_action_source
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionSource
          end
          def job_step_action_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepActionType
          end
          def job_target_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetType
          end
          def job_step_output_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobStepOutputType
          end
          def job_target_group_membership_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupMembershipType
          end
          def proxy_resource
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ProxyResource
          end
          def managed_database_create_mode
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseCreateMode
          end
          def create_mode
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::CreateMode
          end
          def managed_database_status
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseStatus
          end
          def long_term_retention_database_state
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionDatabaseState
          end
          def tracked_resource
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::TrackedResource
          end
          def automatic_tuning_server_reason
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerReason
          end
          def vulnerability_assessment_policy_baseline_name
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::VulnerabilityAssessmentPolicyBaselineName
          end
          def automatic_tuning_server_mode
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningServerMode
          end
          def backup_long_term_retention_policy
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::BackupLongTermRetentionPolicy
          end
          def database
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::Database
          end
          def database_update
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseUpdate
          end
          def job
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::Job
          end
          def sku
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::Sku
          end
          def database_blob_auditing_policy
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::DatabaseBlobAuditingPolicy
          end
          def restore_point
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePoint
          end
          def resource
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::Resource
          end
          def blob_auditing_policy_state
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::BlobAuditingPolicyState
          end
          def automatic_tuning_option_mode_desired
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeDesired
          end
          def provisioning_state
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ProvisioningState
          end
          def job_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobListResult
          end
          def automatic_tuning_option_mode_actual
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::AutomaticTuningOptionModeActual
          end
          def sample_name
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::SampleName
          end
          def restore_point_type
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::RestorePointType
          end
          def job_credential_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobCredentialListResult
          end
          def vulnerability_assessment_recurring_scans_properties
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::VulnerabilityAssessmentRecurringScansProperties
          end
          def managed_database_update
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedDatabaseUpdate
          end
          def job_target_group_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTargetGroupListResult
          end
          def resource_move_definition
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ResourceMoveDefinition
          end
          def server_dns_alias_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::ServerDnsAliasListResult
          end
          def job_target
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::JobTarget
          end
          def long_term_retention_backup_list_result
            Azure::SQL::Mgmt::V2017_03_01_preview::Models::LongTermRetentionBackupListResult
          end
        end
      end
    end
  end
end
