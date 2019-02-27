# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_data_migration'

module Azure::Profiles::Latest
  module DataMigration
    module Mgmt
      Usages = Azure::DataMigration::Mgmt::V2018_07_15_preview::Usages
      ResourceSkus = Azure::DataMigration::Mgmt::V2018_07_15_preview::ResourceSkus
      Services = Azure::DataMigration::Mgmt::V2018_07_15_preview::Services
      Projects = Azure::DataMigration::Mgmt::V2018_07_15_preview::Projects
      Files = Azure::DataMigration::Mgmt::V2018_07_15_preview::Files
      Operations = Azure::DataMigration::Mgmt::V2018_07_15_preview::Operations
      Tasks = Azure::DataMigration::Mgmt::V2018_07_15_preview::Tasks

      module Models
        MigrateSqlServerSqlMITaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutput
        DataMigrationServiceStatusResponse = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceStatusResponse
        ServiceSkuList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSkuList
        ReportableException = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ReportableException
        AvailableServiceSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSku
        MigrateSyncCompleteCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandInput
        AvailableServiceSkuCapacity = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuCapacity
        CommandProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandProperties
        MigrateSqlServerSqlDbSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutput
        SelectedCertificateInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SelectedCertificateInput
        SqlMigrationTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlMigrationTaskInput
        DatabaseFileInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInput
        MigrationValidationOptions = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationOptions
        NonSqlDataMigrationTableResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTableResult
        AvailableServiceSkuSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuSku
        DataMigrationError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationError
        TaskList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskList
        NonSqlMigrationTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskInput
        NonSqlDataMigrationTable = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTable
        WaitStatistics = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::WaitStatistics
        MongoDbProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbProgress
        ExecutionStatistics = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ExecutionStatistics
        MongoDbThrottlingSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbThrottlingSettings
        QueryExecutionResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryExecutionResult
        MongoDbShardKeySetting = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeySetting
        QueryAnalysisValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryAnalysisValidationResult
        MongoDbDatabaseSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseSettings
        SchemaComparisonValidationResultType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResultType
        MigrationTableMetadata = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationTableMetadata
        SchemaComparisonValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResult
        ValidateMigrationInputSqlServerSqlMITaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskOutput
        DataIntegrityValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataIntegrityValidationResult
        MigrateSqlServerSqlMIDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMIDatabaseInput
        MigrationValidationDatabaseLevelResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseLevelResult
        DatabaseObjectName = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseObjectName
        MigrationValidationDatabaseSummaryResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseSummaryResult
        MigrateSqlServerSqlDbSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncDatabaseInput
        MigrationValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationResult
        Database = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Database
        DataMigrationServiceList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceList
        MongoDbCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCommandInput
        ProjectList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectList
        MigrateSchemaSqlServerSqlDbDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbDatabaseInput
        DataItemMigrationSummaryResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataItemMigrationSummaryResult
        ConnectToSourceNonSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceNonSqlTaskOutput
        NameAvailabilityResponse = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityResponse
        MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput
        MigrationReportResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationReportResult
        ServerProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerProperties
        QuotaList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaList
        Quota = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Quota
        MigrateSqlServerSqlDbTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutput
        MigrateMySqlAzureDbForMySqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutput
        MigrateSqlServerSqlDbDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbDatabaseInput
        MigrateMySqlAzureDbForMySqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskInput
        QuotaName = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaName
        ProjectFileProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFileProperties
        ServiceOperationList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationList
        MigrateSyncCompleteCommandOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandOutput
        ServiceOperation = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperation
        GetTdeCertificatesSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskOutput
        ServiceOperationDisplay = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationDisplay
        NonSqlMigrationTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskOutput
        FileList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileList
        GetTdeCertificatesSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskInput
        FileStorageInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileStorageInfo
        GetProjectDetailsNonSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetProjectDetailsNonSqlTaskInput
        StartMigrationScenarioServerRoleResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::StartMigrationScenarioServerRoleResult
        MongoDbShardKeyField = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyField
        MongoDbMigrationSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationSettings
        DatabaseInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseInfo
        BlobShare = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BlobShare
        NameAvailabilityRequest = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityRequest
        ValidateSyncMigrationInputSqlServerTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskOutput
        ServiceSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSku
        SyncMigrationDatabaseErrorEvent = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncMigrationDatabaseErrorEvent
        ProjectTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTaskProperties
        SchemaMigrationSetting = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationSetting
        ConnectToTargetAzureDbForMySqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskOutput
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput
        ConnectToTargetAzureDbForMySqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskInput
        MongoDbClusterInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterInfo
        MigrateMySqlAzureDbForMySqlSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncDatabaseInput
        ConnectToTargetSqlMITaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskOutput
        ODataError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ODataError
        ConnectToTargetSqlMITaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskInput
        FileShare = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileShare
        MongoDbObjectInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbObjectInfo
        MongoDbError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbError
        DatabaseTable = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseTable
        MongoDbCollectionSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionSettings
        GetUserTablesSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskOutput
        ValidateMigrationInputSqlServerSqlMITaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskInput
        GetUserTablesSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskInput
        MigrateSchemaSqlServerSqlDbTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutput
        MongoDbShardKeyInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyInfo
        ConnectToSourceMySqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskInput
        GetUserTablesSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskOutput
        GetUserTablesSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskInput
        ConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectionInfo
        ConnectToSourceSqlServerTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskInput
        DatabaseBackupInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseBackupInfo
        ConnectToTargetSqlDbTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskOutput
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput
        ConnectToTargetSqlSqlDbSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskInput
        MigrateSqlServerSqlServerDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlServerDatabaseInput
        ConnectToSourceSqlServerTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutput
        ValidateSyncMigrationInputSqlServerTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskInput
        ConnectToTargetSqlDbTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskInput
        DataMigrationProjectMetadata = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationProjectMetadata
        DatabaseFileInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInfo
        MigrationEligibilityInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationEligibilityInfo
        ProjectFile = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFile
        MigrateSyncCompleteCommandProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandProperties
        PostgreSqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::PostgreSqlConnectionInfo
        MySqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlConnectionInfo
        MongoDbConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbConnectionInfo
        SqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlConnectionInfo
        GetTdeCertificatesSqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskProperties
        MongoDbCollectionProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionProgress
        MongoDbDatabaseProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseProgress
        MongoDbMigrationProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationProgress
        ValidateMongoDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMongoDbTaskProperties
        ValidateMigrationInputSqlServerSqlMITaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskProperties
        ValidateMigrationInputSqlServerSqlDbSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlDbSyncTaskProperties
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseError
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputError
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputTableLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputTableLevel
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevel
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevel
        MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties
        MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseError
        MigrateMySqlAzureDbForMySqlSyncTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputError
        MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevel
        MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevel
        MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevel
        MigrateMySqlAzureDbForMySqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskProperties
        MigrateSqlServerSqlDbSyncTaskOutputDatabaseError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputDatabaseError
        MigrateSqlServerSqlDbSyncTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputError
        MigrateSqlServerSqlDbSyncTaskOutputTableLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputTableLevel
        MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevel
        MigrateSqlServerSqlDbSyncTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputMigrationLevel
        MigrateSqlServerSqlDbSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskInput
        MigrateSqlServerSqlDbSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskProperties
        MigrateSqlServerSqlDbTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputError
        MigrateSqlServerSqlDbTaskOutputTableLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputTableLevel
        MigrateSqlServerSqlDbTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputDatabaseLevel
        DatabaseSummaryResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseSummaryResult
        MigrateSqlServerSqlDbTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputMigrationLevel
        MigrateSqlServerSqlDbTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskInput
        MigrateSqlServerSqlDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskProperties
        MigrateSqlServerSqlMITaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputError
        MigrateSqlServerSqlMITaskOutputLoginLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputLoginLevel
        MigrateSqlServerSqlMITaskOutputAgentJobLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputAgentJobLevel
        MigrateSqlServerSqlMITaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputDatabaseLevel
        MigrateSqlServerSqlMITaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputMigrationLevel
        MigrateSqlServerSqlMITaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskInput
        MigrateSqlServerSqlMITaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskProperties
        MigrateMongoDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMongoDbTaskProperties
        ValidationError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationError
        ConnectToTargetAzureDbForMySqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskProperties
        ConnectToTargetSqlMITaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskProperties
        GetUserTablesSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskProperties
        GetUserTablesSqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskProperties
        ConnectToTargetSqlSqlDbSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskProperties
        ConnectToTargetSqlDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskProperties
        ConnectToSourceSqlServerTaskOutputAgentJobLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputAgentJobLevel
        ConnectToSourceSqlServerTaskOutputLoginLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputLoginLevel
        ConnectToSourceSqlServerTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputDatabaseLevel
        ConnectToSourceSqlServerTaskOutputTaskLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputTaskLevel
        ConnectToSourceSqlServerSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerSyncTaskProperties
        ConnectToSourceSqlServerTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskProperties
        ResourceSkuCapacity = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacity
        MongoDbDatabaseInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseInfo
        ResourceSkuCosts = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCosts
        ProjectTask = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTask
        ResourceSkuCapabilities = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapabilities
        MongoDbCollectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionInfo
        ResourceSkuRestrictions = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictions
        ConnectToMongoDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToMongoDbTaskProperties
        ResourceSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSku
        DataMigrationService = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationService
        ResourceSkusResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkusResult
        ConnectToSourceMySqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskProperties
        MigrateSchemaSqlServerSqlDbTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskInput
        MigrateSchemaSqlServerSqlDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskProperties
        Project = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Project
        MigrateSchemaSqlServerSqlDbTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputDatabaseLevel
        MigrateSchemaSqlServerSqlDbTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputError
        MigrateSchemaSqlTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlTaskOutputError
        MigrateSchemaSqlServerSqlDbTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputMigrationLevel
        MongoDbFinishCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbFinishCommandInput
        MongoDbFinishCommand = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbFinishCommand
        MongoDbRestartCommand = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbRestartCommand
        MongoDbCancelCommand = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCancelCommand
        SqlSourcePlatform = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlSourcePlatform
        AuthenticationType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AuthenticationType
        MongoDbErrorType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbErrorType
        CommandState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandState
        MongoDbShardKeyOrder = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyOrder
        MongoDbReplication = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbReplication
        BackupType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupType
        MongoDbMigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationState
        SyncTableMigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncTableMigrationState
        SyncDatabaseMigrationReportingState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncDatabaseMigrationReportingState
        ValidationStatus = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationStatus
        BackupMode = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupMode
        TrackedResource = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TrackedResource
        MigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationState
        DatabaseMigrationStage = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseMigrationStage
        UpdateActionType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UpdateActionType
        ObjectType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ObjectType
        Severity = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Severity
        DatabaseState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseState
        MigrationStatus = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationStatus
        LoginMigrationStage = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginMigrationStage
        LoginType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginType
        MongoDbClusterType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterType
        DatabaseCompatLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseCompatLevel
        DatabaseFileType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileType
        ServerLevelPermissionsGroup = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerLevelPermissionsGroup
        ProjectSourcePlatform = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectSourcePlatform
        TaskState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskState
        ServiceProvisioningState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceProvisioningState
        ProjectTargetPlatform = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTargetPlatform
        MySqlTargetPlatformType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlTargetPlatformType
        ProjectProvisioningState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectProvisioningState
        NameCheckFailureReason = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameCheckFailureReason
        ServiceScalability = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceScalability
        ErrorType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ErrorType
        SchemaMigrationOption = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationOption
        SchemaMigrationStage = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationStage
        DataMigrationResultCode = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationResultCode
        ApiError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ApiError
        Resource = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Resource
        ResourceSkuCapacityScaleType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacityScaleType
        ResourceSkuRestrictionsType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsType
        ResourceSkuRestrictionsReasonCode = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsReasonCode
      end

      class DataMigrationManagementClass
        attr_reader :usages, :resource_skus, :services, :projects, :files, :operations, :tasks, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataMigration::Mgmt::V2018_07_15_preview::DataMigrationServiceClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usages = @client_0.usages
          @resource_skus = @client_0.resource_skus
          @services = @client_0.services
          @projects = @client_0.projects
          @files = @client_0.files
          @operations = @client_0.operations
          @tasks = @client_0.tasks

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DataMigration/Mgmt"
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
          def migrate_sql_server_sql_mitask_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutput
          end
          def data_migration_service_status_response
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceStatusResponse
          end
          def service_sku_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSkuList
          end
          def reportable_exception
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ReportableException
          end
          def available_service_sku
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSku
          end
          def migrate_sync_complete_command_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandInput
          end
          def available_service_sku_capacity
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuCapacity
          end
          def command_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandProperties
          end
          def migrate_sql_server_sql_db_sync_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutput
          end
          def selected_certificate_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SelectedCertificateInput
          end
          def sql_migration_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlMigrationTaskInput
          end
          def database_file_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInput
          end
          def migration_validation_options
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationOptions
          end
          def non_sql_data_migration_table_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTableResult
          end
          def available_service_sku_sku
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuSku
          end
          def data_migration_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationError
          end
          def task_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskList
          end
          def non_sql_migration_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskInput
          end
          def non_sql_data_migration_table
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTable
          end
          def wait_statistics
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::WaitStatistics
          end
          def mongo_db_progress
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbProgress
          end
          def execution_statistics
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ExecutionStatistics
          end
          def mongo_db_throttling_settings
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbThrottlingSettings
          end
          def query_execution_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryExecutionResult
          end
          def mongo_db_shard_key_setting
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeySetting
          end
          def query_analysis_validation_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryAnalysisValidationResult
          end
          def mongo_db_database_settings
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseSettings
          end
          def schema_comparison_validation_result_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResultType
          end
          def migration_table_metadata
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationTableMetadata
          end
          def schema_comparison_validation_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResult
          end
          def validate_migration_input_sql_server_sql_mitask_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskOutput
          end
          def data_integrity_validation_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataIntegrityValidationResult
          end
          def migrate_sql_server_sql_midatabase_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMIDatabaseInput
          end
          def migration_validation_database_level_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseLevelResult
          end
          def database_object_name
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseObjectName
          end
          def migration_validation_database_summary_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseSummaryResult
          end
          def migrate_sql_server_sql_db_sync_database_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncDatabaseInput
          end
          def migration_validation_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationResult
          end
          def database
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Database
          end
          def data_migration_service_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceList
          end
          def mongo_db_command_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCommandInput
          end
          def project_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectList
          end
          def migrate_schema_sql_server_sql_db_database_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbDatabaseInput
          end
          def data_item_migration_summary_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataItemMigrationSummaryResult
          end
          def connect_to_source_non_sql_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceNonSqlTaskOutput
          end
          def name_availability_response
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityResponse
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput
          end
          def migration_report_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationReportResult
          end
          def server_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerProperties
          end
          def quota_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaList
          end
          def quota
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Quota
          end
          def migrate_sql_server_sql_db_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutput
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutput
          end
          def migrate_sql_server_sql_db_database_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbDatabaseInput
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskInput
          end
          def quota_name
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaName
          end
          def project_file_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFileProperties
          end
          def service_operation_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationList
          end
          def migrate_sync_complete_command_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandOutput
          end
          def service_operation
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperation
          end
          def get_tde_certificates_sql_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskOutput
          end
          def service_operation_display
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationDisplay
          end
          def non_sql_migration_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskOutput
          end
          def file_list
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileList
          end
          def get_tde_certificates_sql_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskInput
          end
          def file_storage_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileStorageInfo
          end
          def get_project_details_non_sql_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetProjectDetailsNonSqlTaskInput
          end
          def start_migration_scenario_server_role_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::StartMigrationScenarioServerRoleResult
          end
          def mongo_db_shard_key_field
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyField
          end
          def mongo_db_migration_settings
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationSettings
          end
          def database_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseInfo
          end
          def blob_share
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BlobShare
          end
          def name_availability_request
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityRequest
          end
          def validate_sync_migration_input_sql_server_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskOutput
          end
          def service_sku
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSku
          end
          def sync_migration_database_error_event
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncMigrationDatabaseErrorEvent
          end
          def project_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTaskProperties
          end
          def schema_migration_setting
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationSetting
          end
          def connect_to_target_azure_db_for_my_sql_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskOutput
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput
          end
          def connect_to_target_azure_db_for_my_sql_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskInput
          end
          def mongo_db_cluster_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterInfo
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_database_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncDatabaseInput
          end
          def connect_to_target_sql_mitask_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskOutput
          end
          def odata_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ODataError
          end
          def connect_to_target_sql_mitask_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskInput
          end
          def file_share
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileShare
          end
          def mongo_db_object_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbObjectInfo
          end
          def mongo_db_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbError
          end
          def database_table
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseTable
          end
          def mongo_db_collection_settings
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionSettings
          end
          def get_user_tables_sql_sync_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskOutput
          end
          def validate_migration_input_sql_server_sql_mitask_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskInput
          end
          def get_user_tables_sql_sync_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskInput
          end
          def migrate_schema_sql_server_sql_db_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutput
          end
          def mongo_db_shard_key_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyInfo
          end
          def connect_to_source_my_sql_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskInput
          end
          def get_user_tables_sql_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskOutput
          end
          def get_user_tables_sql_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskInput
          end
          def connection_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectionInfo
          end
          def connect_to_source_sql_server_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskInput
          end
          def database_backup_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseBackupInfo
          end
          def connect_to_target_sql_db_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskOutput
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput
          end
          def connect_to_target_sql_sql_db_sync_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskInput
          end
          def migrate_sql_server_sql_server_database_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlServerDatabaseInput
          end
          def connect_to_source_sql_server_task_output
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutput
          end
          def validate_sync_migration_input_sql_server_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskInput
          end
          def connect_to_target_sql_db_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskInput
          end
          def data_migration_project_metadata
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationProjectMetadata
          end
          def database_file_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInfo
          end
          def migration_eligibility_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationEligibilityInfo
          end
          def project_file
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFile
          end
          def migrate_sync_complete_command_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandProperties
          end
          def postgre_sql_connection_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::PostgreSqlConnectionInfo
          end
          def my_sql_connection_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlConnectionInfo
          end
          def mongo_db_connection_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbConnectionInfo
          end
          def sql_connection_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlConnectionInfo
          end
          def get_tde_certificates_sql_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskProperties
          end
          def mongo_db_collection_progress
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionProgress
          end
          def mongo_db_database_progress
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseProgress
          end
          def mongo_db_migration_progress
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationProgress
          end
          def validate_mongo_db_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMongoDbTaskProperties
          end
          def validate_migration_input_sql_server_sql_mitask_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskProperties
          end
          def validate_migration_input_sql_server_sql_db_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlDbSyncTaskProperties
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output_database_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseError
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputError
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output_table_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputTableLevel
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevel
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output_migration_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevel
          end
          def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_output_database_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseError
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputError
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_output_table_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevel
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevel
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_output_migration_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevel
          end
          def migrate_my_sql_azure_db_for_my_sql_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskProperties
          end
          def migrate_sql_server_sql_db_sync_task_output_database_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputDatabaseError
          end
          def migrate_sql_server_sql_db_sync_task_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputError
          end
          def migrate_sql_server_sql_db_sync_task_output_table_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputTableLevel
          end
          def migrate_sql_server_sql_db_sync_task_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevel
          end
          def migrate_sql_server_sql_db_sync_task_output_migration_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutputMigrationLevel
          end
          def migrate_sql_server_sql_db_sync_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskInput
          end
          def migrate_sql_server_sql_db_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskProperties
          end
          def migrate_sql_server_sql_db_task_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputError
          end
          def migrate_sql_server_sql_db_task_output_table_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputTableLevel
          end
          def migrate_sql_server_sql_db_task_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputDatabaseLevel
          end
          def database_summary_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseSummaryResult
          end
          def migrate_sql_server_sql_db_task_output_migration_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutputMigrationLevel
          end
          def migrate_sql_server_sql_db_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskInput
          end
          def migrate_sql_server_sql_db_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskProperties
          end
          def migrate_sql_server_sql_mitask_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputError
          end
          def migrate_sql_server_sql_mitask_output_login_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputLoginLevel
          end
          def migrate_sql_server_sql_mitask_output_agent_job_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputAgentJobLevel
          end
          def migrate_sql_server_sql_mitask_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputDatabaseLevel
          end
          def migrate_sql_server_sql_mitask_output_migration_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputMigrationLevel
          end
          def migrate_sql_server_sql_mitask_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskInput
          end
          def migrate_sql_server_sql_mitask_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskProperties
          end
          def migrate_mongo_db_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMongoDbTaskProperties
          end
          def validation_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationError
          end
          def connect_to_target_azure_db_for_my_sql_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskProperties
          end
          def connect_to_target_sql_mitask_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskProperties
          end
          def get_user_tables_sql_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskProperties
          end
          def get_user_tables_sql_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskProperties
          end
          def connect_to_target_sql_sql_db_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskProperties
          end
          def connect_to_target_sql_db_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskProperties
          end
          def connect_to_source_sql_server_task_output_agent_job_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputAgentJobLevel
          end
          def connect_to_source_sql_server_task_output_login_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputLoginLevel
          end
          def connect_to_source_sql_server_task_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputDatabaseLevel
          end
          def connect_to_source_sql_server_task_output_task_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputTaskLevel
          end
          def connect_to_source_sql_server_sync_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerSyncTaskProperties
          end
          def connect_to_source_sql_server_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskProperties
          end
          def resource_sku_capacity
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacity
          end
          def mongo_db_database_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseInfo
          end
          def resource_sku_costs
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCosts
          end
          def project_task
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTask
          end
          def resource_sku_capabilities
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapabilities
          end
          def mongo_db_collection_info
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionInfo
          end
          def resource_sku_restrictions
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictions
          end
          def connect_to_mongo_db_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToMongoDbTaskProperties
          end
          def resource_sku
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSku
          end
          def data_migration_service
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationService
          end
          def resource_skus_result
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkusResult
          end
          def connect_to_source_my_sql_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskProperties
          end
          def migrate_schema_sql_server_sql_db_task_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskInput
          end
          def migrate_schema_sql_server_sql_db_task_properties
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskProperties
          end
          def project
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Project
          end
          def migrate_schema_sql_server_sql_db_task_output_database_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputDatabaseLevel
          end
          def migrate_schema_sql_server_sql_db_task_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputError
          end
          def migrate_schema_sql_task_output_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlTaskOutputError
          end
          def migrate_schema_sql_server_sql_db_task_output_migration_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputMigrationLevel
          end
          def mongo_db_finish_command_input
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbFinishCommandInput
          end
          def mongo_db_finish_command
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbFinishCommand
          end
          def mongo_db_restart_command
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbRestartCommand
          end
          def mongo_db_cancel_command
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCancelCommand
          end
          def sql_source_platform
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlSourcePlatform
          end
          def authentication_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AuthenticationType
          end
          def mongo_db_error_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbErrorType
          end
          def command_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandState
          end
          def mongo_db_shard_key_order
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyOrder
          end
          def mongo_db_replication
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbReplication
          end
          def backup_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupType
          end
          def mongo_db_migration_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationState
          end
          def sync_table_migration_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncTableMigrationState
          end
          def sync_database_migration_reporting_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncDatabaseMigrationReportingState
          end
          def validation_status
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationStatus
          end
          def backup_mode
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupMode
          end
          def tracked_resource
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TrackedResource
          end
          def migration_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationState
          end
          def database_migration_stage
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseMigrationStage
          end
          def update_action_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UpdateActionType
          end
          def object_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ObjectType
          end
          def severity
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Severity
          end
          def database_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseState
          end
          def migration_status
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationStatus
          end
          def login_migration_stage
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginMigrationStage
          end
          def login_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginType
          end
          def mongo_db_cluster_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterType
          end
          def database_compat_level
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseCompatLevel
          end
          def database_file_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileType
          end
          def server_level_permissions_group
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerLevelPermissionsGroup
          end
          def project_source_platform
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectSourcePlatform
          end
          def task_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskState
          end
          def service_provisioning_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceProvisioningState
          end
          def project_target_platform
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTargetPlatform
          end
          def my_sql_target_platform_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlTargetPlatformType
          end
          def project_provisioning_state
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectProvisioningState
          end
          def name_check_failure_reason
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameCheckFailureReason
          end
          def service_scalability
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceScalability
          end
          def error_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ErrorType
          end
          def schema_migration_option
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationOption
          end
          def schema_migration_stage
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationStage
          end
          def data_migration_result_code
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationResultCode
          end
          def api_error
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ApiError
          end
          def resource
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Resource
          end
          def resource_sku_capacity_scale_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacityScaleType
          end
          def resource_sku_restrictions_type
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsType
          end
          def resource_sku_restrictions_reason_code
            Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsReasonCode
          end
        end
      end
    end
  end
end
