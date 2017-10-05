# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_recovery_services_backup'


module Azure::Profiles::RecoveryServicesBackupModule::Management::Profile_2016_06_01
  module RecoveryServicesBackup
    ItemLevelRecoveryConnections = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ItemLevelRecoveryConnections
    Restores = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Restores
    ProtectionPolicyOperationStatuses = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionPolicyOperationStatuses
    ProtectionPolicyOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionPolicyOperationResults
    ProtectionPolicies = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionPolicies
    ProtectionContainerOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionContainerOperationResults
    ProtectionContainerRefreshOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionContainerRefreshOperationResults
    ProtectionContainers = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionContainers
    RecoveryPoints = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::RecoveryPoints
    Backups = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Backups
    ProtectedItemOperationStatuses = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectedItemOperationStatuses
    ProtectedItemOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectedItemOperationResults
    ProtectedItems = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectedItems
    ProtectableItems = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectableItems
    ExportJobsOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ExportJobsOperationResults
    JobOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::JobOperationResults
    Jobs = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Jobs
    JobCancellations = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::JobCancellations
    JobDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::JobDetails
    BackupOperationStatuses = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::BackupOperationStatuses
    BackupOperationResults = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::BackupOperationResults
    BackupEngines = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::BackupEngines
    RecoveryServicesBackupClient = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::RecoveryServicesBackupClient

    module Models
      SchedulePolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::SchedulePolicy
      RetentionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionPolicy
      Job = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::Job
      ILRRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ILRRequest
      BMSRPQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSRPQueryObject
      ProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicy
      BMSBackupEngineQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSBackupEngineQueryObject
      WeeklyRetentionFormat = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WeeklyRetentionFormat
      OperationStatusExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusExtendedInfo
      MonthlyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MonthlyRetentionSchedule
      OperationWorkerResponse = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationWorkerResponse
      BMSContainerQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSContainerQueryObject
      WorkloadProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadProtectableItem
      RestoreRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RestoreRequest
      DpmErrorInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmErrorInfo
      KeyAndSecretDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::KeyAndSecretDetails
      ProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItem
      ProtectionPolicyQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicyQueryObject
      BMSPOQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSPOQueryObject
      BEKDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BEKDetails
      GetProtectedItemQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::GetProtectedItemQueryObject
      KEKDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::KEKDetails
      AzureIaaSVMJobTaskDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMJobTaskDetails
      YearlyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::YearlyRetentionSchedule
      RecoveryPoint = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryPoint
      ResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ResourceList
      Day = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::Day
      ClientScriptForConnect = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ClientScriptForConnect
      DailyRetentionFormat = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DailyRetentionFormat
      InstantItemRecoveryTarget = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::InstantItemRecoveryTarget
      BackupEngineBase = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupEngineBase
      MabContainerExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabContainerExtendedInfo
      OperationStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatus
      RetentionDuration = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionDuration
      DpmJobTaskDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmJobTaskDetails
      MabJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabJobExtendedInfo
      WeeklyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WeeklyRetentionSchedule
      AzureIaaSVMProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMProtectedItemExtendedInfo
      BackupRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupRequest
      MabJobTaskDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabJobTaskDetails
      AzureIaaSVMErrorInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMErrorInfo
      MabFileFolderProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabFileFolderProtectedItemExtendedInfo
      EncryptionDetails = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::EncryptionDetails
      MabErrorInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabErrorInfo
      JobQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobQueryObject
      AzureSqlProtectedItemExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlProtectedItemExtendedInfo
      AzureIaaSVMJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMJobExtendedInfo
      DailyRetentionSchedule = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DailyRetentionSchedule
      ProtectionContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionContainer
      DpmJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmJobExtendedInfo
      OperationResultInfoBase = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationResultInfoBase
      Resource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::Resource
      OperationStatusError = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusError
      ProtectedItemQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemQueryObject
      JobResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobResource
      JobResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobResourceList
      WorkloadProtectableItemResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadProtectableItemResource
      WorkloadProtectableItemResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadProtectableItemResourceList
      ProtectedItemResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemResource
      ProtectedItemResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemResourceList
      BackupRequestResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupRequestResource
      RecoveryPointResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryPointResource
      RecoveryPointResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryPointResourceList
      ProtectionContainerResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionContainerResource
      ProtectionContainerResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionContainerResourceList
      ProtectionPolicyResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicyResource
      ProtectionPolicyResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicyResourceList
      RestoreRequestResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RestoreRequestResource
      ILRRequestResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ILRRequestResource
      AzureBackupServerEngine = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureBackupServerEngine
      DpmBackupEngine = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmBackupEngine
      AzureSqlContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlContainer
      IaaSVMContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaaSVMContainer
      MabContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabContainer
      IaaSVMProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaaSVMProtectableItem
      AzureIaaSVMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMProtectedItem
      MabFileFolderProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabFileFolderProtectedItem
      AzureSqlProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlProtectedItem
      IaasVMBackupRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMBackupRequest
      AzureIaaSVMProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMProtectionPolicy
      MabProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabProtectionPolicy
      AzureSqlProtectionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlProtectionPolicy
      IaasVMRecoveryPoint = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMRecoveryPoint
      GenericRecoveryPoint = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::GenericRecoveryPoint
      IaasVMRestoreRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMRestoreRequest
      IaasVMILRRegistrationRequest = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMILRRegistrationRequest
      AzureIaaSVMJob = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMJob
      DpmJob = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmJob
      MabJob = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabJob
      OperationResultInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationResultInfo
      ExportJobsOperationResultInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ExportJobsOperationResultInfo
      AzureIaaSComputeVMContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSComputeVMContainer
      AzureIaaSClassicComputeVMContainer = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSClassicComputeVMContainer
      AzureIaaSComputeVMProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSComputeVMProtectableItem
      AzureIaaSClassicComputeVMProtectableItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSClassicComputeVMProtectableItem
      AzureIaaSComputeVMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSComputeVMProtectedItem
      AzureIaaSClassicComputeVMProtectedItem = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSClassicComputeVMProtectedItem
      OperationStatusJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusJobExtendedInfo
      OperationStatusProvisionILRExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusProvisionILRExtendedInfo
      OperationStatusJobsExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusJobsExtendedInfo
      LongTermSchedulePolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::LongTermSchedulePolicy
      SimpleSchedulePolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::SimpleSchedulePolicy
      SimpleRetentionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::SimpleRetentionPolicy
      LongTermRetentionPolicy = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::LongTermRetentionPolicy
      BackupEngineBaseResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupEngineBaseResource
      BackupEngineBaseResourceList = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupEngineBaseResourceList
      OperationResultInfoBaseResource = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationResultInfoBaseResource
      BackupManagementType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupManagementType
      OperationStatusValues = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusValues
      HttpStatusCode = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::HttpStatusCode
      JobStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobStatus
      JobOperationType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobOperationType
      ProtectionStatus = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionStatus
      DataSourceType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DataSourceType
      BackupItemType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupItemType
      ProtectionState = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionState
      ProtectedItemState = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemState
      RecoveryType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryType
      JobSupportedAction = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobSupportedAction
      MabServerType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabServerType
      WorkloadType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadType
      ScheduleRunType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ScheduleRunType
      DayOfWeek = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DayOfWeek
      RetentionDurationType = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionDurationType
      RetentionScheduleFormat = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionScheduleFormat
      WeekOfMonth = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WeekOfMonth
      MonthOfYear = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MonthOfYear
    end

    #
    # RecoveryServicesBackup
    #
    class RecoveryServicesBackupClass
      attr_accessor :item_level_recovery_connections, :restores, :protection_policy_operation_statuses, :protection_policy_operation_results, :protection_policies, :protection_container_operation_results, :protection_container_refresh_operation_results, :protection_containers, :recovery_points, :backups, :protected_item_operation_statuses, :protected_item_operation_results, :protected_items, :protectable_items, :export_jobs_operation_results, :job_operation_results, :jobs, :job_cancellations, :job_details, :backup_operation_statuses, :backup_operation_results, :backup_engines, :recovery_services_backup_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.item_level_recovery_connections = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ItemLevelRecoveryConnections.new(client)
        self.restores = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Restores.new(client)
        self.protection_policy_operation_statuses = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionPolicyOperationStatuses.new(client)
        self.protection_policy_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionPolicyOperationResults.new(client)
        self.protection_policies = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionPolicies.new(client)
        self.protection_container_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionContainerOperationResults.new(client)
        self.protection_container_refresh_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionContainerRefreshOperationResults.new(client)
        self.protection_containers = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectionContainers.new(client)
        self.recovery_points = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::RecoveryPoints.new(client)
        self.backups = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Backups.new(client)
        self.protected_item_operation_statuses = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectedItemOperationStatuses.new(client)
        self.protected_item_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectedItemOperationResults.new(client)
        self.protected_items = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectedItems.new(client)
        self.protectable_items = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ProtectableItems.new(client)
        self.export_jobs_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::ExportJobsOperationResults.new(client)
        self.job_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::JobOperationResults.new(client)
        self.jobs = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Jobs.new(client)
        self.job_cancellations = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::JobCancellations.new(client)
        self.job_details = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::JobDetails.new(client)
        self.backup_operation_statuses = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::BackupOperationStatuses.new(client)
        self.backup_operation_results = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::BackupOperationResults.new(client)
        self.backup_engines = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::BackupEngines.new(client)
        self.recovery_services_backup_client = Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::RecoveryServicesBackupClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def schedule_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::SchedulePolicy
        end
        def retention_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionPolicy
        end
        def job
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::Job
        end
        def ilrrequest
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ILRRequest
        end
        def bmsrpquery_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSRPQueryObject
        end
        def protection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicy
        end
        def bmsbackup_engine_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSBackupEngineQueryObject
        end
        def weekly_retention_format
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WeeklyRetentionFormat
        end
        def operation_status_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusExtendedInfo
        end
        def monthly_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MonthlyRetentionSchedule
        end
        def operation_worker_response
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationWorkerResponse
        end
        def bmscontainer_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSContainerQueryObject
        end
        def workload_protectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadProtectableItem
        end
        def restore_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RestoreRequest
        end
        def dpm_error_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmErrorInfo
        end
        def key_and_secret_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::KeyAndSecretDetails
        end
        def protected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItem
        end
        def protection_policy_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicyQueryObject
        end
        def bmspoquery_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BMSPOQueryObject
        end
        def bekdetails
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BEKDetails
        end
        def get_protected_item_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::GetProtectedItemQueryObject
        end
        def kekdetails
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::KEKDetails
        end
        def azure_iaa_svmjob_task_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMJobTaskDetails
        end
        def yearly_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::YearlyRetentionSchedule
        end
        def recovery_point
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryPoint
        end
        def resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ResourceList
        end
        def day
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::Day
        end
        def client_script_for_connect
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ClientScriptForConnect
        end
        def daily_retention_format
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DailyRetentionFormat
        end
        def instant_item_recovery_target
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::InstantItemRecoveryTarget
        end
        def backup_engine_base
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupEngineBase
        end
        def mab_container_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabContainerExtendedInfo
        end
        def operation_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatus
        end
        def retention_duration
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionDuration
        end
        def dpm_job_task_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmJobTaskDetails
        end
        def mab_job_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabJobExtendedInfo
        end
        def weekly_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WeeklyRetentionSchedule
        end
        def azure_iaa_svmprotected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMProtectedItemExtendedInfo
        end
        def backup_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupRequest
        end
        def mab_job_task_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabJobTaskDetails
        end
        def azure_iaa_svmerror_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMErrorInfo
        end
        def mab_file_folder_protected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabFileFolderProtectedItemExtendedInfo
        end
        def encryption_details
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::EncryptionDetails
        end
        def mab_error_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabErrorInfo
        end
        def job_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobQueryObject
        end
        def azure_sql_protected_item_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlProtectedItemExtendedInfo
        end
        def azure_iaa_svmjob_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMJobExtendedInfo
        end
        def daily_retention_schedule
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DailyRetentionSchedule
        end
        def protection_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionContainer
        end
        def dpm_job_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmJobExtendedInfo
        end
        def operation_result_info_base
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationResultInfoBase
        end
        def resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::Resource
        end
        def operation_status_error
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusError
        end
        def protected_item_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemQueryObject
        end
        def job_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobResource
        end
        def job_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobResourceList
        end
        def workload_protectable_item_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadProtectableItemResource
        end
        def workload_protectable_item_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadProtectableItemResourceList
        end
        def protected_item_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemResource
        end
        def protected_item_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemResourceList
        end
        def backup_request_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupRequestResource
        end
        def recovery_point_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryPointResource
        end
        def recovery_point_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryPointResourceList
        end
        def protection_container_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionContainerResource
        end
        def protection_container_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionContainerResourceList
        end
        def protection_policy_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicyResource
        end
        def protection_policy_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionPolicyResourceList
        end
        def restore_request_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RestoreRequestResource
        end
        def ilrrequest_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ILRRequestResource
        end
        def azure_backup_server_engine
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureBackupServerEngine
        end
        def dpm_backup_engine
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmBackupEngine
        end
        def azure_sql_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlContainer
        end
        def iaa_svmcontainer
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaaSVMContainer
        end
        def mab_container
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabContainer
        end
        def iaa_svmprotectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaaSVMProtectableItem
        end
        def azure_iaa_svmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMProtectedItem
        end
        def mab_file_folder_protected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabFileFolderProtectedItem
        end
        def azure_sql_protected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlProtectedItem
        end
        def iaas_vmbackup_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMBackupRequest
        end
        def azure_iaa_svmprotection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMProtectionPolicy
        end
        def mab_protection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabProtectionPolicy
        end
        def azure_sql_protection_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureSqlProtectionPolicy
        end
        def iaas_vmrecovery_point
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMRecoveryPoint
        end
        def generic_recovery_point
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::GenericRecoveryPoint
        end
        def iaas_vmrestore_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMRestoreRequest
        end
        def iaas_vmilrregistration_request
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::IaasVMILRRegistrationRequest
        end
        def azure_iaa_svmjob
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSVMJob
        end
        def dpm_job
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DpmJob
        end
        def mab_job
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabJob
        end
        def operation_result_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationResultInfo
        end
        def export_jobs_operation_result_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ExportJobsOperationResultInfo
        end
        def azure_iaa_scompute_vmcontainer
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSComputeVMContainer
        end
        def azure_iaa_sclassic_compute_vmcontainer
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSClassicComputeVMContainer
        end
        def azure_iaa_scompute_vmprotectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSComputeVMProtectableItem
        end
        def azure_iaa_sclassic_compute_vmprotectable_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSClassicComputeVMProtectableItem
        end
        def azure_iaa_scompute_vmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSComputeVMProtectedItem
        end
        def azure_iaa_sclassic_compute_vmprotected_item
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::AzureIaaSClassicComputeVMProtectedItem
        end
        def operation_status_job_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusJobExtendedInfo
        end
        def operation_status_provision_ilrextended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusProvisionILRExtendedInfo
        end
        def operation_status_jobs_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusJobsExtendedInfo
        end
        def long_term_schedule_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::LongTermSchedulePolicy
        end
        def simple_schedule_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::SimpleSchedulePolicy
        end
        def simple_retention_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::SimpleRetentionPolicy
        end
        def long_term_retention_policy
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::LongTermRetentionPolicy
        end
        def backup_engine_base_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupEngineBaseResource
        end
        def backup_engine_base_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupEngineBaseResourceList
        end
        def operation_result_info_base_resource
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationResultInfoBaseResource
        end
        def backup_management_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupManagementType
        end
        def operation_status_values
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::OperationStatusValues
        end
        def http_status_code
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::HttpStatusCode
        end
        def job_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobStatus
        end
        def job_operation_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobOperationType
        end
        def protection_status
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionStatus
        end
        def data_source_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DataSourceType
        end
        def backup_item_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::BackupItemType
        end
        def protection_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectionState
        end
        def protected_item_state
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ProtectedItemState
        end
        def recovery_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RecoveryType
        end
        def job_supported_action
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::JobSupportedAction
        end
        def mab_server_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MabServerType
        end
        def workload_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WorkloadType
        end
        def schedule_run_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::ScheduleRunType
        end
        def day_of_week
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::DayOfWeek
        end
        def retention_duration_type
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionDurationType
        end
        def retention_schedule_format
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::RetentionScheduleFormat
        end
        def week_of_month
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::WeekOfMonth
        end
        def month_of_year
          Azure::ARM::RecoveryServicesBackup::Api_2016_06_01::Models::MonthOfYear
        end
      end
    end
  end
end
