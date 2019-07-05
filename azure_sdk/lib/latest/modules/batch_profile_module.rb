# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'
require 'azure_batch'

module Azure::Profiles::Latest
  module Batch
    Application = Azure::Batch::V2019_06_01_9_0::Application
    Pool = Azure::Batch::V2019_06_01_9_0::Pool
    Account = Azure::Batch::V2019_06_01_9_0::Account
    Job = Azure::Batch::V2019_06_01_9_0::Job
    CertificateOperations = Azure::Batch::V2019_06_01_9_0::CertificateOperations
    File = Azure::Batch::V2019_06_01_9_0::File
    JobSchedule = Azure::Batch::V2019_06_01_9_0::JobSchedule
    Task = Azure::Batch::V2019_06_01_9_0::Task
    ComputeNodeOperations = Azure::Batch::V2019_06_01_9_0::ComputeNodeOperations

    module Models
      ComputeNodeGetRemoteLoginSettingsResult = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetRemoteLoginSettingsResult
      PoolUsageMetrics = Azure::Batch::V2019_06_01_9_0::Models::PoolUsageMetrics
      JobSchedulePatchParameter = Azure::Batch::V2019_06_01_9_0::Models::JobSchedulePatchParameter
      ImageReference = Azure::Batch::V2019_06_01_9_0::Models::ImageReference
      JobScheduleUpdateParameter = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleUpdateParameter
      AuthenticationTokenSettings = Azure::Batch::V2019_06_01_9_0::Models::AuthenticationTokenSettings
      JobDisableParameter = Azure::Batch::V2019_06_01_9_0::Models::JobDisableParameter
      UsageStatistics = Azure::Batch::V2019_06_01_9_0::Models::UsageStatistics
      JobTerminateParameter = Azure::Batch::V2019_06_01_9_0::Models::JobTerminateParameter
      PoolStatistics = Azure::Batch::V2019_06_01_9_0::Models::PoolStatistics
      JobPatchParameter = Azure::Batch::V2019_06_01_9_0::Models::JobPatchParameter
      NameValuePair = Azure::Batch::V2019_06_01_9_0::Models::NameValuePair
      JobUpdateParameter = Azure::Batch::V2019_06_01_9_0::Models::JobUpdateParameter
      Certificate = Azure::Batch::V2019_06_01_9_0::Models::Certificate
      PoolEnableAutoScaleParameter = Azure::Batch::V2019_06_01_9_0::Models::PoolEnableAutoScaleParameter
      ApplicationSummary = Azure::Batch::V2019_06_01_9_0::Models::ApplicationSummary
      PoolEvaluateAutoScaleParameter = Azure::Batch::V2019_06_01_9_0::Models::PoolEvaluateAutoScaleParameter
      CertificateListResult = Azure::Batch::V2019_06_01_9_0::Models::CertificateListResult
      PoolResizeParameter = Azure::Batch::V2019_06_01_9_0::Models::PoolResizeParameter
      NodeFile = Azure::Batch::V2019_06_01_9_0::Models::NodeFile
      PoolUpdatePropertiesParameter = Azure::Batch::V2019_06_01_9_0::Models::PoolUpdatePropertiesParameter
      Schedule = Azure::Batch::V2019_06_01_9_0::Models::Schedule
      PoolPatchParameter = Azure::Batch::V2019_06_01_9_0::Models::PoolPatchParameter
      JobNetworkConfiguration = Azure::Batch::V2019_06_01_9_0::Models::JobNetworkConfiguration
      TaskUpdateParameter = Azure::Batch::V2019_06_01_9_0::Models::TaskUpdateParameter
      TaskContainerSettings = Azure::Batch::V2019_06_01_9_0::Models::TaskContainerSettings
      NodeUpdateUserParameter = Azure::Batch::V2019_06_01_9_0::Models::NodeUpdateUserParameter
      EnvironmentSetting = Azure::Batch::V2019_06_01_9_0::Models::EnvironmentSetting
      NodeRebootParameter = Azure::Batch::V2019_06_01_9_0::Models::NodeRebootParameter
      ExitCodeMapping = Azure::Batch::V2019_06_01_9_0::Models::ExitCodeMapping
      NodeReimageParameter = Azure::Batch::V2019_06_01_9_0::Models::NodeReimageParameter
      ExitConditions = Azure::Batch::V2019_06_01_9_0::Models::ExitConditions
      NodeDisableSchedulingParameter = Azure::Batch::V2019_06_01_9_0::Models::NodeDisableSchedulingParameter
      UserIdentity = Azure::Batch::V2019_06_01_9_0::Models::UserIdentity
      NodeRemoveParameter = Azure::Batch::V2019_06_01_9_0::Models::NodeRemoveParameter
      WindowsUserConfiguration = Azure::Batch::V2019_06_01_9_0::Models::WindowsUserConfiguration
      UploadBatchServiceLogsConfiguration = Azure::Batch::V2019_06_01_9_0::Models::UploadBatchServiceLogsConfiguration
      TaskConstraints = Azure::Batch::V2019_06_01_9_0::Models::TaskConstraints
      UploadBatchServiceLogsResult = Azure::Batch::V2019_06_01_9_0::Models::UploadBatchServiceLogsResult
      OutputFileDestination = Azure::Batch::V2019_06_01_9_0::Models::OutputFileDestination
      NodeCounts = Azure::Batch::V2019_06_01_9_0::Models::NodeCounts
      OutputFile = Azure::Batch::V2019_06_01_9_0::Models::OutputFile
      PoolNodeCounts = Azure::Batch::V2019_06_01_9_0::Models::PoolNodeCounts
      JobPreparationTask = Azure::Batch::V2019_06_01_9_0::Models::JobPreparationTask
      PoolNodeCountsListResult = Azure::Batch::V2019_06_01_9_0::Models::PoolNodeCountsListResult
      TaskSchedulingPolicy = Azure::Batch::V2019_06_01_9_0::Models::TaskSchedulingPolicy
      ApplicationListOptions = Azure::Batch::V2019_06_01_9_0::Models::ApplicationListOptions
      CertificateReference = Azure::Batch::V2019_06_01_9_0::Models::CertificateReference
      ApplicationGetOptions = Azure::Batch::V2019_06_01_9_0::Models::ApplicationGetOptions
      CloudServiceConfiguration = Azure::Batch::V2019_06_01_9_0::Models::CloudServiceConfiguration
      PoolListUsageMetricsOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolListUsageMetricsOptions
      DataDisk = Azure::Batch::V2019_06_01_9_0::Models::DataDisk
      PoolGetAllLifetimeStatisticsOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolGetAllLifetimeStatisticsOptions
      VirtualMachineConfiguration = Azure::Batch::V2019_06_01_9_0::Models::VirtualMachineConfiguration
      PoolAddOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolAddOptions
      InboundNATPool = Azure::Batch::V2019_06_01_9_0::Models::InboundNATPool
      PoolListOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolListOptions
      NetworkConfiguration = Azure::Batch::V2019_06_01_9_0::Models::NetworkConfiguration
      PoolDeleteOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolDeleteOptions
      AutoPoolSpecification = Azure::Batch::V2019_06_01_9_0::Models::AutoPoolSpecification
      PoolExistsOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolExistsOptions
      JobSpecification = Azure::Batch::V2019_06_01_9_0::Models::JobSpecification
      PoolGetOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolGetOptions
      JobScheduleExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleExecutionInformation
      PoolPatchOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolPatchOptions
      CloudJobSchedule = Azure::Batch::V2019_06_01_9_0::Models::CloudJobSchedule
      PoolDisableAutoScaleOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolDisableAutoScaleOptions
      CloudJobScheduleListResult = Azure::Batch::V2019_06_01_9_0::Models::CloudJobScheduleListResult
      PoolEnableAutoScaleOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolEnableAutoScaleOptions
      JobExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::JobExecutionInformation
      PoolEvaluateAutoScaleOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolEvaluateAutoScaleOptions
      JobAddParameter = Azure::Batch::V2019_06_01_9_0::Models::JobAddParameter
      PoolResizeOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolResizeOptions
      TaskContainerExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::TaskContainerExecutionInformation
      PoolStopResizeOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolStopResizeOptions
      JobPreparationTaskExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::JobPreparationTaskExecutionInformation
      PoolUpdatePropertiesOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolUpdatePropertiesOptions
      JobPreparationAndReleaseTaskExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::JobPreparationAndReleaseTaskExecutionInformation
      PoolRemoveNodesOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolRemoveNodesOptions
      TaskCounts = Azure::Batch::V2019_06_01_9_0::Models::TaskCounts
      AccountListSupportedImagesOptions = Azure::Batch::V2019_06_01_9_0::Models::AccountListSupportedImagesOptions
      AutoScaleRun = Azure::Batch::V2019_06_01_9_0::Models::AutoScaleRun
      AccountListPoolNodeCountsOptions = Azure::Batch::V2019_06_01_9_0::Models::AccountListPoolNodeCountsOptions
      CloudPool = Azure::Batch::V2019_06_01_9_0::Models::CloudPool
      JobGetAllLifetimeStatisticsOptions = Azure::Batch::V2019_06_01_9_0::Models::JobGetAllLifetimeStatisticsOptions
      ApplicationListResult = Azure::Batch::V2019_06_01_9_0::Models::ApplicationListResult
      JobDeleteOptions = Azure::Batch::V2019_06_01_9_0::Models::JobDeleteOptions
      AffinityInformation = Azure::Batch::V2019_06_01_9_0::Models::AffinityInformation
      JobGetOptions = Azure::Batch::V2019_06_01_9_0::Models::JobGetOptions
      ComputeNodeInformation = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeInformation
      JobPatchOptions = Azure::Batch::V2019_06_01_9_0::Models::JobPatchOptions
      MultiInstanceSettings = Azure::Batch::V2019_06_01_9_0::Models::MultiInstanceSettings
      JobUpdateOptions = Azure::Batch::V2019_06_01_9_0::Models::JobUpdateOptions
      TaskIdRange = Azure::Batch::V2019_06_01_9_0::Models::TaskIdRange
      JobDisableOptions = Azure::Batch::V2019_06_01_9_0::Models::JobDisableOptions
      CloudTask = Azure::Batch::V2019_06_01_9_0::Models::CloudTask
      JobEnableOptions = Azure::Batch::V2019_06_01_9_0::Models::JobEnableOptions
      TaskAddCollectionParameter = Azure::Batch::V2019_06_01_9_0::Models::TaskAddCollectionParameter
      JobTerminateOptions = Azure::Batch::V2019_06_01_9_0::Models::JobTerminateOptions
      BatchErrorDetail = Azure::Batch::V2019_06_01_9_0::Models::BatchErrorDetail
      JobAddOptions = Azure::Batch::V2019_06_01_9_0::Models::JobAddOptions
      TaskAddResult = Azure::Batch::V2019_06_01_9_0::Models::TaskAddResult
      JobListOptions = Azure::Batch::V2019_06_01_9_0::Models::JobListOptions
      SubtaskInformation = Azure::Batch::V2019_06_01_9_0::Models::SubtaskInformation
      JobListFromJobScheduleOptions = Azure::Batch::V2019_06_01_9_0::Models::JobListFromJobScheduleOptions
      CloudTaskListResult = Azure::Batch::V2019_06_01_9_0::Models::CloudTaskListResult
      JobListPreparationAndReleaseTaskStatusOptions = Azure::Batch::V2019_06_01_9_0::Models::JobListPreparationAndReleaseTaskStatusOptions
      StartTaskInformation = Azure::Batch::V2019_06_01_9_0::Models::StartTaskInformation
      JobGetTaskCountsOptions = Azure::Batch::V2019_06_01_9_0::Models::JobGetTaskCountsOptions
      InboundEndpoint = Azure::Batch::V2019_06_01_9_0::Models::InboundEndpoint
      CertificateAddOptions = Azure::Batch::V2019_06_01_9_0::Models::CertificateAddOptions
      ComputeNode = Azure::Batch::V2019_06_01_9_0::Models::ComputeNode
      CertificateListOptions = Azure::Batch::V2019_06_01_9_0::Models::CertificateListOptions
      ComputeNodeUser = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeUser
      CertificateCancelDeletionOptions = Azure::Batch::V2019_06_01_9_0::Models::CertificateCancelDeletionOptions
      ImageInformation = Azure::Batch::V2019_06_01_9_0::Models::ImageInformation
      CertificateDeleteOptions = Azure::Batch::V2019_06_01_9_0::Models::CertificateDeleteOptions
      ResourceStatistics = Azure::Batch::V2019_06_01_9_0::Models::ResourceStatistics
      CertificateGetOptions = Azure::Batch::V2019_06_01_9_0::Models::CertificateGetOptions
      DeleteCertificateError = Azure::Batch::V2019_06_01_9_0::Models::DeleteCertificateError
      FileDeleteFromTaskOptions = Azure::Batch::V2019_06_01_9_0::Models::FileDeleteFromTaskOptions
      CertificateAddParameter = Azure::Batch::V2019_06_01_9_0::Models::CertificateAddParameter
      FileGetFromTaskOptions = Azure::Batch::V2019_06_01_9_0::Models::FileGetFromTaskOptions
      NodeFileListResult = Azure::Batch::V2019_06_01_9_0::Models::NodeFileListResult
      FileGetPropertiesFromTaskOptions = Azure::Batch::V2019_06_01_9_0::Models::FileGetPropertiesFromTaskOptions
      ContainerRegistry = Azure::Batch::V2019_06_01_9_0::Models::ContainerRegistry
      FileDeleteFromComputeNodeOptions = Azure::Batch::V2019_06_01_9_0::Models::FileDeleteFromComputeNodeOptions
      ExitOptions = Azure::Batch::V2019_06_01_9_0::Models::ExitOptions
      FileGetFromComputeNodeOptions = Azure::Batch::V2019_06_01_9_0::Models::FileGetFromComputeNodeOptions
      AutoUserSpecification = Azure::Batch::V2019_06_01_9_0::Models::AutoUserSpecification
      FileGetPropertiesFromComputeNodeOptions = Azure::Batch::V2019_06_01_9_0::Models::FileGetPropertiesFromComputeNodeOptions
      UserAccount = Azure::Batch::V2019_06_01_9_0::Models::UserAccount
      FileListFromTaskOptions = Azure::Batch::V2019_06_01_9_0::Models::FileListFromTaskOptions
      OutputFileUploadOptions = Azure::Batch::V2019_06_01_9_0::Models::OutputFileUploadOptions
      FileListFromComputeNodeOptions = Azure::Batch::V2019_06_01_9_0::Models::FileListFromComputeNodeOptions
      JobReleaseTask = Azure::Batch::V2019_06_01_9_0::Models::JobReleaseTask
      JobScheduleExistsOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleExistsOptions
      MetadataItem = Azure::Batch::V2019_06_01_9_0::Models::MetadataItem
      JobScheduleDeleteOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleDeleteOptions
      ContainerConfiguration = Azure::Batch::V2019_06_01_9_0::Models::ContainerConfiguration
      JobScheduleGetOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleGetOptions
      PoolEndpointConfiguration = Azure::Batch::V2019_06_01_9_0::Models::PoolEndpointConfiguration
      JobSchedulePatchOptions = Azure::Batch::V2019_06_01_9_0::Models::JobSchedulePatchOptions
      PoolInformation = Azure::Batch::V2019_06_01_9_0::Models::PoolInformation
      JobScheduleUpdateOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleUpdateOptions
      JobScheduleStatistics = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleStatistics
      JobScheduleDisableOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleDisableOptions
      JobSchedulingError = Azure::Batch::V2019_06_01_9_0::Models::JobSchedulingError
      JobScheduleEnableOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleEnableOptions
      CloudJobListResult = Azure::Batch::V2019_06_01_9_0::Models::CloudJobListResult
      JobScheduleTerminateOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleTerminateOptions
      JobReleaseTaskExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::JobReleaseTaskExecutionInformation
      JobScheduleAddOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleAddOptions
      AutoScaleRunError = Azure::Batch::V2019_06_01_9_0::Models::AutoScaleRunError
      JobScheduleListOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleListOptions
      PoolAddParameter = Azure::Batch::V2019_06_01_9_0::Models::PoolAddParameter
      TaskAddOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskAddOptions
      TaskExecutionInformation = Azure::Batch::V2019_06_01_9_0::Models::TaskExecutionInformation
      TaskListOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskListOptions
      TaskStatistics = Azure::Batch::V2019_06_01_9_0::Models::TaskStatistics
      TaskAddCollectionOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskAddCollectionOptions
      TaskAddParameter = Azure::Batch::V2019_06_01_9_0::Models::TaskAddParameter
      TaskDeleteOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskDeleteOptions
      BatchError = Azure::Batch::V2019_06_01_9_0::Models::BatchError
      TaskGetOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskGetOptions
      CloudTaskListSubtasksResult = Azure::Batch::V2019_06_01_9_0::Models::CloudTaskListSubtasksResult
      TaskUpdateOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskUpdateOptions
      ComputeNodeError = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeError
      TaskListSubtasksOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskListSubtasksOptions
      ComputeNodeListResult = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeListResult
      TaskTerminateOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskTerminateOptions
      AccountListSupportedImagesResult = Azure::Batch::V2019_06_01_9_0::Models::AccountListSupportedImagesResult
      TaskReactivateOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskReactivateOptions
      ApplicationPackageReference = Azure::Batch::V2019_06_01_9_0::Models::ApplicationPackageReference
      ComputeNodeAddUserOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeAddUserOptions
      JobConstraints = Azure::Batch::V2019_06_01_9_0::Models::JobConstraints
      ComputeNodeDeleteUserOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeDeleteUserOptions
      ExitCodeRangeMapping = Azure::Batch::V2019_06_01_9_0::Models::ExitCodeRangeMapping
      ComputeNodeUpdateUserOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeUpdateUserOptions
      OutputFileBlobContainerDestination = Azure::Batch::V2019_06_01_9_0::Models::OutputFileBlobContainerDestination
      ComputeNodeGetOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetOptions
      StartTask = Azure::Batch::V2019_06_01_9_0::Models::StartTask
      ComputeNodeRebootOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeRebootOptions
      NetworkSecurityGroupRule = Azure::Batch::V2019_06_01_9_0::Models::NetworkSecurityGroupRule
      ComputeNodeReimageOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeReimageOptions
      RecentJob = Azure::Batch::V2019_06_01_9_0::Models::RecentJob
      ComputeNodeDisableSchedulingOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeDisableSchedulingOptions
      CloudJob = Azure::Batch::V2019_06_01_9_0::Models::CloudJob
      ComputeNodeEnableSchedulingOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeEnableSchedulingOptions
      CloudJobListPreparationAndReleaseTaskStatusResult = Azure::Batch::V2019_06_01_9_0::Models::CloudJobListPreparationAndReleaseTaskStatusResult
      ComputeNodeGetRemoteLoginSettingsOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetRemoteLoginSettingsOptions
      CloudPoolListResult = Azure::Batch::V2019_06_01_9_0::Models::CloudPoolListResult
      ComputeNodeGetRemoteDesktopOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetRemoteDesktopOptions
      TaskDependencies = Azure::Batch::V2019_06_01_9_0::Models::TaskDependencies
      ComputeNodeUploadBatchServiceLogsOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeUploadBatchServiceLogsOptions
      TaskAddCollectionResult = Azure::Batch::V2019_06_01_9_0::Models::TaskAddCollectionResult
      ComputeNodeListOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeListOptions
      ComputeNodeEndpointConfiguration = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeEndpointConfiguration
      JobStatistics = Azure::Batch::V2019_06_01_9_0::Models::JobStatistics
      ApplicationListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::ApplicationListNextOptions
      ResourceFile = Azure::Batch::V2019_06_01_9_0::Models::ResourceFile
      PoolListUsageMetricsNextOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolListUsageMetricsNextOptions
      JobManagerTask = Azure::Batch::V2019_06_01_9_0::Models::JobManagerTask
      PoolListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::PoolListNextOptions
      PoolSpecification = Azure::Batch::V2019_06_01_9_0::Models::PoolSpecification
      AccountListSupportedImagesNextOptions = Azure::Batch::V2019_06_01_9_0::Models::AccountListSupportedImagesNextOptions
      TaskFailureInformation = Azure::Batch::V2019_06_01_9_0::Models::TaskFailureInformation
      AccountListPoolNodeCountsNextOptions = Azure::Batch::V2019_06_01_9_0::Models::AccountListPoolNodeCountsNextOptions
      NodeAgentInformation = Azure::Batch::V2019_06_01_9_0::Models::NodeAgentInformation
      JobListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::JobListNextOptions
      TaskInformation = Azure::Batch::V2019_06_01_9_0::Models::TaskInformation
      JobListFromJobScheduleNextOptions = Azure::Batch::V2019_06_01_9_0::Models::JobListFromJobScheduleNextOptions
      FileProperties = Azure::Batch::V2019_06_01_9_0::Models::FileProperties
      JobListPreparationAndReleaseTaskStatusNextOptions = Azure::Batch::V2019_06_01_9_0::Models::JobListPreparationAndReleaseTaskStatusNextOptions
      WindowsConfiguration = Azure::Batch::V2019_06_01_9_0::Models::WindowsConfiguration
      CertificateListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::CertificateListNextOptions
      ResizeError = Azure::Batch::V2019_06_01_9_0::Models::ResizeError
      FileListFromTaskNextOptions = Azure::Batch::V2019_06_01_9_0::Models::FileListFromTaskNextOptions
      PoolListUsageMetricsResult = Azure::Batch::V2019_06_01_9_0::Models::PoolListUsageMetricsResult
      FileListFromComputeNodeNextOptions = Azure::Batch::V2019_06_01_9_0::Models::FileListFromComputeNodeNextOptions
      JobScheduleAddParameter = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleAddParameter
      JobScheduleListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleListNextOptions
      LinuxUserConfiguration = Azure::Batch::V2019_06_01_9_0::Models::LinuxUserConfiguration
      TaskListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::TaskListNextOptions
      ErrorMessage = Azure::Batch::V2019_06_01_9_0::Models::ErrorMessage
      ComputeNodeListNextOptions = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeListNextOptions
      OSType = Azure::Batch::V2019_06_01_9_0::Models::OSType
      VerificationType = Azure::Batch::V2019_06_01_9_0::Models::VerificationType
      AccessScope = Azure::Batch::V2019_06_01_9_0::Models::AccessScope
      CertificateState = Azure::Batch::V2019_06_01_9_0::Models::CertificateState
      CertificateFormat = Azure::Batch::V2019_06_01_9_0::Models::CertificateFormat
      ContainerWorkingDirectory = Azure::Batch::V2019_06_01_9_0::Models::ContainerWorkingDirectory
      JobAction = Azure::Batch::V2019_06_01_9_0::Models::JobAction
      DependencyAction = Azure::Batch::V2019_06_01_9_0::Models::DependencyAction
      AutoUserScope = Azure::Batch::V2019_06_01_9_0::Models::AutoUserScope
      ElevationLevel = Azure::Batch::V2019_06_01_9_0::Models::ElevationLevel
      LoginMode = Azure::Batch::V2019_06_01_9_0::Models::LoginMode
      OutputFileUploadCondition = Azure::Batch::V2019_06_01_9_0::Models::OutputFileUploadCondition
      ComputeNodeFillType = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeFillType
      CertificateStoreLocation = Azure::Batch::V2019_06_01_9_0::Models::CertificateStoreLocation
      CertificateVisibility = Azure::Batch::V2019_06_01_9_0::Models::CertificateVisibility
      CachingType = Azure::Batch::V2019_06_01_9_0::Models::CachingType
      StorageAccountType = Azure::Batch::V2019_06_01_9_0::Models::StorageAccountType
      DynamicVNetAssignmentScope = Azure::Batch::V2019_06_01_9_0::Models::DynamicVNetAssignmentScope
      InboundEndpointProtocol = Azure::Batch::V2019_06_01_9_0::Models::InboundEndpointProtocol
      NetworkSecurityGroupRuleAccess = Azure::Batch::V2019_06_01_9_0::Models::NetworkSecurityGroupRuleAccess
      PoolLifetimeOption = Azure::Batch::V2019_06_01_9_0::Models::PoolLifetimeOption
      OnAllTasksComplete = Azure::Batch::V2019_06_01_9_0::Models::OnAllTasksComplete
      OnTaskFailure = Azure::Batch::V2019_06_01_9_0::Models::OnTaskFailure
      JobScheduleState = Azure::Batch::V2019_06_01_9_0::Models::JobScheduleState
      ErrorCategory = Azure::Batch::V2019_06_01_9_0::Models::ErrorCategory
      JobState = Azure::Batch::V2019_06_01_9_0::Models::JobState
      JobPreparationTaskState = Azure::Batch::V2019_06_01_9_0::Models::JobPreparationTaskState
      TaskExecutionResult = Azure::Batch::V2019_06_01_9_0::Models::TaskExecutionResult
      JobReleaseTaskState = Azure::Batch::V2019_06_01_9_0::Models::JobReleaseTaskState
      PoolState = Azure::Batch::V2019_06_01_9_0::Models::PoolState
      AllocationState = Azure::Batch::V2019_06_01_9_0::Models::AllocationState
      TaskState = Azure::Batch::V2019_06_01_9_0::Models::TaskState
      TaskAddStatus = Azure::Batch::V2019_06_01_9_0::Models::TaskAddStatus
      SubtaskState = Azure::Batch::V2019_06_01_9_0::Models::SubtaskState
      StartTaskState = Azure::Batch::V2019_06_01_9_0::Models::StartTaskState
      ComputeNodeState = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeState
      SchedulingState = Azure::Batch::V2019_06_01_9_0::Models::SchedulingState
      DisableJobOption = Azure::Batch::V2019_06_01_9_0::Models::DisableJobOption
      ComputeNodeDeallocationOption = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeDeallocationOption
      ComputeNodeRebootOption = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeRebootOption
      ComputeNodeReimageOption = Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeReimageOption
      DisableComputeNodeSchedulingOption = Azure::Batch::V2019_06_01_9_0::Models::DisableComputeNodeSchedulingOption
    end

    class BatchDataClass
      attr_reader :application, :pool, :account, :job, :certificate_operations, :file, :job_schedule, :task, :compute_node_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::Batch::V2019_06_01_9_0::BatchServiceClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @application = @client_0.application
        @pool = @client_0.pool
        @account = @client_0.account
        @job = @client_0.job
        @certificate_operations = @client_0.certificate_operations
        @file = @client_0.file
        @job_schedule = @client_0.job_schedule
        @task = @client_0.task
        @compute_node_operations = @client_0.compute_node_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Batch"
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
        def compute_node_get_remote_login_settings_result
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetRemoteLoginSettingsResult
        end
        def pool_usage_metrics
          Azure::Batch::V2019_06_01_9_0::Models::PoolUsageMetrics
        end
        def job_schedule_patch_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobSchedulePatchParameter
        end
        def image_reference
          Azure::Batch::V2019_06_01_9_0::Models::ImageReference
        end
        def job_schedule_update_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleUpdateParameter
        end
        def authentication_token_settings
          Azure::Batch::V2019_06_01_9_0::Models::AuthenticationTokenSettings
        end
        def job_disable_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobDisableParameter
        end
        def usage_statistics
          Azure::Batch::V2019_06_01_9_0::Models::UsageStatistics
        end
        def job_terminate_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobTerminateParameter
        end
        def pool_statistics
          Azure::Batch::V2019_06_01_9_0::Models::PoolStatistics
        end
        def job_patch_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobPatchParameter
        end
        def name_value_pair
          Azure::Batch::V2019_06_01_9_0::Models::NameValuePair
        end
        def job_update_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobUpdateParameter
        end
        def certificate
          Azure::Batch::V2019_06_01_9_0::Models::Certificate
        end
        def pool_enable_auto_scale_parameter
          Azure::Batch::V2019_06_01_9_0::Models::PoolEnableAutoScaleParameter
        end
        def application_summary
          Azure::Batch::V2019_06_01_9_0::Models::ApplicationSummary
        end
        def pool_evaluate_auto_scale_parameter
          Azure::Batch::V2019_06_01_9_0::Models::PoolEvaluateAutoScaleParameter
        end
        def certificate_list_result
          Azure::Batch::V2019_06_01_9_0::Models::CertificateListResult
        end
        def pool_resize_parameter
          Azure::Batch::V2019_06_01_9_0::Models::PoolResizeParameter
        end
        def node_file
          Azure::Batch::V2019_06_01_9_0::Models::NodeFile
        end
        def pool_update_properties_parameter
          Azure::Batch::V2019_06_01_9_0::Models::PoolUpdatePropertiesParameter
        end
        def schedule
          Azure::Batch::V2019_06_01_9_0::Models::Schedule
        end
        def pool_patch_parameter
          Azure::Batch::V2019_06_01_9_0::Models::PoolPatchParameter
        end
        def job_network_configuration
          Azure::Batch::V2019_06_01_9_0::Models::JobNetworkConfiguration
        end
        def task_update_parameter
          Azure::Batch::V2019_06_01_9_0::Models::TaskUpdateParameter
        end
        def task_container_settings
          Azure::Batch::V2019_06_01_9_0::Models::TaskContainerSettings
        end
        def node_update_user_parameter
          Azure::Batch::V2019_06_01_9_0::Models::NodeUpdateUserParameter
        end
        def environment_setting
          Azure::Batch::V2019_06_01_9_0::Models::EnvironmentSetting
        end
        def node_reboot_parameter
          Azure::Batch::V2019_06_01_9_0::Models::NodeRebootParameter
        end
        def exit_code_mapping
          Azure::Batch::V2019_06_01_9_0::Models::ExitCodeMapping
        end
        def node_reimage_parameter
          Azure::Batch::V2019_06_01_9_0::Models::NodeReimageParameter
        end
        def exit_conditions
          Azure::Batch::V2019_06_01_9_0::Models::ExitConditions
        end
        def node_disable_scheduling_parameter
          Azure::Batch::V2019_06_01_9_0::Models::NodeDisableSchedulingParameter
        end
        def user_identity
          Azure::Batch::V2019_06_01_9_0::Models::UserIdentity
        end
        def node_remove_parameter
          Azure::Batch::V2019_06_01_9_0::Models::NodeRemoveParameter
        end
        def windows_user_configuration
          Azure::Batch::V2019_06_01_9_0::Models::WindowsUserConfiguration
        end
        def upload_batch_service_logs_configuration
          Azure::Batch::V2019_06_01_9_0::Models::UploadBatchServiceLogsConfiguration
        end
        def task_constraints
          Azure::Batch::V2019_06_01_9_0::Models::TaskConstraints
        end
        def upload_batch_service_logs_result
          Azure::Batch::V2019_06_01_9_0::Models::UploadBatchServiceLogsResult
        end
        def output_file_destination
          Azure::Batch::V2019_06_01_9_0::Models::OutputFileDestination
        end
        def node_counts
          Azure::Batch::V2019_06_01_9_0::Models::NodeCounts
        end
        def output_file
          Azure::Batch::V2019_06_01_9_0::Models::OutputFile
        end
        def pool_node_counts
          Azure::Batch::V2019_06_01_9_0::Models::PoolNodeCounts
        end
        def job_preparation_task
          Azure::Batch::V2019_06_01_9_0::Models::JobPreparationTask
        end
        def pool_node_counts_list_result
          Azure::Batch::V2019_06_01_9_0::Models::PoolNodeCountsListResult
        end
        def task_scheduling_policy
          Azure::Batch::V2019_06_01_9_0::Models::TaskSchedulingPolicy
        end
        def application_list_options
          Azure::Batch::V2019_06_01_9_0::Models::ApplicationListOptions
        end
        def certificate_reference
          Azure::Batch::V2019_06_01_9_0::Models::CertificateReference
        end
        def application_get_options
          Azure::Batch::V2019_06_01_9_0::Models::ApplicationGetOptions
        end
        def cloud_service_configuration
          Azure::Batch::V2019_06_01_9_0::Models::CloudServiceConfiguration
        end
        def pool_list_usage_metrics_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolListUsageMetricsOptions
        end
        def data_disk
          Azure::Batch::V2019_06_01_9_0::Models::DataDisk
        end
        def pool_get_all_lifetime_statistics_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolGetAllLifetimeStatisticsOptions
        end
        def virtual_machine_configuration
          Azure::Batch::V2019_06_01_9_0::Models::VirtualMachineConfiguration
        end
        def pool_add_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolAddOptions
        end
        def inbound_natpool
          Azure::Batch::V2019_06_01_9_0::Models::InboundNATPool
        end
        def pool_list_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolListOptions
        end
        def network_configuration
          Azure::Batch::V2019_06_01_9_0::Models::NetworkConfiguration
        end
        def pool_delete_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolDeleteOptions
        end
        def auto_pool_specification
          Azure::Batch::V2019_06_01_9_0::Models::AutoPoolSpecification
        end
        def pool_exists_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolExistsOptions
        end
        def job_specification
          Azure::Batch::V2019_06_01_9_0::Models::JobSpecification
        end
        def pool_get_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolGetOptions
        end
        def job_schedule_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleExecutionInformation
        end
        def pool_patch_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolPatchOptions
        end
        def cloud_job_schedule
          Azure::Batch::V2019_06_01_9_0::Models::CloudJobSchedule
        end
        def pool_disable_auto_scale_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolDisableAutoScaleOptions
        end
        def cloud_job_schedule_list_result
          Azure::Batch::V2019_06_01_9_0::Models::CloudJobScheduleListResult
        end
        def pool_enable_auto_scale_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolEnableAutoScaleOptions
        end
        def job_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::JobExecutionInformation
        end
        def pool_evaluate_auto_scale_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolEvaluateAutoScaleOptions
        end
        def job_add_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobAddParameter
        end
        def pool_resize_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolResizeOptions
        end
        def task_container_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::TaskContainerExecutionInformation
        end
        def pool_stop_resize_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolStopResizeOptions
        end
        def job_preparation_task_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::JobPreparationTaskExecutionInformation
        end
        def pool_update_properties_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolUpdatePropertiesOptions
        end
        def job_preparation_and_release_task_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::JobPreparationAndReleaseTaskExecutionInformation
        end
        def pool_remove_nodes_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolRemoveNodesOptions
        end
        def task_counts
          Azure::Batch::V2019_06_01_9_0::Models::TaskCounts
        end
        def account_list_supported_images_options
          Azure::Batch::V2019_06_01_9_0::Models::AccountListSupportedImagesOptions
        end
        def auto_scale_run
          Azure::Batch::V2019_06_01_9_0::Models::AutoScaleRun
        end
        def account_list_pool_node_counts_options
          Azure::Batch::V2019_06_01_9_0::Models::AccountListPoolNodeCountsOptions
        end
        def cloud_pool
          Azure::Batch::V2019_06_01_9_0::Models::CloudPool
        end
        def job_get_all_lifetime_statistics_options
          Azure::Batch::V2019_06_01_9_0::Models::JobGetAllLifetimeStatisticsOptions
        end
        def application_list_result
          Azure::Batch::V2019_06_01_9_0::Models::ApplicationListResult
        end
        def job_delete_options
          Azure::Batch::V2019_06_01_9_0::Models::JobDeleteOptions
        end
        def affinity_information
          Azure::Batch::V2019_06_01_9_0::Models::AffinityInformation
        end
        def job_get_options
          Azure::Batch::V2019_06_01_9_0::Models::JobGetOptions
        end
        def compute_node_information
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeInformation
        end
        def job_patch_options
          Azure::Batch::V2019_06_01_9_0::Models::JobPatchOptions
        end
        def multi_instance_settings
          Azure::Batch::V2019_06_01_9_0::Models::MultiInstanceSettings
        end
        def job_update_options
          Azure::Batch::V2019_06_01_9_0::Models::JobUpdateOptions
        end
        def task_id_range
          Azure::Batch::V2019_06_01_9_0::Models::TaskIdRange
        end
        def job_disable_options
          Azure::Batch::V2019_06_01_9_0::Models::JobDisableOptions
        end
        def cloud_task
          Azure::Batch::V2019_06_01_9_0::Models::CloudTask
        end
        def job_enable_options
          Azure::Batch::V2019_06_01_9_0::Models::JobEnableOptions
        end
        def task_add_collection_parameter
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddCollectionParameter
        end
        def job_terminate_options
          Azure::Batch::V2019_06_01_9_0::Models::JobTerminateOptions
        end
        def batch_error_detail
          Azure::Batch::V2019_06_01_9_0::Models::BatchErrorDetail
        end
        def job_add_options
          Azure::Batch::V2019_06_01_9_0::Models::JobAddOptions
        end
        def task_add_result
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddResult
        end
        def job_list_options
          Azure::Batch::V2019_06_01_9_0::Models::JobListOptions
        end
        def subtask_information
          Azure::Batch::V2019_06_01_9_0::Models::SubtaskInformation
        end
        def job_list_from_job_schedule_options
          Azure::Batch::V2019_06_01_9_0::Models::JobListFromJobScheduleOptions
        end
        def cloud_task_list_result
          Azure::Batch::V2019_06_01_9_0::Models::CloudTaskListResult
        end
        def job_list_preparation_and_release_task_status_options
          Azure::Batch::V2019_06_01_9_0::Models::JobListPreparationAndReleaseTaskStatusOptions
        end
        def start_task_information
          Azure::Batch::V2019_06_01_9_0::Models::StartTaskInformation
        end
        def job_get_task_counts_options
          Azure::Batch::V2019_06_01_9_0::Models::JobGetTaskCountsOptions
        end
        def inbound_endpoint
          Azure::Batch::V2019_06_01_9_0::Models::InboundEndpoint
        end
        def certificate_add_options
          Azure::Batch::V2019_06_01_9_0::Models::CertificateAddOptions
        end
        def compute_node
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNode
        end
        def certificate_list_options
          Azure::Batch::V2019_06_01_9_0::Models::CertificateListOptions
        end
        def compute_node_user
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeUser
        end
        def certificate_cancel_deletion_options
          Azure::Batch::V2019_06_01_9_0::Models::CertificateCancelDeletionOptions
        end
        def image_information
          Azure::Batch::V2019_06_01_9_0::Models::ImageInformation
        end
        def certificate_delete_options
          Azure::Batch::V2019_06_01_9_0::Models::CertificateDeleteOptions
        end
        def resource_statistics
          Azure::Batch::V2019_06_01_9_0::Models::ResourceStatistics
        end
        def certificate_get_options
          Azure::Batch::V2019_06_01_9_0::Models::CertificateGetOptions
        end
        def delete_certificate_error
          Azure::Batch::V2019_06_01_9_0::Models::DeleteCertificateError
        end
        def file_delete_from_task_options
          Azure::Batch::V2019_06_01_9_0::Models::FileDeleteFromTaskOptions
        end
        def certificate_add_parameter
          Azure::Batch::V2019_06_01_9_0::Models::CertificateAddParameter
        end
        def file_get_from_task_options
          Azure::Batch::V2019_06_01_9_0::Models::FileGetFromTaskOptions
        end
        def node_file_list_result
          Azure::Batch::V2019_06_01_9_0::Models::NodeFileListResult
        end
        def file_get_properties_from_task_options
          Azure::Batch::V2019_06_01_9_0::Models::FileGetPropertiesFromTaskOptions
        end
        def container_registry
          Azure::Batch::V2019_06_01_9_0::Models::ContainerRegistry
        end
        def file_delete_from_compute_node_options
          Azure::Batch::V2019_06_01_9_0::Models::FileDeleteFromComputeNodeOptions
        end
        def exit_options
          Azure::Batch::V2019_06_01_9_0::Models::ExitOptions
        end
        def file_get_from_compute_node_options
          Azure::Batch::V2019_06_01_9_0::Models::FileGetFromComputeNodeOptions
        end
        def auto_user_specification
          Azure::Batch::V2019_06_01_9_0::Models::AutoUserSpecification
        end
        def file_get_properties_from_compute_node_options
          Azure::Batch::V2019_06_01_9_0::Models::FileGetPropertiesFromComputeNodeOptions
        end
        def user_account
          Azure::Batch::V2019_06_01_9_0::Models::UserAccount
        end
        def file_list_from_task_options
          Azure::Batch::V2019_06_01_9_0::Models::FileListFromTaskOptions
        end
        def output_file_upload_options
          Azure::Batch::V2019_06_01_9_0::Models::OutputFileUploadOptions
        end
        def file_list_from_compute_node_options
          Azure::Batch::V2019_06_01_9_0::Models::FileListFromComputeNodeOptions
        end
        def job_release_task
          Azure::Batch::V2019_06_01_9_0::Models::JobReleaseTask
        end
        def job_schedule_exists_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleExistsOptions
        end
        def metadata_item
          Azure::Batch::V2019_06_01_9_0::Models::MetadataItem
        end
        def job_schedule_delete_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleDeleteOptions
        end
        def container_configuration
          Azure::Batch::V2019_06_01_9_0::Models::ContainerConfiguration
        end
        def job_schedule_get_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleGetOptions
        end
        def pool_endpoint_configuration
          Azure::Batch::V2019_06_01_9_0::Models::PoolEndpointConfiguration
        end
        def job_schedule_patch_options
          Azure::Batch::V2019_06_01_9_0::Models::JobSchedulePatchOptions
        end
        def pool_information
          Azure::Batch::V2019_06_01_9_0::Models::PoolInformation
        end
        def job_schedule_update_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleUpdateOptions
        end
        def job_schedule_statistics
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleStatistics
        end
        def job_schedule_disable_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleDisableOptions
        end
        def job_scheduling_error
          Azure::Batch::V2019_06_01_9_0::Models::JobSchedulingError
        end
        def job_schedule_enable_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleEnableOptions
        end
        def cloud_job_list_result
          Azure::Batch::V2019_06_01_9_0::Models::CloudJobListResult
        end
        def job_schedule_terminate_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleTerminateOptions
        end
        def job_release_task_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::JobReleaseTaskExecutionInformation
        end
        def job_schedule_add_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleAddOptions
        end
        def auto_scale_run_error
          Azure::Batch::V2019_06_01_9_0::Models::AutoScaleRunError
        end
        def job_schedule_list_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleListOptions
        end
        def pool_add_parameter
          Azure::Batch::V2019_06_01_9_0::Models::PoolAddParameter
        end
        def task_add_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddOptions
        end
        def task_execution_information
          Azure::Batch::V2019_06_01_9_0::Models::TaskExecutionInformation
        end
        def task_list_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskListOptions
        end
        def task_statistics
          Azure::Batch::V2019_06_01_9_0::Models::TaskStatistics
        end
        def task_add_collection_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddCollectionOptions
        end
        def task_add_parameter
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddParameter
        end
        def task_delete_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskDeleteOptions
        end
        def batch_error
          Azure::Batch::V2019_06_01_9_0::Models::BatchError
        end
        def task_get_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskGetOptions
        end
        def cloud_task_list_subtasks_result
          Azure::Batch::V2019_06_01_9_0::Models::CloudTaskListSubtasksResult
        end
        def task_update_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskUpdateOptions
        end
        def compute_node_error
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeError
        end
        def task_list_subtasks_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskListSubtasksOptions
        end
        def compute_node_list_result
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeListResult
        end
        def task_terminate_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskTerminateOptions
        end
        def account_list_supported_images_result
          Azure::Batch::V2019_06_01_9_0::Models::AccountListSupportedImagesResult
        end
        def task_reactivate_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskReactivateOptions
        end
        def application_package_reference
          Azure::Batch::V2019_06_01_9_0::Models::ApplicationPackageReference
        end
        def compute_node_add_user_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeAddUserOptions
        end
        def job_constraints
          Azure::Batch::V2019_06_01_9_0::Models::JobConstraints
        end
        def compute_node_delete_user_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeDeleteUserOptions
        end
        def exit_code_range_mapping
          Azure::Batch::V2019_06_01_9_0::Models::ExitCodeRangeMapping
        end
        def compute_node_update_user_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeUpdateUserOptions
        end
        def output_file_blob_container_destination
          Azure::Batch::V2019_06_01_9_0::Models::OutputFileBlobContainerDestination
        end
        def compute_node_get_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetOptions
        end
        def start_task
          Azure::Batch::V2019_06_01_9_0::Models::StartTask
        end
        def compute_node_reboot_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeRebootOptions
        end
        def network_security_group_rule
          Azure::Batch::V2019_06_01_9_0::Models::NetworkSecurityGroupRule
        end
        def compute_node_reimage_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeReimageOptions
        end
        def recent_job
          Azure::Batch::V2019_06_01_9_0::Models::RecentJob
        end
        def compute_node_disable_scheduling_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeDisableSchedulingOptions
        end
        def cloud_job
          Azure::Batch::V2019_06_01_9_0::Models::CloudJob
        end
        def compute_node_enable_scheduling_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeEnableSchedulingOptions
        end
        def cloud_job_list_preparation_and_release_task_status_result
          Azure::Batch::V2019_06_01_9_0::Models::CloudJobListPreparationAndReleaseTaskStatusResult
        end
        def compute_node_get_remote_login_settings_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetRemoteLoginSettingsOptions
        end
        def cloud_pool_list_result
          Azure::Batch::V2019_06_01_9_0::Models::CloudPoolListResult
        end
        def compute_node_get_remote_desktop_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeGetRemoteDesktopOptions
        end
        def task_dependencies
          Azure::Batch::V2019_06_01_9_0::Models::TaskDependencies
        end
        def compute_node_upload_batch_service_logs_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeUploadBatchServiceLogsOptions
        end
        def task_add_collection_result
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddCollectionResult
        end
        def compute_node_list_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeListOptions
        end
        def compute_node_endpoint_configuration
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeEndpointConfiguration
        end
        def job_statistics
          Azure::Batch::V2019_06_01_9_0::Models::JobStatistics
        end
        def application_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::ApplicationListNextOptions
        end
        def resource_file
          Azure::Batch::V2019_06_01_9_0::Models::ResourceFile
        end
        def pool_list_usage_metrics_next_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolListUsageMetricsNextOptions
        end
        def job_manager_task
          Azure::Batch::V2019_06_01_9_0::Models::JobManagerTask
        end
        def pool_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::PoolListNextOptions
        end
        def pool_specification
          Azure::Batch::V2019_06_01_9_0::Models::PoolSpecification
        end
        def account_list_supported_images_next_options
          Azure::Batch::V2019_06_01_9_0::Models::AccountListSupportedImagesNextOptions
        end
        def task_failure_information
          Azure::Batch::V2019_06_01_9_0::Models::TaskFailureInformation
        end
        def account_list_pool_node_counts_next_options
          Azure::Batch::V2019_06_01_9_0::Models::AccountListPoolNodeCountsNextOptions
        end
        def node_agent_information
          Azure::Batch::V2019_06_01_9_0::Models::NodeAgentInformation
        end
        def job_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::JobListNextOptions
        end
        def task_information
          Azure::Batch::V2019_06_01_9_0::Models::TaskInformation
        end
        def job_list_from_job_schedule_next_options
          Azure::Batch::V2019_06_01_9_0::Models::JobListFromJobScheduleNextOptions
        end
        def file_properties
          Azure::Batch::V2019_06_01_9_0::Models::FileProperties
        end
        def job_list_preparation_and_release_task_status_next_options
          Azure::Batch::V2019_06_01_9_0::Models::JobListPreparationAndReleaseTaskStatusNextOptions
        end
        def windows_configuration
          Azure::Batch::V2019_06_01_9_0::Models::WindowsConfiguration
        end
        def certificate_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::CertificateListNextOptions
        end
        def resize_error
          Azure::Batch::V2019_06_01_9_0::Models::ResizeError
        end
        def file_list_from_task_next_options
          Azure::Batch::V2019_06_01_9_0::Models::FileListFromTaskNextOptions
        end
        def pool_list_usage_metrics_result
          Azure::Batch::V2019_06_01_9_0::Models::PoolListUsageMetricsResult
        end
        def file_list_from_compute_node_next_options
          Azure::Batch::V2019_06_01_9_0::Models::FileListFromComputeNodeNextOptions
        end
        def job_schedule_add_parameter
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleAddParameter
        end
        def job_schedule_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleListNextOptions
        end
        def linux_user_configuration
          Azure::Batch::V2019_06_01_9_0::Models::LinuxUserConfiguration
        end
        def task_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::TaskListNextOptions
        end
        def error_message
          Azure::Batch::V2019_06_01_9_0::Models::ErrorMessage
        end
        def compute_node_list_next_options
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeListNextOptions
        end
        def ostype
          Azure::Batch::V2019_06_01_9_0::Models::OSType
        end
        def verification_type
          Azure::Batch::V2019_06_01_9_0::Models::VerificationType
        end
        def access_scope
          Azure::Batch::V2019_06_01_9_0::Models::AccessScope
        end
        def certificate_state
          Azure::Batch::V2019_06_01_9_0::Models::CertificateState
        end
        def certificate_format
          Azure::Batch::V2019_06_01_9_0::Models::CertificateFormat
        end
        def container_working_directory
          Azure::Batch::V2019_06_01_9_0::Models::ContainerWorkingDirectory
        end
        def job_action
          Azure::Batch::V2019_06_01_9_0::Models::JobAction
        end
        def dependency_action
          Azure::Batch::V2019_06_01_9_0::Models::DependencyAction
        end
        def auto_user_scope
          Azure::Batch::V2019_06_01_9_0::Models::AutoUserScope
        end
        def elevation_level
          Azure::Batch::V2019_06_01_9_0::Models::ElevationLevel
        end
        def login_mode
          Azure::Batch::V2019_06_01_9_0::Models::LoginMode
        end
        def output_file_upload_condition
          Azure::Batch::V2019_06_01_9_0::Models::OutputFileUploadCondition
        end
        def compute_node_fill_type
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeFillType
        end
        def certificate_store_location
          Azure::Batch::V2019_06_01_9_0::Models::CertificateStoreLocation
        end
        def certificate_visibility
          Azure::Batch::V2019_06_01_9_0::Models::CertificateVisibility
        end
        def caching_type
          Azure::Batch::V2019_06_01_9_0::Models::CachingType
        end
        def storage_account_type
          Azure::Batch::V2019_06_01_9_0::Models::StorageAccountType
        end
        def dynamic_vnet_assignment_scope
          Azure::Batch::V2019_06_01_9_0::Models::DynamicVNetAssignmentScope
        end
        def inbound_endpoint_protocol
          Azure::Batch::V2019_06_01_9_0::Models::InboundEndpointProtocol
        end
        def network_security_group_rule_access
          Azure::Batch::V2019_06_01_9_0::Models::NetworkSecurityGroupRuleAccess
        end
        def pool_lifetime_option
          Azure::Batch::V2019_06_01_9_0::Models::PoolLifetimeOption
        end
        def on_all_tasks_complete
          Azure::Batch::V2019_06_01_9_0::Models::OnAllTasksComplete
        end
        def on_task_failure
          Azure::Batch::V2019_06_01_9_0::Models::OnTaskFailure
        end
        def job_schedule_state
          Azure::Batch::V2019_06_01_9_0::Models::JobScheduleState
        end
        def error_category
          Azure::Batch::V2019_06_01_9_0::Models::ErrorCategory
        end
        def job_state
          Azure::Batch::V2019_06_01_9_0::Models::JobState
        end
        def job_preparation_task_state
          Azure::Batch::V2019_06_01_9_0::Models::JobPreparationTaskState
        end
        def task_execution_result
          Azure::Batch::V2019_06_01_9_0::Models::TaskExecutionResult
        end
        def job_release_task_state
          Azure::Batch::V2019_06_01_9_0::Models::JobReleaseTaskState
        end
        def pool_state
          Azure::Batch::V2019_06_01_9_0::Models::PoolState
        end
        def allocation_state
          Azure::Batch::V2019_06_01_9_0::Models::AllocationState
        end
        def task_state
          Azure::Batch::V2019_06_01_9_0::Models::TaskState
        end
        def task_add_status
          Azure::Batch::V2019_06_01_9_0::Models::TaskAddStatus
        end
        def subtask_state
          Azure::Batch::V2019_06_01_9_0::Models::SubtaskState
        end
        def start_task_state
          Azure::Batch::V2019_06_01_9_0::Models::StartTaskState
        end
        def compute_node_state
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeState
        end
        def scheduling_state
          Azure::Batch::V2019_06_01_9_0::Models::SchedulingState
        end
        def disable_job_option
          Azure::Batch::V2019_06_01_9_0::Models::DisableJobOption
        end
        def compute_node_deallocation_option
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeDeallocationOption
        end
        def compute_node_reboot_option
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeRebootOption
        end
        def compute_node_reimage_option
          Azure::Batch::V2019_06_01_9_0::Models::ComputeNodeReimageOption
        end
        def disable_compute_node_scheduling_option
          Azure::Batch::V2019_06_01_9_0::Models::DisableComputeNodeSchedulingOption
        end
      end
    end
    module Mgmt
      BatchAccountOperations = Azure::Batch::Mgmt::V2017_09_01::BatchAccountOperations
      ApplicationPackageOperations = Azure::Batch::Mgmt::V2017_09_01::ApplicationPackageOperations
      ApplicationOperations = Azure::Batch::Mgmt::V2017_09_01::ApplicationOperations
      Location = Azure::Batch::Mgmt::V2017_09_01::Location
      Operations = Azure::Batch::Mgmt::V2017_09_01::Operations
      CertificateOperations = Azure::Batch::Mgmt::V2017_09_01::CertificateOperations
      PoolOperations = Azure::Batch::Mgmt::V2017_09_01::PoolOperations

      module Models
        FixedScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::FixedScaleSettings
        AutoStorageBaseProperties = Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageBaseProperties
        AutoScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleSettings
        BatchAccountCreateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountCreateParameters
        ScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::ScaleSettings
        KeyVaultReference = Azure::Batch::Mgmt::V2017_09_01::Models::KeyVaultReference
        BatchAccountUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountUpdateParameters
        OperationDisplay = Azure::Batch::Mgmt::V2017_09_01::Models::OperationDisplay
        BatchAccountRegenerateKeyParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountRegenerateKeyParameters
        OperationListResult = Azure::Batch::Mgmt::V2017_09_01::Models::OperationListResult
        ActivateApplicationPackageParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ActivateApplicationPackageParameters
        AutoScaleRunError = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRunError
        ApplicationPackage = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackage
        AutoScaleRun = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRun
        ListApplicationsResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListApplicationsResult
        NetworkSecurityGroupRule = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRule
        BatchLocationQuota = Azure::Batch::Mgmt::V2017_09_01::Models::BatchLocationQuota
        InboundNatPool = Azure::Batch::Mgmt::V2017_09_01::Models::InboundNatPool
        ProxyResource = Azure::Batch::Mgmt::V2017_09_01::Models::ProxyResource
        PoolEndpointConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::PoolEndpointConfiguration
        DeleteCertificateError = Azure::Batch::Mgmt::V2017_09_01::Models::DeleteCertificateError
        NetworkConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkConfiguration
        CheckNameAvailabilityParameters = Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityParameters
        TaskSchedulingPolicy = Azure::Batch::Mgmt::V2017_09_01::Models::TaskSchedulingPolicy
        CloudServiceConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::CloudServiceConfiguration
        LinuxUserConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::LinuxUserConfiguration
        OSDisk = Azure::Batch::Mgmt::V2017_09_01::Models::OSDisk
        UserAccount = Azure::Batch::Mgmt::V2017_09_01::Models::UserAccount
        DataDisk = Azure::Batch::Mgmt::V2017_09_01::Models::DataDisk
        MetadataItem = Azure::Batch::Mgmt::V2017_09_01::Models::MetadataItem
        DeploymentConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::DeploymentConfiguration
        ResourceFile = Azure::Batch::Mgmt::V2017_09_01::Models::ResourceFile
        BatchAccountKeys = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountKeys
        EnvironmentSetting = Azure::Batch::Mgmt::V2017_09_01::Models::EnvironmentSetting
        Application = Azure::Batch::Mgmt::V2017_09_01::Models::Application
        AutoUserSpecification = Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserSpecification
        Resource = Azure::Batch::Mgmt::V2017_09_01::Models::Resource
        UserIdentity = Azure::Batch::Mgmt::V2017_09_01::Models::UserIdentity
        CheckNameAvailabilityResult = Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityResult
        StartTask = Azure::Batch::Mgmt::V2017_09_01::Models::StartTask
        ImageReference = Azure::Batch::Mgmt::V2017_09_01::Models::ImageReference
        CertificateReference = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateReference
        VirtualMachineConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::VirtualMachineConfiguration
        ApplicationPackageReference = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackageReference
        ApplicationCreateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationCreateParameters
        ResizeError = Azure::Batch::Mgmt::V2017_09_01::Models::ResizeError
        CertificateBaseProperties = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateBaseProperties
        ResizeOperationStatus = Azure::Batch::Mgmt::V2017_09_01::Models::ResizeOperationStatus
        WindowsConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::WindowsConfiguration
        Operation = Azure::Batch::Mgmt::V2017_09_01::Models::Operation
        ApplicationUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationUpdateParameters
        ListPoolsResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListPoolsResult
        BatchAccountListResult = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountListResult
        ListCertificatesResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListCertificatesResult
        AutoStorageProperties = Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageProperties
        BatchAccount = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccount
        Certificate = Azure::Batch::Mgmt::V2017_09_01::Models::Certificate
        CertificateCreateOrUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateCreateOrUpdateParameters
        Pool = Azure::Batch::Mgmt::V2017_09_01::Models::Pool
        PoolAllocationMode = Azure::Batch::Mgmt::V2017_09_01::Models::PoolAllocationMode
        ProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::ProvisioningState
        AccountKeyType = Azure::Batch::Mgmt::V2017_09_01::Models::AccountKeyType
        PackageState = Azure::Batch::Mgmt::V2017_09_01::Models::PackageState
        CertificateFormat = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateFormat
        CertificateProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateProvisioningState
        PoolProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::PoolProvisioningState
        AllocationState = Azure::Batch::Mgmt::V2017_09_01::Models::AllocationState
        CachingType = Azure::Batch::Mgmt::V2017_09_01::Models::CachingType
        StorageAccountType = Azure::Batch::Mgmt::V2017_09_01::Models::StorageAccountType
        ComputeNodeDeallocationOption = Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeDeallocationOption
        InterNodeCommunicationState = Azure::Batch::Mgmt::V2017_09_01::Models::InterNodeCommunicationState
        InboundEndpointProtocol = Azure::Batch::Mgmt::V2017_09_01::Models::InboundEndpointProtocol
        NetworkSecurityGroupRuleAccess = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRuleAccess
        ComputeNodeFillType = Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeFillType
        ElevationLevel = Azure::Batch::Mgmt::V2017_09_01::Models::ElevationLevel
        AutoUserScope = Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserScope
        CertificateStoreLocation = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateStoreLocation
        CertificateVisibility = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateVisibility
        NameAvailabilityReason = Azure::Batch::Mgmt::V2017_09_01::Models::NameAvailabilityReason
      end

      class BatchManagementClass
        attr_reader :batch_account_operations, :application_package_operations, :application_operations, :location, :operations, :certificate_operations, :pool_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Batch::Mgmt::V2017_09_01::BatchManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @batch_account_operations = @client_0.batch_account_operations
          @application_package_operations = @client_0.application_package_operations
          @application_operations = @client_0.application_operations
          @location = @client_0.location
          @operations = @client_0.operations
          @certificate_operations = @client_0.certificate_operations
          @pool_operations = @client_0.pool_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Batch/Mgmt"
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
          def fixed_scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::FixedScaleSettings
          end
          def auto_storage_base_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageBaseProperties
          end
          def auto_scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleSettings
          end
          def batch_account_create_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountCreateParameters
          end
          def scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::ScaleSettings
          end
          def key_vault_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::KeyVaultReference
          end
          def batch_account_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountUpdateParameters
          end
          def operation_display
            Azure::Batch::Mgmt::V2017_09_01::Models::OperationDisplay
          end
          def batch_account_regenerate_key_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountRegenerateKeyParameters
          end
          def operation_list_result
            Azure::Batch::Mgmt::V2017_09_01::Models::OperationListResult
          end
          def activate_application_package_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ActivateApplicationPackageParameters
          end
          def auto_scale_run_error
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRunError
          end
          def application_package
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackage
          end
          def auto_scale_run
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRun
          end
          def list_applications_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListApplicationsResult
          end
          def network_security_group_rule
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRule
          end
          def batch_location_quota
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchLocationQuota
          end
          def inbound_nat_pool
            Azure::Batch::Mgmt::V2017_09_01::Models::InboundNatPool
          end
          def proxy_resource
            Azure::Batch::Mgmt::V2017_09_01::Models::ProxyResource
          end
          def pool_endpoint_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolEndpointConfiguration
          end
          def delete_certificate_error
            Azure::Batch::Mgmt::V2017_09_01::Models::DeleteCertificateError
          end
          def network_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkConfiguration
          end
          def check_name_availability_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityParameters
          end
          def task_scheduling_policy
            Azure::Batch::Mgmt::V2017_09_01::Models::TaskSchedulingPolicy
          end
          def cloud_service_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::CloudServiceConfiguration
          end
          def linux_user_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::LinuxUserConfiguration
          end
          def osdisk
            Azure::Batch::Mgmt::V2017_09_01::Models::OSDisk
          end
          def user_account
            Azure::Batch::Mgmt::V2017_09_01::Models::UserAccount
          end
          def data_disk
            Azure::Batch::Mgmt::V2017_09_01::Models::DataDisk
          end
          def metadata_item
            Azure::Batch::Mgmt::V2017_09_01::Models::MetadataItem
          end
          def deployment_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::DeploymentConfiguration
          end
          def resource_file
            Azure::Batch::Mgmt::V2017_09_01::Models::ResourceFile
          end
          def batch_account_keys
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountKeys
          end
          def environment_setting
            Azure::Batch::Mgmt::V2017_09_01::Models::EnvironmentSetting
          end
          def application
            Azure::Batch::Mgmt::V2017_09_01::Models::Application
          end
          def auto_user_specification
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserSpecification
          end
          def resource
            Azure::Batch::Mgmt::V2017_09_01::Models::Resource
          end
          def user_identity
            Azure::Batch::Mgmt::V2017_09_01::Models::UserIdentity
          end
          def check_name_availability_result
            Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityResult
          end
          def start_task
            Azure::Batch::Mgmt::V2017_09_01::Models::StartTask
          end
          def image_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::ImageReference
          end
          def certificate_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateReference
          end
          def virtual_machine_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::VirtualMachineConfiguration
          end
          def application_package_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackageReference
          end
          def application_create_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationCreateParameters
          end
          def resize_error
            Azure::Batch::Mgmt::V2017_09_01::Models::ResizeError
          end
          def certificate_base_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateBaseProperties
          end
          def resize_operation_status
            Azure::Batch::Mgmt::V2017_09_01::Models::ResizeOperationStatus
          end
          def windows_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::WindowsConfiguration
          end
          def operation
            Azure::Batch::Mgmt::V2017_09_01::Models::Operation
          end
          def application_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationUpdateParameters
          end
          def list_pools_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListPoolsResult
          end
          def batch_account_list_result
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountListResult
          end
          def list_certificates_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListCertificatesResult
          end
          def auto_storage_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageProperties
          end
          def batch_account
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccount
          end
          def certificate
            Azure::Batch::Mgmt::V2017_09_01::Models::Certificate
          end
          def certificate_create_or_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateCreateOrUpdateParameters
          end
          def pool
            Azure::Batch::Mgmt::V2017_09_01::Models::Pool
          end
          def pool_allocation_mode
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolAllocationMode
          end
          def provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::ProvisioningState
          end
          def account_key_type
            Azure::Batch::Mgmt::V2017_09_01::Models::AccountKeyType
          end
          def package_state
            Azure::Batch::Mgmt::V2017_09_01::Models::PackageState
          end
          def certificate_format
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateFormat
          end
          def certificate_provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateProvisioningState
          end
          def pool_provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolProvisioningState
          end
          def allocation_state
            Azure::Batch::Mgmt::V2017_09_01::Models::AllocationState
          end
          def caching_type
            Azure::Batch::Mgmt::V2017_09_01::Models::CachingType
          end
          def storage_account_type
            Azure::Batch::Mgmt::V2017_09_01::Models::StorageAccountType
          end
          def compute_node_deallocation_option
            Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeDeallocationOption
          end
          def inter_node_communication_state
            Azure::Batch::Mgmt::V2017_09_01::Models::InterNodeCommunicationState
          end
          def inbound_endpoint_protocol
            Azure::Batch::Mgmt::V2017_09_01::Models::InboundEndpointProtocol
          end
          def network_security_group_rule_access
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRuleAccess
          end
          def compute_node_fill_type
            Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeFillType
          end
          def elevation_level
            Azure::Batch::Mgmt::V2017_09_01::Models::ElevationLevel
          end
          def auto_user_scope
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserScope
          end
          def certificate_store_location
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateStoreLocation
          end
          def certificate_visibility
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateVisibility
          end
          def name_availability_reason
            Azure::Batch::Mgmt::V2017_09_01::Models::NameAvailabilityReason
          end
        end
      end
    end
  end
end
