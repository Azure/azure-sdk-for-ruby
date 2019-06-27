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
      Operation = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Operation
      ProtectionIntentOperations = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ProtectionIntentOperations
      BackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupStatus
      FeatureSupport = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::FeatureSupport
      BackupJobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupJobs
      JobDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::JobDetails
      ExportJobsOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ExportJobsOperationResults
      BackupPolicies = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupPolicies
      BackupProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupProtectedItems
      BackupUsageSummaries = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupUsageSummaries
      Jobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Jobs

      module Models
        ClientDiscoveryForLogSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
        ClientDiscoveryValueForSingleApi = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
        ClientDiscoveryDisplay = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryDisplay
        ClientDiscoveryForServiceSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForServiceSpecification
        ClientDiscoveryForProperties = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForProperties
        ClientDiscoveryResponse = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryResponse
        AzureWorkloadContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainerExtendedInfo
        DPMContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
        InquiryInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryInfo
        ProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
        BMSContainersInquiryQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainersInquiryQueryObject
        BMSContainerQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
        RecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPoint
        BMSBackupEnginesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
        BMSBackupEngineQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
        BEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BEKDetails
        GenericContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainerExtendedInfo
        TokenInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
        BackupResourceVaultConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfig
        WorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItem
        OperationStatusExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
        BackupResourceConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
        ILRRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
        SQLDataDirectory = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectory
        ContainerIdentityInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerIdentityInfo
        OperationStatusError = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusError
        BMSWorkloadItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSWorkloadItemQueryObject
        InstantItemRecoveryTarget = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
        BMSRPQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRPQueryObject
        InquiryValidation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryValidation
        BMSRefreshContainersQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRefreshContainersQueryObject
        WorkloadInquiryDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadInquiryDetails
        BackupEngineBase = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
        DistributedNodesInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DistributedNodesInfo
        BackupEngineExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
        KeyAndSecretDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KeyAndSecretDetails
        KEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KEKDetails
        WorkloadProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
        ProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainer
        PointInTimeRange = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PointInTimeRange
        ClientScriptForConnect = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
        MabContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
        PreBackupValidation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PreBackupValidation
        MABContainerHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MABContainerHealthDetails
        BMSPOQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
        AzureWorkloadSQLRecoveryPointExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPointExtendedInfo
        RecoveryPointTierInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierInformation
        GetProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GetProtectedItemQueryObject
        OperationStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus
        AzureBackupServerEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
        AzureFileShareBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareBackupRequest
        AzureBackupServerContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
        AzureFileShareProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareProtectableItem
        AzureIaaSClassicComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
        AzureFileShareRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareRecoveryPoint
        AzureIaaSClassicComputeVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
        AzureIaaSComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMContainer
        AzureIaaSComputeVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectableItem
        AzureSqlContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlContainer
        AzureStorageContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureStorageContainer
        AzureStorageProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureStorageProtectableContainer
        AzureVMAppContainerProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectableContainer
        AzureVmWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadItem
        AzureVmWorkloadProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadProtectableItem
        AzureVmWorkloadSAPHanaDatabaseProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaDatabaseProtectableItem
        AzureVmWorkloadSAPHanaDatabaseWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaDatabaseWorkloadItem
        AzureVmWorkloadSAPHanaSystemProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaSystemProtectableItem
        AzureVmWorkloadSAPHanaSystemWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaSystemWorkloadItem
        AzureVmWorkloadSQLAvailabilityGroupProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLAvailabilityGroupProtectableItem
        AzureVmWorkloadSQLDatabaseProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLDatabaseProtectableItem
        AzureVmWorkloadSQLDatabaseWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLDatabaseWorkloadItem
        AzureVmWorkloadSQLInstanceProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLInstanceProtectableItem
        AzureVmWorkloadSQLInstanceWorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSQLInstanceWorkloadItem
        AzureWorkloadBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadBackupRequest
        AzureWorkloadContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainer
        AzureSQLAGWorkloadContainerProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSQLAGWorkloadContainerProtectionContainer
        AzureVMAppContainerProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectionContainer
        AzureWorkloadRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadRecoveryPoint
        AzureWorkloadSAPHanaRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSAPHanaRecoveryPoint
        AzureWorkloadSAPHanaPointInTimeRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSAPHanaPointInTimeRecoveryPoint
        AzureWorkloadSQLRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPoint
        AzureWorkloadSQLPointInTimeRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLPointInTimeRecoveryPoint
        BackupEngineBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResource
        BackupRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequestResource
        BackupEngineBaseResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResourceList
        BackupResourceVaultConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfigResource
        BackupResourceConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfigResource
        DpmContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
        DpmBackupEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
        GenericContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainer
        IaasVMBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
        GenericRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericRecoveryPoint
        IaasVMILRRegistrationRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
        IaaSVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
        IaasVMRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRecoveryPoint
        IaaSVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
        ILRRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequestResource
        MabContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
        OperationStatusJobsExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
        OperationStatusJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
        ProtectableContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResource
        OperationStatusProvisionILRExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
        ProtectableContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResourceList
        ProtectionContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
        ProtectionContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
        RecoveryPointResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResource
        RestoreRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestResource
        RecoveryPointResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResourceList
        WorkloadItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList
        WorkloadItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResource
        WorkloadProtectableItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
        WorkloadProtectableItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
        AzureFileShareType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareType
        InquiryStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryStatus
        RestorePointType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointType
        StorageTypeState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageTypeState
        ContainerType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
        EnhancedSecurityState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EnhancedSecurityState
        RestorePointQueryType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointQueryType
        RecoveryPointTierStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierStatus
        RecoveryPointTierType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierType
        OperationStatusValues = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusValues
        BackupItemType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
        BackupType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupType
        BackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
        StorageType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageType
        ValidateOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationRequest
        RetentionDuration = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDuration
        DailyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionFormat
        MabErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
        MabJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
        AzureStorageJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobTaskDetails
        ProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
        AzureVMResourceFeatureSupportResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
        ProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemQueryObject
        BackupManagementUsage = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
        PreValidateEnableBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
        BackupStatusRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
        AzureVmWorkloadProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItemExtendedInfo
        BMSBackupSummariesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
        BackupStatusResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
        BackupManagementUsageList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
        FeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
        AzureStorageErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageErrorInfo
        ProtectionPolicyQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyQueryObject
        DpmJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
        AzureIaaSVMJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
        PreValidateEnableBackupResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
        AzureSqlProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItemExtendedInfo
        AzureBackupGoalFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureBackupGoalFeatureSupportRequest
        ProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicy
        AzureIaaSVMJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
        AzureResourceProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
        ValidateOperationResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationResponse
        JobQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
        ProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItem
        TargetAFSRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetAFSRestoreInfo
        TargetRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetRestoreInfo
        AzureIaaSVMHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMHealthDetails
        YearlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::YearlyRetentionSchedule
        Day = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Day
        MonthlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthlyRetentionSchedule
        WeeklyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionFormat
        EncryptionDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::EncryptionDetails
        AzureVMResourceFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
        DPMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItemExtendedInfo
        WeeklyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionSchedule
        SQLDataDirectoryMapping = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryMapping
        AzureStorageJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJob
        MabFileFolderProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItemExtendedInfo
        AzureWorkloadAutoProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadAutoProtectionIntent
        AzureWorkloadJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJob
        AzureRecoveryServiceVaultProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureRecoveryServiceVaultProtectionIntent
        DpmJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
        DpmJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
        AzureFileshareProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItem
        AzureStorageJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobExtendedInfo
        AzureFileShareRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareRestoreRequest
        AzureFileShareProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareProtectionPolicy
        OperationResultInfoBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBaseResource
        AzureIaaSVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItem
        AzureIaaSClassicComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSClassicComputeVMProtectedItem
        JobResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
        MabJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
        AzureIaaSComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSComputeVMProtectedItem
        AzureIaaSVMProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectionPolicy
        ProtectedItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResourceList
        AzureSqlProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItem
        AzureSqlProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectionPolicy
        AzureIaaSVMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItemExtendedInfo
        ValidateIaasVMRestoreOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateIaasVMRestoreOperationRequest
        DailyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionSchedule
        SupportStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
        AzureWorkloadSQLAutoProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLAutoProtectionIntent
        AzureVmWorkloadProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItem
        AzureVmWorkloadProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectionPolicy
        JobResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
        AzureVmWorkloadSAPHanaDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSAPHanaDatabaseProtectedItem
        JobSupportedAction = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
        OperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfo
        Job = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
        AzureWorkloadJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobTaskDetails
        ProtectionIntentResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
        AzureVmWorkloadSQLDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSQLDatabaseProtectedItem
        ExportJobsOperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ExportJobsOperationResultInfo
        JobStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
        FabricName = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
        Type = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Type
        JobOperationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobOperationType
        MabServerType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
        AzureWorkloadRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadRestoreRequest
        ValidateRestoreOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateRestoreOperationRequest
        AzureWorkloadSAPHanaRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaRestoreRequest
        AzureWorkloadSAPHanaPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaPointInTimeRestoreRequest
        AzureWorkloadSQLPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLPointInTimeRestoreRequest
        AzureWorkloadSQLRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLRestoreRequest
        ValidationStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
        ProtectionPolicyResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResourceList
        Resource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
        DPMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItem
        DataSourceType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DataSourceType
        GenericProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectedItem
        GenericProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectionPolicy
        HttpStatusCode = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HttpStatusCode
        IaasVMRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::IaasVMRestoreRequest
        LogSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LogSchedulePolicy
        LongTermRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermRetentionPolicy
        LongTermSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermSchedulePolicy
        MabFileFolderProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItem
        MabProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabProtectionPolicy
        ProtectedItemResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResource
        ProtectionPolicyResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResource
        CreateMode = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CreateMode
        SimpleRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleRetentionPolicy
        SimpleSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleSchedulePolicy
        ProtectionState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionState
        ErrorDetail = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ErrorDetail
        HealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthStatus
        RecoveryType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RecoveryType
        CopyOptions = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CopyOptions
        RestoreRequestType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequestType
        ProtectedItemState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemState
        LastBackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LastBackupStatus
        ProtectedItemHealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemHealthStatus
        SQLDataDirectoryType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryType
        WorkloadType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
        OverwriteOptions = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OverwriteOptions
        BackupManagementType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
        HealthState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthState
        WorkloadItemType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadItemType
        ProtectionStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
        RetentionDurationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDurationType
        DayOfWeek = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DayOfWeek
        RetentionScheduleFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionScheduleFormat
        WeekOfMonth = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeekOfMonth
        MonthOfYear = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthOfYear
        Settings = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Settings
        RetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionPolicy
        ScheduleRunType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ScheduleRunType
        NameInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::NameInfo
        UsagesUnit = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
        RestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequest
        SubProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SubProtectionPolicy
        AzureFileshareProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItemExtendedInfo
        SchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SchedulePolicy
        RestoreFileSpecs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreFileSpecs
        ResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
        DpmErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
        OperationWorkerResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationWorkerResponse
        OperationResultInfoBase = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBase
        MabJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
        ValidateOperationsResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationsResponse
        AzureWorkloadErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadErrorInfo
        AzureIaaSVMErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
        AzureIaaSVMJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
        AzureWorkloadJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobExtendedInfo
      end

      class RecoveryServicesBackupManagementClass
        attr_reader :operations, :backup_resource_vault_configs, :backup_engines, :protection_container_refresh_operation_results, :protectable_containers, :protection_containers, :backup_workload_items, :protection_container_operation_results, :protected_items, :backups, :protected_item_operation_results, :protected_item_operation_statuses, :recovery_points, :item_level_recovery_connections, :restores, :job_cancellations, :job_operation_results, :backup_operation_results, :backup_operation_statuses, :protection_policies, :protection_policy_operation_results, :protection_policy_operation_statuses, :backup_protectable_items, :backup_protection_containers, :security_pins, :backup_resource_storage_configs, :operation, :protection_intent_operations, :backup_status, :feature_support, :backup_jobs, :job_details, :export_jobs_operation_results, :backup_policies, :backup_protected_items, :backup_usage_summaries, :jobs, :configurable, :base_url, :options, :model_classes

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
          @operation = @client_2.operation
          @protection_intent_operations = @client_2.protection_intent_operations
          @backup_status = @client_2.backup_status
          @feature_support = @client_2.feature_support
          @backup_jobs = @client_2.backup_jobs
          @job_details = @client_2.job_details
          @export_jobs_operation_results = @client_2.export_jobs_operation_results
          @backup_policies = @client_2.backup_policies
          @backup_protected_items = @client_2.backup_protected_items
          @backup_usage_summaries = @client_2.backup_usage_summaries
          @jobs = @client_2.jobs

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
          def client_discovery_for_log_specification
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
          end
          def client_discovery_value_for_single_api
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
          end
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
          def azure_workload_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainerExtendedInfo
          end
          def dpmcontainer_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
          end
          def inquiry_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryInfo
          end
          def protection_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
          end
          def bmscontainers_inquiry_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainersInquiryQueryObject
          end
          def bmscontainer_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
          end
          def recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPoint
          end
          def bmsbackup_engines_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
          end
          def bmsbackup_engine_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
          end
          def bekdetails
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BEKDetails
          end
          def generic_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainerExtendedInfo
          end
          def token_information
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
          end
          def backup_resource_vault_config
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfig
          end
          def workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItem
          end
          def operation_status_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
          end
          def backup_resource_config
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
          end
          def ilrrequest
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
          end
          def sqldata_directory
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SQLDataDirectory
          end
          def container_identity_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerIdentityInfo
          end
          def operation_status_error
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusError
          end
          def bmsworkload_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSWorkloadItemQueryObject
          end
          def instant_item_recovery_target
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
          end
          def bmsrpquery_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRPQueryObject
          end
          def inquiry_validation
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryValidation
          end
          def bmsrefresh_containers_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRefreshContainersQueryObject
          end
          def workload_inquiry_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadInquiryDetails
          end
          def backup_engine_base
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
          end
          def distributed_nodes_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DistributedNodesInfo
          end
          def backup_engine_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
          end
          def key_and_secret_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KeyAndSecretDetails
          end
          def kekdetails
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KEKDetails
          end
          def workload_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
          end
          def protectable_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainer
          end
          def point_in_time_range
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PointInTimeRange
          end
          def client_script_for_connect
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
          end
          def mab_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
          end
          def pre_backup_validation
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PreBackupValidation
          end
          def mabcontainer_health_details
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MABContainerHealthDetails
          end
          def bmspoquery_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
          end
          def azure_workload_sqlrecovery_point_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPointExtendedInfo
          end
          def recovery_point_tier_information
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierInformation
          end
          def get_protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GetProtectedItemQueryObject
          end
          def operation_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus
          end
          def azure_backup_server_engine
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
          end
          def azure_file_share_backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareBackupRequest
          end
          def azure_backup_server_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
          end
          def azure_file_share_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareProtectableItem
          end
          def azure_iaa_sclassic_compute_vmcontainer
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
          end
          def azure_file_share_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareRecoveryPoint
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
          def azure_vm_workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadItem
          end
          def azure_vm_workload_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadProtectableItem
          end
          def azure_vm_workload_saphana_database_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaDatabaseProtectableItem
          end
          def azure_vm_workload_saphana_database_workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaDatabaseWorkloadItem
          end
          def azure_vm_workload_saphana_system_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaSystemProtectableItem
          end
          def azure_vm_workload_saphana_system_workload_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVmWorkloadSAPHanaSystemWorkloadItem
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
          def azure_workload_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainer
          end
          def azure_sqlagworkload_container_protection_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSQLAGWorkloadContainerProtectionContainer
          end
          def azure_vmapp_container_protection_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureVMAppContainerProtectionContainer
          end
          def azure_workload_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadRecoveryPoint
          end
          def azure_workload_saphana_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSAPHanaRecoveryPoint
          end
          def azure_workload_saphana_point_in_time_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSAPHanaPointInTimeRecoveryPoint
          end
          def azure_workload_sqlrecovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLRecoveryPoint
          end
          def azure_workload_sqlpoint_in_time_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadSQLPointInTimeRecoveryPoint
          end
          def backup_engine_base_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResource
          end
          def backup_request_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequestResource
          end
          def backup_engine_base_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResourceList
          end
          def backup_resource_vault_config_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfigResource
          end
          def backup_resource_config_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfigResource
          end
          def dpm_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
          end
          def dpm_backup_engine
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
          end
          def generic_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainer
          end
          def iaas_vmbackup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
          end
          def generic_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericRecoveryPoint
          end
          def iaas_vmilrregistration_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
          end
          def iaa_svmcontainer
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
          end
          def iaas_vmrecovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRecoveryPoint
          end
          def iaa_svmprotectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
          end
          def ilrrequest_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequestResource
          end
          def mab_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
          end
          def operation_status_jobs_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
          end
          def operation_status_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
          end
          def protectable_container_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResource
          end
          def operation_status_provision_ilrextended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
          end
          def protectable_container_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResourceList
          end
          def protection_container_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
          end
          def protection_container_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
          end
          def recovery_point_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResource
          end
          def restore_request_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestResource
          end
          def recovery_point_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResourceList
          end
          def workload_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList
          end
          def workload_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResource
          end
          def workload_protectable_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
          end
          def workload_protectable_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
          end
          def azure_file_share_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareType
          end
          def inquiry_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryStatus
          end
          def restore_point_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestorePointType
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
          def recovery_point_tier_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierStatus
          end
          def recovery_point_tier_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierType
          end
          def operation_status_values
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusValues
          end
          def backup_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
          end
          def backup_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupType
          end
          def backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
          end
          def storage_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageType
          end
          def validate_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationRequest
          end
          def retention_duration
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDuration
          end
          def daily_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionFormat
          end
          def mab_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
          end
          def mab_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
          end
          def azure_storage_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobTaskDetails
          end
          def protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
          end
          def azure_vmresource_feature_support_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
          end
          def protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemQueryObject
          end
          def backup_management_usage
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
          end
          def pre_validate_enable_backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
          end
          def backup_status_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
          end
          def azure_vm_workload_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItemExtendedInfo
          end
          def bmsbackup_summaries_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
          end
          def backup_status_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
          end
          def backup_management_usage_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
          end
          def feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
          end
          def azure_storage_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageErrorInfo
          end
          def protection_policy_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyQueryObject
          end
          def dpm_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
          end
          def azure_iaa_svmjob_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
          end
          def pre_validate_enable_backup_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
          end
          def azure_sql_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItemExtendedInfo
          end
          def azure_backup_goal_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureBackupGoalFeatureSupportRequest
          end
          def protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicy
          end
          def azure_iaa_svmjob
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
          end
          def azure_resource_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
          end
          def validate_operation_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationResponse
          end
          def job_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
          end
          def protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItem
          end
          def target_afsrestore_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetAFSRestoreInfo
          end
          def target_restore_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetRestoreInfo
          end
          def azure_iaa_svmhealth_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMHealthDetails
          end
          def yearly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::YearlyRetentionSchedule
          end
          def day
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Day
          end
          def monthly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthlyRetentionSchedule
          end
          def weekly_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionFormat
          end
          def encryption_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::EncryptionDetails
          end
          def azure_vmresource_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
          end
          def dpmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItemExtendedInfo
          end
          def weekly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionSchedule
          end
          def sqldata_directory_mapping
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryMapping
          end
          def azure_storage_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJob
          end
          def mab_file_folder_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItemExtendedInfo
          end
          def azure_workload_auto_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadAutoProtectionIntent
          end
          def azure_workload_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJob
          end
          def azure_recovery_service_vault_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureRecoveryServiceVaultProtectionIntent
          end
          def dpm_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
          end
          def dpm_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
          end
          def azure_fileshare_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItem
          end
          def azure_storage_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobExtendedInfo
          end
          def azure_file_share_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareRestoreRequest
          end
          def azure_file_share_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareProtectionPolicy
          end
          def operation_result_info_base_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBaseResource
          end
          def azure_iaa_svmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItem
          end
          def azure_iaa_sclassic_compute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSClassicComputeVMProtectedItem
          end
          def job_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
          end
          def mab_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
          end
          def azure_iaa_scompute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSComputeVMProtectedItem
          end
          def azure_iaa_svmprotection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectionPolicy
          end
          def protected_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResourceList
          end
          def azure_sql_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItem
          end
          def azure_sql_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectionPolicy
          end
          def azure_iaa_svmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItemExtendedInfo
          end
          def validate_iaas_vmrestore_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateIaasVMRestoreOperationRequest
          end
          def daily_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionSchedule
          end
          def support_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
          end
          def azure_workload_sqlauto_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLAutoProtectionIntent
          end
          def azure_vm_workload_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItem
          end
          def azure_vm_workload_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectionPolicy
          end
          def job_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
          end
          def azure_vm_workload_saphana_database_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSAPHanaDatabaseProtectedItem
          end
          def job_supported_action
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
          end
          def operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfo
          end
          def job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
          end
          def azure_workload_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobTaskDetails
          end
          def protection_intent_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
          end
          def azure_vm_workload_sqldatabase_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSQLDatabaseProtectedItem
          end
          def export_jobs_operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ExportJobsOperationResultInfo
          end
          def job_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
          end
          def fabric_name
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
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
          def azure_workload_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadRestoreRequest
          end
          def validate_restore_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateRestoreOperationRequest
          end
          def azure_workload_saphana_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaRestoreRequest
          end
          def azure_workload_saphana_point_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaPointInTimeRestoreRequest
          end
          def azure_workload_sqlpoint_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLPointInTimeRestoreRequest
          end
          def azure_workload_sqlrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLRestoreRequest
          end
          def validation_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
          end
          def protection_policy_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResourceList
          end
          def resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
          end
          def dpmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItem
          end
          def data_source_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DataSourceType
          end
          def generic_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectedItem
          end
          def generic_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectionPolicy
          end
          def http_status_code
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HttpStatusCode
          end
          def iaas_vmrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::IaasVMRestoreRequest
          end
          def log_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LogSchedulePolicy
          end
          def long_term_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermRetentionPolicy
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
          def protected_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResource
          end
          def protection_policy_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResource
          end
          def create_mode
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CreateMode
          end
          def simple_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleRetentionPolicy
          end
          def simple_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleSchedulePolicy
          end
          def protection_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionState
          end
          def error_detail
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ErrorDetail
          end
          def health_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthStatus
          end
          def recovery_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RecoveryType
          end
          def copy_options
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CopyOptions
          end
          def restore_request_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequestType
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
          def sqldata_directory_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryType
          end
          def workload_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
          end
          def overwrite_options
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OverwriteOptions
          end
          def backup_management_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
          end
          def health_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthState
          end
          def workload_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadItemType
          end
          def protection_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
          end
          def retention_duration_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDurationType
          end
          def day_of_week
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DayOfWeek
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
          def settings
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Settings
          end
          def retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionPolicy
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
          def restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequest
          end
          def sub_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SubProtectionPolicy
          end
          def azure_fileshare_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItemExtendedInfo
          end
          def schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SchedulePolicy
          end
          def restore_file_specs
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreFileSpecs
          end
          def resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
          end
          def dpm_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
          end
          def operation_worker_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationWorkerResponse
          end
          def operation_result_info_base
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBase
          end
          def mab_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
          end
          def validate_operations_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationsResponse
          end
          def azure_workload_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadErrorInfo
          end
          def azure_iaa_svmerror_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
          end
          def azure_iaa_svmjob_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
          end
          def azure_workload_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobExtendedInfo
          end
        end
      end
    end
  end
end
