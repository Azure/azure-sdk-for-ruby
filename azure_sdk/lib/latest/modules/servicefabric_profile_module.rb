# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_fabric'
require 'azure_service_fabric'

module Azure::Profiles::Latest
  module ServiceFabric
    MeshApplication = Azure::ServiceFabric::V6_4_0_36::MeshApplication
    MeshService = Azure::ServiceFabric::V6_4_0_36::MeshService
    MeshCodePackage = Azure::ServiceFabric::V6_4_0_36::MeshCodePackage
    MeshServiceReplica = Azure::ServiceFabric::V6_4_0_36::MeshServiceReplica
    MeshGateway = Azure::ServiceFabric::V6_4_0_36::MeshGateway
    MeshSecret = Azure::ServiceFabric::V6_4_0_36::MeshSecret
    MeshSecretValue = Azure::ServiceFabric::V6_4_0_36::MeshSecretValue
    MeshVolume = Azure::ServiceFabric::V6_4_0_36::MeshVolume
    MeshNetwork = Azure::ServiceFabric::V6_4_0_36::MeshNetwork

    module Models
      ChaosStartedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosStartedEvent
      EnvironmentVariable = Azure::ServiceFabric::V6_4_0_36::Models::EnvironmentVariable
      ChaosReplicaRemovalScheduledEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosReplicaRemovalScheduledEvent
      ChaosPartitionSecondaryMoveScheduledEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosPartitionSecondaryMoveScheduledEvent
      ChaosPartitionPrimaryMoveScheduledEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosPartitionPrimaryMoveScheduledEvent
      ChaosReplicaRestartScheduledEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosReplicaRestartScheduledEvent
      ChaosNodeRestartScheduledEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosNodeRestartScheduledEvent
      SecretResourceProperties = Azure::ServiceFabric::V6_4_0_36::Models::SecretResourceProperties
      InlinedValueSecretResourceProperties = Azure::ServiceFabric::V6_4_0_36::Models::InlinedValueSecretResourceProperties
      ApplicationScopedVolume = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolume
      ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
      NetworkResourceProperties = Azure::ServiceFabric::V6_4_0_36::Models::NetworkResourceProperties
      LocalNetworkResourceProperties = Azure::ServiceFabric::V6_4_0_36::Models::LocalNetworkResourceProperties
      AzureInternalMonitoringPipelineSinkDescription = Azure::ServiceFabric::V6_4_0_36::Models::AzureInternalMonitoringPipelineSinkDescription
      AddRemoveReplicaScalingMechanism = Azure::ServiceFabric::V6_4_0_36::Models::AddRemoveReplicaScalingMechanism
      AutoScalingResourceMetric = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingResourceMetric
      ServiceReplicaDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceReplicaDescription
      AverageLoadScalingTrigger = Azure::ServiceFabric::V6_4_0_36::Models::AverageLoadScalingTrigger
      FabricErrorCodes = Azure::ServiceFabric::V6_4_0_36::Models::FabricErrorCodes
      ApplicationDefinitionKind = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationDefinitionKind
      ApplicationStatus = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationStatus
      ApplicationPackageCleanupPolicy = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationPackageCleanupPolicy
      ApplicationTypeDefinitionKind = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeDefinitionKind
      ApplicationTypeStatus = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeStatus
      UpgradeKind = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeKind
      FailureAction = Azure::ServiceFabric::V6_4_0_36::Models::FailureAction
      UpgradeDomainState = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainState
      UpgradeMode = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeMode
      FailureReason = Azure::ServiceFabric::V6_4_0_36::Models::FailureReason
      DeactivationIntent = Azure::ServiceFabric::V6_4_0_36::Models::DeactivationIntent
      DeployedApplicationStatus = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationStatus
      NodeUpgradePhase = Azure::ServiceFabric::V6_4_0_36::Models::NodeUpgradePhase
      ReplicaRole = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaRole
      ReconfigurationPhase = Azure::ServiceFabric::V6_4_0_36::Models::ReconfigurationPhase
      ReconfigurationType = Azure::ServiceFabric::V6_4_0_36::Models::ReconfigurationType
      UpgradeState = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeState
      FabricEventKind = Azure::ServiceFabric::V6_4_0_36::Models::FabricEventKind
      HealthEvaluationKind = Azure::ServiceFabric::V6_4_0_36::Models::HealthEvaluationKind
      NodeDeactivationIntent = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationIntent
      EntityKind = Azure::ServiceFabric::V6_4_0_36::Models::EntityKind
      ReplicaStatus = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaStatus
      NodeStatus = Azure::ServiceFabric::V6_4_0_36::Models::NodeStatus
      ServicePartitionStatus = Azure::ServiceFabric::V6_4_0_36::Models::ServicePartitionStatus
      NodeDeactivationStatus = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationStatus
      NodeDeactivationTaskType = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationTaskType
      UpgradeType = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeType
      SafetyCheckKind = Azure::ServiceFabric::V6_4_0_36::Models::SafetyCheckKind
      ServiceStatus = Azure::ServiceFabric::V6_4_0_36::Models::ServiceStatus
      ProvisionApplicationTypeKind = Azure::ServiceFabric::V6_4_0_36::Models::ProvisionApplicationTypeKind
      ServiceKind = Azure::ServiceFabric::V6_4_0_36::Models::ServiceKind
      ServicePartitionKind = Azure::ServiceFabric::V6_4_0_36::Models::ServicePartitionKind
      CreateFabricDump = Azure::ServiceFabric::V6_4_0_36::Models::CreateFabricDump
      ServicePackageActivationMode = Azure::ServiceFabric::V6_4_0_36::Models::ServicePackageActivationMode
      HostType = Azure::ServiceFabric::V6_4_0_36::Models::HostType
      DeploymentStatus = Azure::ServiceFabric::V6_4_0_36::Models::DeploymentStatus
      ServicePlacementPolicyType = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementPolicyType
      ServiceLoadMetricWeight = Azure::ServiceFabric::V6_4_0_36::Models::ServiceLoadMetricWeight
      HostIsolationMode = Azure::ServiceFabric::V6_4_0_36::Models::HostIsolationMode
      ChaosEventKind = Azure::ServiceFabric::V6_4_0_36::Models::ChaosEventKind
      EntryPointStatus = Azure::ServiceFabric::V6_4_0_36::Models::EntryPointStatus
      ChaosStatus = Azure::ServiceFabric::V6_4_0_36::Models::ChaosStatus
      ChaosScheduleStatus = Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleStatus
      MoveCost = Azure::ServiceFabric::V6_4_0_36::Models::MoveCost
      ComposeDeploymentStatus = Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentStatus
      ComposeDeploymentUpgradeState = Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentUpgradeState
      ServiceCorrelationScheme = Azure::ServiceFabric::V6_4_0_36::Models::ServiceCorrelationScheme
      PartitionAccessStatus = Azure::ServiceFabric::V6_4_0_36::Models::PartitionAccessStatus
      PartitionScheme = Azure::ServiceFabric::V6_4_0_36::Models::PartitionScheme
      ServiceOperationName = Azure::ServiceFabric::V6_4_0_36::Models::ServiceOperationName
      ReplicatorOperationName = Azure::ServiceFabric::V6_4_0_36::Models::ReplicatorOperationName
      ServiceEndpointRole = Azure::ServiceFabric::V6_4_0_36::Models::ServiceEndpointRole
      FabricReplicaStatus = Azure::ServiceFabric::V6_4_0_36::Models::FabricReplicaStatus
      ReplicaKind = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaKind
      ServiceTypeRegistrationStatus = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeRegistrationStatus
      PropertyValueKind = Azure::ServiceFabric::V6_4_0_36::Models::PropertyValueKind
      OperationState = Azure::ServiceFabric::V6_4_0_36::Models::OperationState
      OperationType = Azure::ServiceFabric::V6_4_0_36::Models::OperationType
      PackageSharingPolicyScope = Azure::ServiceFabric::V6_4_0_36::Models::PackageSharingPolicyScope
      BackupStorageKind = Azure::ServiceFabric::V6_4_0_36::Models::BackupStorageKind
      PropertyBatchOperationKind = Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchOperationKind
      PropertyBatchInfoKind = Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchInfoKind
      RetentionPolicyType = Azure::ServiceFabric::V6_4_0_36::Models::RetentionPolicyType
      RestoreState = Azure::ServiceFabric::V6_4_0_36::Models::RestoreState
      BackupScheduleKind = Azure::ServiceFabric::V6_4_0_36::Models::BackupScheduleKind
      BackupPolicyScope = Azure::ServiceFabric::V6_4_0_36::Models::BackupPolicyScope
      BackupSuspensionScope = Azure::ServiceFabric::V6_4_0_36::Models::BackupSuspensionScope
      DayOfWeek = Azure::ServiceFabric::V6_4_0_36::Models::DayOfWeek
      BackupScheduleFrequencyType = Azure::ServiceFabric::V6_4_0_36::Models::BackupScheduleFrequencyType
      BackupState = Azure::ServiceFabric::V6_4_0_36::Models::BackupState
      BackupEntityKind = Azure::ServiceFabric::V6_4_0_36::Models::BackupEntityKind
      ImpactLevel = Azure::ServiceFabric::V6_4_0_36::Models::ImpactLevel
      RepairImpactKind = Azure::ServiceFabric::V6_4_0_36::Models::RepairImpactKind
      RepairTargetKind = Azure::ServiceFabric::V6_4_0_36::Models::RepairTargetKind
      ResultStatus = Azure::ServiceFabric::V6_4_0_36::Models::ResultStatus
      RepairTaskHealthCheckState = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskHealthCheckState
      ScalingTriggerKind = Azure::ServiceFabric::V6_4_0_36::Models::ScalingTriggerKind
      ScalingMechanismKind = Azure::ServiceFabric::V6_4_0_36::Models::ScalingMechanismKind
      ResourceStatus = Azure::ServiceFabric::V6_4_0_36::Models::ResourceStatus
      SecretKind = Azure::ServiceFabric::V6_4_0_36::Models::SecretKind
      VolumeProvider = Azure::ServiceFabric::V6_4_0_36::Models::VolumeProvider
      SizeTypes = Azure::ServiceFabric::V6_4_0_36::Models::SizeTypes
      BackupType = Azure::ServiceFabric::V6_4_0_36::Models::BackupType
      NetworkKind = Azure::ServiceFabric::V6_4_0_36::Models::NetworkKind
      HeaderMatchType = Azure::ServiceFabric::V6_4_0_36::Models::HeaderMatchType
      OperatingSystemType = Azure::ServiceFabric::V6_4_0_36::Models::OperatingSystemType
      DiagnosticsSinkKind = Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsSinkKind
      ApplicationScopedVolumeKind = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolumeKind
      AutoScalingMetricKind = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMetricKind
      AutoScalingResourceMetricName = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingResourceMetricName
      AutoScalingTriggerKind = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingTriggerKind
      NodeStatusFilter = Azure::ServiceFabric::V6_4_0_36::Models::NodeStatusFilter
      AutoScalingMechanismKind = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMechanismKind
      DataLossMode = Azure::ServiceFabric::V6_4_0_36::Models::DataLossMode
      NodeTransitionType = Azure::ServiceFabric::V6_4_0_36::Models::NodeTransitionType
      QuorumLossMode = Azure::ServiceFabric::V6_4_0_36::Models::QuorumLossMode
      RestartPartitionMode = Azure::ServiceFabric::V6_4_0_36::Models::RestartPartitionMode
      ReplicaHealthReportServiceKind = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthReportServiceKind
      OperationStatus = Azure::ServiceFabric::V6_4_0_36::Models::OperationStatus
      State = Azure::ServiceFabric::V6_4_0_36::Models::State
      ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeHealthPolicyMapItem
      ApplicationMetricDescription = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationMetricDescription
      ServiceCorrelationDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceCorrelationDescription
      ServicePlacementPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementPolicyDescription
      ApplicationHealthPolicy = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthPolicy
      ApplicationParameter = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationParameter
      ServiceLoadMetricDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceLoadMetricDescription
      PartitionSchemeDescription = Azure::ServiceFabric::V6_4_0_36::Models::PartitionSchemeDescription
      ClusterHealthPolicy = Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthPolicy
      ServiceTypeHealthPolicy = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeHealthPolicy
      NamedPartitionSchemeDescription = Azure::ServiceFabric::V6_4_0_36::Models::NamedPartitionSchemeDescription
      SingletonPartitionSchemeDescription = Azure::ServiceFabric::V6_4_0_36::Models::SingletonPartitionSchemeDescription
      UniformInt64RangePartitionSchemeDescription = Azure::ServiceFabric::V6_4_0_36::Models::UniformInt64RangePartitionSchemeDescription
      ServiceProperties = Azure::ServiceFabric::V6_4_0_36::Models::ServiceProperties
      HealthState = Azure::ServiceFabric::V6_4_0_36::Models::HealthState
      ScalingMechanismDescription = Azure::ServiceFabric::V6_4_0_36::Models::ScalingMechanismDescription
      ScalingPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ScalingPolicyDescription
      FabricError = Azure::ServiceFabric::V6_4_0_36::Models::FabricError
      ServiceDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceDescription
      AadMetadata = Azure::ServiceFabric::V6_4_0_36::Models::AadMetadata
      LoadMetricReport = Azure::ServiceFabric::V6_4_0_36::Models::LoadMetricReport
      AnalysisEventMetadata = Azure::ServiceFabric::V6_4_0_36::Models::AnalysisEventMetadata
      PartitionLoadInformation = Azure::ServiceFabric::V6_4_0_36::Models::PartitionLoadInformation
      SecretResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::SecretResourceDescription
      PagedBackupInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupInfoList
      HealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::HealthEvaluation
      BackupInfo = Azure::ServiceFabric::V6_4_0_36::Models::BackupInfo
      SecretResourcePropertiesBase = Azure::ServiceFabric::V6_4_0_36::Models::SecretResourcePropertiesBase
      BackupPartitionDescription = Azure::ServiceFabric::V6_4_0_36::Models::BackupPartitionDescription
      RestoreProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::RestoreProgressInfo
      ApplicationHealthPolicyMapItem = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthPolicyMapItem
      RestorePartitionDescription = Azure::ServiceFabric::V6_4_0_36::Models::RestorePartitionDescription
      SecretValue = Azure::ServiceFabric::V6_4_0_36::Models::SecretValue
      PagedBackupConfigurationInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupConfigurationInfoList
      ReplicaHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthStateChunkList
      BackupConfigurationInfo = Azure::ServiceFabric::V6_4_0_36::Models::BackupConfigurationInfo
      PartitionHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthStateChunkList
      BackupSuspensionInfo = Azure::ServiceFabric::V6_4_0_36::Models::BackupSuspensionInfo
      ServiceHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthStateChunkList
      RestartNodeDescription = Azure::ServiceFabric::V6_4_0_36::Models::RestartNodeDescription
      DeployedServicePackageHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthStateChunkList
      DeployedApplicationHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthStateChunkList
      ServiceFromTemplateDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceFromTemplateDescription
      VolumeResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::VolumeResourceDescription
      Setting = Azure::ServiceFabric::V6_4_0_36::Models::Setting
      PartitionHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthStateFilter
      DisableBackupDescription = Azure::ServiceFabric::V6_4_0_36::Models::DisableBackupDescription
      DeployedServicePackageHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthStateFilter
      ServiceNameInfo = Azure::ServiceFabric::V6_4_0_36::Models::ServiceNameInfo
      ApplicationHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthStateFilter
      ContainerLabel = Azure::ServiceFabric::V6_4_0_36::Models::ContainerLabel
      ApplicationInfo = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationInfo
      PagedBackupPolicyDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupPolicyDescriptionList
      ApplicationLoadInfo = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationLoadInfo
      PagedVolumeResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedVolumeResourceDescriptionList
      BackupPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::BackupPolicyDescription
      ApplicationTypeHealthPolicyMapItem = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeHealthPolicyMapItem
      RetentionPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::RetentionPolicyDescription
      PagedApplicationTypeInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedApplicationTypeInfoList
      BackupStorageDescription = Azure::ServiceFabric::V6_4_0_36::Models::BackupStorageDescription
      MonitoringPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::MonitoringPolicyDescription
      BackupScheduleDescription = Azure::ServiceFabric::V6_4_0_36::Models::BackupScheduleDescription
      UpgradeDomainInfo = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainInfo
      SafetyCheckWrapper = Azure::ServiceFabric::V6_4_0_36::Models::SafetyCheckWrapper
      ServiceTypeExtensionDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeExtensionDescription
      CurrentUpgradeDomainProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::CurrentUpgradeDomainProgressInfo
      ServiceTypeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeDescription
      ApplicationUpgradeProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeProgressInfo
      ServiceTypeInfo = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeInfo
      NetworkRef = Azure::ServiceFabric::V6_4_0_36::Models::NetworkRef
      ServiceTypeManifest = Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeManifest
      NetworkResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::NetworkResourceDescription
      EndpointProperties = Azure::ServiceFabric::V6_4_0_36::Models::EndpointProperties
      PagedNetworkResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedNetworkResourceDescriptionList
      ClusterHealthChunk = Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthChunk
      PropertyBatchInfo = Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchInfo
      ClusterHealthPolicies = Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthPolicies
      ClusterVersion = Azure::ServiceFabric::V6_4_0_36::Models::ClusterVersion
      DiagnosticsRef = Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsRef
      ContainerApiResult = Azure::ServiceFabric::V6_4_0_36::Models::ContainerApiResult
      ReliableCollectionsRef = Azure::ServiceFabric::V6_4_0_36::Models::ReliableCollectionsRef
      UploadSession = Azure::ServiceFabric::V6_4_0_36::Models::UploadSession
      UploadSessionInfo = Azure::ServiceFabric::V6_4_0_36::Models::UploadSessionInfo
      ContainerEvent = Azure::ServiceFabric::V6_4_0_36::Models::ContainerEvent
      RepairTaskUpdateInfo = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskUpdateInfo
      PropertyBatchDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchDescriptionList
      DeployedApplicationInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationInfo
      PropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchOperation
      RepairTaskCancelDescription = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskCancelDescription
      PropertyDescription = Azure::ServiceFabric::V6_4_0_36::Models::PropertyDescription
      RepairTask = Azure::ServiceFabric::V6_4_0_36::Models::RepairTask
      PagedPropertyInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedPropertyInfoList
      ReconfigurationInformation = Azure::ServiceFabric::V6_4_0_36::Models::ReconfigurationInformation
      PropertyInfo = Azure::ServiceFabric::V6_4_0_36::Models::PropertyInfo
      RepairTargetDescriptionBase = Azure::ServiceFabric::V6_4_0_36::Models::RepairTargetDescriptionBase
      PropertyMetadata = Azure::ServiceFabric::V6_4_0_36::Models::PropertyMetadata
      HealthStateCount = Azure::ServiceFabric::V6_4_0_36::Models::HealthStateCount
      ContainerInstanceView = Azure::ServiceFabric::V6_4_0_36::Models::ContainerInstanceView
      HealthStatistics = Azure::ServiceFabric::V6_4_0_36::Models::HealthStatistics
      ContainerCodePackageProperties = Azure::ServiceFabric::V6_4_0_36::Models::ContainerCodePackageProperties
      EntityHealthState = Azure::ServiceFabric::V6_4_0_36::Models::EntityHealthState
      AutoScalingTrigger = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingTrigger
      EntityHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::EntityHealthStateChunkList
      Epoch = Azure::ServiceFabric::V6_4_0_36::Models::Epoch
      PartitionDataLossProgress = Azure::ServiceFabric::V6_4_0_36::Models::PartitionDataLossProgress
      FabricEvent = Azure::ServiceFabric::V6_4_0_36::Models::FabricEvent
      AutoScalingMechanism = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMechanism
      FabricConfigVersionInfo = Azure::ServiceFabric::V6_4_0_36::Models::FabricConfigVersionInfo
      AutoScalingPolicy = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingPolicy
      HealthInformation = Azure::ServiceFabric::V6_4_0_36::Models::HealthInformation
      PropertyValue = Azure::ServiceFabric::V6_4_0_36::Models::PropertyValue
      NodeImpact = Azure::ServiceFabric::V6_4_0_36::Models::NodeImpact
      ClusterUpgradeDescriptionObject = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeDescriptionObject
      NodeDeactivationTask = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationTask
      FailedUpgradeDomainProgressObject = Azure::ServiceFabric::V6_4_0_36::Models::FailedUpgradeDomainProgressObject
      GetBackupByStorageQueryDescription = Azure::ServiceFabric::V6_4_0_36::Models::GetBackupByStorageQueryDescription
      ClusterUpgradeProgressObject = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeProgressObject
      EnableBackupDescription = Azure::ServiceFabric::V6_4_0_36::Models::EnableBackupDescription
      ClusterConfigurationUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ClusterConfigurationUpgradeDescription
      NodeLoadMetricInformation = Azure::ServiceFabric::V6_4_0_36::Models::NodeLoadMetricInformation
      UpgradeOrchestrationServiceState = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeOrchestrationServiceState
      HttpRouteMatchHeader = Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteMatchHeader
      UpgradeOrchestrationServiceStateSummary = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeOrchestrationServiceStateSummary
      PagedDeployedApplicationInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedDeployedApplicationInfoList
      ApplicationTypeImageStorePath = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeImageStorePath
      PartitionInformation = Azure::ServiceFabric::V6_4_0_36::Models::PartitionInformation
      UnprovisionApplicationTypeDescriptionInfo = Azure::ServiceFabric::V6_4_0_36::Models::UnprovisionApplicationTypeDescriptionInfo
      PagedServicePartitionInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedServicePartitionInfoList
      CodePackageEntryPointStatistics = Azure::ServiceFabric::V6_4_0_36::Models::CodePackageEntryPointStatistics
      PagedReplicaInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedReplicaInfoList
      CodePackageEntryPoint = Azure::ServiceFabric::V6_4_0_36::Models::CodePackageEntryPoint
      PagedServiceInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedServiceInfoList
      DeployedCodePackageInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedCodePackageInfo
      HttpRouteConfig = Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteConfig
      ChaosContext = Azure::ServiceFabric::V6_4_0_36::Models::ChaosContext
      HttpHostConfig = Azure::ServiceFabric::V6_4_0_36::Models::HttpHostConfig
      ChaosTargetFilter = Azure::ServiceFabric::V6_4_0_36::Models::ChaosTargetFilter
      HttpConfig = Azure::ServiceFabric::V6_4_0_36::Models::HttpConfig
      ChaosParameters = Azure::ServiceFabric::V6_4_0_36::Models::ChaosParameters
      ProvisionApplicationTypeDescriptionBase = Azure::ServiceFabric::V6_4_0_36::Models::ProvisionApplicationTypeDescriptionBase
      Chaos = Azure::ServiceFabric::V6_4_0_36::Models::Chaos
      PagedGatewayResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedGatewayResourceDescriptionList
      ChaosParametersDictionaryItem = Azure::ServiceFabric::V6_4_0_36::Models::ChaosParametersDictionaryItem
      ResumeClusterUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ResumeClusterUpgradeDescription
      ChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosEvent
      StartClusterUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::StartClusterUpgradeDescription
      ChaosEventWrapper = Azure::ServiceFabric::V6_4_0_36::Models::ChaosEventWrapper
      UpdateClusterUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::UpdateClusterUpgradeDescription
      ChaosEventsSegment = Azure::ServiceFabric::V6_4_0_36::Models::ChaosEventsSegment
      HealthEvaluationWrapper = Azure::ServiceFabric::V6_4_0_36::Models::HealthEvaluationWrapper
      ChaosScheduleJobActiveDaysOfWeek = Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleJobActiveDaysOfWeek
      TimeOfDay = Azure::ServiceFabric::V6_4_0_36::Models::TimeOfDay
      SecretValueProperties = Azure::ServiceFabric::V6_4_0_36::Models::SecretValueProperties
      TimeRange = Azure::ServiceFabric::V6_4_0_36::Models::TimeRange
      PagedSecretValueResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedSecretValueResourceDescriptionList
      ChaosScheduleJob = Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleJob
      VolumeReference = Azure::ServiceFabric::V6_4_0_36::Models::VolumeReference
      ChaosSchedule = Azure::ServiceFabric::V6_4_0_36::Models::ChaosSchedule
      ReplicaHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthStateFilter
      ChaosScheduleDescription = Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleDescription
      DeployedApplicationHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthStateFilter
      PagedSubNameInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedSubNameInfoList
      NameDescription = Azure::ServiceFabric::V6_4_0_36::Models::NameDescription
      EndpointRef = Azure::ServiceFabric::V6_4_0_36::Models::EndpointRef
      ApplicationUpgradeUpdateDescription = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeUpdateDescription
      ApplicationTypeManifest = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeManifest
      ResumeApplicationUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ResumeApplicationUpgradeDescription
      SafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::SafetyCheck
      DeployServicePackageToNodeDescription = Azure::ServiceFabric::V6_4_0_36::Models::DeployServicePackageToNodeDescription
      FailureUpgradeDomainProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::FailureUpgradeDomainProgressInfo
      PackageSharingPolicyInfo = Azure::ServiceFabric::V6_4_0_36::Models::PackageSharingPolicyInfo
      NodeId = Azure::ServiceFabric::V6_4_0_36::Models::NodeId
      ApplicationCapacityDescription = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationCapacityDescription
      GatewayDestination = Azure::ServiceFabric::V6_4_0_36::Models::GatewayDestination
      ApplicationDescription = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationDescription
      ClusterHealthChunkQueryDescription = Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthChunkQueryDescription
      ComposeDeploymentStatusInfo = Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentStatusInfo
      ContainerApiRequestBody = Azure::ServiceFabric::V6_4_0_36::Models::ContainerApiRequestBody
      RegistryCredential = Azure::ServiceFabric::V6_4_0_36::Models::RegistryCredential
      DeactivationIntentDescription = Azure::ServiceFabric::V6_4_0_36::Models::DeactivationIntentDescription
      ComposeDeploymentUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentUpgradeDescription
      RepairTaskUpdateHealthPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskUpdateHealthPolicyDescription
      ComposeDeploymentUpgradeProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentUpgradeProgressInfo
      RepairTaskApproveDescription = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskApproveDescription
      PagedComposeDeploymentStatusInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedComposeDeploymentStatusInfoList
      RepairTaskHistory = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskHistory
      CreateComposeDeploymentDescription = Azure::ServiceFabric::V6_4_0_36::Models::CreateComposeDeploymentDescription
      EntityKindHealthStateCount = Azure::ServiceFabric::V6_4_0_36::Models::EntityKindHealthStateCount
      DeployedServicePackageInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageInfo
      EntityHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::EntityHealthStateChunk
      FabricCodeVersionInfo = Azure::ServiceFabric::V6_4_0_36::Models::FabricCodeVersionInfo
      HttpRouteMatchPath = Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteMatchPath
      PartitionRestartProgress = Azure::ServiceFabric::V6_4_0_36::Models::PartitionRestartProgress
      NodeDeactivationInfo = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationInfo
      RestartPartitionResult = Azure::ServiceFabric::V6_4_0_36::Models::RestartPartitionResult
      NodeInfo = Azure::ServiceFabric::V6_4_0_36::Models::NodeInfo
      PartitionQuorumLossProgress = Azure::ServiceFabric::V6_4_0_36::Models::PartitionQuorumLossProgress
      PagedApplicationInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedApplicationInfoList
      ScalingTriggerDescription = Azure::ServiceFabric::V6_4_0_36::Models::ScalingTriggerDescription
      ServicePartitionInfo = Azure::ServiceFabric::V6_4_0_36::Models::ServicePartitionInfo
      FabricErrorError = Azure::ServiceFabric::V6_4_0_36::Models::FabricErrorError
      ServiceInfo = Azure::ServiceFabric::V6_4_0_36::Models::ServiceInfo
      ContainerLogs = Azure::ServiceFabric::V6_4_0_36::Models::ContainerLogs
      BackupEntity = Azure::ServiceFabric::V6_4_0_36::Models::BackupEntity
      AadMetadataObject = Azure::ServiceFabric::V6_4_0_36::Models::AadMetadataObject
      ProvisionFabricDescription = Azure::ServiceFabric::V6_4_0_36::Models::ProvisionFabricDescription
      UnprovisionFabricDescription = Azure::ServiceFabric::V6_4_0_36::Models::UnprovisionFabricDescription
      PagedApplicationResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedApplicationResourceDescriptionList
      RollingUpgradeUpdateDescription = Azure::ServiceFabric::V6_4_0_36::Models::RollingUpgradeUpdateDescription
      ReplicatorQueueStatus = Azure::ServiceFabric::V6_4_0_36::Models::ReplicatorQueueStatus
      ReplicatorStatus = Azure::ServiceFabric::V6_4_0_36::Models::ReplicatorStatus
      SecretValueResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::SecretValueResourceDescription
      RemoteReplicatorAcknowledgementDetail = Azure::ServiceFabric::V6_4_0_36::Models::RemoteReplicatorAcknowledgementDetail
      ApplicationScopedVolumeCreationParameters = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolumeCreationParameters
      RemoteReplicatorAcknowledgementStatus = Azure::ServiceFabric::V6_4_0_36::Models::RemoteReplicatorAcknowledgementStatus
      RemoteReplicatorStatus = Azure::ServiceFabric::V6_4_0_36::Models::RemoteReplicatorStatus
      ApplicationTypeInfo = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeInfo
      ApplicationResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationResourceDescription
      NodeUpgradeProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::NodeUpgradeProgressInfo
      PagedServiceReplicaDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedServiceReplicaDescriptionList
      NetworkResourcePropertiesBase = Azure::ServiceFabric::V6_4_0_36::Models::NetworkResourcePropertiesBase
      PagedServiceResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedServiceResourceDescriptionList
      ClusterManifest = Azure::ServiceFabric::V6_4_0_36::Models::ClusterManifest
      ServiceReplicaProperties = Azure::ServiceFabric::V6_4_0_36::Models::ServiceReplicaProperties
      UploadChunkRange = Azure::ServiceFabric::V6_4_0_36::Models::UploadChunkRange
      LoadMetricReportInfo = Azure::ServiceFabric::V6_4_0_36::Models::LoadMetricReportInfo
      DeployedServiceReplicaInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServiceReplicaInfo
      DeployedServiceReplicaDetailInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServiceReplicaDetailInfo
      EntityHealth = Azure::ServiceFabric::V6_4_0_36::Models::EntityHealth
      ClusterConfigurationUpgradeStatusInfo = Azure::ServiceFabric::V6_4_0_36::Models::ClusterConfigurationUpgradeStatusInfo
      AutoScalingMetric = Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMetric
      PagedBackupEntityList = Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupEntityList
      DiagnosticsDescription = Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsDescription
      PagedNodeInfoList = Azure::ServiceFabric::V6_4_0_36::Models::PagedNodeInfoList
      ReplicaStatusBase = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaStatusBase
      HttpRouteMatchRule = Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteMatchRule
      ServiceUpdateDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceUpdateDescription
      GatewayResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::GatewayResourceDescription
      DiagnosticsSinkProperties = Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsSinkProperties
      PagedSecretResourceDescriptionList = Azure::ServiceFabric::V6_4_0_36::Models::PagedSecretResourceDescriptionList
      ServiceResourceDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServiceResourceDescription
      VolumeProviderParametersAzureFile = Azure::ServiceFabric::V6_4_0_36::Models::VolumeProviderParametersAzureFile
      FileVersion = Azure::ServiceFabric::V6_4_0_36::Models::FileVersion
      ApplicationNameInfo = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationNameInfo
      FileInfo = Azure::ServiceFabric::V6_4_0_36::Models::FileInfo
      ClusterConfiguration = Azure::ServiceFabric::V6_4_0_36::Models::ClusterConfiguration
      FolderInfo = Azure::ServiceFabric::V6_4_0_36::Models::FolderInfo
      ContainerApiResponse = Azure::ServiceFabric::V6_4_0_36::Models::ContainerApiResponse
      ImageStoreContent = Azure::ServiceFabric::V6_4_0_36::Models::ImageStoreContent
      RepairImpactDescriptionBase = Azure::ServiceFabric::V6_4_0_36::Models::RepairImpactDescriptionBase
      ImageStoreCopyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ImageStoreCopyDescription
      NodeDeactivationTaskId = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationTaskId
      RestartDeployedCodePackageDescription = Azure::ServiceFabric::V6_4_0_36::Models::RestartDeployedCodePackageDescription
      ReplicaInfo = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaInfo
      DeployedServiceTypeInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServiceTypeInfo
      ClusterUpgradeHealthPolicyObject = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeHealthPolicyObject
      ResolvedServiceEndpoint = Azure::ServiceFabric::V6_4_0_36::Models::ResolvedServiceEndpoint
      ServiceHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthStateFilter
      ResolvedServicePartition = Azure::ServiceFabric::V6_4_0_36::Models::ResolvedServicePartition
      NodeHealthStateFilter = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthStateFilter
      SelectedPartition = Azure::ServiceFabric::V6_4_0_36::Models::SelectedPartition
      TcpConfig = Azure::ServiceFabric::V6_4_0_36::Models::TcpConfig
      InvokeDataLossResult = Azure::ServiceFabric::V6_4_0_36::Models::InvokeDataLossResult
      BackupProgressInfo = Azure::ServiceFabric::V6_4_0_36::Models::BackupProgressInfo
      InvokeQuorumLossResult = Azure::ServiceFabric::V6_4_0_36::Models::InvokeQuorumLossResult
      ApplicationUpgradeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeDescription
      NodeResult = Azure::ServiceFabric::V6_4_0_36::Models::NodeResult
      NodeLoadInfo = Azure::ServiceFabric::V6_4_0_36::Models::NodeLoadInfo
      NodeTransitionResult = Azure::ServiceFabric::V6_4_0_36::Models::NodeTransitionResult
      RepairTaskDeleteDescription = Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskDeleteDescription
      NodeTransitionProgress = Azure::ServiceFabric::V6_4_0_36::Models::NodeTransitionProgress
      ApplicationHealthPolicies = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthPolicies
      ApplicationEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationEvent
      ServiceHealthState = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthState
      DeployedApplicationHealthState = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthState
      ApplicationHealth = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealth
      ApplicationHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthEvaluation
      ApplicationHealthState = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthState
      ReplicaHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthStateChunk
      PartitionHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthStateChunk
      ServiceHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthStateChunk
      DeployedServicePackageHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthStateChunk
      DeployedApplicationHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthStateChunk
      ApplicationHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthStateChunk
      ApplicationHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthStateChunkList
      ApplicationsHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationsHealthEvaluation
      ApplicationTypeApplicationsHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeApplicationsHealthEvaluation
      ClusterEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterEvent
      NodeHealthState = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthState
      ClusterHealth = Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealth
      NodeHealthStateChunk = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthStateChunk
      NodeHealthStateChunkList = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthStateChunkList
      ContainerInstanceEvent = Azure::ServiceFabric::V6_4_0_36::Models::ContainerInstanceEvent
      DeltaNodesCheckHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::DeltaNodesCheckHealthEvaluation
      DeployedServicePackageHealthState = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthState
      DeployedApplicationHealth = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealth
      DeployedApplicationHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthEvaluation
      DeployedApplicationsHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationsHealthEvaluation
      DeployedServicePackageHealth = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealth
      DeployedServicePackageHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthEvaluation
      DeployedServicePackagesHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackagesHealthEvaluation
      DeployedStatefulServiceReplicaInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatefulServiceReplicaInfo
      DeployedStatelessServiceInstanceInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatelessServiceInstanceInfo
      HealthEvent = Azure::ServiceFabric::V6_4_0_36::Models::HealthEvent
      EventHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::EventHealthEvaluation
      Int64RangePartitionInformation = Azure::ServiceFabric::V6_4_0_36::Models::Int64RangePartitionInformation
      NamedPartitionInformation = Azure::ServiceFabric::V6_4_0_36::Models::NamedPartitionInformation
      NodeEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeEvent
      NodeHealth = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealth
      NodeHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthEvaluation
      NodesHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::NodesHealthEvaluation
      PartitionEvent = Azure::ServiceFabric::V6_4_0_36::Models::PartitionEvent
      PartitionAnalysisEvent = Azure::ServiceFabric::V6_4_0_36::Models::PartitionAnalysisEvent
      ReplicaHealthState = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthState
      PartitionHealth = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealth
      PartitionHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthEvaluation
      PartitionHealthState = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthState
      ProvisionApplicationTypeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ProvisionApplicationTypeDescription
      ExternalStoreProvisionApplicationTypeDescription = Azure::ServiceFabric::V6_4_0_36::Models::ExternalStoreProvisionApplicationTypeDescription
      PartitionSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::PartitionSafetyCheck
      EnsureAvailabilitySafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::EnsureAvailabilitySafetyCheck
      EnsurePartitionQurumSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::EnsurePartitionQurumSafetyCheck
      SeedNodeSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::SeedNodeSafetyCheck
      PartitionsHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::PartitionsHealthEvaluation
      ReplicaEvent = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaEvent
      ReplicaHealth = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealth
      ReplicaHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthEvaluation
      ReplicasHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ReplicasHealthEvaluation
      ServiceEvent = Azure::ServiceFabric::V6_4_0_36::Models::ServiceEvent
      ServiceHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthEvaluation
      ServiceHealth = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealth
      ServicePlacementInvalidDomainPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementInvalidDomainPolicyDescription
      ServicePlacementNonPartiallyPlaceServicePolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementNonPartiallyPlaceServicePolicyDescription
      ServicePlacementPreferPrimaryDomainPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementPreferPrimaryDomainPolicyDescription
      ServicePlacementRequiredDomainPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementRequiredDomainPolicyDescription
      ServicePlacementRequireDomainDistributionPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementRequireDomainDistributionPolicyDescription
      ServicesHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::ServicesHealthEvaluation
      SingletonPartitionInformation = Azure::ServiceFabric::V6_4_0_36::Models::SingletonPartitionInformation
      StatefulServiceInfo = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceInfo
      StatefulServicePartitionInfo = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServicePartitionInfo
      StatefulServiceReplicaHealth = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceReplicaHealth
      StatefulServiceReplicaHealthState = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceReplicaHealthState
      StatefulServiceTypeDescription = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceTypeDescription
      StatelessServiceInfo = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInfo
      StatelessServiceInstanceHealth = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInstanceHealth
      StatelessServiceInstanceHealthState = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInstanceHealthState
      StatelessServicePartitionInfo = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServicePartitionInfo
      StatelessServiceTypeDescription = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceTypeDescription
      SystemApplicationHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::SystemApplicationHealthEvaluation
      UpgradeDomainDeltaNodesCheckHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainDeltaNodesCheckHealthEvaluation
      UpgradeDomainNodesHealthEvaluation = Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainNodesHealthEvaluation
      WaitForInbuildReplicaSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::WaitForInbuildReplicaSafetyCheck
      WaitForPrimaryPlacementSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::WaitForPrimaryPlacementSafetyCheck
      WaitForPrimarySwapSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::WaitForPrimarySwapSafetyCheck
      WaitForReconfigurationSafetyCheck = Azure::ServiceFabric::V6_4_0_36::Models::WaitForReconfigurationSafetyCheck
      StatefulServiceReplicaInfo = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceReplicaInfo
      StatelessServiceInstanceInfo = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInstanceInfo
      ExecutingFaultsChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::ExecutingFaultsChaosEvent
      StartedChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::StartedChaosEvent
      StoppedChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::StoppedChaosEvent
      TestErrorChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::TestErrorChaosEvent
      ValidationFailedChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::ValidationFailedChaosEvent
      WaitingChaosEvent = Azure::ServiceFabric::V6_4_0_36::Models::WaitingChaosEvent
      StatefulServiceDescription = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceDescription
      StatelessServiceDescription = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceDescription
      PrimaryReplicatorStatus = Azure::ServiceFabric::V6_4_0_36::Models::PrimaryReplicatorStatus
      SecondaryReplicatorStatus = Azure::ServiceFabric::V6_4_0_36::Models::SecondaryReplicatorStatus
      SecondaryActiveReplicatorStatus = Azure::ServiceFabric::V6_4_0_36::Models::SecondaryActiveReplicatorStatus
      SecondaryIdleReplicatorStatus = Azure::ServiceFabric::V6_4_0_36::Models::SecondaryIdleReplicatorStatus
      KeyValueStoreReplicaStatus = Azure::ServiceFabric::V6_4_0_36::Models::KeyValueStoreReplicaStatus
      DeployedStatefulServiceReplicaDetailInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatefulServiceReplicaDetailInfo
      DeployedStatelessServiceInstanceDetailInfo = Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatelessServiceInstanceDetailInfo
      StatefulServiceUpdateDescription = Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceUpdateDescription
      StatelessServiceUpdateDescription = Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceUpdateDescription
      BinaryPropertyValue = Azure::ServiceFabric::V6_4_0_36::Models::BinaryPropertyValue
      Int64PropertyValue = Azure::ServiceFabric::V6_4_0_36::Models::Int64PropertyValue
      DoublePropertyValue = Azure::ServiceFabric::V6_4_0_36::Models::DoublePropertyValue
      StringPropertyValue = Azure::ServiceFabric::V6_4_0_36::Models::StringPropertyValue
      GuidPropertyValue = Azure::ServiceFabric::V6_4_0_36::Models::GuidPropertyValue
      CheckExistsPropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::CheckExistsPropertyBatchOperation
      CheckSequencePropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::CheckSequencePropertyBatchOperation
      CheckValuePropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::CheckValuePropertyBatchOperation
      DeletePropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::DeletePropertyBatchOperation
      GetPropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::GetPropertyBatchOperation
      PutPropertyBatchOperation = Azure::ServiceFabric::V6_4_0_36::Models::PutPropertyBatchOperation
      SuccessfulPropertyBatchInfo = Azure::ServiceFabric::V6_4_0_36::Models::SuccessfulPropertyBatchInfo
      FailedPropertyBatchInfo = Azure::ServiceFabric::V6_4_0_36::Models::FailedPropertyBatchInfo
      BasicRetentionPolicyDescription = Azure::ServiceFabric::V6_4_0_36::Models::BasicRetentionPolicyDescription
      ApplicationBackupConfigurationInfo = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationBackupConfigurationInfo
      ServiceBackupConfigurationInfo = Azure::ServiceFabric::V6_4_0_36::Models::ServiceBackupConfigurationInfo
      AzureBlobBackupStorageDescription = Azure::ServiceFabric::V6_4_0_36::Models::AzureBlobBackupStorageDescription
      FileShareBackupStorageDescription = Azure::ServiceFabric::V6_4_0_36::Models::FileShareBackupStorageDescription
      FrequencyBasedBackupScheduleDescription = Azure::ServiceFabric::V6_4_0_36::Models::FrequencyBasedBackupScheduleDescription
      TimeBasedBackupScheduleDescription = Azure::ServiceFabric::V6_4_0_36::Models::TimeBasedBackupScheduleDescription
      PartitionBackupConfigurationInfo = Azure::ServiceFabric::V6_4_0_36::Models::PartitionBackupConfigurationInfo
      ApplicationBackupEntity = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationBackupEntity
      ServiceBackupEntity = Azure::ServiceFabric::V6_4_0_36::Models::ServiceBackupEntity
      PartitionBackupEntity = Azure::ServiceFabric::V6_4_0_36::Models::PartitionBackupEntity
      NodeRepairImpactDescription = Azure::ServiceFabric::V6_4_0_36::Models::NodeRepairImpactDescription
      NodeRepairTargetDescription = Azure::ServiceFabric::V6_4_0_36::Models::NodeRepairTargetDescription
      AveragePartitionLoadScalingTrigger = Azure::ServiceFabric::V6_4_0_36::Models::AveragePartitionLoadScalingTrigger
      AverageServiceLoadScalingTrigger = Azure::ServiceFabric::V6_4_0_36::Models::AverageServiceLoadScalingTrigger
      PartitionInstanceCountScaleMechanism = Azure::ServiceFabric::V6_4_0_36::Models::PartitionInstanceCountScaleMechanism
      AddRemoveIncrementalNamedPartitionScalingMechanism = Azure::ServiceFabric::V6_4_0_36::Models::AddRemoveIncrementalNamedPartitionScalingMechanism
      ApplicationCreatedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationCreatedEvent
      ApplicationDeletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationDeletedEvent
      ApplicationNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationNewHealthReportEvent
      ApplicationHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthReportExpiredEvent
      ApplicationUpgradeCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeCompletedEvent
      ApplicationUpgradeDomainCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeDomainCompletedEvent
      ApplicationUpgradeRollbackCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeRollbackCompletedEvent
      ApplicationUpgradeRollbackStartedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeRollbackStartedEvent
      ApplicationUpgradeStartedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeStartedEvent
      DeployedApplicationNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationNewHealthReportEvent
      DeployedApplicationHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthReportExpiredEvent
      ApplicationProcessExitedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationProcessExitedEvent
      ApplicationContainerInstanceExitedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ApplicationContainerInstanceExitedEvent
      NodeAbortedEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeAbortedEvent
      NodeAddedToClusterEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeAddedToClusterEvent
      NodeClosedEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeClosedEvent
      NodeDeactivateCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivateCompletedEvent
      NodeDeactivateStartedEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivateStartedEvent
      NodeDownEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeDownEvent
      NodeNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeNewHealthReportEvent
      NodeHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthReportExpiredEvent
      NodeOpenSucceededEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeOpenSucceededEvent
      NodeOpenFailedEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeOpenFailedEvent
      NodeRemovedFromClusterEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeRemovedFromClusterEvent
      NodeUpEvent = Azure::ServiceFabric::V6_4_0_36::Models::NodeUpEvent
      PartitionNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::PartitionNewHealthReportEvent
      PartitionHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthReportExpiredEvent
      PartitionReconfiguredEvent = Azure::ServiceFabric::V6_4_0_36::Models::PartitionReconfiguredEvent
      PartitionPrimaryMoveAnalysisEvent = Azure::ServiceFabric::V6_4_0_36::Models::PartitionPrimaryMoveAnalysisEvent
      ServiceCreatedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ServiceCreatedEvent
      ServiceDeletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ServiceDeletedEvent
      ServiceNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::ServiceNewHealthReportEvent
      ServiceHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthReportExpiredEvent
      DeployedServicePackageNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageNewHealthReportEvent
      DeployedServicePackageHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthReportExpiredEvent
      StatefulReplicaNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::StatefulReplicaNewHealthReportEvent
      ContainerState = Azure::ServiceFabric::V6_4_0_36::Models::ContainerState
      StatefulReplicaHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::StatefulReplicaHealthReportExpiredEvent
      StatelessReplicaNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::StatelessReplicaNewHealthReportEvent
      ResourceRequests = Azure::ServiceFabric::V6_4_0_36::Models::ResourceRequests
      ClusterNewHealthReportEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterNewHealthReportEvent
      ResourceRequirements = Azure::ServiceFabric::V6_4_0_36::Models::ResourceRequirements
      ClusterUpgradeCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeCompletedEvent
      ClusterHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthReportExpiredEvent
      StatelessReplicaHealthReportExpiredEvent = Azure::ServiceFabric::V6_4_0_36::Models::StatelessReplicaHealthReportExpiredEvent
      ClusterUpgradeDomainCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeDomainCompletedEvent
      ClusterUpgradeRollbackCompletedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeRollbackCompletedEvent
      ClusterUpgradeRollbackStartedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeRollbackStartedEvent
      ClusterUpgradeStartedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeStartedEvent
      ImageRegistryCredential = Azure::ServiceFabric::V6_4_0_36::Models::ImageRegistryCredential
      ResourceLimits = Azure::ServiceFabric::V6_4_0_36::Models::ResourceLimits
      ChaosCodePackageRestartScheduledEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosCodePackageRestartScheduledEvent
      ChaosStoppedEvent = Azure::ServiceFabric::V6_4_0_36::Models::ChaosStoppedEvent
    end

    class ServiceFabricDataClass
      attr_reader :mesh_application, :mesh_service, :mesh_code_package, :mesh_service_replica, :mesh_gateway, :mesh_secret, :mesh_secret_value, :mesh_volume, :mesh_network, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::ServiceFabric::V6_4_0_36::ServiceFabricClientAPIs.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @mesh_application = @client_0.mesh_application
        @mesh_service = @client_0.mesh_service
        @mesh_code_package = @client_0.mesh_code_package
        @mesh_service_replica = @client_0.mesh_service_replica
        @mesh_gateway = @client_0.mesh_gateway
        @mesh_secret = @client_0.mesh_secret
        @mesh_secret_value = @client_0.mesh_secret_value
        @mesh_volume = @client_0.mesh_volume
        @mesh_network = @client_0.mesh_network

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServiceFabric"
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
        def chaos_started_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosStartedEvent
        end
        def environment_variable
          Azure::ServiceFabric::V6_4_0_36::Models::EnvironmentVariable
        end
        def chaos_replica_removal_scheduled_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosReplicaRemovalScheduledEvent
        end
        def chaos_partition_secondary_move_scheduled_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosPartitionSecondaryMoveScheduledEvent
        end
        def chaos_partition_primary_move_scheduled_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosPartitionPrimaryMoveScheduledEvent
        end
        def chaos_replica_restart_scheduled_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosReplicaRestartScheduledEvent
        end
        def chaos_node_restart_scheduled_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosNodeRestartScheduledEvent
        end
        def secret_resource_properties
          Azure::ServiceFabric::V6_4_0_36::Models::SecretResourceProperties
        end
        def inlined_value_secret_resource_properties
          Azure::ServiceFabric::V6_4_0_36::Models::InlinedValueSecretResourceProperties
        end
        def application_scoped_volume
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolume
        end
        def application_scoped_volume_creation_parameters_service_fabric_volume_disk
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
        end
        def network_resource_properties
          Azure::ServiceFabric::V6_4_0_36::Models::NetworkResourceProperties
        end
        def local_network_resource_properties
          Azure::ServiceFabric::V6_4_0_36::Models::LocalNetworkResourceProperties
        end
        def azure_internal_monitoring_pipeline_sink_description
          Azure::ServiceFabric::V6_4_0_36::Models::AzureInternalMonitoringPipelineSinkDescription
        end
        def add_remove_replica_scaling_mechanism
          Azure::ServiceFabric::V6_4_0_36::Models::AddRemoveReplicaScalingMechanism
        end
        def auto_scaling_resource_metric
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingResourceMetric
        end
        def service_replica_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceReplicaDescription
        end
        def average_load_scaling_trigger
          Azure::ServiceFabric::V6_4_0_36::Models::AverageLoadScalingTrigger
        end
        def fabric_error_codes
          Azure::ServiceFabric::V6_4_0_36::Models::FabricErrorCodes
        end
        def application_definition_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationDefinitionKind
        end
        def application_status
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationStatus
        end
        def application_package_cleanup_policy
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationPackageCleanupPolicy
        end
        def application_type_definition_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeDefinitionKind
        end
        def application_type_status
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeStatus
        end
        def upgrade_kind
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeKind
        end
        def failure_action
          Azure::ServiceFabric::V6_4_0_36::Models::FailureAction
        end
        def upgrade_domain_state
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainState
        end
        def upgrade_mode
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeMode
        end
        def failure_reason
          Azure::ServiceFabric::V6_4_0_36::Models::FailureReason
        end
        def deactivation_intent
          Azure::ServiceFabric::V6_4_0_36::Models::DeactivationIntent
        end
        def deployed_application_status
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationStatus
        end
        def node_upgrade_phase
          Azure::ServiceFabric::V6_4_0_36::Models::NodeUpgradePhase
        end
        def replica_role
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaRole
        end
        def reconfiguration_phase
          Azure::ServiceFabric::V6_4_0_36::Models::ReconfigurationPhase
        end
        def reconfiguration_type
          Azure::ServiceFabric::V6_4_0_36::Models::ReconfigurationType
        end
        def upgrade_state
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeState
        end
        def fabric_event_kind
          Azure::ServiceFabric::V6_4_0_36::Models::FabricEventKind
        end
        def health_evaluation_kind
          Azure::ServiceFabric::V6_4_0_36::Models::HealthEvaluationKind
        end
        def node_deactivation_intent
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationIntent
        end
        def entity_kind
          Azure::ServiceFabric::V6_4_0_36::Models::EntityKind
        end
        def replica_status
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaStatus
        end
        def node_status
          Azure::ServiceFabric::V6_4_0_36::Models::NodeStatus
        end
        def service_partition_status
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePartitionStatus
        end
        def node_deactivation_status
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationStatus
        end
        def node_deactivation_task_type
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationTaskType
        end
        def upgrade_type
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeType
        end
        def safety_check_kind
          Azure::ServiceFabric::V6_4_0_36::Models::SafetyCheckKind
        end
        def service_status
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceStatus
        end
        def provision_application_type_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ProvisionApplicationTypeKind
        end
        def service_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceKind
        end
        def service_partition_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePartitionKind
        end
        def create_fabric_dump
          Azure::ServiceFabric::V6_4_0_36::Models::CreateFabricDump
        end
        def service_package_activation_mode
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePackageActivationMode
        end
        def host_type
          Azure::ServiceFabric::V6_4_0_36::Models::HostType
        end
        def deployment_status
          Azure::ServiceFabric::V6_4_0_36::Models::DeploymentStatus
        end
        def service_placement_policy_type
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementPolicyType
        end
        def service_load_metric_weight
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceLoadMetricWeight
        end
        def host_isolation_mode
          Azure::ServiceFabric::V6_4_0_36::Models::HostIsolationMode
        end
        def chaos_event_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosEventKind
        end
        def entry_point_status
          Azure::ServiceFabric::V6_4_0_36::Models::EntryPointStatus
        end
        def chaos_status
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosStatus
        end
        def chaos_schedule_status
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleStatus
        end
        def move_cost
          Azure::ServiceFabric::V6_4_0_36::Models::MoveCost
        end
        def compose_deployment_status
          Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentStatus
        end
        def compose_deployment_upgrade_state
          Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentUpgradeState
        end
        def service_correlation_scheme
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceCorrelationScheme
        end
        def partition_access_status
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionAccessStatus
        end
        def partition_scheme
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionScheme
        end
        def service_operation_name
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceOperationName
        end
        def replicator_operation_name
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicatorOperationName
        end
        def service_endpoint_role
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceEndpointRole
        end
        def fabric_replica_status
          Azure::ServiceFabric::V6_4_0_36::Models::FabricReplicaStatus
        end
        def replica_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaKind
        end
        def service_type_registration_status
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeRegistrationStatus
        end
        def property_value_kind
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyValueKind
        end
        def operation_state
          Azure::ServiceFabric::V6_4_0_36::Models::OperationState
        end
        def operation_type
          Azure::ServiceFabric::V6_4_0_36::Models::OperationType
        end
        def package_sharing_policy_scope
          Azure::ServiceFabric::V6_4_0_36::Models::PackageSharingPolicyScope
        end
        def backup_storage_kind
          Azure::ServiceFabric::V6_4_0_36::Models::BackupStorageKind
        end
        def property_batch_operation_kind
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchOperationKind
        end
        def property_batch_info_kind
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchInfoKind
        end
        def retention_policy_type
          Azure::ServiceFabric::V6_4_0_36::Models::RetentionPolicyType
        end
        def restore_state
          Azure::ServiceFabric::V6_4_0_36::Models::RestoreState
        end
        def backup_schedule_kind
          Azure::ServiceFabric::V6_4_0_36::Models::BackupScheduleKind
        end
        def backup_policy_scope
          Azure::ServiceFabric::V6_4_0_36::Models::BackupPolicyScope
        end
        def backup_suspension_scope
          Azure::ServiceFabric::V6_4_0_36::Models::BackupSuspensionScope
        end
        def day_of_week
          Azure::ServiceFabric::V6_4_0_36::Models::DayOfWeek
        end
        def backup_schedule_frequency_type
          Azure::ServiceFabric::V6_4_0_36::Models::BackupScheduleFrequencyType
        end
        def backup_state
          Azure::ServiceFabric::V6_4_0_36::Models::BackupState
        end
        def backup_entity_kind
          Azure::ServiceFabric::V6_4_0_36::Models::BackupEntityKind
        end
        def impact_level
          Azure::ServiceFabric::V6_4_0_36::Models::ImpactLevel
        end
        def repair_impact_kind
          Azure::ServiceFabric::V6_4_0_36::Models::RepairImpactKind
        end
        def repair_target_kind
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTargetKind
        end
        def result_status
          Azure::ServiceFabric::V6_4_0_36::Models::ResultStatus
        end
        def repair_task_health_check_state
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskHealthCheckState
        end
        def scaling_trigger_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ScalingTriggerKind
        end
        def scaling_mechanism_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ScalingMechanismKind
        end
        def resource_status
          Azure::ServiceFabric::V6_4_0_36::Models::ResourceStatus
        end
        def secret_kind
          Azure::ServiceFabric::V6_4_0_36::Models::SecretKind
        end
        def volume_provider
          Azure::ServiceFabric::V6_4_0_36::Models::VolumeProvider
        end
        def size_types
          Azure::ServiceFabric::V6_4_0_36::Models::SizeTypes
        end
        def backup_type
          Azure::ServiceFabric::V6_4_0_36::Models::BackupType
        end
        def network_kind
          Azure::ServiceFabric::V6_4_0_36::Models::NetworkKind
        end
        def header_match_type
          Azure::ServiceFabric::V6_4_0_36::Models::HeaderMatchType
        end
        def operating_system_type
          Azure::ServiceFabric::V6_4_0_36::Models::OperatingSystemType
        end
        def diagnostics_sink_kind
          Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsSinkKind
        end
        def application_scoped_volume_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolumeKind
        end
        def auto_scaling_metric_kind
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMetricKind
        end
        def auto_scaling_resource_metric_name
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingResourceMetricName
        end
        def auto_scaling_trigger_kind
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingTriggerKind
        end
        def node_status_filter
          Azure::ServiceFabric::V6_4_0_36::Models::NodeStatusFilter
        end
        def auto_scaling_mechanism_kind
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMechanismKind
        end
        def data_loss_mode
          Azure::ServiceFabric::V6_4_0_36::Models::DataLossMode
        end
        def node_transition_type
          Azure::ServiceFabric::V6_4_0_36::Models::NodeTransitionType
        end
        def quorum_loss_mode
          Azure::ServiceFabric::V6_4_0_36::Models::QuorumLossMode
        end
        def restart_partition_mode
          Azure::ServiceFabric::V6_4_0_36::Models::RestartPartitionMode
        end
        def replica_health_report_service_kind
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthReportServiceKind
        end
        def operation_status
          Azure::ServiceFabric::V6_4_0_36::Models::OperationStatus
        end
        def state
          Azure::ServiceFabric::V6_4_0_36::Models::State
        end
        def service_type_health_policy_map_item
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeHealthPolicyMapItem
        end
        def application_metric_description
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationMetricDescription
        end
        def service_correlation_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceCorrelationDescription
        end
        def service_placement_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementPolicyDescription
        end
        def application_health_policy
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthPolicy
        end
        def application_parameter
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationParameter
        end
        def service_load_metric_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceLoadMetricDescription
        end
        def partition_scheme_description
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionSchemeDescription
        end
        def cluster_health_policy
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthPolicy
        end
        def service_type_health_policy
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeHealthPolicy
        end
        def named_partition_scheme_description
          Azure::ServiceFabric::V6_4_0_36::Models::NamedPartitionSchemeDescription
        end
        def singleton_partition_scheme_description
          Azure::ServiceFabric::V6_4_0_36::Models::SingletonPartitionSchemeDescription
        end
        def uniform_int64_range_partition_scheme_description
          Azure::ServiceFabric::V6_4_0_36::Models::UniformInt64RangePartitionSchemeDescription
        end
        def service_properties
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceProperties
        end
        def health_state
          Azure::ServiceFabric::V6_4_0_36::Models::HealthState
        end
        def scaling_mechanism_description
          Azure::ServiceFabric::V6_4_0_36::Models::ScalingMechanismDescription
        end
        def scaling_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ScalingPolicyDescription
        end
        def fabric_error
          Azure::ServiceFabric::V6_4_0_36::Models::FabricError
        end
        def service_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceDescription
        end
        def aad_metadata
          Azure::ServiceFabric::V6_4_0_36::Models::AadMetadata
        end
        def load_metric_report
          Azure::ServiceFabric::V6_4_0_36::Models::LoadMetricReport
        end
        def analysis_event_metadata
          Azure::ServiceFabric::V6_4_0_36::Models::AnalysisEventMetadata
        end
        def partition_load_information
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionLoadInformation
        end
        def secret_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::SecretResourceDescription
        end
        def paged_backup_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupInfoList
        end
        def health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::HealthEvaluation
        end
        def backup_info
          Azure::ServiceFabric::V6_4_0_36::Models::BackupInfo
        end
        def secret_resource_properties_base
          Azure::ServiceFabric::V6_4_0_36::Models::SecretResourcePropertiesBase
        end
        def backup_partition_description
          Azure::ServiceFabric::V6_4_0_36::Models::BackupPartitionDescription
        end
        def restore_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::RestoreProgressInfo
        end
        def application_health_policy_map_item
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthPolicyMapItem
        end
        def restore_partition_description
          Azure::ServiceFabric::V6_4_0_36::Models::RestorePartitionDescription
        end
        def secret_value
          Azure::ServiceFabric::V6_4_0_36::Models::SecretValue
        end
        def paged_backup_configuration_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupConfigurationInfoList
        end
        def replica_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthStateChunkList
        end
        def backup_configuration_info
          Azure::ServiceFabric::V6_4_0_36::Models::BackupConfigurationInfo
        end
        def partition_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthStateChunkList
        end
        def backup_suspension_info
          Azure::ServiceFabric::V6_4_0_36::Models::BackupSuspensionInfo
        end
        def service_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthStateChunkList
        end
        def restart_node_description
          Azure::ServiceFabric::V6_4_0_36::Models::RestartNodeDescription
        end
        def deployed_service_package_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthStateChunkList
        end
        def deployed_application_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthStateChunkList
        end
        def service_from_template_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceFromTemplateDescription
        end
        def volume_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::VolumeResourceDescription
        end
        def setting
          Azure::ServiceFabric::V6_4_0_36::Models::Setting
        end
        def partition_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthStateFilter
        end
        def disable_backup_description
          Azure::ServiceFabric::V6_4_0_36::Models::DisableBackupDescription
        end
        def deployed_service_package_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthStateFilter
        end
        def service_name_info
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceNameInfo
        end
        def application_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthStateFilter
        end
        def container_label
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerLabel
        end
        def application_info
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationInfo
        end
        def paged_backup_policy_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupPolicyDescriptionList
        end
        def application_load_info
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationLoadInfo
        end
        def paged_volume_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedVolumeResourceDescriptionList
        end
        def backup_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::BackupPolicyDescription
        end
        def application_type_health_policy_map_item
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeHealthPolicyMapItem
        end
        def retention_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::RetentionPolicyDescription
        end
        def paged_application_type_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedApplicationTypeInfoList
        end
        def backup_storage_description
          Azure::ServiceFabric::V6_4_0_36::Models::BackupStorageDescription
        end
        def monitoring_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::MonitoringPolicyDescription
        end
        def backup_schedule_description
          Azure::ServiceFabric::V6_4_0_36::Models::BackupScheduleDescription
        end
        def upgrade_domain_info
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainInfo
        end
        def safety_check_wrapper
          Azure::ServiceFabric::V6_4_0_36::Models::SafetyCheckWrapper
        end
        def service_type_extension_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeExtensionDescription
        end
        def current_upgrade_domain_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::CurrentUpgradeDomainProgressInfo
        end
        def service_type_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeDescription
        end
        def application_upgrade_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeProgressInfo
        end
        def service_type_info
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeInfo
        end
        def network_ref
          Azure::ServiceFabric::V6_4_0_36::Models::NetworkRef
        end
        def service_type_manifest
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceTypeManifest
        end
        def network_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::NetworkResourceDescription
        end
        def endpoint_properties
          Azure::ServiceFabric::V6_4_0_36::Models::EndpointProperties
        end
        def paged_network_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedNetworkResourceDescriptionList
        end
        def cluster_health_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthChunk
        end
        def property_batch_info
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchInfo
        end
        def cluster_health_policies
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthPolicies
        end
        def cluster_version
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterVersion
        end
        def diagnostics_ref
          Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsRef
        end
        def container_api_result
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerApiResult
        end
        def reliable_collections_ref
          Azure::ServiceFabric::V6_4_0_36::Models::ReliableCollectionsRef
        end
        def upload_session
          Azure::ServiceFabric::V6_4_0_36::Models::UploadSession
        end
        def upload_session_info
          Azure::ServiceFabric::V6_4_0_36::Models::UploadSessionInfo
        end
        def container_event
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerEvent
        end
        def repair_task_update_info
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskUpdateInfo
        end
        def property_batch_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchDescriptionList
        end
        def deployed_application_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationInfo
        end
        def property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyBatchOperation
        end
        def repair_task_cancel_description
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskCancelDescription
        end
        def property_description
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyDescription
        end
        def repair_task
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTask
        end
        def paged_property_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedPropertyInfoList
        end
        def reconfiguration_information
          Azure::ServiceFabric::V6_4_0_36::Models::ReconfigurationInformation
        end
        def property_info
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyInfo
        end
        def repair_target_description_base
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTargetDescriptionBase
        end
        def property_metadata
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyMetadata
        end
        def health_state_count
          Azure::ServiceFabric::V6_4_0_36::Models::HealthStateCount
        end
        def container_instance_view
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerInstanceView
        end
        def health_statistics
          Azure::ServiceFabric::V6_4_0_36::Models::HealthStatistics
        end
        def container_code_package_properties
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerCodePackageProperties
        end
        def entity_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::EntityHealthState
        end
        def auto_scaling_trigger
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingTrigger
        end
        def entity_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::EntityHealthStateChunkList
        end
        def epoch
          Azure::ServiceFabric::V6_4_0_36::Models::Epoch
        end
        def partition_data_loss_progress
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionDataLossProgress
        end
        def fabric_event
          Azure::ServiceFabric::V6_4_0_36::Models::FabricEvent
        end
        def auto_scaling_mechanism
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMechanism
        end
        def fabric_config_version_info
          Azure::ServiceFabric::V6_4_0_36::Models::FabricConfigVersionInfo
        end
        def auto_scaling_policy
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingPolicy
        end
        def health_information
          Azure::ServiceFabric::V6_4_0_36::Models::HealthInformation
        end
        def property_value
          Azure::ServiceFabric::V6_4_0_36::Models::PropertyValue
        end
        def node_impact
          Azure::ServiceFabric::V6_4_0_36::Models::NodeImpact
        end
        def cluster_upgrade_description_object
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeDescriptionObject
        end
        def node_deactivation_task
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationTask
        end
        def failed_upgrade_domain_progress_object
          Azure::ServiceFabric::V6_4_0_36::Models::FailedUpgradeDomainProgressObject
        end
        def get_backup_by_storage_query_description
          Azure::ServiceFabric::V6_4_0_36::Models::GetBackupByStorageQueryDescription
        end
        def cluster_upgrade_progress_object
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeProgressObject
        end
        def enable_backup_description
          Azure::ServiceFabric::V6_4_0_36::Models::EnableBackupDescription
        end
        def cluster_configuration_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterConfigurationUpgradeDescription
        end
        def node_load_metric_information
          Azure::ServiceFabric::V6_4_0_36::Models::NodeLoadMetricInformation
        end
        def upgrade_orchestration_service_state
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeOrchestrationServiceState
        end
        def http_route_match_header
          Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteMatchHeader
        end
        def upgrade_orchestration_service_state_summary
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeOrchestrationServiceStateSummary
        end
        def paged_deployed_application_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedDeployedApplicationInfoList
        end
        def application_type_image_store_path
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeImageStorePath
        end
        def partition_information
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionInformation
        end
        def unprovision_application_type_description_info
          Azure::ServiceFabric::V6_4_0_36::Models::UnprovisionApplicationTypeDescriptionInfo
        end
        def paged_service_partition_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedServicePartitionInfoList
        end
        def code_package_entry_point_statistics
          Azure::ServiceFabric::V6_4_0_36::Models::CodePackageEntryPointStatistics
        end
        def paged_replica_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedReplicaInfoList
        end
        def code_package_entry_point
          Azure::ServiceFabric::V6_4_0_36::Models::CodePackageEntryPoint
        end
        def paged_service_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedServiceInfoList
        end
        def deployed_code_package_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedCodePackageInfo
        end
        def http_route_config
          Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteConfig
        end
        def chaos_context
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosContext
        end
        def http_host_config
          Azure::ServiceFabric::V6_4_0_36::Models::HttpHostConfig
        end
        def chaos_target_filter
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosTargetFilter
        end
        def http_config
          Azure::ServiceFabric::V6_4_0_36::Models::HttpConfig
        end
        def chaos_parameters
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosParameters
        end
        def provision_application_type_description_base
          Azure::ServiceFabric::V6_4_0_36::Models::ProvisionApplicationTypeDescriptionBase
        end
        def chaos
          Azure::ServiceFabric::V6_4_0_36::Models::Chaos
        end
        def paged_gateway_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedGatewayResourceDescriptionList
        end
        def chaos_parameters_dictionary_item
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosParametersDictionaryItem
        end
        def resume_cluster_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::ResumeClusterUpgradeDescription
        end
        def chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosEvent
        end
        def start_cluster_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::StartClusterUpgradeDescription
        end
        def chaos_event_wrapper
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosEventWrapper
        end
        def update_cluster_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::UpdateClusterUpgradeDescription
        end
        def chaos_events_segment
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosEventsSegment
        end
        def health_evaluation_wrapper
          Azure::ServiceFabric::V6_4_0_36::Models::HealthEvaluationWrapper
        end
        def chaos_schedule_job_active_days_of_week
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleJobActiveDaysOfWeek
        end
        def time_of_day
          Azure::ServiceFabric::V6_4_0_36::Models::TimeOfDay
        end
        def secret_value_properties
          Azure::ServiceFabric::V6_4_0_36::Models::SecretValueProperties
        end
        def time_range
          Azure::ServiceFabric::V6_4_0_36::Models::TimeRange
        end
        def paged_secret_value_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedSecretValueResourceDescriptionList
        end
        def chaos_schedule_job
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleJob
        end
        def volume_reference
          Azure::ServiceFabric::V6_4_0_36::Models::VolumeReference
        end
        def chaos_schedule
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosSchedule
        end
        def replica_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthStateFilter
        end
        def chaos_schedule_description
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosScheduleDescription
        end
        def deployed_application_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthStateFilter
        end
        def paged_sub_name_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedSubNameInfoList
        end
        def name_description
          Azure::ServiceFabric::V6_4_0_36::Models::NameDescription
        end
        def endpoint_ref
          Azure::ServiceFabric::V6_4_0_36::Models::EndpointRef
        end
        def application_upgrade_update_description
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeUpdateDescription
        end
        def application_type_manifest
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeManifest
        end
        def resume_application_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::ResumeApplicationUpgradeDescription
        end
        def safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::SafetyCheck
        end
        def deploy_service_package_to_node_description
          Azure::ServiceFabric::V6_4_0_36::Models::DeployServicePackageToNodeDescription
        end
        def failure_upgrade_domain_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::FailureUpgradeDomainProgressInfo
        end
        def package_sharing_policy_info
          Azure::ServiceFabric::V6_4_0_36::Models::PackageSharingPolicyInfo
        end
        def node_id
          Azure::ServiceFabric::V6_4_0_36::Models::NodeId
        end
        def application_capacity_description
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationCapacityDescription
        end
        def gateway_destination
          Azure::ServiceFabric::V6_4_0_36::Models::GatewayDestination
        end
        def application_description
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationDescription
        end
        def cluster_health_chunk_query_description
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthChunkQueryDescription
        end
        def compose_deployment_status_info
          Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentStatusInfo
        end
        def container_api_request_body
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerApiRequestBody
        end
        def registry_credential
          Azure::ServiceFabric::V6_4_0_36::Models::RegistryCredential
        end
        def deactivation_intent_description
          Azure::ServiceFabric::V6_4_0_36::Models::DeactivationIntentDescription
        end
        def compose_deployment_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentUpgradeDescription
        end
        def repair_task_update_health_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskUpdateHealthPolicyDescription
        end
        def compose_deployment_upgrade_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::ComposeDeploymentUpgradeProgressInfo
        end
        def repair_task_approve_description
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskApproveDescription
        end
        def paged_compose_deployment_status_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedComposeDeploymentStatusInfoList
        end
        def repair_task_history
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskHistory
        end
        def create_compose_deployment_description
          Azure::ServiceFabric::V6_4_0_36::Models::CreateComposeDeploymentDescription
        end
        def entity_kind_health_state_count
          Azure::ServiceFabric::V6_4_0_36::Models::EntityKindHealthStateCount
        end
        def deployed_service_package_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageInfo
        end
        def entity_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::EntityHealthStateChunk
        end
        def fabric_code_version_info
          Azure::ServiceFabric::V6_4_0_36::Models::FabricCodeVersionInfo
        end
        def http_route_match_path
          Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteMatchPath
        end
        def partition_restart_progress
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionRestartProgress
        end
        def node_deactivation_info
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationInfo
        end
        def restart_partition_result
          Azure::ServiceFabric::V6_4_0_36::Models::RestartPartitionResult
        end
        def node_info
          Azure::ServiceFabric::V6_4_0_36::Models::NodeInfo
        end
        def partition_quorum_loss_progress
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionQuorumLossProgress
        end
        def paged_application_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedApplicationInfoList
        end
        def scaling_trigger_description
          Azure::ServiceFabric::V6_4_0_36::Models::ScalingTriggerDescription
        end
        def service_partition_info
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePartitionInfo
        end
        def fabric_error_error
          Azure::ServiceFabric::V6_4_0_36::Models::FabricErrorError
        end
        def service_info
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceInfo
        end
        def container_logs
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerLogs
        end
        def backup_entity
          Azure::ServiceFabric::V6_4_0_36::Models::BackupEntity
        end
        def aad_metadata_object
          Azure::ServiceFabric::V6_4_0_36::Models::AadMetadataObject
        end
        def provision_fabric_description
          Azure::ServiceFabric::V6_4_0_36::Models::ProvisionFabricDescription
        end
        def unprovision_fabric_description
          Azure::ServiceFabric::V6_4_0_36::Models::UnprovisionFabricDescription
        end
        def paged_application_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedApplicationResourceDescriptionList
        end
        def rolling_upgrade_update_description
          Azure::ServiceFabric::V6_4_0_36::Models::RollingUpgradeUpdateDescription
        end
        def replicator_queue_status
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicatorQueueStatus
        end
        def replicator_status
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicatorStatus
        end
        def secret_value_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::SecretValueResourceDescription
        end
        def remote_replicator_acknowledgement_detail
          Azure::ServiceFabric::V6_4_0_36::Models::RemoteReplicatorAcknowledgementDetail
        end
        def application_scoped_volume_creation_parameters
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationScopedVolumeCreationParameters
        end
        def remote_replicator_acknowledgement_status
          Azure::ServiceFabric::V6_4_0_36::Models::RemoteReplicatorAcknowledgementStatus
        end
        def remote_replicator_status
          Azure::ServiceFabric::V6_4_0_36::Models::RemoteReplicatorStatus
        end
        def application_type_info
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeInfo
        end
        def application_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationResourceDescription
        end
        def node_upgrade_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::NodeUpgradeProgressInfo
        end
        def paged_service_replica_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedServiceReplicaDescriptionList
        end
        def network_resource_properties_base
          Azure::ServiceFabric::V6_4_0_36::Models::NetworkResourcePropertiesBase
        end
        def paged_service_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedServiceResourceDescriptionList
        end
        def cluster_manifest
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterManifest
        end
        def service_replica_properties
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceReplicaProperties
        end
        def upload_chunk_range
          Azure::ServiceFabric::V6_4_0_36::Models::UploadChunkRange
        end
        def load_metric_report_info
          Azure::ServiceFabric::V6_4_0_36::Models::LoadMetricReportInfo
        end
        def deployed_service_replica_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServiceReplicaInfo
        end
        def deployed_service_replica_detail_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServiceReplicaDetailInfo
        end
        def entity_health
          Azure::ServiceFabric::V6_4_0_36::Models::EntityHealth
        end
        def cluster_configuration_upgrade_status_info
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterConfigurationUpgradeStatusInfo
        end
        def auto_scaling_metric
          Azure::ServiceFabric::V6_4_0_36::Models::AutoScalingMetric
        end
        def paged_backup_entity_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedBackupEntityList
        end
        def diagnostics_description
          Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsDescription
        end
        def paged_node_info_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedNodeInfoList
        end
        def replica_status_base
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaStatusBase
        end
        def http_route_match_rule
          Azure::ServiceFabric::V6_4_0_36::Models::HttpRouteMatchRule
        end
        def service_update_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceUpdateDescription
        end
        def gateway_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::GatewayResourceDescription
        end
        def diagnostics_sink_properties
          Azure::ServiceFabric::V6_4_0_36::Models::DiagnosticsSinkProperties
        end
        def paged_secret_resource_description_list
          Azure::ServiceFabric::V6_4_0_36::Models::PagedSecretResourceDescriptionList
        end
        def service_resource_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceResourceDescription
        end
        def volume_provider_parameters_azure_file
          Azure::ServiceFabric::V6_4_0_36::Models::VolumeProviderParametersAzureFile
        end
        def file_version
          Azure::ServiceFabric::V6_4_0_36::Models::FileVersion
        end
        def application_name_info
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationNameInfo
        end
        def file_info
          Azure::ServiceFabric::V6_4_0_36::Models::FileInfo
        end
        def cluster_configuration
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterConfiguration
        end
        def folder_info
          Azure::ServiceFabric::V6_4_0_36::Models::FolderInfo
        end
        def container_api_response
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerApiResponse
        end
        def image_store_content
          Azure::ServiceFabric::V6_4_0_36::Models::ImageStoreContent
        end
        def repair_impact_description_base
          Azure::ServiceFabric::V6_4_0_36::Models::RepairImpactDescriptionBase
        end
        def image_store_copy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ImageStoreCopyDescription
        end
        def node_deactivation_task_id
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivationTaskId
        end
        def restart_deployed_code_package_description
          Azure::ServiceFabric::V6_4_0_36::Models::RestartDeployedCodePackageDescription
        end
        def replica_info
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaInfo
        end
        def deployed_service_type_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServiceTypeInfo
        end
        def cluster_upgrade_health_policy_object
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeHealthPolicyObject
        end
        def resolved_service_endpoint
          Azure::ServiceFabric::V6_4_0_36::Models::ResolvedServiceEndpoint
        end
        def service_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthStateFilter
        end
        def resolved_service_partition
          Azure::ServiceFabric::V6_4_0_36::Models::ResolvedServicePartition
        end
        def node_health_state_filter
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthStateFilter
        end
        def selected_partition
          Azure::ServiceFabric::V6_4_0_36::Models::SelectedPartition
        end
        def tcp_config
          Azure::ServiceFabric::V6_4_0_36::Models::TcpConfig
        end
        def invoke_data_loss_result
          Azure::ServiceFabric::V6_4_0_36::Models::InvokeDataLossResult
        end
        def backup_progress_info
          Azure::ServiceFabric::V6_4_0_36::Models::BackupProgressInfo
        end
        def invoke_quorum_loss_result
          Azure::ServiceFabric::V6_4_0_36::Models::InvokeQuorumLossResult
        end
        def application_upgrade_description
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeDescription
        end
        def node_result
          Azure::ServiceFabric::V6_4_0_36::Models::NodeResult
        end
        def node_load_info
          Azure::ServiceFabric::V6_4_0_36::Models::NodeLoadInfo
        end
        def node_transition_result
          Azure::ServiceFabric::V6_4_0_36::Models::NodeTransitionResult
        end
        def repair_task_delete_description
          Azure::ServiceFabric::V6_4_0_36::Models::RepairTaskDeleteDescription
        end
        def node_transition_progress
          Azure::ServiceFabric::V6_4_0_36::Models::NodeTransitionProgress
        end
        def application_health_policies
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthPolicies
        end
        def application_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationEvent
        end
        def service_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthState
        end
        def deployed_application_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthState
        end
        def application_health
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealth
        end
        def application_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthEvaluation
        end
        def application_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthState
        end
        def replica_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthStateChunk
        end
        def partition_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthStateChunk
        end
        def service_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthStateChunk
        end
        def deployed_service_package_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthStateChunk
        end
        def deployed_application_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthStateChunk
        end
        def application_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthStateChunk
        end
        def application_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthStateChunkList
        end
        def applications_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationsHealthEvaluation
        end
        def application_type_applications_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationTypeApplicationsHealthEvaluation
        end
        def cluster_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterEvent
        end
        def node_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthState
        end
        def cluster_health
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealth
        end
        def node_health_state_chunk
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthStateChunk
        end
        def node_health_state_chunk_list
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthStateChunkList
        end
        def container_instance_event
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerInstanceEvent
        end
        def delta_nodes_check_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::DeltaNodesCheckHealthEvaluation
        end
        def deployed_service_package_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthState
        end
        def deployed_application_health
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealth
        end
        def deployed_application_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthEvaluation
        end
        def deployed_applications_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationsHealthEvaluation
        end
        def deployed_service_package_health
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealth
        end
        def deployed_service_package_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthEvaluation
        end
        def deployed_service_packages_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackagesHealthEvaluation
        end
        def deployed_stateful_service_replica_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatefulServiceReplicaInfo
        end
        def deployed_stateless_service_instance_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatelessServiceInstanceInfo
        end
        def health_event
          Azure::ServiceFabric::V6_4_0_36::Models::HealthEvent
        end
        def event_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::EventHealthEvaluation
        end
        def int64_range_partition_information
          Azure::ServiceFabric::V6_4_0_36::Models::Int64RangePartitionInformation
        end
        def named_partition_information
          Azure::ServiceFabric::V6_4_0_36::Models::NamedPartitionInformation
        end
        def node_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeEvent
        end
        def node_health
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealth
        end
        def node_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthEvaluation
        end
        def nodes_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::NodesHealthEvaluation
        end
        def partition_event
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionEvent
        end
        def partition_analysis_event
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionAnalysisEvent
        end
        def replica_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthState
        end
        def partition_health
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealth
        end
        def partition_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthEvaluation
        end
        def partition_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthState
        end
        def provision_application_type_description
          Azure::ServiceFabric::V6_4_0_36::Models::ProvisionApplicationTypeDescription
        end
        def external_store_provision_application_type_description
          Azure::ServiceFabric::V6_4_0_36::Models::ExternalStoreProvisionApplicationTypeDescription
        end
        def partition_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionSafetyCheck
        end
        def ensure_availability_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::EnsureAvailabilitySafetyCheck
        end
        def ensure_partition_qurum_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::EnsurePartitionQurumSafetyCheck
        end
        def seed_node_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::SeedNodeSafetyCheck
        end
        def partitions_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionsHealthEvaluation
        end
        def replica_event
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaEvent
        end
        def replica_health
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealth
        end
        def replica_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicaHealthEvaluation
        end
        def replicas_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ReplicasHealthEvaluation
        end
        def service_event
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceEvent
        end
        def service_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthEvaluation
        end
        def service_health
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealth
        end
        def service_placement_invalid_domain_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementInvalidDomainPolicyDescription
        end
        def service_placement_non_partially_place_service_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementNonPartiallyPlaceServicePolicyDescription
        end
        def service_placement_prefer_primary_domain_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementPreferPrimaryDomainPolicyDescription
        end
        def service_placement_required_domain_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementRequiredDomainPolicyDescription
        end
        def service_placement_require_domain_distribution_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::ServicePlacementRequireDomainDistributionPolicyDescription
        end
        def services_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::ServicesHealthEvaluation
        end
        def singleton_partition_information
          Azure::ServiceFabric::V6_4_0_36::Models::SingletonPartitionInformation
        end
        def stateful_service_info
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceInfo
        end
        def stateful_service_partition_info
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServicePartitionInfo
        end
        def stateful_service_replica_health
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceReplicaHealth
        end
        def stateful_service_replica_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceReplicaHealthState
        end
        def stateful_service_type_description
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceTypeDescription
        end
        def stateless_service_info
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInfo
        end
        def stateless_service_instance_health
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInstanceHealth
        end
        def stateless_service_instance_health_state
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInstanceHealthState
        end
        def stateless_service_partition_info
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServicePartitionInfo
        end
        def stateless_service_type_description
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceTypeDescription
        end
        def system_application_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::SystemApplicationHealthEvaluation
        end
        def upgrade_domain_delta_nodes_check_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainDeltaNodesCheckHealthEvaluation
        end
        def upgrade_domain_nodes_health_evaluation
          Azure::ServiceFabric::V6_4_0_36::Models::UpgradeDomainNodesHealthEvaluation
        end
        def wait_for_inbuild_replica_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::WaitForInbuildReplicaSafetyCheck
        end
        def wait_for_primary_placement_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::WaitForPrimaryPlacementSafetyCheck
        end
        def wait_for_primary_swap_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::WaitForPrimarySwapSafetyCheck
        end
        def wait_for_reconfiguration_safety_check
          Azure::ServiceFabric::V6_4_0_36::Models::WaitForReconfigurationSafetyCheck
        end
        def stateful_service_replica_info
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceReplicaInfo
        end
        def stateless_service_instance_info
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceInstanceInfo
        end
        def executing_faults_chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::ExecutingFaultsChaosEvent
        end
        def started_chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::StartedChaosEvent
        end
        def stopped_chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::StoppedChaosEvent
        end
        def test_error_chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::TestErrorChaosEvent
        end
        def validation_failed_chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::ValidationFailedChaosEvent
        end
        def waiting_chaos_event
          Azure::ServiceFabric::V6_4_0_36::Models::WaitingChaosEvent
        end
        def stateful_service_description
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceDescription
        end
        def stateless_service_description
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceDescription
        end
        def primary_replicator_status
          Azure::ServiceFabric::V6_4_0_36::Models::PrimaryReplicatorStatus
        end
        def secondary_replicator_status
          Azure::ServiceFabric::V6_4_0_36::Models::SecondaryReplicatorStatus
        end
        def secondary_active_replicator_status
          Azure::ServiceFabric::V6_4_0_36::Models::SecondaryActiveReplicatorStatus
        end
        def secondary_idle_replicator_status
          Azure::ServiceFabric::V6_4_0_36::Models::SecondaryIdleReplicatorStatus
        end
        def key_value_store_replica_status
          Azure::ServiceFabric::V6_4_0_36::Models::KeyValueStoreReplicaStatus
        end
        def deployed_stateful_service_replica_detail_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatefulServiceReplicaDetailInfo
        end
        def deployed_stateless_service_instance_detail_info
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedStatelessServiceInstanceDetailInfo
        end
        def stateful_service_update_description
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulServiceUpdateDescription
        end
        def stateless_service_update_description
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessServiceUpdateDescription
        end
        def binary_property_value
          Azure::ServiceFabric::V6_4_0_36::Models::BinaryPropertyValue
        end
        def int64_property_value
          Azure::ServiceFabric::V6_4_0_36::Models::Int64PropertyValue
        end
        def double_property_value
          Azure::ServiceFabric::V6_4_0_36::Models::DoublePropertyValue
        end
        def string_property_value
          Azure::ServiceFabric::V6_4_0_36::Models::StringPropertyValue
        end
        def guid_property_value
          Azure::ServiceFabric::V6_4_0_36::Models::GuidPropertyValue
        end
        def check_exists_property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::CheckExistsPropertyBatchOperation
        end
        def check_sequence_property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::CheckSequencePropertyBatchOperation
        end
        def check_value_property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::CheckValuePropertyBatchOperation
        end
        def delete_property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::DeletePropertyBatchOperation
        end
        def get_property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::GetPropertyBatchOperation
        end
        def put_property_batch_operation
          Azure::ServiceFabric::V6_4_0_36::Models::PutPropertyBatchOperation
        end
        def successful_property_batch_info
          Azure::ServiceFabric::V6_4_0_36::Models::SuccessfulPropertyBatchInfo
        end
        def failed_property_batch_info
          Azure::ServiceFabric::V6_4_0_36::Models::FailedPropertyBatchInfo
        end
        def basic_retention_policy_description
          Azure::ServiceFabric::V6_4_0_36::Models::BasicRetentionPolicyDescription
        end
        def application_backup_configuration_info
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationBackupConfigurationInfo
        end
        def service_backup_configuration_info
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceBackupConfigurationInfo
        end
        def azure_blob_backup_storage_description
          Azure::ServiceFabric::V6_4_0_36::Models::AzureBlobBackupStorageDescription
        end
        def file_share_backup_storage_description
          Azure::ServiceFabric::V6_4_0_36::Models::FileShareBackupStorageDescription
        end
        def frequency_based_backup_schedule_description
          Azure::ServiceFabric::V6_4_0_36::Models::FrequencyBasedBackupScheduleDescription
        end
        def time_based_backup_schedule_description
          Azure::ServiceFabric::V6_4_0_36::Models::TimeBasedBackupScheduleDescription
        end
        def partition_backup_configuration_info
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionBackupConfigurationInfo
        end
        def application_backup_entity
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationBackupEntity
        end
        def service_backup_entity
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceBackupEntity
        end
        def partition_backup_entity
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionBackupEntity
        end
        def node_repair_impact_description
          Azure::ServiceFabric::V6_4_0_36::Models::NodeRepairImpactDescription
        end
        def node_repair_target_description
          Azure::ServiceFabric::V6_4_0_36::Models::NodeRepairTargetDescription
        end
        def average_partition_load_scaling_trigger
          Azure::ServiceFabric::V6_4_0_36::Models::AveragePartitionLoadScalingTrigger
        end
        def average_service_load_scaling_trigger
          Azure::ServiceFabric::V6_4_0_36::Models::AverageServiceLoadScalingTrigger
        end
        def partition_instance_count_scale_mechanism
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionInstanceCountScaleMechanism
        end
        def add_remove_incremental_named_partition_scaling_mechanism
          Azure::ServiceFabric::V6_4_0_36::Models::AddRemoveIncrementalNamedPartitionScalingMechanism
        end
        def application_created_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationCreatedEvent
        end
        def application_deleted_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationDeletedEvent
        end
        def application_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationNewHealthReportEvent
        end
        def application_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationHealthReportExpiredEvent
        end
        def application_upgrade_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeCompletedEvent
        end
        def application_upgrade_domain_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeDomainCompletedEvent
        end
        def application_upgrade_rollback_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeRollbackCompletedEvent
        end
        def application_upgrade_rollback_started_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeRollbackStartedEvent
        end
        def application_upgrade_started_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationUpgradeStartedEvent
        end
        def deployed_application_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationNewHealthReportEvent
        end
        def deployed_application_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedApplicationHealthReportExpiredEvent
        end
        def application_process_exited_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationProcessExitedEvent
        end
        def application_container_instance_exited_event
          Azure::ServiceFabric::V6_4_0_36::Models::ApplicationContainerInstanceExitedEvent
        end
        def node_aborted_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeAbortedEvent
        end
        def node_added_to_cluster_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeAddedToClusterEvent
        end
        def node_closed_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeClosedEvent
        end
        def node_deactivate_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivateCompletedEvent
        end
        def node_deactivate_started_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDeactivateStartedEvent
        end
        def node_down_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeDownEvent
        end
        def node_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeNewHealthReportEvent
        end
        def node_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeHealthReportExpiredEvent
        end
        def node_open_succeeded_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeOpenSucceededEvent
        end
        def node_open_failed_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeOpenFailedEvent
        end
        def node_removed_from_cluster_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeRemovedFromClusterEvent
        end
        def node_up_event
          Azure::ServiceFabric::V6_4_0_36::Models::NodeUpEvent
        end
        def partition_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionNewHealthReportEvent
        end
        def partition_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionHealthReportExpiredEvent
        end
        def partition_reconfigured_event
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionReconfiguredEvent
        end
        def partition_primary_move_analysis_event
          Azure::ServiceFabric::V6_4_0_36::Models::PartitionPrimaryMoveAnalysisEvent
        end
        def service_created_event
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceCreatedEvent
        end
        def service_deleted_event
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceDeletedEvent
        end
        def service_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceNewHealthReportEvent
        end
        def service_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::ServiceHealthReportExpiredEvent
        end
        def deployed_service_package_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageNewHealthReportEvent
        end
        def deployed_service_package_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::DeployedServicePackageHealthReportExpiredEvent
        end
        def stateful_replica_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulReplicaNewHealthReportEvent
        end
        def container_state
          Azure::ServiceFabric::V6_4_0_36::Models::ContainerState
        end
        def stateful_replica_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::StatefulReplicaHealthReportExpiredEvent
        end
        def stateless_replica_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessReplicaNewHealthReportEvent
        end
        def resource_requests
          Azure::ServiceFabric::V6_4_0_36::Models::ResourceRequests
        end
        def cluster_new_health_report_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterNewHealthReportEvent
        end
        def resource_requirements
          Azure::ServiceFabric::V6_4_0_36::Models::ResourceRequirements
        end
        def cluster_upgrade_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeCompletedEvent
        end
        def cluster_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterHealthReportExpiredEvent
        end
        def stateless_replica_health_report_expired_event
          Azure::ServiceFabric::V6_4_0_36::Models::StatelessReplicaHealthReportExpiredEvent
        end
        def cluster_upgrade_domain_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeDomainCompletedEvent
        end
        def cluster_upgrade_rollback_completed_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeRollbackCompletedEvent
        end
        def cluster_upgrade_rollback_started_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeRollbackStartedEvent
        end
        def cluster_upgrade_started_event
          Azure::ServiceFabric::V6_4_0_36::Models::ClusterUpgradeStartedEvent
        end
        def image_registry_credential
          Azure::ServiceFabric::V6_4_0_36::Models::ImageRegistryCredential
        end
        def resource_limits
          Azure::ServiceFabric::V6_4_0_36::Models::ResourceLimits
        end
        def chaos_code_package_restart_scheduled_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosCodePackageRestartScheduledEvent
        end
        def chaos_stopped_event
          Azure::ServiceFabric::V6_4_0_36::Models::ChaosStoppedEvent
        end
      end
    end
    module Mgmt
      Service = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Service
      Application = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Application
      Version = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Version
      ApplicationType = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ApplicationType
      Operations = Azure::ServiceFabric::Mgmt::V2018_02_01::Operations
      Clusters = Azure::ServiceFabric::Mgmt::V2018_02_01::Clusters
      ClusterVersions = Azure::ServiceFabric::Mgmt::V2018_02_01::ClusterVersions

      module Models
        RollingUpgradeMonitoringPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
        ApplicationTypeResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
        ApplicationResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
        ApplicationUpgradePolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
        VersionResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
        ServiceResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
        ProxyResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
        NamedPartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NamedPartitionSchemeDescription
        SingletonPartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SingletonPartitionSchemeDescription
        UniformInt64RangePartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::UniformInt64RangePartitionSchemeDescription
        ApplicationTypeResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResource
        VersionResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource
        ApplicationResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResource
        ApplicationResourceUpdate = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceUpdate
        ServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceProperties
        ServiceResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource
        ServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceUpdateProperties
        ServiceResourceUpdate = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate
        StatelessServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceProperties
        StatelessServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceUpdateProperties
        StatefulServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceProperties
        StatefulServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceUpdateProperties
        ServicePropertiesBase = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
        ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
        ApplicationMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
        ServiceCorrelationDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
        ServicePlacementPolicyDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
        ApplicationParameter = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
        ServiceLoadMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
        PartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
        DiagnosticsStorageAccountConfig = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
        ClusterUpgradePolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
        AvailableOperationDisplay = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
        ClusterHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
        AzureActiveDirectory = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
        ServiceTypeHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
        ClientCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
        ClientCertificateThumbprint = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
        ClusterUpgradeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
        ClusterVersionDetails = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
        SettingsParameterDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
        ApplicationHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
        SettingsSectionDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
        EndpointRangeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
        NodeTypeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
        Resource = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
        OperationListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
        ProvisioningState = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
        OperationResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
        ClusterListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
        CertificateDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
        ErrorModel = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
        Cluster = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
        ServerCertificateCommonNames = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
        ServiceTypeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
        ApplicationDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
        ClusterUpdateParameters = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
        ErrorModelError = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
        ClusterCodeVersionsListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
        ClusterCodeVersionsResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
        ServerCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
      end

      class ServiceFabricManagementClass
        attr_reader :service, :application, :version, :application_type, :operations, :clusters, :cluster_versions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @service = @client_0.service
          @application = @client_0.application
          @version = @client_0.version
          @application_type = @client_0.application_type

          @client_1 = Azure::ServiceFabric::Mgmt::V2018_02_01::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @clusters = @client_1.clusters
          @cluster_versions = @client_1.cluster_versions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServiceFabric/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def rolling_upgrade_monitoring_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
          end
          def application_type_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
          end
          def application_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
          end
          def application_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
          end
          def version_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
          end
          def service_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
          end
          def proxy_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
          end
          def named_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NamedPartitionSchemeDescription
          end
          def singleton_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SingletonPartitionSchemeDescription
          end
          def uniform_int64_range_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::UniformInt64RangePartitionSchemeDescription
          end
          def application_type_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResource
          end
          def version_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource
          end
          def application_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResource
          end
          def application_resource_update
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceUpdate
          end
          def service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceProperties
          end
          def service_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource
          end
          def service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceUpdateProperties
          end
          def service_resource_update
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate
          end
          def stateless_service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceProperties
          end
          def stateless_service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceUpdateProperties
          end
          def stateful_service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceProperties
          end
          def stateful_service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceUpdateProperties
          end
          def service_properties_base
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
          end
          def service_type_health_policy_map_item
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
          end
          def application_metric_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
          end
          def service_correlation_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
          end
          def service_placement_policy_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
          end
          def application_parameter
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
          end
          def service_load_metric_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
          end
          def partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
          end
          def diagnostics_storage_account_config
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
          end
          def cluster_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
          end
          def available_operation_display
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
          end
          def cluster_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
          end
          def azure_active_directory
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
          end
          def service_type_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
          end
          def client_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
          end
          def client_certificate_thumbprint
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
          end
          def cluster_upgrade_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
          end
          def cluster_version_details
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
          end
          def settings_parameter_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
          end
          def application_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
          end
          def settings_section_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
          end
          def endpoint_range_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
          end
          def node_type_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
          end
          def resource
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
          end
          def operation_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
          end
          def provisioning_state
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
          end
          def operation_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
          end
          def cluster_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
          end
          def certificate_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
          end
          def error_model
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
          end
          def cluster
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
          end
          def server_certificate_common_names
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
          end
          def service_type_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
          end
          def application_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
          end
          def cluster_update_parameters
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
          end
          def error_model_error
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
          end
          def cluster_code_versions_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
          end
          def cluster_code_versions_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
          end
          def server_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
          end
        end
      end
    end
  end
end
