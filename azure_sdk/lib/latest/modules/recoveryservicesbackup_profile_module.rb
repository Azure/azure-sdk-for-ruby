# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_backup'

module Azure::Profiles::Latest
  module RecoveryServicesBackup
    module Mgmt
      Operations = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Operations
      BackupEngines = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupEngines
      ProtectionContainerRefreshOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainerRefreshOperationResults
      ProtectableContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectableContainers
      ProtectionContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainers
      BackupWorkloadItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupWorkloadItems
      ProtectionContainerOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainerOperationResults
      Backups = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Backups
      ProtectedItemOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectedItemOperationStatuses
      ItemLevelRecoveryConnections = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ItemLevelRecoveryConnections
      BackupOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupOperationResults
      BackupOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupOperationStatuses
      ProtectionPolicyOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicyOperationStatuses
      BackupProtectableItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectableItems
      BackupProtectionContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectionContainers
      SecurityPINs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::SecurityPINs
      BackupResourceStorageConfigs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupResourceStorageConfigs
      ProtectionIntentOperations = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ProtectionIntentOperations
      BackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupStatus
      FeatureSupport = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::FeatureSupport
      BackupUsageSummaries = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupUsageSummaries
      BackupResourceVaultConfigs = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::BackupResourceVaultConfigs
      ProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::ProtectedItems
      ProtectedItemOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::ProtectedItemOperationResults
      RecoveryPoints = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::RecoveryPoints
      Restores = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Restores
      BackupPolicies = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::BackupPolicies
      ProtectionPolicies = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::ProtectionPolicies
      ProtectionPolicyOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::ProtectionPolicyOperationResults
      BackupJobs = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::BackupJobs
      JobDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::JobDetails
      JobCancellations = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::JobCancellations
      JobOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::JobOperationResults
      ExportJobsOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::ExportJobsOperationResults
      Jobs = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Jobs
      BackupProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::BackupProtectedItems
      Operation = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Operation
      PrivateEndpointConnectionOperations = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::PrivateEndpointConnectionOperations

      module Models
        ClientDiscoveryForProperties = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForProperties
        ClientDiscoveryDisplay = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryDisplay
        ClientDiscoveryValueForSingleApi = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
        ClientDiscoveryForServiceSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForServiceSpecification
        ClientDiscoveryResponse = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryResponse
        ClientDiscoveryForLogSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
        AzureWorkloadContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureWorkloadContainerExtendedInfo
        DPMContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
        InquiryInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryInfo
        ProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
        BMSContainersInquiryQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainersInquiryQueryObject
        BMSContainerQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
        BMSBackupEnginesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
        BMSBackupEngineQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
        GenericContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainerExtendedInfo
        TokenInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
        WorkloadItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItem
        OperationStatusExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
        BackupResourceConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
        ILRRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
        BackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
        ContainerIdentityInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerIdentityInfo
        BMSWorkloadItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSWorkloadItemQueryObject
        InstantItemRecoveryTarget = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
        InquiryValidation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryValidation
        BMSRefreshContainersQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRefreshContainersQueryObject
        WorkloadInquiryDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadInquiryDetails
        BackupEngineBase = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
        DistributedNodesInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DistributedNodesInfo
        BackupEngineExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
        WorkloadProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
        ProtectableContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainer
        ClientScriptForConnect = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
        MabContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
        PreBackupValidation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::PreBackupValidation
        MABContainerHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MABContainerHealthDetails
        BMSPOQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
        AzureBackupServerContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
        AzureBackupServerEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
        AzureFileShareBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareBackupRequest
        AzureFileShareProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareProtectableItem
        AzureIaaSClassicComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
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
        BackupEngineBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResource
        BackupEngineBaseResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResourceList
        BackupRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequestResource
        BackupResourceConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfigResource
        DpmBackupEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
        DpmContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
        GenericContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainer
        IaasVMBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
        IaaSVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
        IaasVMILRRegistrationRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
        IaaSVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
        ILRRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequestResource
        MabContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
        OperationStatusJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
        OperationStatusJobsExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
        OperationStatusProvisionILRExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
        ProtectableContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResource
        ProtectableContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResourceList
        ProtectionContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
        ProtectionContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
        WorkloadItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResource
        WorkloadItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList
        WorkloadProtectableItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
        WorkloadProtectableItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
        AzureFileShareType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareType
        InquiryStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryStatus
        BackupType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupType
        ContainerType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
        BackupItemType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
        ProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
        AzureVMResourceFeatureSupportResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
        NameInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::NameInfo
        PreValidateEnableBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
        BackupManagementUsage = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
        BackupManagementUsageList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
        BackupStatusRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
        BackupStatusResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
        BMSBackupSummariesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
        PreValidateEnableBackupResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
        FeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
        AzureBackupGoalFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureBackupGoalFeatureSupportRequest
        AzureRecoveryServiceVaultProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureRecoveryServiceVaultProtectionIntent
        AzureResourceProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
        AzureVMResourceFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
        AzureWorkloadAutoProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadAutoProtectionIntent
        AzureWorkloadSQLAutoProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLAutoProtectionIntent
        ProtectionIntentResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
        SupportStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
        WorkloadItemType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadItemType
        UsagesUnit = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
        ProtectionStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
        FabricName = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
        Type = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Type
        ValidationStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
        DailyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DailyRetentionFormat
        AzureFileshareProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileshareProtectedItemExtendedInfo
        RetentionDuration = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionDuration
        MabJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabJobExtendedInfo
        RestoreFileSpecs = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreFileSpecs
        AzureWorkloadErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadErrorInfo
        AzureWorkloadJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadJobTaskDetails
        SchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SchedulePolicy
        AzureWorkloadJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadJobExtendedInfo
        SubProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SubProtectionPolicy
        MabJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabJobTaskDetails
        ValidateOperationResponse = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateOperationResponse
        PointInTimeRange = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::PointInTimeRange
        RestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreRequest
        MabFileFolderProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabFileFolderProtectedItemExtendedInfo
        AzureIaaSVMHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMHealthDetails
        MabErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabErrorInfo
        AzureIaaSVMJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMJobExtendedInfo
        YearlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::YearlyRetentionSchedule
        AzureIaaSVMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMProtectedItemExtendedInfo
        TargetRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::TargetRestoreInfo
        ExtendedProperties = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ExtendedProperties
        MonthlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MonthlyRetentionSchedule
        InstantRPAdditionalDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::InstantRPAdditionalDetails
        WeeklyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WeeklyRetentionFormat
        AzureSqlProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureSqlProtectedItemExtendedInfo
        WeeklyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WeeklyRetentionSchedule
        AzureStorageErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageErrorInfo
        JobQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobQueryObject
        AzureStorageJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageJobTaskDetails
        Job = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::Job
        ProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemQueryObject
        RecoveryPointDiskConfiguration = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointDiskConfiguration
        AzureVmWorkloadProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadProtectedItemExtendedInfo
        RecoveryPointTierInformation = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointTierInformation
        OperationWorkerResponse = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationWorkerResponse
        SQLDataDirectory = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SQLDataDirectory
        TargetAFSRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::TargetAFSRestoreInfo
        AzureWorkloadSQLRecoveryPointExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLRecoveryPointExtendedInfo
        RetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionPolicy
        KeyAndSecretDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::KeyAndSecretDetails
        ValidateOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateOperationRequest
        SQLDataDirectoryMapping = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SQLDataDirectoryMapping
        AzureIaaSVMJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMJobTaskDetails
        KEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::KEKDetails
        DiskExclusionProperties = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DiskExclusionProperties
        BackupResourceVaultConfig = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BackupResourceVaultConfig
        RecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPoint
        GetProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GetProtectedItemQueryObject
        ProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicy
        BEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BEKDetails
        ErrorDetail = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ErrorDetail
        BMSRPQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BMSRPQueryObject
        OperationResultInfoBase = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationResultInfoBase
        DiskInformation = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DiskInformation
        ValidateOperationsResponse = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateOperationsResponse
        Day = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::Day
        ResourceList = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ResourceList
        DPMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DPMProtectedItemExtendedInfo
        AzureStorageJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageJobExtendedInfo
        EncryptionDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::EncryptionDetails
        Settings = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::Settings
        DailyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DailyRetentionSchedule
        ProtectionPolicyQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicyQueryObject
        DpmErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmErrorInfo
        AzureIaaSVMErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMErrorInfo
        DpmJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmJobTaskDetails
        ProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItem
        DpmJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmJobExtendedInfo
        AzureFileshareProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileshareProtectedItem
        AzureFileShareRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileShareRecoveryPoint
        AzureFileShareRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileShareRestoreRequest
        AzureVmWorkloadProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadProtectionPolicy
        AzureFileShareProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileShareProtectionPolicy
        AzureIaaSVMJob = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMJob
        AzureIaaSVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMProtectedItem
        AzureIaaSClassicComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSClassicComputeVMProtectedItem
        AzureIaaSComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSComputeVMProtectedItem
        AzureIaaSVMProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMProtectionPolicy
        AzureSqlProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureSqlProtectedItem
        AzureSqlProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureSqlProtectionPolicy
        AzureStorageJob = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageJob
        AzureVmWorkloadProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadProtectedItem
        AzureVmWorkloadSAPAseDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadSAPAseDatabaseProtectedItem
        AzureVmWorkloadSAPHanaDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadSAPHanaDatabaseProtectedItem
        AzureVmWorkloadSQLDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadSQLDatabaseProtectedItem
        AzureWorkloadJob = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadJob
        AzureWorkloadRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadRecoveryPoint
        AzureWorkloadPointInTimeRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadPointInTimeRecoveryPoint
        AzureWorkloadRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadRestoreRequest
        AzureWorkloadPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadPointInTimeRestoreRequest
        AzureWorkloadSAPHanaPointInTimeRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaPointInTimeRecoveryPoint
        AzureWorkloadSAPHanaPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaPointInTimeRestoreRequest
        AzureWorkloadSAPHanaRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaRecoveryPoint
        AzureWorkloadSAPHanaRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaRestoreRequest
        AzureWorkloadSQLRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLRecoveryPoint
        AzureWorkloadSQLPointInTimeRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLPointInTimeRecoveryPoint
        AzureWorkloadSQLRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLRestoreRequest
        AzureWorkloadSQLPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLPointInTimeRestoreRequest
        BackupResourceVaultConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BackupResourceVaultConfigResource
        DpmJob = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmJob
        DPMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DPMProtectedItem
        ExportJobsOperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ExportJobsOperationResultInfo
        GenericProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GenericProtectionPolicy
        GenericProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GenericProtectedItem
        GenericRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GenericRecoveryPoint
        IaasVMRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::IaasVMRecoveryPoint
        IaasVMRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::IaasVMRestoreRequest
        JobResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobResource
        JobResourceList = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobResourceList
        LogSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LogSchedulePolicy
        LongTermRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LongTermRetentionPolicy
        LongTermSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LongTermSchedulePolicy
        MabFileFolderProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabFileFolderProtectedItem
        MabJob = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabJob
        MabProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabProtectionPolicy
        OperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationResultInfo
        OperationResultInfoBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationResultInfoBaseResource
        ProtectedItemResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemResource
        ProtectedItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemResourceList
        ProtectionPolicyResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicyResource
        ProtectionPolicyResourceList = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicyResourceList
        RecoveryPointResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointResource
        RecoveryPointResourceList = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointResourceList
        RestoreRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreRequestResource
        SimpleRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SimpleRetentionPolicy
        SimpleSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SimpleSchedulePolicy
        ValidateRestoreOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateRestoreOperationRequest
        ValidateIaasVMRestoreOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateIaasVMRestoreOperationRequest
        ProtectionState = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionState
        HealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::HealthStatus
        RecoveryType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryType
        CopyOptions = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::CopyOptions
        RestoreRequestType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreRequestType
        WorkloadType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WorkloadType
        PolicyType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::PolicyType
        JobSupportedAction = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobSupportedAction
        ProtectedItemState = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemState
        LastBackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LastBackupStatus
        ProtectedItemHealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemHealthStatus
        RestorePointType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestorePointType
        OverwriteOptions = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OverwriteOptions
        RecoveryMode = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryMode
        SQLDataDirectoryType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SQLDataDirectoryType
        StorageType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::StorageType
        StorageTypeState = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::StorageTypeState
        EnhancedSecurityState = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::EnhancedSecurityState
        SoftDeleteFeatureState = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SoftDeleteFeatureState
        RestorePointQueryType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestorePointQueryType
        RetentionDurationType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionDurationType
        RecoveryPointTierType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointTierType
        RecoveryPointTierStatus = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointTierStatus
        BackupManagementType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BackupManagementType
        JobStatus = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobStatus
        JobOperationType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobOperationType
        DayOfWeek = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DayOfWeek
        RetentionScheduleFormat = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionScheduleFormat
        WeekOfMonth = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WeekOfMonth
        MonthOfYear = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MonthOfYear
        MabServerType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabServerType
        HttpStatusCode = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::HttpStatusCode
        DataSourceType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DataSourceType
        CreateMode = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::CreateMode
        HealthState = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::HealthState
        ScheduleRunType = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ScheduleRunType
        PrivateEndpointConnection = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpointConnection
        OperationStatusError = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::OperationStatusError
        PrivateEndpoint = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpoint
        Resource = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::Resource
        OperationStatus = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::OperationStatus
        ErrorAdditionalInfo = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::ErrorAdditionalInfo
        PrivateLinkServiceConnectionState = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateLinkServiceConnectionState
        ErrorResponse = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::ErrorResponse
        PrivateEndpointConnectionResource = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpointConnectionResource
        OperationStatusValues = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::OperationStatusValues
        ProvisioningState = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::ProvisioningState
        PrivateEndpointConnectionStatus = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpointConnectionStatus
      end

      class RecoveryServicesBackupManagementClass
        attr_reader :operations, :backup_engines, :protection_container_refresh_operation_results, :protectable_containers, :protection_containers, :backup_workload_items, :protection_container_operation_results, :backups, :protected_item_operation_statuses, :item_level_recovery_connections, :backup_operation_results, :backup_operation_statuses, :protection_policy_operation_statuses, :backup_protectable_items, :backup_protection_containers, :security_pins, :backup_resource_storage_configs, :protection_intent_operations, :backup_status, :feature_support, :backup_usage_summaries, :backup_resource_vault_configs, :protected_items, :protected_item_operation_results, :recovery_points, :restores, :backup_policies, :protection_policies, :protection_policy_operation_results, :backup_jobs, :job_details, :job_cancellations, :job_operation_results, :export_jobs_operation_results, :jobs, :backup_protected_items, :operation, :private_endpoint_connection_operations, :configurable, :base_url, :options, :model_classes

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
          @backup_engines = @client_1.backup_engines
          @protection_container_refresh_operation_results = @client_1.protection_container_refresh_operation_results
          @protectable_containers = @client_1.protectable_containers
          @protection_containers = @client_1.protection_containers
          @backup_workload_items = @client_1.backup_workload_items
          @protection_container_operation_results = @client_1.protection_container_operation_results
          @backups = @client_1.backups
          @protected_item_operation_statuses = @client_1.protected_item_operation_statuses
          @item_level_recovery_connections = @client_1.item_level_recovery_connections
          @backup_operation_results = @client_1.backup_operation_results
          @backup_operation_statuses = @client_1.backup_operation_statuses
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
          @protection_intent_operations = @client_2.protection_intent_operations
          @backup_status = @client_2.backup_status
          @feature_support = @client_2.feature_support
          @backup_usage_summaries = @client_2.backup_usage_summaries

          @client_3 = Azure::RecoveryServicesBackup::Mgmt::V2019_05_13::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)

          @client_4 = Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_4.respond_to?(:subscription_id))
            @client_4.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_4)
          @backup_resource_vault_configs = @client_4.backup_resource_vault_configs
          @protected_items = @client_4.protected_items
          @protected_item_operation_results = @client_4.protected_item_operation_results
          @recovery_points = @client_4.recovery_points
          @restores = @client_4.restores
          @backup_policies = @client_4.backup_policies
          @protection_policies = @client_4.protection_policies
          @protection_policy_operation_results = @client_4.protection_policy_operation_results
          @backup_jobs = @client_4.backup_jobs
          @job_details = @client_4.job_details
          @job_cancellations = @client_4.job_cancellations
          @job_operation_results = @client_4.job_operation_results
          @export_jobs_operation_results = @client_4.export_jobs_operation_results
          @jobs = @client_4.jobs
          @backup_protected_items = @client_4.backup_protected_items
          @operation = @client_4.operation

          @client_5 = Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_5.respond_to?(:subscription_id))
            @client_5.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_5)
          @private_endpoint_connection_operations = @client_5.private_endpoint_connection_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/RecoveryServicesBackup/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_5.respond_to?method
            @client_5.send(method, *args)
          elsif @client_4.respond_to?method
            @client_4.send(method, *args)
          elsif @client_3.respond_to?method
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

        class ModelClasses
          def client_discovery_for_properties
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForProperties
          end
          def client_discovery_display
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryDisplay
          end
          def client_discovery_value_for_single_api
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
          end
          def client_discovery_for_service_specification
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForServiceSpecification
          end
          def client_discovery_response
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryResponse
          end
          def client_discovery_for_log_specification
            Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
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
          def bmsbackup_engines_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
          end
          def bmsbackup_engine_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
          end
          def generic_container_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainerExtendedInfo
          end
          def token_information
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
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
          def backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
          end
          def container_identity_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerIdentityInfo
          end
          def bmsworkload_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSWorkloadItemQueryObject
          end
          def instant_item_recovery_target
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
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
          def workload_protectable_item
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
          end
          def protectable_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainer
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
          def dpm_backup_engine
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
          end
          def dpm_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
          end
          def generic_container
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericContainer
          end
          def iaas_vmbackup_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
          end
          def iaa_svmcontainer
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
          end
          def iaas_vmilrregistration_request
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
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
          def operation_status_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
          end
          def operation_status_jobs_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
          end
          def operation_status_provision_ilrextended_info
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
          end
          def protectable_container_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResource
          end
          def protectable_container_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectableContainerResourceList
          end
          def protection_container_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
          end
          def protection_container_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
          end
          def workload_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResource
          end
          def workload_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList
          end
          def workload_protectable_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
          end
          def workload_protectable_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
          end
          def azure_file_share_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureFileShareType
          end
          def inquiry_status
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InquiryStatus
          end
          def backup_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupType
          end
          def container_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
          end
          def backup_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
          end
          def protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
          end
          def azure_vmresource_feature_support_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
          end
          def name_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::NameInfo
          end
          def pre_validate_enable_backup_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
          end
          def backup_management_usage
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
          end
          def backup_management_usage_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
          end
          def backup_status_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
          end
          def backup_status_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
          end
          def bmsbackup_summaries_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
          end
          def pre_validate_enable_backup_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
          end
          def feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
          end
          def azure_backup_goal_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureBackupGoalFeatureSupportRequest
          end
          def azure_recovery_service_vault_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureRecoveryServiceVaultProtectionIntent
          end
          def azure_resource_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
          end
          def azure_vmresource_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
          end
          def azure_workload_auto_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadAutoProtectionIntent
          end
          def azure_workload_sqlauto_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLAutoProtectionIntent
          end
          def protection_intent_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
          end
          def support_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
          end
          def workload_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadItemType
          end
          def usages_unit
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
          end
          def protection_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
          end
          def fabric_name
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
          end
          def type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Type
          end
          def validation_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
          end
          def daily_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DailyRetentionFormat
          end
          def azure_fileshare_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileshareProtectedItemExtendedInfo
          end
          def retention_duration
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionDuration
          end
          def mab_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabJobExtendedInfo
          end
          def restore_file_specs
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreFileSpecs
          end
          def azure_workload_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadErrorInfo
          end
          def azure_workload_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadJobTaskDetails
          end
          def schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SchedulePolicy
          end
          def azure_workload_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadJobExtendedInfo
          end
          def sub_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SubProtectionPolicy
          end
          def mab_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabJobTaskDetails
          end
          def validate_operation_response
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateOperationResponse
          end
          def point_in_time_range
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::PointInTimeRange
          end
          def restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreRequest
          end
          def mab_file_folder_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabFileFolderProtectedItemExtendedInfo
          end
          def azure_iaa_svmhealth_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMHealthDetails
          end
          def mab_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabErrorInfo
          end
          def azure_iaa_svmjob_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMJobExtendedInfo
          end
          def yearly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::YearlyRetentionSchedule
          end
          def azure_iaa_svmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMProtectedItemExtendedInfo
          end
          def target_restore_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::TargetRestoreInfo
          end
          def extended_properties
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ExtendedProperties
          end
          def monthly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MonthlyRetentionSchedule
          end
          def instant_rpadditional_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::InstantRPAdditionalDetails
          end
          def weekly_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WeeklyRetentionFormat
          end
          def azure_sql_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureSqlProtectedItemExtendedInfo
          end
          def weekly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WeeklyRetentionSchedule
          end
          def azure_storage_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageErrorInfo
          end
          def job_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobQueryObject
          end
          def azure_storage_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageJobTaskDetails
          end
          def job
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::Job
          end
          def protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemQueryObject
          end
          def recovery_point_disk_configuration
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointDiskConfiguration
          end
          def azure_vm_workload_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadProtectedItemExtendedInfo
          end
          def recovery_point_tier_information
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointTierInformation
          end
          def operation_worker_response
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationWorkerResponse
          end
          def sqldata_directory
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SQLDataDirectory
          end
          def target_afsrestore_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::TargetAFSRestoreInfo
          end
          def azure_workload_sqlrecovery_point_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLRecoveryPointExtendedInfo
          end
          def retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionPolicy
          end
          def key_and_secret_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::KeyAndSecretDetails
          end
          def validate_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateOperationRequest
          end
          def sqldata_directory_mapping
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SQLDataDirectoryMapping
          end
          def azure_iaa_svmjob_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMJobTaskDetails
          end
          def kekdetails
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::KEKDetails
          end
          def disk_exclusion_properties
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DiskExclusionProperties
          end
          def backup_resource_vault_config
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BackupResourceVaultConfig
          end
          def recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPoint
          end
          def get_protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GetProtectedItemQueryObject
          end
          def protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicy
          end
          def bekdetails
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BEKDetails
          end
          def error_detail
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ErrorDetail
          end
          def bmsrpquery_object
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BMSRPQueryObject
          end
          def operation_result_info_base
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationResultInfoBase
          end
          def disk_information
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DiskInformation
          end
          def validate_operations_response
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateOperationsResponse
          end
          def day
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::Day
          end
          def resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ResourceList
          end
          def dpmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DPMProtectedItemExtendedInfo
          end
          def azure_storage_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageJobExtendedInfo
          end
          def encryption_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::EncryptionDetails
          end
          def settings
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::Settings
          end
          def daily_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DailyRetentionSchedule
          end
          def protection_policy_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicyQueryObject
          end
          def dpm_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmErrorInfo
          end
          def azure_iaa_svmerror_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMErrorInfo
          end
          def dpm_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmJobTaskDetails
          end
          def protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItem
          end
          def dpm_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmJobExtendedInfo
          end
          def azure_fileshare_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileshareProtectedItem
          end
          def azure_file_share_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileShareRecoveryPoint
          end
          def azure_file_share_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileShareRestoreRequest
          end
          def azure_vm_workload_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadProtectionPolicy
          end
          def azure_file_share_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureFileShareProtectionPolicy
          end
          def azure_iaa_svmjob
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMJob
          end
          def azure_iaa_svmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMProtectedItem
          end
          def azure_iaa_sclassic_compute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSClassicComputeVMProtectedItem
          end
          def azure_iaa_scompute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSComputeVMProtectedItem
          end
          def azure_iaa_svmprotection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureIaaSVMProtectionPolicy
          end
          def azure_sql_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureSqlProtectedItem
          end
          def azure_sql_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureSqlProtectionPolicy
          end
          def azure_storage_job
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureStorageJob
          end
          def azure_vm_workload_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadProtectedItem
          end
          def azure_vm_workload_sapase_database_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadSAPAseDatabaseProtectedItem
          end
          def azure_vm_workload_saphana_database_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadSAPHanaDatabaseProtectedItem
          end
          def azure_vm_workload_sqldatabase_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureVmWorkloadSQLDatabaseProtectedItem
          end
          def azure_workload_job
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadJob
          end
          def azure_workload_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadRecoveryPoint
          end
          def azure_workload_point_in_time_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadPointInTimeRecoveryPoint
          end
          def azure_workload_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadRestoreRequest
          end
          def azure_workload_point_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadPointInTimeRestoreRequest
          end
          def azure_workload_saphana_point_in_time_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaPointInTimeRecoveryPoint
          end
          def azure_workload_saphana_point_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaPointInTimeRestoreRequest
          end
          def azure_workload_saphana_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaRecoveryPoint
          end
          def azure_workload_saphana_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSAPHanaRestoreRequest
          end
          def azure_workload_sqlrecovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLRecoveryPoint
          end
          def azure_workload_sqlpoint_in_time_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLPointInTimeRecoveryPoint
          end
          def azure_workload_sqlrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLRestoreRequest
          end
          def azure_workload_sqlpoint_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::AzureWorkloadSQLPointInTimeRestoreRequest
          end
          def backup_resource_vault_config_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BackupResourceVaultConfigResource
          end
          def dpm_job
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DpmJob
          end
          def dpmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DPMProtectedItem
          end
          def export_jobs_operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ExportJobsOperationResultInfo
          end
          def generic_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GenericProtectionPolicy
          end
          def generic_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GenericProtectedItem
          end
          def generic_recovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::GenericRecoveryPoint
          end
          def iaas_vmrecovery_point
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::IaasVMRecoveryPoint
          end
          def iaas_vmrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::IaasVMRestoreRequest
          end
          def job_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobResource
          end
          def job_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobResourceList
          end
          def log_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LogSchedulePolicy
          end
          def long_term_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LongTermRetentionPolicy
          end
          def long_term_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LongTermSchedulePolicy
          end
          def mab_file_folder_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabFileFolderProtectedItem
          end
          def mab_job
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabJob
          end
          def mab_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabProtectionPolicy
          end
          def operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationResultInfo
          end
          def operation_result_info_base_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OperationResultInfoBaseResource
          end
          def protected_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemResource
          end
          def protected_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemResourceList
          end
          def protection_policy_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicyResource
          end
          def protection_policy_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionPolicyResourceList
          end
          def recovery_point_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointResource
          end
          def recovery_point_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointResourceList
          end
          def restore_request_resource
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreRequestResource
          end
          def simple_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SimpleRetentionPolicy
          end
          def simple_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SimpleSchedulePolicy
          end
          def validate_restore_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateRestoreOperationRequest
          end
          def validate_iaas_vmrestore_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ValidateIaasVMRestoreOperationRequest
          end
          def protection_state
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectionState
          end
          def health_status
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::HealthStatus
          end
          def recovery_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryType
          end
          def copy_options
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::CopyOptions
          end
          def restore_request_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestoreRequestType
          end
          def workload_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WorkloadType
          end
          def policy_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::PolicyType
          end
          def job_supported_action
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobSupportedAction
          end
          def protected_item_state
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemState
          end
          def last_backup_status
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::LastBackupStatus
          end
          def protected_item_health_status
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ProtectedItemHealthStatus
          end
          def restore_point_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestorePointType
          end
          def overwrite_options
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::OverwriteOptions
          end
          def recovery_mode
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryMode
          end
          def sqldata_directory_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SQLDataDirectoryType
          end
          def storage_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::StorageType
          end
          def storage_type_state
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::StorageTypeState
          end
          def enhanced_security_state
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::EnhancedSecurityState
          end
          def soft_delete_feature_state
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::SoftDeleteFeatureState
          end
          def restore_point_query_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RestorePointQueryType
          end
          def retention_duration_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionDurationType
          end
          def recovery_point_tier_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointTierType
          end
          def recovery_point_tier_status
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RecoveryPointTierStatus
          end
          def backup_management_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::BackupManagementType
          end
          def job_status
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobStatus
          end
          def job_operation_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::JobOperationType
          end
          def day_of_week
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DayOfWeek
          end
          def retention_schedule_format
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::RetentionScheduleFormat
          end
          def week_of_month
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::WeekOfMonth
          end
          def month_of_year
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MonthOfYear
          end
          def mab_server_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::MabServerType
          end
          def http_status_code
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::HttpStatusCode
          end
          def data_source_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::DataSourceType
          end
          def create_mode
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::CreateMode
          end
          def health_state
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::HealthState
          end
          def schedule_run_type
            Azure::RecoveryServicesBackup::Mgmt::V2019_06_15::Models::ScheduleRunType
          end
          def private_endpoint_connection
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpointConnection
          end
          def operation_status_error
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::OperationStatusError
          end
          def private_endpoint
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpoint
          end
          def resource
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::Resource
          end
          def operation_status
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::OperationStatus
          end
          def error_additional_info
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::ErrorAdditionalInfo
          end
          def private_link_service_connection_state
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateLinkServiceConnectionState
          end
          def error_response
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::ErrorResponse
          end
          def private_endpoint_connection_resource
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpointConnectionResource
          end
          def operation_status_values
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::OperationStatusValues
          end
          def provisioning_state
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::ProvisioningState
          end
          def private_endpoint_connection_status
            Azure::RecoveryServicesBackup::Mgmt::V2020_02_02::Models::PrivateEndpointConnectionStatus
          end
        end
      end
    end
  end
end
