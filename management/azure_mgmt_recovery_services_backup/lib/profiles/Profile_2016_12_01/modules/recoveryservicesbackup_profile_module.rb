# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_recovery_services_backup'


module Azure::Profiles::RecoveryServicesBackupModule::Management::Profile_2016_12_01
  module RecoveryServicesBackup
    BackupResourceVaultConfigs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupResourceVaultConfigs
    BackupEngines = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupEngines
    ProtectionContainerRefreshOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionContainerRefreshOperationResults
    ProtectionContainers = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionContainers
    ProtectionContainerOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionContainerOperationResults
    ProtectedItems = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectedItems
    Backups = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Backups
    ProtectedItemOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectedItemOperationResults
    ProtectedItemOperationStatuses = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectedItemOperationStatuses
    RecoveryPoints = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::RecoveryPoints
    ItemLevelRecoveryConnections = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ItemLevelRecoveryConnections
    Restores = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Restores
    JobCancellations = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::JobCancellations
    JobOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::JobOperationResults
    ExportJobsOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ExportJobsOperationResults
    Jobs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Jobs
    BackupOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupOperationResults
    BackupOperationStatuses = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupOperationStatuses
    BackupPolicies = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupPolicies
    ProtectionPolicies = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionPolicies
    ProtectionPolicyOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionPolicyOperationResults
    ProtectionPolicyOperationStatuses = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionPolicyOperationStatuses
    BackupProtectableItems = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupProtectableItems
    BackupProtectedItems = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupProtectedItems
    BackupProtectionContainers = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupProtectionContainers
    SecurityPINs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::SecurityPINs
    BackupResourceStorageConfigs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupResourceStorageConfigs
    BackupUsageSummaries = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupUsageSummaries
    RecoveryServicesBackupClient = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::RecoveryServicesBackupClient

    module Models
      Day = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::Day
      DailyRetentionFormat = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DailyRetentionFormat
      YearlyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::YearlyRetentionSchedule
      BackupResourceVaultConfig = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceVaultConfig
      OperationStatusExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusExtendedInfo
      MonthlyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MonthlyRetentionSchedule
      OperationStatusError = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusError
      BEKDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BEKDetails
      WorkloadProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WorkloadProtectableItem
      BMSBackupEngineQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSBackupEngineQueryObject
      AzureIaaSVMHealthDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMHealthDetails
      BMSBackupEnginesQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSBackupEnginesQueryObject
      ProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItem
      BMSBackupSummariesQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSBackupSummariesQueryObject
      RetentionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionPolicy
      BMSContainerQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSContainerQueryObject
      ProtectionContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionContainer
      BMSPOQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSPOQueryObject
      MabFileFolderProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabFileFolderProtectedItemExtendedInfo
      BMSRPQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSRPQueryObject
      BackupEngineExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineExtendedInfo
      ClientScriptForConnect = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ClientScriptForConnect
      MabContainerExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabContainerExtendedInfo
      DPMContainerExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DPMContainerExtendedInfo
      NameInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::NameInfo
      WeeklyRetentionFormat = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WeeklyRetentionFormat
      BackupManagementUsageList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupManagementUsageList
      RetentionDuration = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionDuration
      RecoveryPoint = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPoint
      DailyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DailyRetentionSchedule
      OperationStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatus
      WeeklyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WeeklyRetentionSchedule
      OperationWorkerResponse = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationWorkerResponse
      JobQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::JobQueryObject
      AzureIaaSVMProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMProtectedItemExtendedInfo
      DPMProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DPMProtectedItemExtendedInfo
      ProtectedItemQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemQueryObject
      InstantItemRecoveryTarget = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::InstantItemRecoveryTarget
      ProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicy
      EncryptionDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::EncryptionDetails
      ProtectionPolicyQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicyQueryObject
      Resource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::Resource
      BackupRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupRequest
      ILRRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ILRRequest
      GetProtectedItemQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::GetProtectedItemQueryObject
      SchedulePolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::SchedulePolicy
      ResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ResourceList
      BackupEngineBase = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineBase
      RestoreRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RestoreRequest
      BackupResourceConfig = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceConfig
      RecoveryPointTierInformation = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointTierInformation
      AzureSqlProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlProtectedItemExtendedInfo
      TokenInformation = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::TokenInformation
      OperationResultInfoBase = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationResultInfoBase
      KEKDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::KEKDetails
      BackupManagementUsage = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupManagementUsage
      KeyAndSecretDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::KeyAndSecretDetails
      AzureBackupServerContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureBackupServerContainer
      AzureBackupServerEngine = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureBackupServerEngine
      AzureIaaSClassicComputeVMContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSClassicComputeVMContainer
      AzureIaaSClassicComputeVMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSClassicComputeVMProtectedItem
      AzureIaaSComputeVMContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSComputeVMContainer
      AzureIaaSVMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMProtectedItem
      AzureIaaSComputeVMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSComputeVMProtectedItem
      AzureIaaSVMProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMProtectionPolicy
      AzureSqlContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlContainer
      AzureSqlProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlProtectedItem
      AzureSqlProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlProtectionPolicy
      BackupEngineBaseResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineBaseResource
      BackupEngineBaseResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineBaseResourceList
      BackupRequestResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupRequestResource
      BackupResourceConfigResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceConfigResource
      BackupResourceVaultConfigResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceVaultConfigResource
      DpmBackupEngine = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DpmBackupEngine
      DpmContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DpmContainer
      DPMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DPMProtectedItem
      ExportJobsOperationResultInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ExportJobsOperationResultInfo
      GenericRecoveryPoint = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::GenericRecoveryPoint
      IaasVMBackupRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMBackupRequest
      IaaSVMContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaaSVMContainer
      IaasVMILRRegistrationRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMILRRegistrationRequest
      IaaSVMProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaaSVMProtectableItem
      AzureIaaSClassicComputeVMProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
      AzureIaaSComputeVMProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSComputeVMProtectableItem
      IaasVMRecoveryPoint = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMRecoveryPoint
      IaasVMRestoreRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMRestoreRequest
      ILRRequestResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ILRRequestResource
      LongTermRetentionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::LongTermRetentionPolicy
      LongTermSchedulePolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::LongTermSchedulePolicy
      MabContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabContainer
      MabFileFolderProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabFileFolderProtectedItem
      MabProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabProtectionPolicy
      OperationResultInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationResultInfo
      OperationResultInfoBaseResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationResultInfoBaseResource
      OperationStatusJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusJobExtendedInfo
      OperationStatusJobsExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusJobsExtendedInfo
      OperationStatusProvisionILRExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
      ProtectedItemResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemResource
      ProtectedItemResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemResourceList
      ProtectionContainerResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionContainerResource
      ProtectionContainerResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionContainerResourceList
      ProtectionPolicyResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicyResource
      ProtectionPolicyResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicyResourceList
      RecoveryPointResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointResource
      RecoveryPointResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointResourceList
      RestoreRequestResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RestoreRequestResource
      SimpleRetentionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::SimpleRetentionPolicy
      SimpleSchedulePolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::SimpleSchedulePolicy
      WorkloadProtectableItemResource = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WorkloadProtectableItemResource
      WorkloadProtectableItemResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WorkloadProtectableItemResourceList
      ProtectionState = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionState
      HealthStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::HealthStatus
      ProtectedItemState = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemState
      BackupManagementType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupManagementType
      UsagesUnit = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::UsagesUnit
      StorageType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::StorageType
      StorageTypeState = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::StorageTypeState
      EnhancedSecurityState = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::EnhancedSecurityState
      Type = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::Type
      ContainerType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ContainerType
      RetentionDurationType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionDurationType
      RecoveryPointTierType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointTierType
      RecoveryPointTierStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointTierStatus
      RecoveryType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryType
      JobStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::JobStatus
      JobOperationType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::JobOperationType
      DayOfWeek = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DayOfWeek
      RetentionScheduleFormat = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionScheduleFormat
      WeekOfMonth = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WeekOfMonth
      MonthOfYear = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MonthOfYear
      BackupItemType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupItemType
      OperationStatusValues = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusValues
      HttpStatusCode = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::HttpStatusCode
      DataSourceType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DataSourceType
      HealthState = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::HealthState
      ScheduleRunType = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ScheduleRunType
      ProtectionStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionStatus
    end

    #
    # RecoveryServicesBackup
    #
    class RecoveryServicesBackupClass
      attr_accessor :backup_resource_vault_configs, :backup_engines, :protection_container_refresh_operation_results, :protection_containers, :protection_container_operation_results, :protected_items, :backups, :protected_item_operation_results, :protected_item_operation_statuses, :recovery_points, :item_level_recovery_connections, :restores, :job_cancellations, :job_operation_results, :export_jobs_operation_results, :jobs, :backup_operation_results, :backup_operation_statuses, :backup_policies, :protection_policies, :protection_policy_operation_results, :protection_policy_operation_statuses, :backup_protectable_items, :backup_protected_items, :backup_protection_containers, :security_pins, :backup_resource_storage_configs, :backup_usage_summaries, :recovery_services_backup_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.backup_resource_vault_configs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupResourceVaultConfigs.new(client)
        self.backup_engines = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupEngines.new(client)
        self.protection_container_refresh_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionContainerRefreshOperationResults.new(client)
        self.protection_containers = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionContainers.new(client)
        self.protection_container_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionContainerOperationResults.new(client)
        self.protected_items = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectedItems.new(client)
        self.backups = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Backups.new(client)
        self.protected_item_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectedItemOperationResults.new(client)
        self.protected_item_operation_statuses = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectedItemOperationStatuses.new(client)
        self.recovery_points = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::RecoveryPoints.new(client)
        self.item_level_recovery_connections = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ItemLevelRecoveryConnections.new(client)
        self.restores = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Restores.new(client)
        self.job_cancellations = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::JobCancellations.new(client)
        self.job_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::JobOperationResults.new(client)
        self.export_jobs_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ExportJobsOperationResults.new(client)
        self.jobs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Jobs.new(client)
        self.backup_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupOperationResults.new(client)
        self.backup_operation_statuses = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupOperationStatuses.new(client)
        self.backup_policies = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupPolicies.new(client)
        self.protection_policies = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionPolicies.new(client)
        self.protection_policy_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionPolicyOperationResults.new(client)
        self.protection_policy_operation_statuses = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::ProtectionPolicyOperationStatuses.new(client)
        self.backup_protectable_items = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupProtectableItems.new(client)
        self.backup_protected_items = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupProtectedItems.new(client)
        self.backup_protection_containers = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupProtectionContainers.new(client)
        self.security_pins = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::SecurityPINs.new(client)
        self.backup_resource_storage_configs = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupResourceStorageConfigs.new(client)
        self.backup_usage_summaries = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::BackupUsageSummaries.new(client)
        self.recovery_services_backup_client = Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::RecoveryServicesBackupClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def day
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::Day
        end
        def daily_retention_format
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DailyRetentionFormat
        end
        def yearly_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::YearlyRetentionSchedule
        end
        def backup_resource_vault_config
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceVaultConfig
        end
        def operation_status_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusExtendedInfo
        end
        def monthly_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MonthlyRetentionSchedule
        end
        def operation_status_error
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusError
        end
        def bekdetails
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BEKDetails
        end
        def workload_protectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WorkloadProtectableItem
        end
        def bmsbackup_engine_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSBackupEngineQueryObject
        end
        def azure_iaa_svmhealth_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMHealthDetails
        end
        def bmsbackup_engines_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSBackupEnginesQueryObject
        end
        def protected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItem
        end
        def bmsbackup_summaries_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSBackupSummariesQueryObject
        end
        def retention_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionPolicy
        end
        def bmscontainer_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSContainerQueryObject
        end
        def protection_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionContainer
        end
        def bmspoquery_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSPOQueryObject
        end
        def mab_file_folder_protected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabFileFolderProtectedItemExtendedInfo
        end
        def bmsrpquery_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BMSRPQueryObject
        end
        def backup_engine_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineExtendedInfo
        end
        def client_script_for_connect
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ClientScriptForConnect
        end
        def mab_container_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabContainerExtendedInfo
        end
        def dpmcontainer_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DPMContainerExtendedInfo
        end
        def name_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::NameInfo
        end
        def weekly_retention_format
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WeeklyRetentionFormat
        end
        def backup_management_usage_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupManagementUsageList
        end
        def retention_duration
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionDuration
        end
        def recovery_point
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPoint
        end
        def daily_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DailyRetentionSchedule
        end
        def operation_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatus
        end
        def weekly_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WeeklyRetentionSchedule
        end
        def operation_worker_response
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationWorkerResponse
        end
        def job_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::JobQueryObject
        end
        def azure_iaa_svmprotected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMProtectedItemExtendedInfo
        end
        def dpmprotected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DPMProtectedItemExtendedInfo
        end
        def protected_item_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemQueryObject
        end
        def instant_item_recovery_target
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::InstantItemRecoveryTarget
        end
        def protection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicy
        end
        def encryption_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::EncryptionDetails
        end
        def protection_policy_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicyQueryObject
        end
        def resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::Resource
        end
        def backup_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupRequest
        end
        def ilrrequest
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ILRRequest
        end
        def get_protected_item_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::GetProtectedItemQueryObject
        end
        def schedule_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::SchedulePolicy
        end
        def resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ResourceList
        end
        def backup_engine_base
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineBase
        end
        def restore_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RestoreRequest
        end
        def backup_resource_config
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceConfig
        end
        def recovery_point_tier_information
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointTierInformation
        end
        def azure_sql_protected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlProtectedItemExtendedInfo
        end
        def token_information
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::TokenInformation
        end
        def operation_result_info_base
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationResultInfoBase
        end
        def kekdetails
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::KEKDetails
        end
        def backup_management_usage
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupManagementUsage
        end
        def key_and_secret_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::KeyAndSecretDetails
        end
        def azure_backup_server_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureBackupServerContainer
        end
        def azure_backup_server_engine
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureBackupServerEngine
        end
        def azure_iaa_sclassic_compute_vmcontainer
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSClassicComputeVMContainer
        end
        def azure_iaa_sclassic_compute_vmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSClassicComputeVMProtectedItem
        end
        def azure_iaa_scompute_vmcontainer
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSComputeVMContainer
        end
        def azure_iaa_svmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMProtectedItem
        end
        def azure_iaa_scompute_vmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSComputeVMProtectedItem
        end
        def azure_iaa_svmprotection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSVMProtectionPolicy
        end
        def azure_sql_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlContainer
        end
        def azure_sql_protected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlProtectedItem
        end
        def azure_sql_protection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureSqlProtectionPolicy
        end
        def backup_engine_base_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineBaseResource
        end
        def backup_engine_base_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupEngineBaseResourceList
        end
        def backup_request_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupRequestResource
        end
        def backup_resource_config_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceConfigResource
        end
        def backup_resource_vault_config_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupResourceVaultConfigResource
        end
        def dpm_backup_engine
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DpmBackupEngine
        end
        def dpm_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DpmContainer
        end
        def dpmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DPMProtectedItem
        end
        def export_jobs_operation_result_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ExportJobsOperationResultInfo
        end
        def generic_recovery_point
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::GenericRecoveryPoint
        end
        def iaas_vmbackup_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMBackupRequest
        end
        def iaa_svmcontainer
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaaSVMContainer
        end
        def iaas_vmilrregistration_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMILRRegistrationRequest
        end
        def iaa_svmprotectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaaSVMProtectableItem
        end
        def azure_iaa_sclassic_compute_vmprotectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSClassicComputeVMProtectableItem
        end
        def azure_iaa_scompute_vmprotectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::AzureIaaSComputeVMProtectableItem
        end
        def iaas_vmrecovery_point
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMRecoveryPoint
        end
        def iaas_vmrestore_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::IaasVMRestoreRequest
        end
        def ilrrequest_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ILRRequestResource
        end
        def long_term_retention_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::LongTermRetentionPolicy
        end
        def long_term_schedule_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::LongTermSchedulePolicy
        end
        def mab_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabContainer
        end
        def mab_file_folder_protected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabFileFolderProtectedItem
        end
        def mab_protection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MabProtectionPolicy
        end
        def operation_result_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationResultInfo
        end
        def operation_result_info_base_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationResultInfoBaseResource
        end
        def operation_status_job_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusJobExtendedInfo
        end
        def operation_status_jobs_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusJobsExtendedInfo
        end
        def operation_status_provision_ilrextended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusProvisionILRExtendedInfo
        end
        def protected_item_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemResource
        end
        def protected_item_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemResourceList
        end
        def protection_container_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionContainerResource
        end
        def protection_container_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionContainerResourceList
        end
        def protection_policy_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicyResource
        end
        def protection_policy_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionPolicyResourceList
        end
        def recovery_point_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointResource
        end
        def recovery_point_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointResourceList
        end
        def restore_request_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RestoreRequestResource
        end
        def simple_retention_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::SimpleRetentionPolicy
        end
        def simple_schedule_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::SimpleSchedulePolicy
        end
        def workload_protectable_item_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WorkloadProtectableItemResource
        end
        def workload_protectable_item_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WorkloadProtectableItemResourceList
        end
        def protection_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionState
        end
        def health_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::HealthStatus
        end
        def protected_item_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectedItemState
        end
        def backup_management_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupManagementType
        end
        def usages_unit
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::UsagesUnit
        end
        def storage_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::StorageType
        end
        def storage_type_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::StorageTypeState
        end
        def enhanced_security_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::EnhancedSecurityState
        end
        def type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::Type
        end
        def container_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ContainerType
        end
        def retention_duration_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionDurationType
        end
        def recovery_point_tier_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointTierType
        end
        def recovery_point_tier_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryPointTierStatus
        end
        def recovery_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RecoveryType
        end
        def job_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::JobStatus
        end
        def job_operation_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::JobOperationType
        end
        def day_of_week
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DayOfWeek
        end
        def retention_schedule_format
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::RetentionScheduleFormat
        end
        def week_of_month
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::WeekOfMonth
        end
        def month_of_year
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::MonthOfYear
        end
        def backup_item_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::BackupItemType
        end
        def operation_status_values
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::OperationStatusValues
        end
        def http_status_code
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::HttpStatusCode
        end
        def data_source_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::DataSourceType
        end
        def health_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::HealthState
        end
        def schedule_run_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ScheduleRunType
        end
        def protection_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_12_01::Models::ProtectionStatus
        end
      end
    end
  end
end
