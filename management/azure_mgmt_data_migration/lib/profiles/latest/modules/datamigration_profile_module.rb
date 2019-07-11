# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_data_migration'

module Azure::DataMigration::Profiles::Latest
  module Mgmt
    ResourceSkus = Azure::DataMigration::Mgmt::V2018_07_15_preview::ResourceSkus
    Services = Azure::DataMigration::Mgmt::V2018_07_15_preview::Services
    Tasks = Azure::DataMigration::Mgmt::V2018_07_15_preview::Tasks
    ServiceTasks = Azure::DataMigration::Mgmt::V2018_07_15_preview::ServiceTasks
    Projects = Azure::DataMigration::Mgmt::V2018_07_15_preview::Projects
    Usages = Azure::DataMigration::Mgmt::V2018_07_15_preview::Usages
    Operations = Azure::DataMigration::Mgmt::V2018_07_15_preview::Operations
    Files = Azure::DataMigration::Mgmt::V2018_07_15_preview::Files

    module Models
      MigrationValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationResult
      MigrationValidationDatabaseSummaryResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseSummaryResult
      Resource = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Resource
      MigrateMySqlAzureDbForMySqlSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncDatabaseInput
      MigrateMySqlAzureDbForMySqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskInput
      ODataError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ODataError
      ConnectToTargetSqlDbTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskInput
      MigrateMISyncCompleteCommandOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMISyncCompleteCommandOutput
      Database = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Database
      ServiceOperation = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperation
      ConnectToTargetSqlSqlDbSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskInput
      MigrateSyncCompleteCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandInput
      ConnectToTargetSqlDbTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskOutput
      CommandProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandProperties
      DatabaseObjectName = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseObjectName
      SelectedCertificateInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SelectedCertificateInput
      ConnectToTargetAzureDbForPostgreSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForPostgreSqlSyncTaskInput
      FileList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileList
      MigrateSqlServerSqlDbSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutput
      ApiError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ApiError
      SqlMigrationTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlMigrationTaskInput
      DatabaseInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseInfo
      MigrationValidationOptions = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationOptions
      NameAvailabilityRequest = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityRequest
      ConnectToTargetAzureDbForPostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForPostgreSqlSyncTaskOutput
      ConnectToSourceMySqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskInput
      MigrationTableMetadata = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationTableMetadata
      MigrateOracleAzureDbPostgreSqlSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncDatabaseInput
      ValidationError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationError
      ServiceSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSku
      WaitStatistics = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::WaitStatistics
      ServerProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerProperties
      ExecutionStatistics = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ExecutionStatistics
      MongoDbProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbProgress
      QueryExecutionResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryExecutionResult
      MongoDbThrottlingSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbThrottlingSettings
      QueryAnalysisValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryAnalysisValidationResult
      MongoDbShardKeySetting = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeySetting
      SchemaComparisonValidationResultType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResultType
      MongoDbDatabaseSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseSettings
      SchemaComparisonValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResult
      MongoDbClusterInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterInfo
      DataIntegrityValidationResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataIntegrityValidationResult
      AzureActiveDirectoryApp = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AzureActiveDirectoryApp
      MigrationValidationDatabaseLevelResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseLevelResult
      SqlServerSqlMISyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlServerSqlMISyncTaskInput
      ProjectFileProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFileProperties
      MongoDbObjectInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbObjectInfo
      ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput
      ValidateMigrationInputSqlServerSqlMITaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskOutput
      NameAvailabilityResponse = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityResponse
      ValidateMigrationInputSqlServerSqlMITaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskInput
      QuotaList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaList
      ValidateSyncMigrationInputSqlServerTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskOutput
      DataItemMigrationSummaryResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataItemMigrationSummaryResult
      ValidateSyncMigrationInputSqlServerTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskInput
      Quota = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Quota
      SyncMigrationDatabaseErrorEvent = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncMigrationDatabaseErrorEvent
      MigrationReportResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationReportResult
      MongoDbCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCommandInput
      QuotaName = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaName
      ConnectToSourceSqlServerTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutput
      ResourceSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSku
      MigrateOracleAzureDbPostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutput
      MigrateSqlServerSqlDbTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutput
      DatabaseFileInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInfo
      MigrateSqlServerSqlDbDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbDatabaseInput
      UploadOCIDriverTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UploadOCIDriverTaskInput
      ResourceSkuCapacity = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacity
      UploadOCIDriverTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UploadOCIDriverTaskOutput
      ResourceSkuCosts = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCosts
      MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput
      ResourceSkuCapabilities = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapabilities
      ConnectToSourcePostgreSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourcePostgreSqlSyncTaskInput
      BackupFileInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupFileInfo
      InstallOCIDriverTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::InstallOCIDriverTaskInput
      BackupSetInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupSetInfo
      ConnectToSourceOracleSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceOracleSyncTaskOutput
      ResourceSkuRestrictions = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictions
      MigrateMySqlAzureDbForMySqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutput
      DataMigrationServiceStatusResponse = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceStatusResponse
      ReportableException = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ReportableException
      MigrateSqlServerSqlMISyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutput
      MigrateSyncCompleteCommandOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandOutput
      ServiceSkuList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSkuList
      GetTdeCertificatesSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskOutput
      AvailableServiceSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSku
      FileStorageInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileStorageInfo
      AvailableServiceSkuCapacity = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuCapacity
      ConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectionInfo
      AvailableServiceSkuSku = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuSku
      ValidateOracleAzureDbPostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateOracleAzureDbPostgreSqlSyncTaskOutput
      TaskList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskList
      MongoDbError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbError
      DataMigrationServiceList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceList
      ConnectToSourceNonSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceNonSqlTaskOutput
      OrphanedUserInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::OrphanedUserInfo
      MongoDbCollectionSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionSettings
      StartMigrationScenarioServerRoleResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::StartMigrationScenarioServerRoleResult
      ValidateMigrationInputSqlServerSqlMISyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMISyncTaskOutput
      ProjectList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectList
      SchemaMigrationSetting = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationSetting
      MigrateSqlServerSqlMITaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutput
      BlobShare = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BlobShare
      MigrateSqlServerSqlDbSyncDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncDatabaseInput
      MigrateSqlServerSqlServerDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlServerDatabaseInput
      MigrateSchemaSqlServerSqlDbTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutput
      DatabaseFileInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInput
      OracleOCIDriverInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::OracleOCIDriverInfo
      ConnectToTargetAzureDbForMySqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskOutput
      CheckOCIDriverTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CheckOCIDriverTaskOutput
      ConnectToTargetAzureDbForMySqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskInput
      MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput
      NonSqlMigrationTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskOutput
      ConnectToSourcePostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourcePostgreSqlSyncTaskOutput
      ConnectToTargetSqlMISyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMISyncTaskOutput
      InstallOCIDriverTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::InstallOCIDriverTaskOutput
      ConnectToTargetSqlMISyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMISyncTaskInput
      MigrateMISyncCompleteCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMISyncCompleteCommandInput
      NonSqlDataMigrationTableResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTableResult
      FileShare = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileShare
      ConnectToTargetSqlMITaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskOutput
      GetTdeCertificatesSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskInput
      ConnectToTargetSqlMITaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskInput
      ProjectTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTaskProperties
      DataMigrationError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationError
      MongoDbMigrationSettings = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationSettings
      DatabaseTable = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseTable
      DatabaseBackupInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseBackupInfo
      GetUserTablesPostgreSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesPostgreSqlTaskOutput
      MongoDbShardKeyInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyInfo
      GetUserTablesPostgreSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesPostgreSqlTaskInput
      CheckOCIDriverTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CheckOCIDriverTaskInput
      NonSqlMigrationTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskInput
      MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput
      GetUserTablesOracleTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesOracleTaskOutput
      ServiceOperationList = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationList
      GetUserTablesOracleTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesOracleTaskInput
      ResourceSkusResult = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkusResult
      NonSqlDataMigrationTable = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTable
      MongoDbShardKeyField = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyField
      GetUserTablesSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskOutput
      MigrateSchemaSqlServerSqlDbDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbDatabaseInput
      GetUserTablesSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskInput
      MigrationEligibilityInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationEligibilityInfo
      GetProjectDetailsNonSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetProjectDetailsNonSqlTaskInput
      ServiceOperationDisplay = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationDisplay
      GetUserTablesSqlTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskOutput
      MigrateSqlServerSqlMIDatabaseInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMIDatabaseInput
      GetUserTablesSqlTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskInput
      ConnectToSourceOracleSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceOracleSyncTaskInput
      DataMigrationProjectMetadata = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationProjectMetadata
      ConnectToSourceSqlServerTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskInput
      ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputDatabaseSchemaMapItem = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputDatabaseSchemaMapItem
      MigrateOracleAzureDbPostgreSqlSyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskInput
      ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutput
      TrackedResource = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TrackedResource
      ProjectFile = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFile
      MigrateMISyncCompleteCommandProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMISyncCompleteCommandProperties
      MigrateSyncCompleteCommandProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandProperties
      MiSqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MiSqlConnectionInfo
      PostgreSqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::PostgreSqlConnectionInfo
      OracleConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::OracleConnectionInfo
      MySqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlConnectionInfo
      MongoDbConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbConnectionInfo
      SqlConnectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlConnectionInfo
      GetTdeCertificatesSqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskProperties
      ValidateOracleAzureDbForPostgreSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateOracleAzureDbForPostgreSqlSyncTaskProperties
      MongoDbCollectionProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionProgress
      MongoDbDatabaseProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseProgress
      MongoDbMigrationProgress = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationProgress
      ValidateMongoDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMongoDbTaskProperties
      ValidateMigrationInputSqlServerSqlMISyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMISyncTaskInput
      ValidateMigrationInputSqlServerSqlMISyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMISyncTaskProperties
      ValidateMigrationInputSqlServerSqlMITaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskProperties
      ValidateMigrationInputSqlServerSqlDbSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlDbSyncTaskProperties
      MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseError
      MigrateOracleAzureDbPostgreSqlSyncTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputError
      MigrateOracleAzureDbPostgreSqlSyncTaskOutputTableLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputTableLevel
      MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseLevel
      MigrateOracleAzureDbPostgreSqlSyncTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputMigrationLevel
      MigrateOracleAzureDbForPostgreSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbForPostgreSqlSyncTaskProperties
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
      MigrateSqlServerSqlMISyncTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutputError
      MigrateSqlServerSqlMISyncTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutputDatabaseLevel
      MigrateSqlServerSqlMISyncTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutputMigrationLevel
      MigrateSqlServerSqlMISyncTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskInput
      MigrateSqlServerSqlMISyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskProperties
      MigrateSqlServerSqlMITaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputError
      MigrateSqlServerSqlMITaskOutputLoginLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputLoginLevel
      MigrateSqlServerSqlMITaskOutputAgentJobLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputAgentJobLevel
      MigrateSqlServerSqlMITaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputDatabaseLevel
      MigrateSqlServerSqlMITaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutputMigrationLevel
      MigrateSqlServerSqlMITaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskInput
      MigrateSqlServerSqlMITaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskProperties
      MigrateMongoDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMongoDbTaskProperties
      ConnectToTargetAzureDbForMySqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskProperties
      ConnectToTargetSqlMISyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMISyncTaskProperties
      ConnectToTargetSqlMITaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskProperties
      GetUserTablesPostgreSqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesPostgreSqlTaskProperties
      GetUserTablesOracleTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesOracleTaskProperties
      GetUserTablesSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskProperties
      GetUserTablesSqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskProperties
      ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties
      ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties
      ConnectToTargetSqlSqlDbSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskProperties
      ConnectToTargetSqlDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskProperties
      ConnectToSourceOracleSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceOracleSyncTaskProperties
      ConnectToSourcePostgreSqlSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourcePostgreSqlSyncTaskProperties
      ConnectToSourceSqlServerTaskOutputAgentJobLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputAgentJobLevel
      ConnectToSourceSqlServerTaskOutputLoginLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputLoginLevel
      ConnectToSourceSqlServerTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputDatabaseLevel
      ConnectToSourceSqlServerTaskOutputTaskLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutputTaskLevel
      ConnectToSourceSqlServerSyncTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerSyncTaskProperties
      ConnectToSourceSqlServerTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskProperties
      MongoDbCollectionInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionInfo
      MongoDbDatabaseInfo = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseInfo
      ConnectToMongoDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToMongoDbTaskProperties
      ProjectTask = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTask
      DataMigrationService = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationService
      Project = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Project
      ConnectToSourceMySqlTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskProperties
      MigrateSchemaSqlServerSqlDbTaskInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskInput
      MigrateSchemaSqlServerSqlDbTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskProperties
      MigrateSchemaSqlServerSqlDbTaskOutputMigrationLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputMigrationLevel
      MigrateSchemaSqlServerSqlDbTaskOutputDatabaseLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputDatabaseLevel
      MigrateSchemaSqlServerSqlDbTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputError
      MigrateSchemaSqlTaskOutputError = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlTaskOutputError
      MongoDbCancelCommand = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCancelCommand
      MongoDbFinishCommandInput = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbFinishCommandInput
      MongoDbFinishCommand = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbFinishCommand
      MongoDbRestartCommand = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbRestartCommand
      CheckOCIDriverTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CheckOCIDriverTaskProperties
      UploadOCIDriverTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UploadOCIDriverTaskProperties
      InstallOCIDriverTaskProperties = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::InstallOCIDriverTaskProperties
      CommandState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandState
      SqlSourcePlatform = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlSourcePlatform
      AuthenticationType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AuthenticationType
      MongoDbErrorType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbErrorType
      MongoDbMigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationState
      MongoDbShardKeyOrder = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyOrder
      MongoDbReplication = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbReplication
      BackupType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupType
      BackupMode = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupMode
      SyncTableMigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncTableMigrationState
      SyncDatabaseMigrationReportingState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncDatabaseMigrationReportingState
      ValidationStatus = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationStatus
      Severity = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Severity
      UpdateActionType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UpdateActionType
      ObjectType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ObjectType
      MigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationState
      DatabaseMigrationStage = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseMigrationStage
      MigrationStatus = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationStatus
      BackupFileStatus = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupFileStatus
      DatabaseMigrationState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseMigrationState
      LoginMigrationStage = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginMigrationStage
      LoginType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginType
      DatabaseState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseState
      DatabaseCompatLevel = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseCompatLevel
      DatabaseFileType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileType
      ServerLevelPermissionsGroup = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerLevelPermissionsGroup
      MongoDbClusterType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterType
      TaskState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskState
      ServiceProvisioningState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceProvisioningState
      ProjectTargetPlatform = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTargetPlatform
      ProjectSourcePlatform = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectSourcePlatform
      ProjectProvisioningState = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectProvisioningState
      NameCheckFailureReason = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameCheckFailureReason
      ServiceScalability = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceScalability
      ResourceSkuRestrictionsType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsType
      ResourceSkuRestrictionsReasonCode = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsReasonCode
      ResourceSkuCapacityScaleType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacityScaleType
      MySqlTargetPlatformType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlTargetPlatformType
      SchemaMigrationOption = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationOption
      SchemaMigrationStage = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationStage
      DataMigrationResultCode = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationResultCode
      ErrorType = Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ErrorType
    end

    #
    # DataMigrationManagementClass
    #
    class DataMigrationManagementClass
      attr_reader :resource_skus, :services, :tasks, :service_tasks, :projects, :usages, :operations, :files, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::DataMigration::Mgmt::V2018_07_15_preview::DataMigrationServiceClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @resource_skus = @client_0.resource_skus
        @services = @client_0.services
        @tasks = @client_0.tasks
        @service_tasks = @client_0.service_tasks
        @projects = @client_0.projects
        @usages = @client_0.usages
        @operations = @client_0.operations
        @files = @client_0.files

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/DataMigration/Mgmt'
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
      def migration_validation_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationResult
      end
      def migration_validation_database_summary_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseSummaryResult
      end
      def resource
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Resource
      end
      def migrate_my_sql_azure_db_for_my_sql_sync_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncDatabaseInput
      end
      def migrate_my_sql_azure_db_for_my_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskInput
      end
      def odata_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ODataError
      end
      def connect_to_target_sql_db_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskInput
      end
      def migrate_misync_complete_command_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMISyncCompleteCommandOutput
      end
      def database
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Database
      end
      def service_operation
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperation
      end
      def connect_to_target_sql_sql_db_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskInput
      end
      def migrate_sync_complete_command_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandInput
      end
      def connect_to_target_sql_db_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskOutput
      end
      def command_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandProperties
      end
      def database_object_name
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseObjectName
      end
      def selected_certificate_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SelectedCertificateInput
      end
      def connect_to_target_azure_db_for_postgre_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForPostgreSqlSyncTaskInput
      end
      def file_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileList
      end
      def migrate_sql_server_sql_db_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncTaskOutput
      end
      def api_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ApiError
      end
      def sql_migration_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlMigrationTaskInput
      end
      def database_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseInfo
      end
      def migration_validation_options
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationOptions
      end
      def name_availability_request
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityRequest
      end
      def connect_to_target_azure_db_for_postgre_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForPostgreSqlSyncTaskOutput
      end
      def connect_to_source_my_sql_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceMySqlTaskInput
      end
      def migration_table_metadata
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationTableMetadata
      end
      def migrate_oracle_azure_db_postgre_sql_sync_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncDatabaseInput
      end
      def validation_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidationError
      end
      def service_sku
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSku
      end
      def wait_statistics
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::WaitStatistics
      end
      def server_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServerProperties
      end
      def execution_statistics
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ExecutionStatistics
      end
      def mongo_db_progress
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbProgress
      end
      def query_execution_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryExecutionResult
      end
      def mongo_db_throttling_settings
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbThrottlingSettings
      end
      def query_analysis_validation_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QueryAnalysisValidationResult
      end
      def mongo_db_shard_key_setting
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeySetting
      end
      def schema_comparison_validation_result_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResultType
      end
      def mongo_db_database_settings
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseSettings
      end
      def schema_comparison_validation_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaComparisonValidationResult
      end
      def mongo_db_cluster_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterInfo
      end
      def data_integrity_validation_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataIntegrityValidationResult
      end
      def azure_active_directory_app
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AzureActiveDirectoryApp
      end
      def migration_validation_database_level_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationValidationDatabaseLevelResult
      end
      def sql_server_sql_misync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SqlServerSqlMISyncTaskInput
      end
      def project_file_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFileProperties
      end
      def mongo_db_object_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbObjectInfo
      end
      def connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput
      end
      def validate_migration_input_sql_server_sql_mitask_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskOutput
      end
      def name_availability_response
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NameAvailabilityResponse
      end
      def validate_migration_input_sql_server_sql_mitask_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskInput
      end
      def quota_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaList
      end
      def validate_sync_migration_input_sql_server_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskOutput
      end
      def data_item_migration_summary_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataItemMigrationSummaryResult
      end
      def validate_sync_migration_input_sql_server_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateSyncMigrationInputSqlServerTaskInput
      end
      def quota
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Quota
      end
      def sync_migration_database_error_event
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SyncMigrationDatabaseErrorEvent
      end
      def migration_report_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationReportResult
      end
      def mongo_db_command_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCommandInput
      end
      def quota_name
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::QuotaName
      end
      def connect_to_source_sql_server_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskOutput
      end
      def resource_sku
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSku
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutput
      end
      def migrate_sql_server_sql_db_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbTaskOutput
      end
      def database_file_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInfo
      end
      def migrate_sql_server_sql_db_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbDatabaseInput
      end
      def upload_ocidriver_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UploadOCIDriverTaskInput
      end
      def resource_sku_capacity
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacity
      end
      def upload_ocidriver_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UploadOCIDriverTaskOutput
      end
      def resource_sku_costs
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCosts
      end
      def migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput
      end
      def resource_sku_capabilities
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapabilities
      end
      def connect_to_source_postgre_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourcePostgreSqlSyncTaskInput
      end
      def backup_file_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupFileInfo
      end
      def install_ocidriver_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::InstallOCIDriverTaskInput
      end
      def backup_set_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupSetInfo
      end
      def connect_to_source_oracle_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceOracleSyncTaskOutput
      end
      def resource_sku_restrictions
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictions
      end
      def migrate_my_sql_azure_db_for_my_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMySqlAzureDbForMySqlSyncTaskOutput
      end
      def data_migration_service_status_response
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceStatusResponse
      end
      def reportable_exception
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ReportableException
      end
      def migrate_sql_server_sql_misync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutput
      end
      def migrate_sync_complete_command_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandOutput
      end
      def service_sku_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceSkuList
      end
      def get_tde_certificates_sql_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskOutput
      end
      def available_service_sku
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSku
      end
      def file_storage_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileStorageInfo
      end
      def available_service_sku_capacity
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuCapacity
      end
      def connection_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectionInfo
      end
      def available_service_sku_sku
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::AvailableServiceSkuSku
      end
      def validate_oracle_azure_db_postgre_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateOracleAzureDbPostgreSqlSyncTaskOutput
      end
      def task_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TaskList
      end
      def mongo_db_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbError
      end
      def data_migration_service_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationServiceList
      end
      def connect_to_source_non_sql_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceNonSqlTaskOutput
      end
      def orphaned_user_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::OrphanedUserInfo
      end
      def mongo_db_collection_settings
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionSettings
      end
      def start_migration_scenario_server_role_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::StartMigrationScenarioServerRoleResult
      end
      def validate_migration_input_sql_server_sql_misync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMISyncTaskOutput
      end
      def project_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectList
      end
      def schema_migration_setting
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::SchemaMigrationSetting
      end
      def migrate_sql_server_sql_mitask_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMITaskOutput
      end
      def blob_share
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BlobShare
      end
      def migrate_sql_server_sql_db_sync_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlDbSyncDatabaseInput
      end
      def migrate_sql_server_sql_server_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlServerDatabaseInput
      end
      def migrate_schema_sql_server_sql_db_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutput
      end
      def database_file_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseFileInput
      end
      def oracle_ocidriver_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::OracleOCIDriverInfo
      end
      def connect_to_target_azure_db_for_my_sql_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskOutput
      end
      def check_ocidriver_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CheckOCIDriverTaskOutput
      end
      def connect_to_target_azure_db_for_my_sql_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskInput
      end
      def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput
      end
      def non_sql_migration_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskOutput
      end
      def connect_to_source_postgre_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourcePostgreSqlSyncTaskOutput
      end
      def connect_to_target_sql_misync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMISyncTaskOutput
      end
      def install_ocidriver_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::InstallOCIDriverTaskOutput
      end
      def connect_to_target_sql_misync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMISyncTaskInput
      end
      def migrate_misync_complete_command_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMISyncCompleteCommandInput
      end
      def non_sql_data_migration_table_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTableResult
      end
      def file_share
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::FileShare
      end
      def connect_to_target_sql_mitask_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskOutput
      end
      def get_tde_certificates_sql_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetTdeCertificatesSqlTaskInput
      end
      def connect_to_target_sql_mitask_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskInput
      end
      def project_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTaskProperties
      end
      def data_migration_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationError
      end
      def mongo_db_migration_settings
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationSettings
      end
      def database_table
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseTable
      end
      def database_backup_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseBackupInfo
      end
      def get_user_tables_postgre_sql_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesPostgreSqlTaskOutput
      end
      def mongo_db_shard_key_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyInfo
      end
      def get_user_tables_postgre_sql_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesPostgreSqlTaskInput
      end
      def check_ocidriver_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CheckOCIDriverTaskInput
      end
      def non_sql_migration_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlMigrationTaskInput
      end
      def migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput
      end
      def get_user_tables_oracle_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesOracleTaskOutput
      end
      def service_operation_list
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationList
      end
      def get_user_tables_oracle_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesOracleTaskInput
      end
      def resource_skus_result
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkusResult
      end
      def non_sql_data_migration_table
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::NonSqlDataMigrationTable
      end
      def mongo_db_shard_key_field
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbShardKeyField
      end
      def get_user_tables_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskOutput
      end
      def migrate_schema_sql_server_sql_db_database_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbDatabaseInput
      end
      def get_user_tables_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskInput
      end
      def migration_eligibility_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationEligibilityInfo
      end
      def get_project_details_non_sql_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetProjectDetailsNonSqlTaskInput
      end
      def service_operation_display
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ServiceOperationDisplay
      end
      def get_user_tables_sql_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskOutput
      end
      def migrate_sql_server_sql_midatabase_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMIDatabaseInput
      end
      def get_user_tables_sql_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskInput
      end
      def connect_to_source_oracle_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceOracleSyncTaskInput
      end
      def data_migration_project_metadata
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationProjectMetadata
      end
      def connect_to_source_sql_server_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceSqlServerTaskInput
      end
      def connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_output_database_schema_map_item
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutputDatabaseSchemaMapItem
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskInput
      end
      def connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_output
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskOutput
      end
      def tracked_resource
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::TrackedResource
      end
      def project_file
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectFile
      end
      def migrate_misync_complete_command_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateMISyncCompleteCommandProperties
      end
      def migrate_sync_complete_command_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSyncCompleteCommandProperties
      end
      def mi_sql_connection_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MiSqlConnectionInfo
      end
      def postgre_sql_connection_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::PostgreSqlConnectionInfo
      end
      def oracle_connection_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::OracleConnectionInfo
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
      def validate_oracle_azure_db_for_postgre_sql_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateOracleAzureDbForPostgreSqlSyncTaskProperties
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
      def validate_migration_input_sql_server_sql_misync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMISyncTaskInput
      end
      def validate_migration_input_sql_server_sql_misync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMISyncTaskProperties
      end
      def validate_migration_input_sql_server_sql_mitask_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlMITaskProperties
      end
      def validate_migration_input_sql_server_sql_db_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ValidateMigrationInputSqlServerSqlDbSyncTaskProperties
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_output_database_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseError
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_output_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputError
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_output_table_level
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputTableLevel
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_output_database_level
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseLevel
      end
      def migrate_oracle_azure_db_postgre_sql_sync_task_output_migration_level
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbPostgreSqlSyncTaskOutputMigrationLevel
      end
      def migrate_oracle_azure_db_for_postgre_sql_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateOracleAzureDbForPostgreSqlSyncTaskProperties
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
      def migrate_sql_server_sql_misync_task_output_error
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutputError
      end
      def migrate_sql_server_sql_misync_task_output_database_level
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutputDatabaseLevel
      end
      def migrate_sql_server_sql_misync_task_output_migration_level
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskOutputMigrationLevel
      end
      def migrate_sql_server_sql_misync_task_input
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskInput
      end
      def migrate_sql_server_sql_misync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSqlServerSqlMISyncTaskProperties
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
      def connect_to_target_azure_db_for_my_sql_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForMySqlTaskProperties
      end
      def connect_to_target_sql_misync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMISyncTaskProperties
      end
      def connect_to_target_sql_mitask_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlMITaskProperties
      end
      def get_user_tables_postgre_sql_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesPostgreSqlTaskProperties
      end
      def get_user_tables_oracle_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesOracleTaskProperties
      end
      def get_user_tables_sql_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlSyncTaskProperties
      end
      def get_user_tables_sql_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::GetUserTablesSqlTaskProperties
      end
      def connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties
      end
      def connect_to_target_azure_db_for_postgre_sql_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties
      end
      def connect_to_target_sql_sql_db_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlSqlDbSyncTaskProperties
      end
      def connect_to_target_sql_db_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToTargetSqlDbTaskProperties
      end
      def connect_to_source_oracle_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourceOracleSyncTaskProperties
      end
      def connect_to_source_postgre_sql_sync_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToSourcePostgreSqlSyncTaskProperties
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
      def mongo_db_collection_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCollectionInfo
      end
      def mongo_db_database_info
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbDatabaseInfo
      end
      def connect_to_mongo_db_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ConnectToMongoDbTaskProperties
      end
      def project_task
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectTask
      end
      def data_migration_service
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DataMigrationService
      end
      def project
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Project
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
      def migrate_schema_sql_server_sql_db_task_output_migration_level
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrateSchemaSqlServerSqlDbTaskOutputMigrationLevel
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
      def mongo_db_cancel_command
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbCancelCommand
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
      def check_ocidriver_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CheckOCIDriverTaskProperties
      end
      def upload_ocidriver_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UploadOCIDriverTaskProperties
      end
      def install_ocidriver_task_properties
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::InstallOCIDriverTaskProperties
      end
      def command_state
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::CommandState
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
      def mongo_db_migration_state
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbMigrationState
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
      def backup_mode
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupMode
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
      def severity
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::Severity
      end
      def update_action_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::UpdateActionType
      end
      def object_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ObjectType
      end
      def migration_state
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationState
      end
      def database_migration_stage
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseMigrationStage
      end
      def migration_status
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MigrationStatus
      end
      def backup_file_status
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::BackupFileStatus
      end
      def database_migration_state
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseMigrationState
      end
      def login_migration_stage
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginMigrationStage
      end
      def login_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::LoginType
      end
      def database_state
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::DatabaseState
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
      def mongo_db_cluster_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MongoDbClusterType
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
      def project_source_platform
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ProjectSourcePlatform
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
      def resource_sku_restrictions_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsType
      end
      def resource_sku_restrictions_reason_code
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuRestrictionsReasonCode
      end
      def resource_sku_capacity_scale_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ResourceSkuCapacityScaleType
      end
      def my_sql_target_platform_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::MySqlTargetPlatformType
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
      def error_type
        Azure::DataMigration::Mgmt::V2018_07_15_preview::Models::ErrorType
      end
    end
  end
end
