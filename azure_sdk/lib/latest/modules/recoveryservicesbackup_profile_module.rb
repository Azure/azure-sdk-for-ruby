# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_backup'

module Azure::Profiles::Latest
  module RecoveryServicesBackup
    module Mgmt
      Operations = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Operations
      BackupResourceVaultConfigs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupResourceVaultConfigs
      BackupEngines = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupEngines
      ProtectionContainerRefreshOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainerRefreshOperationResults
      ProtectableContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectableContainers
      ProtectionContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainers
      BackupWorkloadItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupWorkloadItems
      ProtectionContainerOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainerOperationResults
      ProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectedItems
      Backups = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Backups
      ProtectedItemOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectedItemOperationResults
      ProtectedItemOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectedItemOperationStatuses
      RecoveryPoints = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::RecoveryPoints
      ItemLevelRecoveryConnections = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ItemLevelRecoveryConnections
      Restores = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Restores
      JobCancellations = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::JobCancellations
      JobOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::JobOperationResults
      BackupOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupOperationResults
      BackupOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupOperationStatuses
      ProtectionPolicies = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicies
      ProtectionPolicyOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicyOperationResults
      ProtectionPolicyOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicyOperationStatuses
      BackupProtectableItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectableItems
      BackupProtectionContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectionContainers
      SecurityPINs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::SecurityPINs
      BackupResourceStorageConfigs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupResourceStorageConfigs
      Jobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Jobs
      ProtectionIntentOperations = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ProtectionIntentOperations
      BackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupStatus
      FeatureSupport = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::FeatureSupport
      BackupJobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupJobs
      JobDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::JobDetails
      ExportJobsOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ExportJobsOperationResults
      BackupPolicies = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupPolicies
      BackupProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupProtectedItems
      BackupUsageSummaries = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupUsageSummaries

      module Models
        ClientDiscoveryDisplay = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryDisplay
        ClientDiscoveryForServiceSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForServiceSpecification
        ClientDiscoveryForProperties = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForProperties
        ClientDiscoveryResponse = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryResponse
        ClientDiscoveryForLogSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
        ClientDiscoveryValueForSingleApi = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
        AzureFileShareRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareRestoreRequest
        AzureIaaSClassicComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
        AzureIaaSClassicComputeVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
        AzureIaaSComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMContainer
        AzureIaaSComputeVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectableItem
        AzureSQLAGWorkloadContainerProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSQLAGWorkloadContainerProtectionContainer
        AzureSqlContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlContainer
        AzureStorageContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureStorageContainer
        AzureStorageProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureStorageProtectableContainer
        AzureVMAppContainerProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectableContainer
        AzureWorkloadContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainer
        AzureVMAppContainerProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectionContainer
        AzureVmWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadItem
        AzureVmWorkloadProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadProtectableItem
        AzureVmWorkloadSQLAvailabilityGroupProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLAvailabilityGroupProtectableItem
        AzureVmWorkloadSQLDatabaseProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLDatabaseProtectableItem
        AzureVmWorkloadSQLDatabaseWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLDatabaseWorkloadItem
        AzureVmWorkloadSQLInstanceProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLInstanceProtectableItem
        AzureVmWorkloadSQLInstanceWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLInstanceWorkloadItem
        AzureWorkloadBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadBackupRequest
        AzureWorkloadRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadRecoveryPoint
        AzureWorkloadRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadRestoreRequest
        AzureWorkloadSQLRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPoint
        AzureWorkloadSQLPointInTimeRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLPointInTimeRecoveryPoint
        AzureWorkloadSQLRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRestoreRequest
        AzureWorkloadSQLPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLPointInTimeRestoreRequest
        BackupEngineBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResource
        BackupEngineBaseResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResourceList
        BackupRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequestResource
        BackupResourceConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfigResource
        BackupResourceVaultConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfigResource
        DpmBackupEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
        DpmContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
        GenericContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainer
        GenericRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericRecoveryPoint
        IaasVMBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
        IaaSVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
        OperationStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus
        IaasVMILRRegistrationRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
        IaaSVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
        IaasVMRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRecoveryPoint
        IaasVMRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRestoreRequest
        ILRRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequestResource
        MabContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
        OperationStatusJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
        OperationStatusProvisionILRExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
        OperationStatusJobsExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
        ProtectableContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResourceList
        ProtectableContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResource
        ProtectionContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
        ProtectionContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
        RecoveryPointResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResourceList
        RecoveryPointResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResource
        RestoreRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestResource
        WorkloadItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResource
        WorkloadProtectableItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
        WorkloadItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList
        AzureFileShareType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareType
        WorkloadProtectableItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
        CopyOptions = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::CopyOptions
        RecoveryType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryType
        RestoreRequestType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestType
        InquiryStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryStatus
        SQLDataDirectoryType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectoryType
        RestorePointType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointType
        OverwriteOptions = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OverwriteOptions
        BackupType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupType
        StorageTypeState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageTypeState
        ContainerType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
        EnhancedSecurityState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EnhancedSecurityState
        RestorePointQueryType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointQueryType
        WorkloadItemType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemType
        RecoveryPointTierType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierType
        RecoveryPointTierStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierStatus
        OperationStatusValues = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusValues
        BackupItemType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
        StorageType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageType
        BMSContainerQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
        BMSPOQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
        KeyAndSecretDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KeyAndSecretDetails
        WorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItem
        KEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KEKDetails
        TokenInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
        GetProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GetProtectedItemQueryObject
        GenericContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainerExtendedInfo
        TargetAFSRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TargetAFSRestoreInfo
        EncryptionDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EncryptionDetails
        RecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPoint
        ProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
        SQLDataDirectory = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectory
        ProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainer
        OperationStatusExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
        InquiryValidation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryValidation
        WorkloadInquiryDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadInquiryDetails
        InquiryInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryInfo
        DistributedNodesInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DistributedNodesInfo
        AzureWorkloadContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainerExtendedInfo
        InstantItemRecoveryTarget = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
        PreBackupValidation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PreBackupValidation
        ContainerIdentityInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerIdentityInfo
        WorkloadProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
        PointInTimeRange = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PointInTimeRange
        ClientScriptForConnect = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
        RestoreFileSpecs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreFileSpecs
        BMSWorkloadItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSWorkloadItemQueryObject
        AzureWorkloadSQLRecoveryPointExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPointExtendedInfo
        BMSRPQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRPQueryObject
        OperationStatusError = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusError
        TargetRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TargetRestoreInfo
        MabContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
        SQLDataDirectoryMapping = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectoryMapping
        BMSRefreshContainersQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRefreshContainersQueryObject
        RecoveryPointTierInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierInformation
        BackupEngineExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
        BackupEngineBase = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
        BEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BEKDetails
        MABContainerHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MABContainerHealthDetails
        DPMContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
        ILRRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
        BackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
        RestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequest
        BMSBackupEnginesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
        BackupResourceConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
        BMSBackupEngineQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
        BackupResourceVaultConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfig
        AzureBackupServerContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
        AzureBackupServerEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
        AzureFileShareBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareBackupRequest
        AzureFileShareProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareProtectableItem
        AzureFileShareRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareRecoveryPoint
        Type = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Type
        JobOperationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobOperationType
        MabServerType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
        AzureIaaSVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItem
        AzureIaaSClassicComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSClassicComputeVMProtectedItem
        AzureIaaSComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSComputeVMProtectedItem
        AzureIaaSVMProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectionPolicy
        ValidationStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
        AzureSqlProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItem
        AzureSqlProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectionPolicy
        DayOfWeek = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DayOfWeek
        HealthState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthState
        AzureVmWorkloadProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectionPolicy
        JobSupportedAction = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
        AzureVmWorkloadSQLDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSQLDatabaseProtectedItem
        DataSourceType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DataSourceType
        DPMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItem
        GenericProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectedItem
        GenericProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectionPolicy
        LogSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LogSchedulePolicy
        LongTermRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermRetentionPolicy
        RetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionPolicy
        LongTermSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermSchedulePolicy
        MabFileFolderProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItem
        MabProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabProtectionPolicy
        JobStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
        Job = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
        ProtectedItemResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResource
        ProtectionPolicyResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResource
        SimpleRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleRetentionPolicy
        SimpleSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleSchedulePolicy
        HttpStatusCode = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HttpStatusCode
        ProtectionState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionState
        HealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthStatus
        ProtectedItemState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemState
        LastBackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LastBackupStatus
        ProtectedItemHealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemHealthStatus
        Resource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
        ErrorDetail = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ErrorDetail
        BackupManagementType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
        WorkloadType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
        ProtectionStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
        RetentionDurationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDurationType
        RetentionScheduleFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionScheduleFormat
        WeekOfMonth = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeekOfMonth
        MonthOfYear = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthOfYear
        ScheduleRunType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ScheduleRunType
        NameInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::NameInfo
        UsagesUnit = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
        Settings = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Settings
        SubProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SubProtectionPolicy
        DpmJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
        DpmJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
        ResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
        MabJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
        AzureWorkloadErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadErrorInfo
        AzureWorkloadJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobExtendedInfo
        AzureIaaSVMJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
        MabJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
        ProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
        BackupManagementUsage = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
        BackupManagementUsageList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
        PreValidateEnableBackupResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
        AzureIaaSVMHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMHealthDetails
        BackupStatusRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
        BackupStatusResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
        PreValidateEnableBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
        BMSBackupSummariesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
        AzureVMResourceFeatureSupportResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
        AzureSqlProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItemExtendedInfo
        AzureStorageJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobTaskDetails
        AzureIaaSVMJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
        OperationResultInfoBase = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBase
        AzureStorageJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobExtendedInfo
        RetentionDuration = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDuration
        ProtectionPolicyQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyQueryObject
        DailyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionFormat
        DailyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionSchedule
        Day = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Day
        MabErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
        AzureVmWorkloadProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItemExtendedInfo
        AzureStorageErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageErrorInfo
        MabFileFolderProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItemExtendedInfo
        SchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SchedulePolicy
        AzureIaaSVMErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
        OperationWorkerResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationWorkerResponse
        DpmErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
        ProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicy
        WeeklyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionFormat
        JobResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
        JobQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
        AzureWorkloadJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobTaskDetails
        YearlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::YearlyRetentionSchedule
        ExportJobsOperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ExportJobsOperationResultInfo
        DPMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItemExtendedInfo
        WeeklyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionSchedule
        AzureIaaSVMJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
        FeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
        AzureFileshareProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItemExtendedInfo
        AzureVMResourceFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
        ProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItem
        DpmJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
        OperationResultInfoBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBaseResource
        AzureResourceProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
        AzureStorageJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJob
        ProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemQueryObject
        AzureWorkloadJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJob
        SupportStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
        MonthlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthlyRetentionSchedule
        JobResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
        AzureIaaSVMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItemExtendedInfo
        MabJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
        OperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfo
        FabricName = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
        ProtectedItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResourceList
        ProtectionIntentResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
        ProtectionPolicyResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResourceList
        AzureFileshareProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItem
        AzureFileShareProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareProtectionPolicy
      end

      class RecoveryServicesBackupManagementClass
        attr_reader :operations, :backup_resource_vault_configs, :backup_engines, :protection_container_refresh_operation_results, :protectable_containers, :protection_containers, :backup_workload_items, :protection_container_operation_results, :protected_items, :backups, :protected_item_operation_results, :protected_item_operation_statuses, :recovery_points, :item_level_recovery_connections, :restores, :job_cancellations, :job_operation_results, :backup_operation_results, :backup_operation_statuses, :protection_policies, :protection_policy_operation_results, :protection_policy_operation_statuses, :backup_protectable_items, :backup_protection_containers, :security_pins, :backup_resource_storage_configs, :jobs, :protection_intent_operations, :backup_status, :feature_support, :backup_jobs, :job_details, :export_jobs_operation_results, :backup_policies, :backup_protected_items, :backup_usage_summaries, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations

          @client_1 = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @backup_resource_vault_configs = @client_1.backup_resource_vault_configs
          @backup_engines = @client_1.backup_engines
          @protection_container_refresh_operation_results = @client_1.protection_container_refresh_operation_results
          @protectable_containers = @client_1.protectable_containers
          @protection_containers = @client_1.protection_containers
          @backup_workload_items = @client_1.backup_workload_items
          @protection_container_operation_results = @client_1.protection_container_operation_results
          @protected_items = @client_1.protected_items
          @backups = @client_1.backups
          @protected_item_operation_results = @client_1.protected_item_operation_results
          @protected_item_operation_statuses = @client_1.protected_item_operation_statuses
          @recovery_points = @client_1.recovery_points
          @item_level_recovery_connections = @client_1.item_level_recovery_connections
          @restores = @client_1.restores
          @job_cancellations = @client_1.job_cancellations
          @job_operation_results = @client_1.job_operation_results
          @backup_operation_results = @client_1.backup_operation_results
          @backup_operation_statuses = @client_1.backup_operation_statuses
          @protection_policies = @client_1.protection_policies
          @protection_policy_operation_results = @client_1.protection_policy_operation_results
          @protection_policy_operation_statuses = @client_1.protection_policy_operation_statuses
          @backup_protectable_items = @client_1.backup_protectable_items
          @backup_protection_containers = @client_1.backup_protection_containers
          @security_pins = @client_1.security_pins
          @backup_resource_storage_configs = @client_1.backup_resource_storage_configs

          @client_2 = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @jobs = @client_2.jobs
          @protection_intent_operations = @client_2.protection_intent_operations
          @backup_status = @client_2.backup_status
          @feature_support = @client_2.feature_support
          @backup_jobs = @client_2.backup_jobs
          @job_details = @client_2.job_details
          @export_jobs_operation_results = @client_2.export_jobs_operation_results
          @backup_policies = @client_2.backup_policies
          @backup_protected_items = @client_2.backup_protected_items
          @backup_usage_summaries = @client_2.backup_usage_summaries

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/RecoveryServicesBackup/Mgmt"
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
          def client_discovery_display
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryDisplay
          end
          def client_discovery_for_service_specification
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForServiceSpecification
          end
          def client_discovery_for_properties
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForProperties
          end
          def client_discovery_response
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryResponse
          end
          def client_discovery_for_log_specification
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
          end
          def client_discovery_value_for_single_api
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
          end
          def azure_file_share_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareRestoreRequest
          end
          def azure_iaa_sclassic_compute_vmcontainer
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
          end
          def azure_iaa_sclassic_compute_vmprotectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
          end
          def azure_iaa_scompute_vmcontainer
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMContainer
          end
          def azure_iaa_scompute_vmprotectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectableItem
          end
          def azure_sqlagworkload_container_protection_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSQLAGWorkloadContainerProtectionContainer
          end
          def azure_sql_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlContainer
          end
          def azure_storage_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureStorageContainer
          end
          def azure_storage_protectable_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureStorageProtectableContainer
          end
          def azure_vmapp_container_protectable_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectableContainer
          end
          def azure_workload_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainer
          end
          def azure_vmapp_container_protection_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectionContainer
          end
          def azure_vm_workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadItem
          end
          def azure_vm_workload_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadProtectableItem
          end
          def azure_vm_workload_sqlavailability_group_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLAvailabilityGroupProtectableItem
          end
          def azure_vm_workload_sqldatabase_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLDatabaseProtectableItem
          end
          def azure_vm_workload_sqldatabase_workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLDatabaseWorkloadItem
          end
          def azure_vm_workload_sqlinstance_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLInstanceProtectableItem
          end
          def azure_vm_workload_sqlinstance_workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLInstanceWorkloadItem
          end
          def azure_workload_backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadBackupRequest
          end
          def azure_workload_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadRecoveryPoint
          end
          def azure_workload_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadRestoreRequest
          end
          def azure_workload_sqlrecovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPoint
          end
          def azure_workload_sqlpoint_in_time_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLPointInTimeRecoveryPoint
          end
          def azure_workload_sqlrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRestoreRequest
          end
          def azure_workload_sqlpoint_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLPointInTimeRestoreRequest
          end
          def backup_engine_base_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResource
          end
          def backup_engine_base_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResourceList
          end
          def backup_request_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequestResource
          end
          def backup_resource_config_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfigResource
          end
          def backup_resource_vault_config_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfigResource
          end
          def dpm_backup_engine
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
          end
          def dpm_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
          end
          def generic_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainer
          end
          def generic_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericRecoveryPoint
          end
          def iaas_vmbackup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
          end
          def iaa_svmcontainer
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
          end
          def operation_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus
          end
          def iaas_vmilrregistration_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
          end
          def iaa_svmprotectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
          end
          def iaas_vmrecovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRecoveryPoint
          end
          def iaas_vmrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRestoreRequest
          end
          def ilrrequest_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequestResource
          end
          def mab_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
          end
          def operation_status_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
          end
          def operation_status_provision_ilrextended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
          end
          def operation_status_jobs_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
          end
          def protectable_container_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResourceList
          end
          def protectable_container_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResource
          end
          def protection_container_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
          end
          def protection_container_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
          end
          def recovery_point_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResourceList
          end
          def recovery_point_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResource
          end
          def restore_request_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestResource
          end
          def workload_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResource
          end
          def workload_protectable_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
          end
          def workload_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList
          end
          def azure_file_share_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareType
          end
          def workload_protectable_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
          end
          def copy_options
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::CopyOptions
          end
          def recovery_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryType
          end
          def restore_request_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestType
          end
          def inquiry_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryStatus
          end
          def sqldata_directory_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectoryType
          end
          def restore_point_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointType
          end
          def overwrite_options
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OverwriteOptions
          end
          def backup_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupType
          end
          def storage_type_state
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageTypeState
          end
          def container_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
          end
          def enhanced_security_state
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EnhancedSecurityState
          end
          def restore_point_query_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointQueryType
          end
          def workload_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemType
          end
          def recovery_point_tier_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierType
          end
          def recovery_point_tier_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierStatus
          end
          def operation_status_values
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusValues
          end
          def backup_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
          end
          def storage_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageType
          end
          def bmscontainer_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
          end
          def bmspoquery_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
          end
          def key_and_secret_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KeyAndSecretDetails
          end
          def workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItem
          end
          def kekdetails
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KEKDetails
          end
          def token_information
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
          end
          def get_protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GetProtectedItemQueryObject
          end
          def generic_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainerExtendedInfo
          end
          def target_afsrestore_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TargetAFSRestoreInfo
          end
          def encryption_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EncryptionDetails
          end
          def recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPoint
          end
          def protection_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
          end
          def sqldata_directory
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectory
          end
          def protectable_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainer
          end
          def operation_status_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
          end
          def inquiry_validation
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryValidation
          end
          def workload_inquiry_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadInquiryDetails
          end
          def inquiry_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryInfo
          end
          def distributed_nodes_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DistributedNodesInfo
          end
          def azure_workload_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainerExtendedInfo
          end
          def instant_item_recovery_target
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
          end
          def pre_backup_validation
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PreBackupValidation
          end
          def container_identity_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerIdentityInfo
          end
          def workload_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
          end
          def point_in_time_range
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PointInTimeRange
          end
          def client_script_for_connect
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
          end
          def restore_file_specs
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreFileSpecs
          end
          def bmsworkload_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSWorkloadItemQueryObject
          end
          def azure_workload_sqlrecovery_point_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPointExtendedInfo
          end
          def bmsrpquery_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRPQueryObject
          end
          def operation_status_error
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusError
          end
          def target_restore_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TargetRestoreInfo
          end
          def mab_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
          end
          def sqldata_directory_mapping
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectoryMapping
          end
          def bmsrefresh_containers_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRefreshContainersQueryObject
          end
          def recovery_point_tier_information
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierInformation
          end
          def backup_engine_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
          end
          def backup_engine_base
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
          end
          def bekdetails
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BEKDetails
          end
          def mabcontainer_health_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MABContainerHealthDetails
          end
          def dpmcontainer_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
          end
          def ilrrequest
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
          end
          def backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
          end
          def restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequest
          end
          def bmsbackup_engines_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
          end
          def backup_resource_config
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
          end
          def bmsbackup_engine_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
          end
          def backup_resource_vault_config
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfig
          end
          def azure_backup_server_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
          end
          def azure_backup_server_engine
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
          end
          def azure_file_share_backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareBackupRequest
          end
          def azure_file_share_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareProtectableItem
          end
          def azure_file_share_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareRecoveryPoint
          end
          def type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Type
          end
          def job_operation_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobOperationType
          end
          def mab_server_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
          end
          def azure_iaa_svmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItem
          end
          def azure_iaa_sclassic_compute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSClassicComputeVMProtectedItem
          end
          def azure_iaa_scompute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSComputeVMProtectedItem
          end
          def azure_iaa_svmprotection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectionPolicy
          end
          def validation_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
          end
          def azure_sql_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItem
          end
          def azure_sql_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectionPolicy
          end
          def day_of_week
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DayOfWeek
          end
          def health_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthState
          end
          def azure_vm_workload_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectionPolicy
          end
          def job_supported_action
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
          end
          def azure_vm_workload_sqldatabase_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSQLDatabaseProtectedItem
          end
          def data_source_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DataSourceType
          end
          def dpmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItem
          end
          def generic_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectedItem
          end
          def generic_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectionPolicy
          end
          def log_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LogSchedulePolicy
          end
          def long_term_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermRetentionPolicy
          end
          def retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionPolicy
          end
          def long_term_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermSchedulePolicy
          end
          def mab_file_folder_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItem
          end
          def mab_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabProtectionPolicy
          end
          def job_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
          end
          def job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
          end
          def protected_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResource
          end
          def protection_policy_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResource
          end
          def simple_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleRetentionPolicy
          end
          def simple_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleSchedulePolicy
          end
          def http_status_code
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HttpStatusCode
          end
          def protection_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionState
          end
          def health_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthStatus
          end
          def protected_item_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemState
          end
          def last_backup_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LastBackupStatus
          end
          def protected_item_health_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemHealthStatus
          end
          def resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
          end
          def error_detail
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ErrorDetail
          end
          def backup_management_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
          end
          def workload_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
          end
          def protection_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
          end
          def retention_duration_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDurationType
          end
          def retention_schedule_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionScheduleFormat
          end
          def week_of_month
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeekOfMonth
          end
          def month_of_year
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthOfYear
          end
          def schedule_run_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ScheduleRunType
          end
          def name_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::NameInfo
          end
          def usages_unit
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
          end
          def settings
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Settings
          end
          def sub_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SubProtectionPolicy
          end
          def dpm_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
          end
          def dpm_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
          end
          def resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
          end
          def mab_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
          end
          def azure_workload_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadErrorInfo
          end
          def azure_workload_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobExtendedInfo
          end
          def azure_iaa_svmjob_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
          end
          def mab_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
          end
          def protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
          end
          def backup_management_usage
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
          end
          def backup_management_usage_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
          end
          def pre_validate_enable_backup_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
          end
          def azure_iaa_svmhealth_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMHealthDetails
          end
          def backup_status_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
          end
          def backup_status_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
          end
          def pre_validate_enable_backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
          end
          def bmsbackup_summaries_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
          end
          def azure_vmresource_feature_support_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
          end
          def azure_sql_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItemExtendedInfo
          end
          def azure_storage_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobTaskDetails
          end
          def azure_iaa_svmjob_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
          end
          def operation_result_info_base
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBase
          end
          def azure_storage_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobExtendedInfo
          end
          def retention_duration
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDuration
          end
          def protection_policy_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyQueryObject
          end
          def daily_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionFormat
          end
          def daily_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionSchedule
          end
          def day
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Day
          end
          def mab_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
          end
          def azure_vm_workload_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItemExtendedInfo
          end
          def azure_storage_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageErrorInfo
          end
          def mab_file_folder_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItemExtendedInfo
          end
          def schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SchedulePolicy
          end
          def azure_iaa_svmerror_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
          end
          def operation_worker_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationWorkerResponse
          end
          def dpm_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
          end
          def protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicy
          end
          def weekly_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionFormat
          end
          def job_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
          end
          def job_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
          end
          def azure_workload_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobTaskDetails
          end
          def yearly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::YearlyRetentionSchedule
          end
          def export_jobs_operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ExportJobsOperationResultInfo
          end
          def dpmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItemExtendedInfo
          end
          def weekly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionSchedule
          end
          def azure_iaa_svmjob
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
          end
          def feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
          end
          def azure_fileshare_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItemExtendedInfo
          end
          def azure_vmresource_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
          end
          def protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItem
          end
          def dpm_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
          end
          def operation_result_info_base_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBaseResource
          end
          def azure_resource_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
          end
          def azure_storage_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJob
          end
          def protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemQueryObject
          end
          def azure_workload_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJob
          end
          def support_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
          end
          def monthly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthlyRetentionSchedule
          end
          def job_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
          end
          def azure_iaa_svmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItemExtendedInfo
          end
          def mab_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
          end
          def operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfo
          end
          def fabric_name
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
          end
          def protected_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResourceList
          end
          def protection_intent_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
          end
          def protection_policy_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResourceList
          end
          def azure_fileshare_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItem
          end
          def azure_file_share_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareProtectionPolicy
          end
        end
      end
    end
  end
end
