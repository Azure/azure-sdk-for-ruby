# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_backup'

module Azure::Profiles::V2019_07_01
  module RecoveryServicesBackup
    module Mgmt
      ProtectionIntentOperations = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ProtectionIntentOperations
      BackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupStatus
      FeatureSupport = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::FeatureSupport
      BackupJobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupJobs
      JobDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::JobDetails
      ExportJobsOperationResults = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::ExportJobsOperationResults
      Jobs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Jobs
      BackupPolicies = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupPolicies
      BackupProtectedItems = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupProtectedItems
      BackupUsageSummaries = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::BackupUsageSummaries
      Operation = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Operation

      module Models
        DailyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionFormat
        RetentionDuration = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDuration
        AzureFileshareProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItemExtendedInfo
        DailyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionSchedule
        SchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SchedulePolicy
        DpmErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmErrorInfo
        OperationWorkerResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationWorkerResponse
        OperationResultInfoBase = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBase
        TargetAFSRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetAFSRestoreInfo
        MabJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobExtendedInfo
        ValidateOperationsResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationsResponse
        AzureWorkloadErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadErrorInfo
        AzureIaaSVMErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMErrorInfo
        AzureWorkloadJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobTaskDetails
        AzureIaaSVMJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
        AzureWorkloadJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobExtendedInfo
        ValidateOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationRequest
        MabJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
        RestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequest
        MabFileFolderProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItemExtendedInfo
        Resource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
        MabErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
        AzureSqlProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItemExtendedInfo
        TargetRestoreInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetRestoreInfo
        ProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
        YearlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::YearlyRetentionSchedule
        AzureStorageJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobTaskDetails
        MonthlyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthlyRetentionSchedule
        ProtectedItemQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemQueryObject
        WeeklyRetentionFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionFormat
        AzureVMResourceFeatureSupportResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
        SQLDataDirectoryMapping = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryMapping
        AzureVmWorkloadProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItemExtendedInfo
        WeeklyRetentionSchedule = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionSchedule
        Settings = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Settings
        NameInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::NameInfo
        PreValidateEnableBackupRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupRequest
        BackupManagementUsage = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsage
        BackupManagementUsageList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementUsageList
        AzureIaaSVMHealthDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMHealthDetails
        BackupStatusRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
        AzureIaaSVMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItemExtendedInfo
        BackupStatusResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
        ProtectionPolicyQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyQueryObject
        BMSBackupSummariesQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
        AzureStorageErrorInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageErrorInfo
        Day = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Day
        ProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItem
        ErrorDetail = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ErrorDetail
        PreValidateEnableBackupResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
        EncryptionDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::EncryptionDetails
        RestoreFileSpecs = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreFileSpecs
        FeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
        AzureIaaSVMJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
        RetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionPolicy
        ProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicy
        JobQueryObject = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
        SubProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SubProtectionPolicy
        DpmJobTaskDetails = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
        ResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
        DpmJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
        ValidateOperationResponse = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationResponse
        Job = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
        AzureStorageJobExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobExtendedInfo
        DPMProtectedItemExtendedInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItemExtendedInfo
        AzureBackupGoalFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureBackupGoalFeatureSupportRequest
        AzureFileshareProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItem
        AzureFileShareProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareProtectionPolicy
        AzureFileShareRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareRestoreRequest
        AzureIaaSClassicComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSClassicComputeVMProtectedItem
        AzureIaaSComputeVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSComputeVMProtectedItem
        AzureIaaSVMJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
        AzureIaaSVMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItem
        AzureIaaSVMProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectionPolicy
        AzureRecoveryServiceVaultProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureRecoveryServiceVaultProtectionIntent
        AzureResourceProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
        AzureSqlProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItem
        AzureSqlProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectionPolicy
        AzureStorageJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJob
        AzureVMResourceFeatureSupportRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
        AzureVmWorkloadProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItem
        AzureVmWorkloadProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectionPolicy
        AzureVmWorkloadSAPHanaDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSAPHanaDatabaseProtectedItem
        AzureVmWorkloadSQLDatabaseProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSQLDatabaseProtectedItem
        AzureWorkloadAutoProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadAutoProtectionIntent
        AzureWorkloadJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJob
        AzureWorkloadRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadRestoreRequest
        AzureWorkloadSAPHanaRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaRestoreRequest
        AzureWorkloadSAPHanaPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaPointInTimeRestoreRequest
        AzureWorkloadSQLAutoProtectionIntent = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLAutoProtectionIntent
        AzureWorkloadSQLRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLRestoreRequest
        AzureWorkloadSQLPointInTimeRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLPointInTimeRestoreRequest
        DpmJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
        DPMProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItem
        ExportJobsOperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ExportJobsOperationResultInfo
        GenericProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectedItem
        GenericProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectionPolicy
        IaasVMRestoreRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::IaasVMRestoreRequest
        JobResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
        JobResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
        LogSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LogSchedulePolicy
        LongTermRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermRetentionPolicy
        LongTermSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LongTermSchedulePolicy
        MabFileFolderProtectedItem = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItem
        MabJob = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
        MabProtectionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabProtectionPolicy
        OperationResultInfo = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfo
        OperationResultInfoBaseResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBaseResource
        ProtectedItemResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResource
        ProtectedItemResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResourceList
        ProtectionIntentResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
        ProtectionPolicyResource = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResource
        ProtectionPolicyResourceList = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResourceList
        SimpleRetentionPolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleRetentionPolicy
        SimpleSchedulePolicy = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleSchedulePolicy
        ValidateRestoreOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateRestoreOperationRequest
        ValidateIaasVMRestoreOperationRequest = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateIaasVMRestoreOperationRequest
        ProtectionState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionState
        HealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthStatus
        RecoveryType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RecoveryType
        CopyOptions = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CopyOptions
        RestoreRequestType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequestType
        JobSupportedAction = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
        ProtectedItemState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemState
        SupportStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
        LastBackupStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LastBackupStatus
        ProtectedItemHealthStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemHealthStatus
        OverwriteOptions = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OverwriteOptions
        WorkloadItemType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadItemType
        SQLDataDirectoryType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryType
        UsagesUnit = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
        DataSourceType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DataSourceType
        ProtectionStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionStatus
        FabricName = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FabricName
        Type = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Type
        RetentionDurationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDurationType
        BackupManagementType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupManagementType
        JobStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobStatus
        JobOperationType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobOperationType
        DayOfWeek = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DayOfWeek
        RetentionScheduleFormat = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionScheduleFormat
        WeekOfMonth = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeekOfMonth
        MonthOfYear = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthOfYear
        MabServerType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
        WorkloadType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
        HttpStatusCode = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HttpStatusCode
        ValidationStatus = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
        CreateMode = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CreateMode
        HealthState = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthState
        ScheduleRunType = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ScheduleRunType
      end

      class RecoveryServicesBackupManagementClass
        attr_reader :protection_intent_operations, :backup_status, :feature_support, :backup_jobs, :job_details, :export_jobs_operation_results, :jobs, :backup_policies, :backup_protected_items, :backup_usage_summaries, :operation, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @protection_intent_operations = @client_0.protection_intent_operations
          @backup_status = @client_0.backup_status
          @feature_support = @client_0.feature_support
          @backup_jobs = @client_0.backup_jobs
          @job_details = @client_0.job_details
          @export_jobs_operation_results = @client_0.export_jobs_operation_results
          @jobs = @client_0.jobs
          @backup_policies = @client_0.backup_policies
          @backup_protected_items = @client_0.backup_protected_items
          @backup_usage_summaries = @client_0.backup_usage_summaries
          @operation = @client_0.operation

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/RecoveryServicesBackup/Mgmt"
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
          def daily_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionFormat
          end
          def retention_duration
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDuration
          end
          def azure_fileshare_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItemExtendedInfo
          end
          def daily_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DailyRetentionSchedule
          end
          def schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SchedulePolicy
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
          def target_afsrestore_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetAFSRestoreInfo
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
          def azure_workload_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobTaskDetails
          end
          def azure_iaa_svmjob_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobTaskDetails
          end
          def azure_workload_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJobExtendedInfo
          end
          def validate_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationRequest
          end
          def mab_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJobTaskDetails
          end
          def restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreRequest
          end
          def mab_file_folder_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabFileFolderProtectedItemExtendedInfo
          end
          def resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Resource
          end
          def mab_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabErrorInfo
          end
          def azure_sql_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItemExtendedInfo
          end
          def target_restore_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::TargetRestoreInfo
          end
          def protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntent
          end
          def yearly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::YearlyRetentionSchedule
          end
          def azure_storage_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobTaskDetails
          end
          def monthly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MonthlyRetentionSchedule
          end
          def protected_item_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemQueryObject
          end
          def weekly_retention_format
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionFormat
          end
          def azure_vmresource_feature_support_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportResponse
          end
          def sqldata_directory_mapping
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryMapping
          end
          def azure_vm_workload_protected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItemExtendedInfo
          end
          def weekly_retention_schedule
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WeeklyRetentionSchedule
          end
          def settings
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Settings
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
          def azure_iaa_svmhealth_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMHealthDetails
          end
          def backup_status_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusRequest
          end
          def azure_iaa_svmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItemExtendedInfo
          end
          def backup_status_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BackupStatusResponse
          end
          def protection_policy_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyQueryObject
          end
          def bmsbackup_summaries_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::BMSBackupSummariesQueryObject
          end
          def azure_storage_error_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageErrorInfo
          end
          def day
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Day
          end
          def protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItem
          end
          def error_detail
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ErrorDetail
          end
          def pre_validate_enable_backup_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::PreValidateEnableBackupResponse
          end
          def encryption_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::EncryptionDetails
          end
          def restore_file_specs
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RestoreFileSpecs
          end
          def feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::FeatureSupportRequest
          end
          def azure_iaa_svmjob_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJobExtendedInfo
          end
          def retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionPolicy
          end
          def protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicy
          end
          def job_query_object
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobQueryObject
          end
          def sub_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SubProtectionPolicy
          end
          def dpm_job_task_details
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobTaskDetails
          end
          def resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ResourceList
          end
          def dpm_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJobExtendedInfo
          end
          def validate_operation_response
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateOperationResponse
          end
          def job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::Job
          end
          def azure_storage_job_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJobExtendedInfo
          end
          def dpmprotected_item_extended_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItemExtendedInfo
          end
          def azure_backup_goal_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureBackupGoalFeatureSupportRequest
          end
          def azure_fileshare_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileshareProtectedItem
          end
          def azure_file_share_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareProtectionPolicy
          end
          def azure_file_share_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureFileShareRestoreRequest
          end
          def azure_iaa_sclassic_compute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSClassicComputeVMProtectedItem
          end
          def azure_iaa_scompute_vmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSComputeVMProtectedItem
          end
          def azure_iaa_svmjob
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMJob
          end
          def azure_iaa_svmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectedItem
          end
          def azure_iaa_svmprotection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureIaaSVMProtectionPolicy
          end
          def azure_recovery_service_vault_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureRecoveryServiceVaultProtectionIntent
          end
          def azure_resource_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureResourceProtectionIntent
          end
          def azure_sql_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectedItem
          end
          def azure_sql_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureSqlProtectionPolicy
          end
          def azure_storage_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureStorageJob
          end
          def azure_vmresource_feature_support_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVMResourceFeatureSupportRequest
          end
          def azure_vm_workload_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectedItem
          end
          def azure_vm_workload_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadProtectionPolicy
          end
          def azure_vm_workload_saphana_database_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSAPHanaDatabaseProtectedItem
          end
          def azure_vm_workload_sqldatabase_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureVmWorkloadSQLDatabaseProtectedItem
          end
          def azure_workload_auto_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadAutoProtectionIntent
          end
          def azure_workload_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadJob
          end
          def azure_workload_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadRestoreRequest
          end
          def azure_workload_saphana_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaRestoreRequest
          end
          def azure_workload_saphana_point_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSAPHanaPointInTimeRestoreRequest
          end
          def azure_workload_sqlauto_protection_intent
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLAutoProtectionIntent
          end
          def azure_workload_sqlrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLRestoreRequest
          end
          def azure_workload_sqlpoint_in_time_restore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::AzureWorkloadSQLPointInTimeRestoreRequest
          end
          def dpm_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DpmJob
          end
          def dpmprotected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DPMProtectedItem
          end
          def export_jobs_operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ExportJobsOperationResultInfo
          end
          def generic_protected_item
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectedItem
          end
          def generic_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::GenericProtectionPolicy
          end
          def iaas_vmrestore_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::IaasVMRestoreRequest
          end
          def job_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResource
          end
          def job_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobResourceList
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
          def mab_job
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabJob
          end
          def mab_protection_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabProtectionPolicy
          end
          def operation_result_info
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfo
          end
          def operation_result_info_base_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OperationResultInfoBaseResource
          end
          def protected_item_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResource
          end
          def protected_item_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemResourceList
          end
          def protection_intent_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionIntentResource
          end
          def protection_policy_resource
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResource
          end
          def protection_policy_resource_list
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionPolicyResourceList
          end
          def simple_retention_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleRetentionPolicy
          end
          def simple_schedule_policy
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SimpleSchedulePolicy
          end
          def validate_restore_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateRestoreOperationRequest
          end
          def validate_iaas_vmrestore_operation_request
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidateIaasVMRestoreOperationRequest
          end
          def protection_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectionState
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
          def job_supported_action
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::JobSupportedAction
          end
          def protected_item_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemState
          end
          def support_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SupportStatus
          end
          def last_backup_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::LastBackupStatus
          end
          def protected_item_health_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ProtectedItemHealthStatus
          end
          def overwrite_options
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::OverwriteOptions
          end
          def workload_item_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadItemType
          end
          def sqldata_directory_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::SQLDataDirectoryType
          end
          def usages_unit
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::UsagesUnit
          end
          def data_source_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::DataSourceType
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
          def retention_duration_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::RetentionDurationType
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
          def mab_server_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::MabServerType
          end
          def workload_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::WorkloadType
          end
          def http_status_code
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HttpStatusCode
          end
          def validation_status
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ValidationStatus
          end
          def create_mode
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::CreateMode
          end
          def health_state
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::HealthState
          end
          def schedule_run_type
            Azure::RecoveryServicesBackup::Mgmt::V2017_07_01::Models::ScheduleRunType
          end
        end
      end
    end
  end
end
