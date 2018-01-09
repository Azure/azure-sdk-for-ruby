# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_backup'

module Azure::RecoveryServicesBackup::Profiles::Latest
  module Mgmt
    Operations = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Operations
    BackupResourceVaultConfigs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupResourceVaultConfigs
    BackupEngines = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupEngines
    ProtectionContainerRefreshOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainerRefreshOperationResults
    ProtectionContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionContainers
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
    ExportJobsOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ExportJobsOperationResults
    Jobs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Jobs
    BackupOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupOperationResults
    BackupOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupOperationStatuses
    BackupPolicies = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupPolicies
    ProtectionPolicies = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicies
    ProtectionPolicyOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicyOperationResults
    ProtectionPolicyOperationStatuses = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::ProtectionPolicyOperationStatuses
    BackupProtectableItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectableItems
    BackupProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectedItems
    BackupProtectionContainers = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupProtectionContainers
    SecurityPINs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::SecurityPINs
    BackupResourceStorageConfigs = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupResourceStorageConfigs
    BackupUsageSummaries = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::BackupUsageSummaries
    BackupJobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupJobs
    JobDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::JobDetails

    module Models
      ClientDiscoveryForProperties = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForProperties
      ClientDiscoveryDisplay = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryDisplay
      ClientDiscoveryValueForSingleApi = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryValueForSingleApi
      ClientDiscoveryForServiceSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForServiceSpecification
      ClientDiscoveryResponse = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryResponse
      ClientDiscoveryForLogSpecification = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::Models::ClientDiscoveryForLogSpecification
      Day = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::Day
      DailyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DailyRetentionFormat
      YearlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::YearlyRetentionSchedule
      BackupResourceVaultConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfig
      OperationStatusExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
      MonthlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MonthlyRetentionSchedule
      OperationStatusError = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusError
      BEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BEKDetails
      WorkloadProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
      BMSBackupEngineQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
      AzureIaaSVMHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMHealthDetails
      BMSBackupEnginesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
      ProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItem
      BMSBackupSummariesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupSummariesQueryObject
      RetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionPolicy
      BMSContainerQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
      ProtectionContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
      BMSPOQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
      MabFileFolderProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabFileFolderProtectedItemExtendedInfo
      BMSRPQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRPQueryObject
      BackupEngineExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
      ClientScriptForConnect = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
      MabContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
      DPMContainerExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
      NameInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::NameInfo
      WeeklyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WeeklyRetentionFormat
      BackupManagementUsageList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupManagementUsageList
      RetentionDuration = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionDuration
      RecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPoint
      DailyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DailyRetentionSchedule
      OperationStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus
      WeeklyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WeeklyRetentionSchedule
      OperationWorkerResponse = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationWorkerResponse
      AzureIaaSVMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMProtectedItemExtendedInfo
      DPMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMProtectedItemExtendedInfo
      ProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemQueryObject
      InstantItemRecoveryTarget = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
      ProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicy
      EncryptionDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EncryptionDetails
      ProtectionPolicyQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicyQueryObject
      BackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
      ILRRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
      GetProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GetProtectedItemQueryObject
      SchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SchedulePolicy
      BackupEngineBase = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
      RestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequest
      BackupResourceConfig = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
      RecoveryPointTierInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierInformation
      AzureSqlProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlProtectedItemExtendedInfo
      TokenInformation = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
      OperationResultInfoBase = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationResultInfoBase
      KEKDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KEKDetails
      BackupManagementUsage = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupManagementUsage
      KeyAndSecretDetails = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KeyAndSecretDetails
      AzureBackupServerContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
      AzureBackupServerEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
      AzureIaaSClassicComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
      AzureIaaSClassicComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectedItem
      AzureIaaSComputeVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMContainer
      AzureIaaSVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMProtectedItem
      AzureIaaSComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectedItem
      AzureIaaSVMProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMProtectionPolicy
      AzureSqlContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlContainer
      AzureSqlProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlProtectedItem
      AzureSqlProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlProtectionPolicy
      BackupEngineBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResource
      BackupEngineBaseResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBaseResourceList
      BackupRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequestResource
      BackupResourceConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfigResource
      BackupResourceVaultConfigResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfigResource
      DpmBackupEngine = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmBackupEngine
      DpmContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DpmContainer
      DPMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMProtectedItem
      ExportJobsOperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ExportJobsOperationResultInfo
      GenericRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GenericRecoveryPoint
      IaasVMBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMBackupRequest
      IaaSVMContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMContainer
      IaasVMILRRegistrationRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
      IaaSVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
      AzureIaaSClassicComputeVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
      AzureIaaSComputeVMProtectableItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectableItem
      IaasVMRecoveryPoint = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRecoveryPoint
      IaasVMRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMRestoreRequest
      ILRRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequestResource
      LongTermRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::LongTermRetentionPolicy
      LongTermSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::LongTermSchedulePolicy
      MabContainer = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
      MabFileFolderProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabFileFolderProtectedItem
      MabProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabProtectionPolicy
      OperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationResultInfo
      OperationResultInfoBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationResultInfoBaseResource
      OperationStatusJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobExtendedInfo
      OperationStatusJobsExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusJobsExtendedInfo
      OperationStatusProvisionILRExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
      ProtectedItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemResource
      ProtectedItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemResourceList
      ProtectionContainerResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
      ProtectionContainerResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
      ProtectionPolicyResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicyResource
      ProtectionPolicyResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicyResourceList
      RecoveryPointResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResource
      RecoveryPointResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResourceList
      RestoreRequestResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestResource
      SimpleRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SimpleRetentionPolicy
      SimpleSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SimpleSchedulePolicy
      WorkloadProtectableItemResource = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
      WorkloadProtectableItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
      ProtectionState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionState
      HealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::HealthStatus
      ProtectedItemState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemState
      UsagesUnit = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::UsagesUnit
      StorageType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageType
      StorageTypeState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageTypeState
      EnhancedSecurityState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EnhancedSecurityState
      Type = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::Type
      ContainerType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
      RetentionDurationType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionDurationType
      RecoveryPointTierType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierType
      RecoveryPointTierStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierStatus
      RecoveryType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryType
      DayOfWeek = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DayOfWeek
      RetentionScheduleFormat = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionScheduleFormat
      WeekOfMonth = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WeekOfMonth
      MonthOfYear = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MonthOfYear
      BackupItemType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
      OperationStatusValues = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusValues
      HttpStatusCode = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::HttpStatusCode
      DataSourceType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DataSourceType
      HealthState = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::HealthState
      ScheduleRunType = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ScheduleRunType
      ProtectionStatus = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionStatus
      JobQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
      AzureIaaSVMErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
      Job = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
      AzureIaaSVMJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
      AzureIaaSVMJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
      MabJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
      DpmJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
      Resource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
      ResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
      DpmJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
      MabErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
      DpmErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
      MabJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
      AzureIaaSVMJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
      DpmJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
      JobResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
      JobResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
      MabJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
      JobSupportedAction = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
      BackupManagementType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
      JobStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
      JobOperationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobOperationType
      MabServerType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
      WorkloadType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
    end

    #
    # RecoveryServicesBackupManagementClass
    #
    class RecoveryServicesBackupManagementClass
      attr_reader :operations, :backup_resource_vault_configs, :backup_engines, :protection_container_refresh_operation_results, :protection_containers, :protection_container_operation_results, :protected_items, :backups, :protected_item_operation_results, :protected_item_operation_statuses, :recovery_points, :item_level_recovery_connections, :restores, :job_cancellations, :job_operation_results, :export_jobs_operation_results, :jobs, :backup_operation_results, :backup_operation_statuses, :backup_policies, :protection_policies, :protection_policy_operation_results, :protection_policy_operation_statuses, :backup_protectable_items, :backup_protected_items, :backup_protection_containers, :security_pins, :backup_resource_storage_configs, :backup_usage_summaries, :backup_jobs, :job_details, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::RecoveryServicesBackup::Mgmt::V2016_08_10::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @operations = client_0.operations

        client_1 = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_1)
        @backup_resource_vault_configs = client_1.backup_resource_vault_configs
        @backup_engines = client_1.backup_engines
        @protection_container_refresh_operation_results = client_1.protection_container_refresh_operation_results
        @protection_containers = client_1.protection_containers
        @protection_container_operation_results = client_1.protection_container_operation_results
        @protected_items = client_1.protected_items
        @backups = client_1.backups
        @protected_item_operation_results = client_1.protected_item_operation_results
        @protected_item_operation_statuses = client_1.protected_item_operation_statuses
        @recovery_points = client_1.recovery_points
        @item_level_recovery_connections = client_1.item_level_recovery_connections
        @restores = client_1.restores
        @job_cancellations = client_1.job_cancellations
        @job_operation_results = client_1.job_operation_results
        @export_jobs_operation_results = client_1.export_jobs_operation_results
        @jobs = client_1.jobs
        @backup_operation_results = client_1.backup_operation_results
        @backup_operation_statuses = client_1.backup_operation_statuses
        @backup_policies = client_1.backup_policies
        @protection_policies = client_1.protection_policies
        @protection_policy_operation_results = client_1.protection_policy_operation_results
        @protection_policy_operation_statuses = client_1.protection_policy_operation_statuses
        @backup_protectable_items = client_1.backup_protectable_items
        @backup_protected_items = client_1.backup_protected_items
        @backup_protection_containers = client_1.backup_protection_containers
        @security_pins = client_1.security_pins
        @backup_resource_storage_configs = client_1.backup_resource_storage_configs
        @backup_usage_summaries = client_1.backup_usage_summaries

        client_2 = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
        if(client_2.respond_to?(:subscription_id))
          client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_2)
        @backup_jobs = client_2.backup_jobs
        @job_details = client_2.job_details

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Mgmt/RecoveryServicesBackup'
        profile_information = "#{profile_information}/Latest"
        client.add_user_agent_information(profile_information)
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
      def day
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::Day
      end
      def daily_retention_format
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DailyRetentionFormat
      end
      def yearly_retention_schedule
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::YearlyRetentionSchedule
      end
      def backup_resource_vault_config
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceVaultConfig
      end
      def operation_status_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusExtendedInfo
      end
      def monthly_retention_schedule
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MonthlyRetentionSchedule
      end
      def operation_status_error
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusError
      end
      def bekdetails
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BEKDetails
      end
      def workload_protectable_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItem
      end
      def bmsbackup_engine_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEngineQueryObject
      end
      def azure_iaa_svmhealth_details
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMHealthDetails
      end
      def bmsbackup_engines_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupEnginesQueryObject
      end
      def protected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItem
      end
      def bmsbackup_summaries_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSBackupSummariesQueryObject
      end
      def retention_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionPolicy
      end
      def bmscontainer_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSContainerQueryObject
      end
      def protection_container
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainer
      end
      def bmspoquery_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSPOQueryObject
      end
      def mab_file_folder_protected_item_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabFileFolderProtectedItemExtendedInfo
      end
      def bmsrpquery_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BMSRPQueryObject
      end
      def backup_engine_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineExtendedInfo
      end
      def client_script_for_connect
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ClientScriptForConnect
      end
      def mab_container_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainerExtendedInfo
      end
      def dpmcontainer_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMContainerExtendedInfo
      end
      def name_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::NameInfo
      end
      def weekly_retention_format
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WeeklyRetentionFormat
      end
      def backup_management_usage_list
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupManagementUsageList
      end
      def retention_duration
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionDuration
      end
      def recovery_point
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPoint
      end
      def daily_retention_schedule
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DailyRetentionSchedule
      end
      def operation_status
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus
      end
      def weekly_retention_schedule
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WeeklyRetentionSchedule
      end
      def operation_worker_response
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationWorkerResponse
      end
      def azure_iaa_svmprotected_item_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMProtectedItemExtendedInfo
      end
      def dpmprotected_item_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMProtectedItemExtendedInfo
      end
      def protected_item_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemQueryObject
      end
      def instant_item_recovery_target
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::InstantItemRecoveryTarget
      end
      def protection_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicy
      end
      def encryption_details
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EncryptionDetails
      end
      def protection_policy_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicyQueryObject
      end
      def backup_request
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupRequest
      end
      def ilrrequest
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ILRRequest
      end
      def get_protected_item_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::GetProtectedItemQueryObject
      end
      def schedule_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SchedulePolicy
      end
      def backup_engine_base
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupEngineBase
      end
      def restore_request
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequest
      end
      def backup_resource_config
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupResourceConfig
      end
      def recovery_point_tier_information
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierInformation
      end
      def azure_sql_protected_item_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlProtectedItemExtendedInfo
      end
      def token_information
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::TokenInformation
      end
      def operation_result_info_base
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationResultInfoBase
      end
      def kekdetails
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KEKDetails
      end
      def backup_management_usage
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupManagementUsage
      end
      def key_and_secret_details
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::KeyAndSecretDetails
      end
      def azure_backup_server_container
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerContainer
      end
      def azure_backup_server_engine
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureBackupServerEngine
      end
      def azure_iaa_sclassic_compute_vmcontainer
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMContainer
      end
      def azure_iaa_sclassic_compute_vmprotected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectedItem
      end
      def azure_iaa_scompute_vmcontainer
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMContainer
      end
      def azure_iaa_svmprotected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMProtectedItem
      end
      def azure_iaa_scompute_vmprotected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectedItem
      end
      def azure_iaa_svmprotection_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSVMProtectionPolicy
      end
      def azure_sql_container
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlContainer
      end
      def azure_sql_protected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlProtectedItem
      end
      def azure_sql_protection_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureSqlProtectionPolicy
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
      def dpmprotected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DPMProtectedItem
      end
      def export_jobs_operation_result_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ExportJobsOperationResultInfo
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
      def iaas_vmilrregistration_request
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaasVMILRRegistrationRequest
      end
      def iaa_svmprotectable_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::IaaSVMProtectableItem
      end
      def azure_iaa_sclassic_compute_vmprotectable_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
      end
      def azure_iaa_scompute_vmprotectable_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::AzureIaaSComputeVMProtectableItem
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
      def long_term_retention_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::LongTermRetentionPolicy
      end
      def long_term_schedule_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::LongTermSchedulePolicy
      end
      def mab_container
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabContainer
      end
      def mab_file_folder_protected_item
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabFileFolderProtectedItem
      end
      def mab_protection_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MabProtectionPolicy
      end
      def operation_result_info
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationResultInfo
      end
      def operation_result_info_base_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationResultInfoBaseResource
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
      def protected_item_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemResource
      end
      def protected_item_resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemResourceList
      end
      def protection_container_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResource
      end
      def protection_container_resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionContainerResourceList
      end
      def protection_policy_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicyResource
      end
      def protection_policy_resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionPolicyResourceList
      end
      def recovery_point_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResource
      end
      def recovery_point_resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointResourceList
      end
      def restore_request_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RestoreRequestResource
      end
      def simple_retention_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SimpleRetentionPolicy
      end
      def simple_schedule_policy
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::SimpleSchedulePolicy
      end
      def workload_protectable_item_resource
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResource
      end
      def workload_protectable_item_resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadProtectableItemResourceList
      end
      def protection_state
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionState
      end
      def health_status
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::HealthStatus
      end
      def protected_item_state
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemState
      end
      def usages_unit
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::UsagesUnit
      end
      def storage_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageType
      end
      def storage_type_state
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::StorageTypeState
      end
      def enhanced_security_state
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::EnhancedSecurityState
      end
      def type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::Type
      end
      def container_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ContainerType
      end
      def retention_duration_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionDurationType
      end
      def recovery_point_tier_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierType
      end
      def recovery_point_tier_status
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryPointTierStatus
      end
      def recovery_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RecoveryType
      end
      def day_of_week
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DayOfWeek
      end
      def retention_schedule_format
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::RetentionScheduleFormat
      end
      def week_of_month
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WeekOfMonth
      end
      def month_of_year
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::MonthOfYear
      end
      def backup_item_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::BackupItemType
      end
      def operation_status_values
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatusValues
      end
      def http_status_code
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::HttpStatusCode
      end
      def data_source_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::DataSourceType
      end
      def health_state
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::HealthState
      end
      def schedule_run_type
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ScheduleRunType
      end
      def protection_status
        Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectionStatus
      end
      def job_query_object
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
      end
      def azure_iaa_svmerror_info
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
      end
      def job
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
      end
      def azure_iaa_svmjob_task_details
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
      end
      def azure_iaa_svmjob_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
      end
      def mab_job_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
      end
      def dpm_job_task_details
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
      end
      def resource
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
      end
      def resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
      end
      def dpm_job_extended_info
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
      end
      def mab_error_info
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
      end
      def dpm_error_info
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
      end
      def mab_job_task_details
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
      end
      def azure_iaa_svmjob
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
      end
      def dpm_job
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
      end
      def job_resource
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
      end
      def job_resource_list
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
      end
      def mab_job
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
      end
      def job_supported_action
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
      end
      def backup_management_type
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
      end
      def job_status
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
      end
      def job_operation_type
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobOperationType
      end
      def mab_server_type
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
      end
      def workload_type
        Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
      end
    end
  end
end
