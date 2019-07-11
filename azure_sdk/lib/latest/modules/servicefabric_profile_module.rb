# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_fabric'
require 'azure_service_fabric'

module Azure::Profiles::Latest
  module ServiceFabric
    MeshSecret = Azure::ServiceFabric::V6_5_0_36::MeshSecret
    MeshSecretValue = Azure::ServiceFabric::V6_5_0_36::MeshSecretValue
    MeshVolume = Azure::ServiceFabric::V6_5_0_36::MeshVolume
    MeshNetwork = Azure::ServiceFabric::V6_5_0_36::MeshNetwork
    MeshApplication = Azure::ServiceFabric::V6_5_0_36::MeshApplication
    MeshService = Azure::ServiceFabric::V6_5_0_36::MeshService
    MeshCodePackage = Azure::ServiceFabric::V6_5_0_36::MeshCodePackage
    MeshServiceReplica = Azure::ServiceFabric::V6_5_0_36::MeshServiceReplica
    MeshGateway = Azure::ServiceFabric::V6_5_0_36::MeshGateway

    module Models
      ScalingPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ScalingPolicyDescription
      FabricErrorError = Azure::ServiceFabric::V6_5_0_36::Models::FabricErrorError
      ServiceDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceDescription
      ContainerLogs = Azure::ServiceFabric::V6_5_0_36::Models::ContainerLogs
      UnplacedReplicaInformation = Azure::ServiceFabric::V6_5_0_36::Models::UnplacedReplicaInformation
      AadMetadataObject = Azure::ServiceFabric::V6_5_0_36::Models::AadMetadataObject
      NetworkResourcePropertiesBase = Azure::ServiceFabric::V6_5_0_36::Models::NetworkResourcePropertiesBase
      BackupStorageDescription = Azure::ServiceFabric::V6_5_0_36::Models::BackupStorageDescription
      BackupScheduleDescription = Azure::ServiceFabric::V6_5_0_36::Models::BackupScheduleDescription
      TcpConfig = Azure::ServiceFabric::V6_5_0_36::Models::TcpConfig
      ResourceRequirements = Azure::ServiceFabric::V6_5_0_36::Models::ResourceRequirements
      HealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::HealthEvaluation
      DiagnosticsRef = Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsRef
      HttpRouteMatchHeader = Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteMatchHeader
      PropertyBatchInfo = Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchInfo
      ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeHealthPolicyMapItem
      ReliableCollectionsRef = Azure::ServiceFabric::V6_5_0_36::Models::ReliableCollectionsRef
      ApplicationHealthPolicyMapItem = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthPolicyMapItem
      ContainerState = Azure::ServiceFabric::V6_5_0_36::Models::ContainerState
      UploadSession = Azure::ServiceFabric::V6_5_0_36::Models::UploadSession
      ContainerEvent = Azure::ServiceFabric::V6_5_0_36::Models::ContainerEvent
      ReplicaHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthStateChunkList
      RestartNodeDescription = Azure::ServiceFabric::V6_5_0_36::Models::RestartNodeDescription
      PartitionHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthStateChunkList
      ContainerInstanceView = Azure::ServiceFabric::V6_5_0_36::Models::ContainerInstanceView
      ServiceHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthStateChunkList
      ServiceFromTemplateDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceFromTemplateDescription
      DeployedServicePackageHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthStateChunkList
      ContainerCodePackageProperties = Azure::ServiceFabric::V6_5_0_36::Models::ContainerCodePackageProperties
      DeployedApplicationHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthStateChunkList
      AutoScalingTrigger = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingTrigger
      RepairTaskApproveDescription = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskApproveDescription
      ServiceNameInfo = Azure::ServiceFabric::V6_5_0_36::Models::ServiceNameInfo
      PartitionHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthStateFilter
      PropertyBatchDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchDescriptionList
      DeployedServicePackageHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthStateFilter
      PropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchOperation
      ApplicationHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthStateFilter
      ServicePlacementPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementPolicyDescription
      ApplicationInfo = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationInfo
      PropertyDescription = Azure::ServiceFabric::V6_5_0_36::Models::PropertyDescription
      ApplicationLoadInfo = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationLoadInfo
      PagedPropertyInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedPropertyInfoList
      RepairTask = Azure::ServiceFabric::V6_5_0_36::Models::RepairTask
      PropertyInfo = Azure::ServiceFabric::V6_5_0_36::Models::PropertyInfo
      ApplicationTypeHealthPolicyMapItem = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeHealthPolicyMapItem
      PropertyMetadata = Azure::ServiceFabric::V6_5_0_36::Models::PropertyMetadata
      PagedApplicationTypeInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedApplicationTypeInfoList
      ServiceLoadMetricDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceLoadMetricDescription
      MonitoringPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::MonitoringPolicyDescription
      ServiceTypeExtensionDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeExtensionDescription
      UpgradeDomainInfo = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainInfo
      ServiceTypeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeDescription
      SafetyCheckWrapper = Azure::ServiceFabric::V6_5_0_36::Models::SafetyCheckWrapper
      ServiceTypeInfo = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeInfo
      CurrentUpgradeDomainProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::CurrentUpgradeDomainProgressInfo
      ServiceTypeManifest = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeManifest
      ApplicationUpgradeProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeProgressInfo
      AutoScalingMechanism = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMechanism
      RepairTargetDescriptionBase = Azure::ServiceFabric::V6_5_0_36::Models::RepairTargetDescriptionBase
      AutoScalingPolicy = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingPolicy
      RepairImpactDescriptionBase = Azure::ServiceFabric::V6_5_0_36::Models::RepairImpactDescriptionBase
      ServiceIdentity = Azure::ServiceFabric::V6_5_0_36::Models::ServiceIdentity
      HttpRouteConfig = Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteConfig
      ServiceResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceResourceDescription
      ClusterHealthChunk = Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthChunk
      DiagnosticsSinkProperties = Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsSinkProperties
      ClusterHealthPolicy = Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthPolicy
      PropertyValue = Azure::ServiceFabric::V6_5_0_36::Models::PropertyValue
      ClusterHealthPolicies = Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthPolicies
      PagedSubNameInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedSubNameInfoList
      LoadMetricInformation = Azure::ServiceFabric::V6_5_0_36::Models::LoadMetricInformation
      NameDescription = Azure::ServiceFabric::V6_5_0_36::Models::NameDescription
      ClusterVersion = Azure::ServiceFabric::V6_5_0_36::Models::ClusterVersion
      ApplicationUpgradeUpdateDescription = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeUpdateDescription
      ContainerApiResult = Azure::ServiceFabric::V6_5_0_36::Models::ContainerApiResult
      ResumeApplicationUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ResumeApplicationUpgradeDescription
      GetBackupByStorageQueryDescription = Azure::ServiceFabric::V6_5_0_36::Models::GetBackupByStorageQueryDescription
      DeployServicePackageToNodeDescription = Azure::ServiceFabric::V6_5_0_36::Models::DeployServicePackageToNodeDescription
      PagedBackupEntityList = Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupEntityList
      AnalysisEventMetadata = Azure::ServiceFabric::V6_5_0_36::Models::AnalysisEventMetadata
      HttpHostConfig = Azure::ServiceFabric::V6_5_0_36::Models::HttpHostConfig
      PackageSharingPolicyInfo = Azure::ServiceFabric::V6_5_0_36::Models::PackageSharingPolicyInfo
      DeployedApplicationInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationInfo
      PagedNetworkResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedNetworkResourceDescriptionList
      BackupEntity = Azure::ServiceFabric::V6_5_0_36::Models::BackupEntity
      PagedVolumeResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedVolumeResourceDescriptionList
      BackupProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::BackupProgressInfo
      EndpointRef = Azure::ServiceFabric::V6_5_0_36::Models::EndpointRef
      ReconfigurationInformation = Azure::ServiceFabric::V6_5_0_36::Models::ReconfigurationInformation
      NetworkRef = Azure::ServiceFabric::V6_5_0_36::Models::NetworkRef
      EnvironmentVariable = Azure::ServiceFabric::V6_5_0_36::Models::EnvironmentVariable
      NetworkResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::NetworkResourceDescription
      HealthStateCount = Azure::ServiceFabric::V6_5_0_36::Models::HealthStateCount
      LoadMetricReport = Azure::ServiceFabric::V6_5_0_36::Models::LoadMetricReport
      HealthStatistics = Azure::ServiceFabric::V6_5_0_36::Models::HealthStatistics
      PartitionLoadInformation = Azure::ServiceFabric::V6_5_0_36::Models::PartitionLoadInformation
      EntityHealthState = Azure::ServiceFabric::V6_5_0_36::Models::EntityHealthState
      SecretResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::SecretResourceDescription
      EntityHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::EntityHealthStateChunkList
      PagedSecretResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedSecretResourceDescriptionList
      ContainerLabel = Azure::ServiceFabric::V6_5_0_36::Models::ContainerLabel
      ClusterUpgradeDescriptionObject = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeDescriptionObject
      FabricCodeVersionInfo = Azure::ServiceFabric::V6_5_0_36::Models::FabricCodeVersionInfo
      FailedUpgradeDomainProgressObject = Azure::ServiceFabric::V6_5_0_36::Models::FailedUpgradeDomainProgressObject
      ClusterConfigurationUpgradeStatusInfo = Azure::ServiceFabric::V6_5_0_36::Models::ClusterConfigurationUpgradeStatusInfo
      ClusterUpgradeProgressObject = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeProgressObject
      PagedBackupInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupInfoList
      ClusterConfigurationUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ClusterConfigurationUpgradeDescription
      NodeDeactivationTaskId = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationTaskId
      UpgradeOrchestrationServiceState = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeOrchestrationServiceState
      NodeDeactivationInfo = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationInfo
      UpgradeOrchestrationServiceStateSummary = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeOrchestrationServiceStateSummary
      RestoreProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::RestoreProgressInfo
      ApplicationTypeImageStorePath = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeImageStorePath
      NodeInfo = Azure::ServiceFabric::V6_5_0_36::Models::NodeInfo
      UnprovisionApplicationTypeDescriptionInfo = Azure::ServiceFabric::V6_5_0_36::Models::UnprovisionApplicationTypeDescriptionInfo
      NodeLoadInfo = Azure::ServiceFabric::V6_5_0_36::Models::NodeLoadInfo
      CodePackageEntryPointStatistics = Azure::ServiceFabric::V6_5_0_36::Models::CodePackageEntryPointStatistics
      PagedApplicationInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedApplicationInfoList
      CodePackageEntryPoint = Azure::ServiceFabric::V6_5_0_36::Models::CodePackageEntryPoint
      PagedNodeInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedNodeInfoList
      DeployedCodePackageInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedCodePackageInfo
      ServicePartitionInfo = Azure::ServiceFabric::V6_5_0_36::Models::ServicePartitionInfo
      ChaosContext = Azure::ServiceFabric::V6_5_0_36::Models::ChaosContext
      ReplicaInfo = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaInfo
      ChaosTargetFilter = Azure::ServiceFabric::V6_5_0_36::Models::ChaosTargetFilter
      ServiceInfo = Azure::ServiceFabric::V6_5_0_36::Models::ServiceInfo
      ChaosParameters = Azure::ServiceFabric::V6_5_0_36::Models::ChaosParameters
      BackupConfigurationInfo = Azure::ServiceFabric::V6_5_0_36::Models::BackupConfigurationInfo
      Chaos = Azure::ServiceFabric::V6_5_0_36::Models::Chaos
      EndpointProperties = Azure::ServiceFabric::V6_5_0_36::Models::EndpointProperties
      ChaosParametersDictionaryItem = Azure::ServiceFabric::V6_5_0_36::Models::ChaosParametersDictionaryItem
      DisableBackupDescription = Azure::ServiceFabric::V6_5_0_36::Models::DisableBackupDescription
      ChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosEvent
      ProvisionFabricDescription = Azure::ServiceFabric::V6_5_0_36::Models::ProvisionFabricDescription
      ChaosEventWrapper = Azure::ServiceFabric::V6_5_0_36::Models::ChaosEventWrapper
      PagedBackupPolicyDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupPolicyDescriptionList
      ChaosEventsSegment = Azure::ServiceFabric::V6_5_0_36::Models::ChaosEventsSegment
      UnprovisionFabricDescription = Azure::ServiceFabric::V6_5_0_36::Models::UnprovisionFabricDescription
      ChaosScheduleJobActiveDaysOfWeek = Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleJobActiveDaysOfWeek
      ClusterUpgradeHealthPolicyObject = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeHealthPolicyObject
      TimeOfDay = Azure::ServiceFabric::V6_5_0_36::Models::TimeOfDay
      RollingUpgradeUpdateDescription = Azure::ServiceFabric::V6_5_0_36::Models::RollingUpgradeUpdateDescription
      TimeRange = Azure::ServiceFabric::V6_5_0_36::Models::TimeRange
      RetentionPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::RetentionPolicyDescription
      ChaosScheduleJob = Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleJob
      HttpRouteMatchPath = Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteMatchPath
      ChaosSchedule = Azure::ServiceFabric::V6_5_0_36::Models::ChaosSchedule
      ServiceTypeHealthPolicy = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeHealthPolicy
      ChaosScheduleDescription = Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleDescription
      ApplicationHealthPolicies = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthPolicies
      SecretResourcePropertiesBase = Azure::ServiceFabric::V6_5_0_36::Models::SecretResourcePropertiesBase
      UploadChunkRange = Azure::ServiceFabric::V6_5_0_36::Models::UploadChunkRange
      SecretValue = Azure::ServiceFabric::V6_5_0_36::Models::SecretValue
      RepairTaskUpdateHealthPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskUpdateHealthPolicyDescription
      SecretValueProperties = Azure::ServiceFabric::V6_5_0_36::Models::SecretValueProperties
      RepairTaskCancelDescription = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskCancelDescription
      SecretValueResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::SecretValueResourceDescription
      ServiceHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthStateFilter
      PagedSecretValueResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedSecretValueResourceDescriptionList
      ApplicationParameter = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationParameter
      VolumeProviderParametersAzureFile = Azure::ServiceFabric::V6_5_0_36::Models::VolumeProviderParametersAzureFile
      ApplicationNameInfo = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationNameInfo
      ApplicationCapacityDescription = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationCapacityDescription
      ApplicationTypeInfo = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeInfo
      ManagedApplicationIdentity = Azure::ServiceFabric::V6_5_0_36::Models::ManagedApplicationIdentity
      ApplicationUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeDescription
      ManagedApplicationIdentityDescription = Azure::ServiceFabric::V6_5_0_36::Models::ManagedApplicationIdentityDescription
      NodeUpgradeProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::NodeUpgradeProgressInfo
      ApplicationDescription = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationDescription
      ClusterConfiguration = Azure::ServiceFabric::V6_5_0_36::Models::ClusterConfiguration
      ComposeDeploymentStatusInfo = Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentStatusInfo
      HttpRouteMatchRule = Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteMatchRule
      RegistryCredential = Azure::ServiceFabric::V6_5_0_36::Models::RegistryCredential
      NodeHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthStateFilter
      ComposeDeploymentUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentUpgradeDescription
      ClusterManifest = Azure::ServiceFabric::V6_5_0_36::Models::ClusterManifest
      ComposeDeploymentUpgradeProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentUpgradeProgressInfo
      ContainerApiRequestBody = Azure::ServiceFabric::V6_5_0_36::Models::ContainerApiRequestBody
      PagedComposeDeploymentStatusInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedComposeDeploymentStatusInfoList
      DeactivationIntentDescription = Azure::ServiceFabric::V6_5_0_36::Models::DeactivationIntentDescription
      CreateComposeDeploymentDescription = Azure::ServiceFabric::V6_5_0_36::Models::CreateComposeDeploymentDescription
      HttpConfig = Azure::ServiceFabric::V6_5_0_36::Models::HttpConfig
      DeployedServicePackageInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageInfo
      PagedGatewayResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedGatewayResourceDescriptionList
      ServiceCorrelationDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceCorrelationDescription
      ImageRegistryCredential = Azure::ServiceFabric::V6_5_0_36::Models::ImageRegistryCredential
      PartitionSchemeDescription = Azure::ServiceFabric::V6_5_0_36::Models::PartitionSchemeDescription
      EntityKindHealthStateCount = Azure::ServiceFabric::V6_5_0_36::Models::EntityKindHealthStateCount
      VolumeReference = Azure::ServiceFabric::V6_5_0_36::Models::VolumeReference
      EntityHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::EntityHealthStateChunk
      ApplicationScopedVolumeCreationParameters = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolumeCreationParameters
      FabricEvent = Azure::ServiceFabric::V6_5_0_36::Models::FabricEvent
      VolumeResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::VolumeResourceDescription
      HealthInformation = Azure::ServiceFabric::V6_5_0_36::Models::HealthInformation
      ScalingTriggerDescription = Azure::ServiceFabric::V6_5_0_36::Models::ScalingTriggerDescription
      NodeDeactivationTask = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationTask
      ScalingMechanismDescription = Azure::ServiceFabric::V6_5_0_36::Models::ScalingMechanismDescription
      RestorePartitionDescription = Azure::ServiceFabric::V6_5_0_36::Models::RestorePartitionDescription
      FabricError = Azure::ServiceFabric::V6_5_0_36::Models::FabricError
      PagedBackupConfigurationInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupConfigurationInfoList
      AadMetadata = Azure::ServiceFabric::V6_5_0_36::Models::AadMetadata
      PartitionInformation = Azure::ServiceFabric::V6_5_0_36::Models::PartitionInformation
      PagedReplicaInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedReplicaInfoList
      PagedApplicationResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedApplicationResourceDescriptionList
      BackupSuspensionInfo = Azure::ServiceFabric::V6_5_0_36::Models::BackupSuspensionInfo
      ReplicatorQueueStatus = Azure::ServiceFabric::V6_5_0_36::Models::ReplicatorQueueStatus
      ResourceLimits = Azure::ServiceFabric::V6_5_0_36::Models::ResourceLimits
      ReplicatorStatus = Azure::ServiceFabric::V6_5_0_36::Models::ReplicatorStatus
      BackupPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::BackupPolicyDescription
      RemoteReplicatorAcknowledgementDetail = Azure::ServiceFabric::V6_5_0_36::Models::RemoteReplicatorAcknowledgementDetail
      StartClusterUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::StartClusterUpgradeDescription
      RemoteReplicatorAcknowledgementStatus = Azure::ServiceFabric::V6_5_0_36::Models::RemoteReplicatorAcknowledgementStatus
      GatewayDestination = Azure::ServiceFabric::V6_5_0_36::Models::GatewayDestination
      RemoteReplicatorStatus = Azure::ServiceFabric::V6_5_0_36::Models::RemoteReplicatorStatus
      ApplicationHealthPolicy = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthPolicy
      ApplicationResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationResourceDescription
      RepairTaskUpdateInfo = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskUpdateInfo
      PagedServiceReplicaDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedServiceReplicaDescriptionList
      ReplicaHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthStateFilter
      PagedServiceResourceDescriptionList = Azure::ServiceFabric::V6_5_0_36::Models::PagedServiceResourceDescriptionList
      ApplicationMetricDescription = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationMetricDescription
      ServiceReplicaProperties = Azure::ServiceFabric::V6_5_0_36::Models::ServiceReplicaProperties
      ApplicationTypeManifest = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeManifest
      LoadMetricReportInfo = Azure::ServiceFabric::V6_5_0_36::Models::LoadMetricReportInfo
      FailureUpgradeDomainProgressInfo = Azure::ServiceFabric::V6_5_0_36::Models::FailureUpgradeDomainProgressInfo
      DeployedServiceReplicaDetailInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServiceReplicaDetailInfo
      NodeImpact = Azure::ServiceFabric::V6_5_0_36::Models::NodeImpact
      ServiceProperties = Azure::ServiceFabric::V6_5_0_36::Models::ServiceProperties
      ClusterLoadInfo = Azure::ServiceFabric::V6_5_0_36::Models::ClusterLoadInfo
      AutoScalingMetric = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMetric
      EnableBackupDescription = Azure::ServiceFabric::V6_5_0_36::Models::EnableBackupDescription
      IdentityDescription = Azure::ServiceFabric::V6_5_0_36::Models::IdentityDescription
      DeployedServiceReplicaInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServiceReplicaInfo
      ReplicaStatusBase = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaStatusBase
      EntityHealth = Azure::ServiceFabric::V6_5_0_36::Models::EntityHealth
      ServiceUpdateDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceUpdateDescription
      FabricConfigVersionInfo = Azure::ServiceFabric::V6_5_0_36::Models::FabricConfigVersionInfo
      IdentityItemDescription = Azure::ServiceFabric::V6_5_0_36::Models::IdentityItemDescription
      BackupPartitionDescription = Azure::ServiceFabric::V6_5_0_36::Models::BackupPartitionDescription
      DiagnosticsDescription = Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsDescription
      PagedDeployedApplicationInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedDeployedApplicationInfoList
      FileVersion = Azure::ServiceFabric::V6_5_0_36::Models::FileVersion
      PagedServiceInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedServiceInfoList
      FileInfo = Azure::ServiceFabric::V6_5_0_36::Models::FileInfo
      ProvisionApplicationTypeDescriptionBase = Azure::ServiceFabric::V6_5_0_36::Models::ProvisionApplicationTypeDescriptionBase
      FolderInfo = Azure::ServiceFabric::V6_5_0_36::Models::FolderInfo
      UpdateClusterUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::UpdateClusterUpgradeDescription
      FolderSizeInfo = Azure::ServiceFabric::V6_5_0_36::Models::FolderSizeInfo
      UploadSessionInfo = Azure::ServiceFabric::V6_5_0_36::Models::UploadSessionInfo
      ImageStoreContent = Azure::ServiceFabric::V6_5_0_36::Models::ImageStoreContent
      DeployedApplicationHealthStateFilter = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthStateFilter
      ImageStoreCopyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ImageStoreCopyDescription
      SafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::SafetyCheck
      RestartDeployedCodePackageDescription = Azure::ServiceFabric::V6_5_0_36::Models::RestartDeployedCodePackageDescription
      ClusterHealthChunkQueryDescription = Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthChunkQueryDescription
      DeployedServiceTypeInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServiceTypeInfo
      GatewayResourceDescription = Azure::ServiceFabric::V6_5_0_36::Models::GatewayResourceDescription
      ResolvedServiceEndpoint = Azure::ServiceFabric::V6_5_0_36::Models::ResolvedServiceEndpoint
      Epoch = Azure::ServiceFabric::V6_5_0_36::Models::Epoch
      ResolvedServicePartition = Azure::ServiceFabric::V6_5_0_36::Models::ResolvedServicePartition
      NodeLoadMetricInformation = Azure::ServiceFabric::V6_5_0_36::Models::NodeLoadMetricInformation
      SelectedPartition = Azure::ServiceFabric::V6_5_0_36::Models::SelectedPartition
      ResourceRequests = Azure::ServiceFabric::V6_5_0_36::Models::ResourceRequests
      InvokeDataLossResult = Azure::ServiceFabric::V6_5_0_36::Models::InvokeDataLossResult
      HealthEvaluationWrapper = Azure::ServiceFabric::V6_5_0_36::Models::HealthEvaluationWrapper
      InvokeQuorumLossResult = Azure::ServiceFabric::V6_5_0_36::Models::InvokeQuorumLossResult
      RepairTaskHistory = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskHistory
      NodeResult = Azure::ServiceFabric::V6_5_0_36::Models::NodeResult
      ContainerApiResponse = Azure::ServiceFabric::V6_5_0_36::Models::ContainerApiResponse
      NodeTransitionResult = Azure::ServiceFabric::V6_5_0_36::Models::NodeTransitionResult
      BackupInfo = Azure::ServiceFabric::V6_5_0_36::Models::BackupInfo
      NodeTransitionProgress = Azure::ServiceFabric::V6_5_0_36::Models::NodeTransitionProgress
      ResumeClusterUpgradeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ResumeClusterUpgradeDescription
      OperationStatus = Azure::ServiceFabric::V6_5_0_36::Models::OperationStatus
      NodeId = Azure::ServiceFabric::V6_5_0_36::Models::NodeId
      PartitionDataLossProgress = Azure::ServiceFabric::V6_5_0_36::Models::PartitionDataLossProgress
      PagedServicePartitionInfoList = Azure::ServiceFabric::V6_5_0_36::Models::PagedServicePartitionInfoList
      PartitionQuorumLossProgress = Azure::ServiceFabric::V6_5_0_36::Models::PartitionQuorumLossProgress
      Setting = Azure::ServiceFabric::V6_5_0_36::Models::Setting
      RestartPartitionResult = Azure::ServiceFabric::V6_5_0_36::Models::RestartPartitionResult
      RepairTaskDeleteDescription = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskDeleteDescription
      PartitionRestartProgress = Azure::ServiceFabric::V6_5_0_36::Models::PartitionRestartProgress
      ApplicationEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationEvent
      ServiceHealthState = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthState
      DeployedApplicationHealthState = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthState
      ApplicationHealth = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealth
      ApplicationHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthEvaluation
      ApplicationHealthState = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthState
      ReplicaHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthStateChunk
      PartitionHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthStateChunk
      ServiceHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthStateChunk
      DeployedServicePackageHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthStateChunk
      DeployedApplicationHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthStateChunk
      ApplicationHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthStateChunk
      ApplicationHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthStateChunkList
      ApplicationsHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationsHealthEvaluation
      ApplicationTypeApplicationsHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeApplicationsHealthEvaluation
      ClusterEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterEvent
      NodeHealthState = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthState
      ClusterHealth = Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealth
      NodeHealthStateChunk = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthStateChunk
      NodeHealthStateChunkList = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthStateChunkList
      ContainerInstanceEvent = Azure::ServiceFabric::V6_5_0_36::Models::ContainerInstanceEvent
      DeltaNodesCheckHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::DeltaNodesCheckHealthEvaluation
      DeployedServicePackageHealthState = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthState
      DeployedApplicationHealth = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealth
      DeployedApplicationHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthEvaluation
      DeployedApplicationsHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationsHealthEvaluation
      DeployedServicePackageHealth = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealth
      DeployedServicePackageHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthEvaluation
      DeployedServicePackagesHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackagesHealthEvaluation
      DeployedStatefulServiceReplicaInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatefulServiceReplicaInfo
      DeployedStatelessServiceInstanceInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatelessServiceInstanceInfo
      HealthEvent = Azure::ServiceFabric::V6_5_0_36::Models::HealthEvent
      EventHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::EventHealthEvaluation
      Int64RangePartitionInformation = Azure::ServiceFabric::V6_5_0_36::Models::Int64RangePartitionInformation
      NamedPartitionInformation = Azure::ServiceFabric::V6_5_0_36::Models::NamedPartitionInformation
      NodeEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeEvent
      NodeHealth = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealth
      NodeHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthEvaluation
      NodesHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::NodesHealthEvaluation
      PartitionEvent = Azure::ServiceFabric::V6_5_0_36::Models::PartitionEvent
      PartitionAnalysisEvent = Azure::ServiceFabric::V6_5_0_36::Models::PartitionAnalysisEvent
      ReplicaHealthState = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthState
      PartitionHealth = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealth
      PartitionHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthEvaluation
      PartitionHealthState = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthState
      ProvisionApplicationTypeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ProvisionApplicationTypeDescription
      ExternalStoreProvisionApplicationTypeDescription = Azure::ServiceFabric::V6_5_0_36::Models::ExternalStoreProvisionApplicationTypeDescription
      PartitionSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::PartitionSafetyCheck
      EnsureAvailabilitySafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::EnsureAvailabilitySafetyCheck
      EnsurePartitionQuorumSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::EnsurePartitionQuorumSafetyCheck
      SeedNodeSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::SeedNodeSafetyCheck
      PartitionsHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::PartitionsHealthEvaluation
      ReplicaEvent = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaEvent
      ReplicaHealth = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealth
      ReplicaHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthEvaluation
      ReplicasHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ReplicasHealthEvaluation
      ServiceEvent = Azure::ServiceFabric::V6_5_0_36::Models::ServiceEvent
      ServiceHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthEvaluation
      ServiceHealth = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealth
      ServicePlacementInvalidDomainPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementInvalidDomainPolicyDescription
      ServicePlacementNonPartiallyPlaceServicePolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementNonPartiallyPlaceServicePolicyDescription
      ServicePlacementPreferPrimaryDomainPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementPreferPrimaryDomainPolicyDescription
      ServicePlacementRequiredDomainPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementRequiredDomainPolicyDescription
      ServicePlacementRequireDomainDistributionPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementRequireDomainDistributionPolicyDescription
      ServicesHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::ServicesHealthEvaluation
      SingletonPartitionInformation = Azure::ServiceFabric::V6_5_0_36::Models::SingletonPartitionInformation
      StatefulServiceInfo = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceInfo
      StatefulServicePartitionInfo = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServicePartitionInfo
      StatefulServiceReplicaHealth = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceReplicaHealth
      StatefulServiceReplicaHealthState = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceReplicaHealthState
      StatefulServiceTypeDescription = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceTypeDescription
      StatelessServiceInfo = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInfo
      StatelessServiceInstanceHealth = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInstanceHealth
      StatelessServiceInstanceHealthState = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInstanceHealthState
      StatelessServicePartitionInfo = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServicePartitionInfo
      StatelessServiceTypeDescription = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceTypeDescription
      SystemApplicationHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::SystemApplicationHealthEvaluation
      UpgradeDomainDeltaNodesCheckHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainDeltaNodesCheckHealthEvaluation
      UpgradeDomainNodesHealthEvaluation = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainNodesHealthEvaluation
      WaitForInbuildReplicaSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::WaitForInbuildReplicaSafetyCheck
      WaitForPrimaryPlacementSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::WaitForPrimaryPlacementSafetyCheck
      WaitForPrimarySwapSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::WaitForPrimarySwapSafetyCheck
      WaitForReconfigurationSafetyCheck = Azure::ServiceFabric::V6_5_0_36::Models::WaitForReconfigurationSafetyCheck
      StatefulServiceReplicaInfo = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceReplicaInfo
      StatelessServiceInstanceInfo = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInstanceInfo
      ExecutingFaultsChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::ExecutingFaultsChaosEvent
      StartedChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::StartedChaosEvent
      StoppedChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::StoppedChaosEvent
      TestErrorChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::TestErrorChaosEvent
      ValidationFailedChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::ValidationFailedChaosEvent
      WaitingChaosEvent = Azure::ServiceFabric::V6_5_0_36::Models::WaitingChaosEvent
      NamedPartitionSchemeDescription = Azure::ServiceFabric::V6_5_0_36::Models::NamedPartitionSchemeDescription
      SingletonPartitionSchemeDescription = Azure::ServiceFabric::V6_5_0_36::Models::SingletonPartitionSchemeDescription
      UniformInt64RangePartitionSchemeDescription = Azure::ServiceFabric::V6_5_0_36::Models::UniformInt64RangePartitionSchemeDescription
      StatefulServiceDescription = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceDescription
      StatelessServiceDescription = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceDescription
      PrimaryReplicatorStatus = Azure::ServiceFabric::V6_5_0_36::Models::PrimaryReplicatorStatus
      SecondaryReplicatorStatus = Azure::ServiceFabric::V6_5_0_36::Models::SecondaryReplicatorStatus
      SecondaryActiveReplicatorStatus = Azure::ServiceFabric::V6_5_0_36::Models::SecondaryActiveReplicatorStatus
      SecondaryIdleReplicatorStatus = Azure::ServiceFabric::V6_5_0_36::Models::SecondaryIdleReplicatorStatus
      KeyValueStoreReplicaStatus = Azure::ServiceFabric::V6_5_0_36::Models::KeyValueStoreReplicaStatus
      DeployedStatefulServiceReplicaDetailInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatefulServiceReplicaDetailInfo
      DeployedStatelessServiceInstanceDetailInfo = Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatelessServiceInstanceDetailInfo
      StatefulServiceUpdateDescription = Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceUpdateDescription
      StatelessServiceUpdateDescription = Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceUpdateDescription
      BinaryPropertyValue = Azure::ServiceFabric::V6_5_0_36::Models::BinaryPropertyValue
      Int64PropertyValue = Azure::ServiceFabric::V6_5_0_36::Models::Int64PropertyValue
      DoublePropertyValue = Azure::ServiceFabric::V6_5_0_36::Models::DoublePropertyValue
      StringPropertyValue = Azure::ServiceFabric::V6_5_0_36::Models::StringPropertyValue
      GuidPropertyValue = Azure::ServiceFabric::V6_5_0_36::Models::GuidPropertyValue
      CheckExistsPropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::CheckExistsPropertyBatchOperation
      CheckSequencePropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::CheckSequencePropertyBatchOperation
      CheckValuePropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::CheckValuePropertyBatchOperation
      DeletePropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::DeletePropertyBatchOperation
      GetPropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::GetPropertyBatchOperation
      PutPropertyBatchOperation = Azure::ServiceFabric::V6_5_0_36::Models::PutPropertyBatchOperation
      SuccessfulPropertyBatchInfo = Azure::ServiceFabric::V6_5_0_36::Models::SuccessfulPropertyBatchInfo
      FailedPropertyBatchInfo = Azure::ServiceFabric::V6_5_0_36::Models::FailedPropertyBatchInfo
      BasicRetentionPolicyDescription = Azure::ServiceFabric::V6_5_0_36::Models::BasicRetentionPolicyDescription
      ApplicationBackupConfigurationInfo = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationBackupConfigurationInfo
      ServiceBackupConfigurationInfo = Azure::ServiceFabric::V6_5_0_36::Models::ServiceBackupConfigurationInfo
      AzureBlobBackupStorageDescription = Azure::ServiceFabric::V6_5_0_36::Models::AzureBlobBackupStorageDescription
      FileShareBackupStorageDescription = Azure::ServiceFabric::V6_5_0_36::Models::FileShareBackupStorageDescription
      FrequencyBasedBackupScheduleDescription = Azure::ServiceFabric::V6_5_0_36::Models::FrequencyBasedBackupScheduleDescription
      TimeBasedBackupScheduleDescription = Azure::ServiceFabric::V6_5_0_36::Models::TimeBasedBackupScheduleDescription
      PartitionBackupConfigurationInfo = Azure::ServiceFabric::V6_5_0_36::Models::PartitionBackupConfigurationInfo
      ApplicationBackupEntity = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationBackupEntity
      ServiceBackupEntity = Azure::ServiceFabric::V6_5_0_36::Models::ServiceBackupEntity
      PartitionBackupEntity = Azure::ServiceFabric::V6_5_0_36::Models::PartitionBackupEntity
      NodeRepairImpactDescription = Azure::ServiceFabric::V6_5_0_36::Models::NodeRepairImpactDescription
      NodeRepairTargetDescription = Azure::ServiceFabric::V6_5_0_36::Models::NodeRepairTargetDescription
      AveragePartitionLoadScalingTrigger = Azure::ServiceFabric::V6_5_0_36::Models::AveragePartitionLoadScalingTrigger
      AverageServiceLoadScalingTrigger = Azure::ServiceFabric::V6_5_0_36::Models::AverageServiceLoadScalingTrigger
      PartitionInstanceCountScaleMechanism = Azure::ServiceFabric::V6_5_0_36::Models::PartitionInstanceCountScaleMechanism
      AddRemoveIncrementalNamedPartitionScalingMechanism = Azure::ServiceFabric::V6_5_0_36::Models::AddRemoveIncrementalNamedPartitionScalingMechanism
      ApplicationCreatedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationCreatedEvent
      ApplicationDeletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationDeletedEvent
      ApplicationNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationNewHealthReportEvent
      ApplicationHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthReportExpiredEvent
      ApplicationUpgradeCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeCompletedEvent
      ApplicationUpgradeDomainCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeDomainCompletedEvent
      ApplicationUpgradeRollbackCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeRollbackCompletedEvent
      ApplicationUpgradeRollbackStartedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeRollbackStartedEvent
      ApplicationUpgradeStartedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeStartedEvent
      DeployedApplicationNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationNewHealthReportEvent
      DeployedApplicationHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthReportExpiredEvent
      ApplicationProcessExitedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationProcessExitedEvent
      ApplicationContainerInstanceExitedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationContainerInstanceExitedEvent
      NodeAbortedEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeAbortedEvent
      NodeAddedToClusterEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeAddedToClusterEvent
      NodeClosedEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeClosedEvent
      NodeDeactivateCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivateCompletedEvent
      NodeDeactivateStartedEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivateStartedEvent
      NodeDownEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeDownEvent
      NodeNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeNewHealthReportEvent
      NodeHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthReportExpiredEvent
      NodeOpenSucceededEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeOpenSucceededEvent
      NodeOpenFailedEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeOpenFailedEvent
      NodeRemovedFromClusterEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeRemovedFromClusterEvent
      NodeUpEvent = Azure::ServiceFabric::V6_5_0_36::Models::NodeUpEvent
      PartitionNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::PartitionNewHealthReportEvent
      PartitionHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthReportExpiredEvent
      PartitionReconfiguredEvent = Azure::ServiceFabric::V6_5_0_36::Models::PartitionReconfiguredEvent
      PartitionPrimaryMoveAnalysisEvent = Azure::ServiceFabric::V6_5_0_36::Models::PartitionPrimaryMoveAnalysisEvent
      ServiceCreatedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ServiceCreatedEvent
      ServiceDeletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ServiceDeletedEvent
      ServiceNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::ServiceNewHealthReportEvent
      ServiceHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthReportExpiredEvent
      DeployedServicePackageNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageNewHealthReportEvent
      DeployedServicePackageHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthReportExpiredEvent
      StatefulReplicaNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::StatefulReplicaNewHealthReportEvent
      StatefulReplicaHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::StatefulReplicaHealthReportExpiredEvent
      StatelessReplicaNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::StatelessReplicaNewHealthReportEvent
      StatelessReplicaHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::StatelessReplicaHealthReportExpiredEvent
      ClusterNewHealthReportEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterNewHealthReportEvent
      ClusterHealthReportExpiredEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthReportExpiredEvent
      ClusterUpgradeCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeCompletedEvent
      ClusterUpgradeDomainCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeDomainCompletedEvent
      ClusterUpgradeRollbackCompletedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeRollbackCompletedEvent
      ClusterUpgradeRollbackStartedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeRollbackStartedEvent
      ClusterUpgradeStartedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeStartedEvent
      ChaosStoppedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosStoppedEvent
      ChaosStartedEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosStartedEvent
      ChaosCodePackageRestartScheduledEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosCodePackageRestartScheduledEvent
      ChaosReplicaRemovalScheduledEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosReplicaRemovalScheduledEvent
      ChaosPartitionSecondaryMoveScheduledEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosPartitionSecondaryMoveScheduledEvent
      ChaosPartitionPrimaryMoveScheduledEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosPartitionPrimaryMoveScheduledEvent
      ChaosReplicaRestartScheduledEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosReplicaRestartScheduledEvent
      ChaosNodeRestartScheduledEvent = Azure::ServiceFabric::V6_5_0_36::Models::ChaosNodeRestartScheduledEvent
      SecretResourceProperties = Azure::ServiceFabric::V6_5_0_36::Models::SecretResourceProperties
      InlinedValueSecretResourceProperties = Azure::ServiceFabric::V6_5_0_36::Models::InlinedValueSecretResourceProperties
      ApplicationScopedVolume = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolume
      ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
      NetworkResourceProperties = Azure::ServiceFabric::V6_5_0_36::Models::NetworkResourceProperties
      LocalNetworkResourceProperties = Azure::ServiceFabric::V6_5_0_36::Models::LocalNetworkResourceProperties
      AzureInternalMonitoringPipelineSinkDescription = Azure::ServiceFabric::V6_5_0_36::Models::AzureInternalMonitoringPipelineSinkDescription
      AddRemoveReplicaScalingMechanism = Azure::ServiceFabric::V6_5_0_36::Models::AddRemoveReplicaScalingMechanism
      AutoScalingResourceMetric = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingResourceMetric
      ServiceReplicaDescription = Azure::ServiceFabric::V6_5_0_36::Models::ServiceReplicaDescription
      AverageLoadScalingTrigger = Azure::ServiceFabric::V6_5_0_36::Models::AverageLoadScalingTrigger
      HealthState = Azure::ServiceFabric::V6_5_0_36::Models::HealthState
      FabricErrorCodes = Azure::ServiceFabric::V6_5_0_36::Models::FabricErrorCodes
      ApplicationDefinitionKind = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationDefinitionKind
      ApplicationStatus = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationStatus
      ApplicationPackageCleanupPolicy = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationPackageCleanupPolicy
      ApplicationTypeDefinitionKind = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeDefinitionKind
      ApplicationTypeStatus = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeStatus
      UpgradeKind = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeKind
      UpgradeMode = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeMode
      UpgradeSortOrder = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeSortOrder
      FailureAction = Azure::ServiceFabric::V6_5_0_36::Models::FailureAction
      UpgradeDomainState = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainState
      UpgradeState = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeState
      NodeUpgradePhase = Azure::ServiceFabric::V6_5_0_36::Models::NodeUpgradePhase
      FailureReason = Azure::ServiceFabric::V6_5_0_36::Models::FailureReason
      DeactivationIntent = Azure::ServiceFabric::V6_5_0_36::Models::DeactivationIntent
      DeployedApplicationStatus = Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationStatus
      ReplicaStatus = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaStatus
      ReplicaRole = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaRole
      ReconfigurationPhase = Azure::ServiceFabric::V6_5_0_36::Models::ReconfigurationPhase
      ReconfigurationType = Azure::ServiceFabric::V6_5_0_36::Models::ReconfigurationType
      EntityKind = Azure::ServiceFabric::V6_5_0_36::Models::EntityKind
      FabricEventKind = Azure::ServiceFabric::V6_5_0_36::Models::FabricEventKind
      HealthEvaluationKind = Azure::ServiceFabric::V6_5_0_36::Models::HealthEvaluationKind
      NodeDeactivationIntent = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationIntent
      NodeDeactivationStatus = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationStatus
      NodeDeactivationTaskType = Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationTaskType
      NodeStatus = Azure::ServiceFabric::V6_5_0_36::Models::NodeStatus
      ServicePartitionStatus = Azure::ServiceFabric::V6_5_0_36::Models::ServicePartitionStatus
      ServiceStatus = Azure::ServiceFabric::V6_5_0_36::Models::ServiceStatus
      ProvisionApplicationTypeKind = Azure::ServiceFabric::V6_5_0_36::Models::ProvisionApplicationTypeKind
      UpgradeType = Azure::ServiceFabric::V6_5_0_36::Models::UpgradeType
      SafetyCheckKind = Azure::ServiceFabric::V6_5_0_36::Models::SafetyCheckKind
      CreateFabricDump = Azure::ServiceFabric::V6_5_0_36::Models::CreateFabricDump
      ServicePackageActivationMode = Azure::ServiceFabric::V6_5_0_36::Models::ServicePackageActivationMode
      ServiceKind = Azure::ServiceFabric::V6_5_0_36::Models::ServiceKind
      ServicePartitionKind = Azure::ServiceFabric::V6_5_0_36::Models::ServicePartitionKind
      ServicePlacementPolicyType = Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementPolicyType
      ServiceLoadMetricWeight = Azure::ServiceFabric::V6_5_0_36::Models::ServiceLoadMetricWeight
      HostType = Azure::ServiceFabric::V6_5_0_36::Models::HostType
      HostIsolationMode = Azure::ServiceFabric::V6_5_0_36::Models::HostIsolationMode
      DeploymentStatus = Azure::ServiceFabric::V6_5_0_36::Models::DeploymentStatus
      EntryPointStatus = Azure::ServiceFabric::V6_5_0_36::Models::EntryPointStatus
      ChaosStatus = Azure::ServiceFabric::V6_5_0_36::Models::ChaosStatus
      ChaosScheduleStatus = Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleStatus
      ChaosEventKind = Azure::ServiceFabric::V6_5_0_36::Models::ChaosEventKind
      ComposeDeploymentStatus = Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentStatus
      ComposeDeploymentUpgradeState = Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentUpgradeState
      ServiceCorrelationScheme = Azure::ServiceFabric::V6_5_0_36::Models::ServiceCorrelationScheme
      MoveCost = Azure::ServiceFabric::V6_5_0_36::Models::MoveCost
      PartitionScheme = Azure::ServiceFabric::V6_5_0_36::Models::PartitionScheme
      ServiceOperationName = Azure::ServiceFabric::V6_5_0_36::Models::ServiceOperationName
      ReplicatorOperationName = Azure::ServiceFabric::V6_5_0_36::Models::ReplicatorOperationName
      PartitionAccessStatus = Azure::ServiceFabric::V6_5_0_36::Models::PartitionAccessStatus
      FabricReplicaStatus = Azure::ServiceFabric::V6_5_0_36::Models::FabricReplicaStatus
      ReplicaKind = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaKind
      ServiceTypeRegistrationStatus = Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeRegistrationStatus
      ServiceEndpointRole = Azure::ServiceFabric::V6_5_0_36::Models::ServiceEndpointRole
      OperationState = Azure::ServiceFabric::V6_5_0_36::Models::OperationState
      OperationType = Azure::ServiceFabric::V6_5_0_36::Models::OperationType
      PackageSharingPolicyScope = Azure::ServiceFabric::V6_5_0_36::Models::PackageSharingPolicyScope
      PropertyValueKind = Azure::ServiceFabric::V6_5_0_36::Models::PropertyValueKind
      PropertyBatchOperationKind = Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchOperationKind
      PropertyBatchInfoKind = Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchInfoKind
      RetentionPolicyType = Azure::ServiceFabric::V6_5_0_36::Models::RetentionPolicyType
      BackupStorageKind = Azure::ServiceFabric::V6_5_0_36::Models::BackupStorageKind
      BackupScheduleKind = Azure::ServiceFabric::V6_5_0_36::Models::BackupScheduleKind
      BackupPolicyScope = Azure::ServiceFabric::V6_5_0_36::Models::BackupPolicyScope
      BackupSuspensionScope = Azure::ServiceFabric::V6_5_0_36::Models::BackupSuspensionScope
      RestoreState = Azure::ServiceFabric::V6_5_0_36::Models::RestoreState
      BackupType = Azure::ServiceFabric::V6_5_0_36::Models::BackupType
      BackupScheduleFrequencyType = Azure::ServiceFabric::V6_5_0_36::Models::BackupScheduleFrequencyType
      DayOfWeek = Azure::ServiceFabric::V6_5_0_36::Models::DayOfWeek
      BackupState = Azure::ServiceFabric::V6_5_0_36::Models::BackupState
      BackupEntityKind = Azure::ServiceFabric::V6_5_0_36::Models::BackupEntityKind
      ImpactLevel = Azure::ServiceFabric::V6_5_0_36::Models::ImpactLevel
      RepairImpactKind = Azure::ServiceFabric::V6_5_0_36::Models::RepairImpactKind
      RepairTargetKind = Azure::ServiceFabric::V6_5_0_36::Models::RepairTargetKind
      State = Azure::ServiceFabric::V6_5_0_36::Models::State
      ResultStatus = Azure::ServiceFabric::V6_5_0_36::Models::ResultStatus
      RepairTaskHealthCheckState = Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskHealthCheckState
      ScalingTriggerKind = Azure::ServiceFabric::V6_5_0_36::Models::ScalingTriggerKind
      ScalingMechanismKind = Azure::ServiceFabric::V6_5_0_36::Models::ScalingMechanismKind
      ResourceStatus = Azure::ServiceFabric::V6_5_0_36::Models::ResourceStatus
      SecretKind = Azure::ServiceFabric::V6_5_0_36::Models::SecretKind
      VolumeProvider = Azure::ServiceFabric::V6_5_0_36::Models::VolumeProvider
      SizeTypes = Azure::ServiceFabric::V6_5_0_36::Models::SizeTypes
      ApplicationScopedVolumeKind = Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolumeKind
      NetworkKind = Azure::ServiceFabric::V6_5_0_36::Models::NetworkKind
      HeaderMatchType = Azure::ServiceFabric::V6_5_0_36::Models::HeaderMatchType
      OperatingSystemType = Azure::ServiceFabric::V6_5_0_36::Models::OperatingSystemType
      DiagnosticsSinkKind = Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsSinkKind
      AutoScalingMechanismKind = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMechanismKind
      AutoScalingMetricKind = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMetricKind
      AutoScalingResourceMetricName = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingResourceMetricName
      AutoScalingTriggerKind = Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingTriggerKind
      NodeStatusFilter = Azure::ServiceFabric::V6_5_0_36::Models::NodeStatusFilter
      ReplicaHealthReportServiceKind = Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthReportServiceKind
      DataLossMode = Azure::ServiceFabric::V6_5_0_36::Models::DataLossMode
      NodeTransitionType = Azure::ServiceFabric::V6_5_0_36::Models::NodeTransitionType
      QuorumLossMode = Azure::ServiceFabric::V6_5_0_36::Models::QuorumLossMode
      RestartPartitionMode = Azure::ServiceFabric::V6_5_0_36::Models::RestartPartitionMode
    end

    class ServiceFabricDataClass
      attr_reader :mesh_secret, :mesh_secret_value, :mesh_volume, :mesh_network, :mesh_application, :mesh_service, :mesh_code_package, :mesh_service_replica, :mesh_gateway, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::ServiceFabric::V6_5_0_36::ServiceFabricClientAPIs.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @mesh_secret = @client_0.mesh_secret
        @mesh_secret_value = @client_0.mesh_secret_value
        @mesh_volume = @client_0.mesh_volume
        @mesh_network = @client_0.mesh_network
        @mesh_application = @client_0.mesh_application
        @mesh_service = @client_0.mesh_service
        @mesh_code_package = @client_0.mesh_code_package
        @mesh_service_replica = @client_0.mesh_service_replica
        @mesh_gateway = @client_0.mesh_gateway

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
        def scaling_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ScalingPolicyDescription
        end
        def fabric_error_error
          Azure::ServiceFabric::V6_5_0_36::Models::FabricErrorError
        end
        def service_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceDescription
        end
        def container_logs
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerLogs
        end
        def unplaced_replica_information
          Azure::ServiceFabric::V6_5_0_36::Models::UnplacedReplicaInformation
        end
        def aad_metadata_object
          Azure::ServiceFabric::V6_5_0_36::Models::AadMetadataObject
        end
        def network_resource_properties_base
          Azure::ServiceFabric::V6_5_0_36::Models::NetworkResourcePropertiesBase
        end
        def backup_storage_description
          Azure::ServiceFabric::V6_5_0_36::Models::BackupStorageDescription
        end
        def backup_schedule_description
          Azure::ServiceFabric::V6_5_0_36::Models::BackupScheduleDescription
        end
        def tcp_config
          Azure::ServiceFabric::V6_5_0_36::Models::TcpConfig
        end
        def resource_requirements
          Azure::ServiceFabric::V6_5_0_36::Models::ResourceRequirements
        end
        def health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::HealthEvaluation
        end
        def diagnostics_ref
          Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsRef
        end
        def http_route_match_header
          Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteMatchHeader
        end
        def property_batch_info
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchInfo
        end
        def service_type_health_policy_map_item
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeHealthPolicyMapItem
        end
        def reliable_collections_ref
          Azure::ServiceFabric::V6_5_0_36::Models::ReliableCollectionsRef
        end
        def application_health_policy_map_item
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthPolicyMapItem
        end
        def container_state
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerState
        end
        def upload_session
          Azure::ServiceFabric::V6_5_0_36::Models::UploadSession
        end
        def container_event
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerEvent
        end
        def replica_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthStateChunkList
        end
        def restart_node_description
          Azure::ServiceFabric::V6_5_0_36::Models::RestartNodeDescription
        end
        def partition_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthStateChunkList
        end
        def container_instance_view
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerInstanceView
        end
        def service_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthStateChunkList
        end
        def service_from_template_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceFromTemplateDescription
        end
        def deployed_service_package_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthStateChunkList
        end
        def container_code_package_properties
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerCodePackageProperties
        end
        def deployed_application_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthStateChunkList
        end
        def auto_scaling_trigger
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingTrigger
        end
        def repair_task_approve_description
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskApproveDescription
        end
        def service_name_info
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceNameInfo
        end
        def partition_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthStateFilter
        end
        def property_batch_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchDescriptionList
        end
        def deployed_service_package_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthStateFilter
        end
        def property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchOperation
        end
        def application_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthStateFilter
        end
        def service_placement_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementPolicyDescription
        end
        def application_info
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationInfo
        end
        def property_description
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyDescription
        end
        def application_load_info
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationLoadInfo
        end
        def paged_property_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedPropertyInfoList
        end
        def repair_task
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTask
        end
        def property_info
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyInfo
        end
        def application_type_health_policy_map_item
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeHealthPolicyMapItem
        end
        def property_metadata
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyMetadata
        end
        def paged_application_type_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedApplicationTypeInfoList
        end
        def service_load_metric_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceLoadMetricDescription
        end
        def monitoring_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::MonitoringPolicyDescription
        end
        def service_type_extension_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeExtensionDescription
        end
        def upgrade_domain_info
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainInfo
        end
        def service_type_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeDescription
        end
        def safety_check_wrapper
          Azure::ServiceFabric::V6_5_0_36::Models::SafetyCheckWrapper
        end
        def service_type_info
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeInfo
        end
        def current_upgrade_domain_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::CurrentUpgradeDomainProgressInfo
        end
        def service_type_manifest
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeManifest
        end
        def application_upgrade_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeProgressInfo
        end
        def auto_scaling_mechanism
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMechanism
        end
        def repair_target_description_base
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTargetDescriptionBase
        end
        def auto_scaling_policy
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingPolicy
        end
        def repair_impact_description_base
          Azure::ServiceFabric::V6_5_0_36::Models::RepairImpactDescriptionBase
        end
        def service_identity
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceIdentity
        end
        def http_route_config
          Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteConfig
        end
        def service_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceResourceDescription
        end
        def cluster_health_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthChunk
        end
        def diagnostics_sink_properties
          Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsSinkProperties
        end
        def cluster_health_policy
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthPolicy
        end
        def property_value
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyValue
        end
        def cluster_health_policies
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthPolicies
        end
        def paged_sub_name_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedSubNameInfoList
        end
        def load_metric_information
          Azure::ServiceFabric::V6_5_0_36::Models::LoadMetricInformation
        end
        def name_description
          Azure::ServiceFabric::V6_5_0_36::Models::NameDescription
        end
        def cluster_version
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterVersion
        end
        def application_upgrade_update_description
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeUpdateDescription
        end
        def container_api_result
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerApiResult
        end
        def resume_application_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::ResumeApplicationUpgradeDescription
        end
        def get_backup_by_storage_query_description
          Azure::ServiceFabric::V6_5_0_36::Models::GetBackupByStorageQueryDescription
        end
        def deploy_service_package_to_node_description
          Azure::ServiceFabric::V6_5_0_36::Models::DeployServicePackageToNodeDescription
        end
        def paged_backup_entity_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupEntityList
        end
        def analysis_event_metadata
          Azure::ServiceFabric::V6_5_0_36::Models::AnalysisEventMetadata
        end
        def http_host_config
          Azure::ServiceFabric::V6_5_0_36::Models::HttpHostConfig
        end
        def package_sharing_policy_info
          Azure::ServiceFabric::V6_5_0_36::Models::PackageSharingPolicyInfo
        end
        def deployed_application_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationInfo
        end
        def paged_network_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedNetworkResourceDescriptionList
        end
        def backup_entity
          Azure::ServiceFabric::V6_5_0_36::Models::BackupEntity
        end
        def paged_volume_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedVolumeResourceDescriptionList
        end
        def backup_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::BackupProgressInfo
        end
        def endpoint_ref
          Azure::ServiceFabric::V6_5_0_36::Models::EndpointRef
        end
        def reconfiguration_information
          Azure::ServiceFabric::V6_5_0_36::Models::ReconfigurationInformation
        end
        def network_ref
          Azure::ServiceFabric::V6_5_0_36::Models::NetworkRef
        end
        def environment_variable
          Azure::ServiceFabric::V6_5_0_36::Models::EnvironmentVariable
        end
        def network_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::NetworkResourceDescription
        end
        def health_state_count
          Azure::ServiceFabric::V6_5_0_36::Models::HealthStateCount
        end
        def load_metric_report
          Azure::ServiceFabric::V6_5_0_36::Models::LoadMetricReport
        end
        def health_statistics
          Azure::ServiceFabric::V6_5_0_36::Models::HealthStatistics
        end
        def partition_load_information
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionLoadInformation
        end
        def entity_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::EntityHealthState
        end
        def secret_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::SecretResourceDescription
        end
        def entity_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::EntityHealthStateChunkList
        end
        def paged_secret_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedSecretResourceDescriptionList
        end
        def container_label
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerLabel
        end
        def cluster_upgrade_description_object
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeDescriptionObject
        end
        def fabric_code_version_info
          Azure::ServiceFabric::V6_5_0_36::Models::FabricCodeVersionInfo
        end
        def failed_upgrade_domain_progress_object
          Azure::ServiceFabric::V6_5_0_36::Models::FailedUpgradeDomainProgressObject
        end
        def cluster_configuration_upgrade_status_info
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterConfigurationUpgradeStatusInfo
        end
        def cluster_upgrade_progress_object
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeProgressObject
        end
        def paged_backup_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupInfoList
        end
        def cluster_configuration_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterConfigurationUpgradeDescription
        end
        def node_deactivation_task_id
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationTaskId
        end
        def upgrade_orchestration_service_state
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeOrchestrationServiceState
        end
        def node_deactivation_info
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationInfo
        end
        def upgrade_orchestration_service_state_summary
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeOrchestrationServiceStateSummary
        end
        def restore_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::RestoreProgressInfo
        end
        def application_type_image_store_path
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeImageStorePath
        end
        def node_info
          Azure::ServiceFabric::V6_5_0_36::Models::NodeInfo
        end
        def unprovision_application_type_description_info
          Azure::ServiceFabric::V6_5_0_36::Models::UnprovisionApplicationTypeDescriptionInfo
        end
        def node_load_info
          Azure::ServiceFabric::V6_5_0_36::Models::NodeLoadInfo
        end
        def code_package_entry_point_statistics
          Azure::ServiceFabric::V6_5_0_36::Models::CodePackageEntryPointStatistics
        end
        def paged_application_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedApplicationInfoList
        end
        def code_package_entry_point
          Azure::ServiceFabric::V6_5_0_36::Models::CodePackageEntryPoint
        end
        def paged_node_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedNodeInfoList
        end
        def deployed_code_package_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedCodePackageInfo
        end
        def service_partition_info
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePartitionInfo
        end
        def chaos_context
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosContext
        end
        def replica_info
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaInfo
        end
        def chaos_target_filter
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosTargetFilter
        end
        def service_info
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceInfo
        end
        def chaos_parameters
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosParameters
        end
        def backup_configuration_info
          Azure::ServiceFabric::V6_5_0_36::Models::BackupConfigurationInfo
        end
        def chaos
          Azure::ServiceFabric::V6_5_0_36::Models::Chaos
        end
        def endpoint_properties
          Azure::ServiceFabric::V6_5_0_36::Models::EndpointProperties
        end
        def chaos_parameters_dictionary_item
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosParametersDictionaryItem
        end
        def disable_backup_description
          Azure::ServiceFabric::V6_5_0_36::Models::DisableBackupDescription
        end
        def chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosEvent
        end
        def provision_fabric_description
          Azure::ServiceFabric::V6_5_0_36::Models::ProvisionFabricDescription
        end
        def chaos_event_wrapper
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosEventWrapper
        end
        def paged_backup_policy_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupPolicyDescriptionList
        end
        def chaos_events_segment
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosEventsSegment
        end
        def unprovision_fabric_description
          Azure::ServiceFabric::V6_5_0_36::Models::UnprovisionFabricDescription
        end
        def chaos_schedule_job_active_days_of_week
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleJobActiveDaysOfWeek
        end
        def cluster_upgrade_health_policy_object
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeHealthPolicyObject
        end
        def time_of_day
          Azure::ServiceFabric::V6_5_0_36::Models::TimeOfDay
        end
        def rolling_upgrade_update_description
          Azure::ServiceFabric::V6_5_0_36::Models::RollingUpgradeUpdateDescription
        end
        def time_range
          Azure::ServiceFabric::V6_5_0_36::Models::TimeRange
        end
        def retention_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::RetentionPolicyDescription
        end
        def chaos_schedule_job
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleJob
        end
        def http_route_match_path
          Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteMatchPath
        end
        def chaos_schedule
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosSchedule
        end
        def service_type_health_policy
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeHealthPolicy
        end
        def chaos_schedule_description
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleDescription
        end
        def application_health_policies
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthPolicies
        end
        def secret_resource_properties_base
          Azure::ServiceFabric::V6_5_0_36::Models::SecretResourcePropertiesBase
        end
        def upload_chunk_range
          Azure::ServiceFabric::V6_5_0_36::Models::UploadChunkRange
        end
        def secret_value
          Azure::ServiceFabric::V6_5_0_36::Models::SecretValue
        end
        def repair_task_update_health_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskUpdateHealthPolicyDescription
        end
        def secret_value_properties
          Azure::ServiceFabric::V6_5_0_36::Models::SecretValueProperties
        end
        def repair_task_cancel_description
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskCancelDescription
        end
        def secret_value_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::SecretValueResourceDescription
        end
        def service_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthStateFilter
        end
        def paged_secret_value_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedSecretValueResourceDescriptionList
        end
        def application_parameter
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationParameter
        end
        def volume_provider_parameters_azure_file
          Azure::ServiceFabric::V6_5_0_36::Models::VolumeProviderParametersAzureFile
        end
        def application_name_info
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationNameInfo
        end
        def application_capacity_description
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationCapacityDescription
        end
        def application_type_info
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeInfo
        end
        def managed_application_identity
          Azure::ServiceFabric::V6_5_0_36::Models::ManagedApplicationIdentity
        end
        def application_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeDescription
        end
        def managed_application_identity_description
          Azure::ServiceFabric::V6_5_0_36::Models::ManagedApplicationIdentityDescription
        end
        def node_upgrade_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::NodeUpgradeProgressInfo
        end
        def application_description
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationDescription
        end
        def cluster_configuration
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterConfiguration
        end
        def compose_deployment_status_info
          Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentStatusInfo
        end
        def http_route_match_rule
          Azure::ServiceFabric::V6_5_0_36::Models::HttpRouteMatchRule
        end
        def registry_credential
          Azure::ServiceFabric::V6_5_0_36::Models::RegistryCredential
        end
        def node_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthStateFilter
        end
        def compose_deployment_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentUpgradeDescription
        end
        def cluster_manifest
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterManifest
        end
        def compose_deployment_upgrade_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentUpgradeProgressInfo
        end
        def container_api_request_body
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerApiRequestBody
        end
        def paged_compose_deployment_status_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedComposeDeploymentStatusInfoList
        end
        def deactivation_intent_description
          Azure::ServiceFabric::V6_5_0_36::Models::DeactivationIntentDescription
        end
        def create_compose_deployment_description
          Azure::ServiceFabric::V6_5_0_36::Models::CreateComposeDeploymentDescription
        end
        def http_config
          Azure::ServiceFabric::V6_5_0_36::Models::HttpConfig
        end
        def deployed_service_package_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageInfo
        end
        def paged_gateway_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedGatewayResourceDescriptionList
        end
        def service_correlation_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceCorrelationDescription
        end
        def image_registry_credential
          Azure::ServiceFabric::V6_5_0_36::Models::ImageRegistryCredential
        end
        def partition_scheme_description
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionSchemeDescription
        end
        def entity_kind_health_state_count
          Azure::ServiceFabric::V6_5_0_36::Models::EntityKindHealthStateCount
        end
        def volume_reference
          Azure::ServiceFabric::V6_5_0_36::Models::VolumeReference
        end
        def entity_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::EntityHealthStateChunk
        end
        def application_scoped_volume_creation_parameters
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolumeCreationParameters
        end
        def fabric_event
          Azure::ServiceFabric::V6_5_0_36::Models::FabricEvent
        end
        def volume_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::VolumeResourceDescription
        end
        def health_information
          Azure::ServiceFabric::V6_5_0_36::Models::HealthInformation
        end
        def scaling_trigger_description
          Azure::ServiceFabric::V6_5_0_36::Models::ScalingTriggerDescription
        end
        def node_deactivation_task
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationTask
        end
        def scaling_mechanism_description
          Azure::ServiceFabric::V6_5_0_36::Models::ScalingMechanismDescription
        end
        def restore_partition_description
          Azure::ServiceFabric::V6_5_0_36::Models::RestorePartitionDescription
        end
        def fabric_error
          Azure::ServiceFabric::V6_5_0_36::Models::FabricError
        end
        def paged_backup_configuration_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedBackupConfigurationInfoList
        end
        def aad_metadata
          Azure::ServiceFabric::V6_5_0_36::Models::AadMetadata
        end
        def partition_information
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionInformation
        end
        def paged_replica_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedReplicaInfoList
        end
        def paged_application_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedApplicationResourceDescriptionList
        end
        def backup_suspension_info
          Azure::ServiceFabric::V6_5_0_36::Models::BackupSuspensionInfo
        end
        def replicator_queue_status
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicatorQueueStatus
        end
        def resource_limits
          Azure::ServiceFabric::V6_5_0_36::Models::ResourceLimits
        end
        def replicator_status
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicatorStatus
        end
        def backup_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::BackupPolicyDescription
        end
        def remote_replicator_acknowledgement_detail
          Azure::ServiceFabric::V6_5_0_36::Models::RemoteReplicatorAcknowledgementDetail
        end
        def start_cluster_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::StartClusterUpgradeDescription
        end
        def remote_replicator_acknowledgement_status
          Azure::ServiceFabric::V6_5_0_36::Models::RemoteReplicatorAcknowledgementStatus
        end
        def gateway_destination
          Azure::ServiceFabric::V6_5_0_36::Models::GatewayDestination
        end
        def remote_replicator_status
          Azure::ServiceFabric::V6_5_0_36::Models::RemoteReplicatorStatus
        end
        def application_health_policy
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthPolicy
        end
        def application_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationResourceDescription
        end
        def repair_task_update_info
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskUpdateInfo
        end
        def paged_service_replica_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedServiceReplicaDescriptionList
        end
        def replica_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthStateFilter
        end
        def paged_service_resource_description_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedServiceResourceDescriptionList
        end
        def application_metric_description
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationMetricDescription
        end
        def service_replica_properties
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceReplicaProperties
        end
        def application_type_manifest
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeManifest
        end
        def load_metric_report_info
          Azure::ServiceFabric::V6_5_0_36::Models::LoadMetricReportInfo
        end
        def failure_upgrade_domain_progress_info
          Azure::ServiceFabric::V6_5_0_36::Models::FailureUpgradeDomainProgressInfo
        end
        def deployed_service_replica_detail_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServiceReplicaDetailInfo
        end
        def node_impact
          Azure::ServiceFabric::V6_5_0_36::Models::NodeImpact
        end
        def service_properties
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceProperties
        end
        def cluster_load_info
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterLoadInfo
        end
        def auto_scaling_metric
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMetric
        end
        def enable_backup_description
          Azure::ServiceFabric::V6_5_0_36::Models::EnableBackupDescription
        end
        def identity_description
          Azure::ServiceFabric::V6_5_0_36::Models::IdentityDescription
        end
        def deployed_service_replica_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServiceReplicaInfo
        end
        def replica_status_base
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaStatusBase
        end
        def entity_health
          Azure::ServiceFabric::V6_5_0_36::Models::EntityHealth
        end
        def service_update_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceUpdateDescription
        end
        def fabric_config_version_info
          Azure::ServiceFabric::V6_5_0_36::Models::FabricConfigVersionInfo
        end
        def identity_item_description
          Azure::ServiceFabric::V6_5_0_36::Models::IdentityItemDescription
        end
        def backup_partition_description
          Azure::ServiceFabric::V6_5_0_36::Models::BackupPartitionDescription
        end
        def diagnostics_description
          Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsDescription
        end
        def paged_deployed_application_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedDeployedApplicationInfoList
        end
        def file_version
          Azure::ServiceFabric::V6_5_0_36::Models::FileVersion
        end
        def paged_service_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedServiceInfoList
        end
        def file_info
          Azure::ServiceFabric::V6_5_0_36::Models::FileInfo
        end
        def provision_application_type_description_base
          Azure::ServiceFabric::V6_5_0_36::Models::ProvisionApplicationTypeDescriptionBase
        end
        def folder_info
          Azure::ServiceFabric::V6_5_0_36::Models::FolderInfo
        end
        def update_cluster_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::UpdateClusterUpgradeDescription
        end
        def folder_size_info
          Azure::ServiceFabric::V6_5_0_36::Models::FolderSizeInfo
        end
        def upload_session_info
          Azure::ServiceFabric::V6_5_0_36::Models::UploadSessionInfo
        end
        def image_store_content
          Azure::ServiceFabric::V6_5_0_36::Models::ImageStoreContent
        end
        def deployed_application_health_state_filter
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthStateFilter
        end
        def image_store_copy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ImageStoreCopyDescription
        end
        def safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::SafetyCheck
        end
        def restart_deployed_code_package_description
          Azure::ServiceFabric::V6_5_0_36::Models::RestartDeployedCodePackageDescription
        end
        def cluster_health_chunk_query_description
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthChunkQueryDescription
        end
        def deployed_service_type_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServiceTypeInfo
        end
        def gateway_resource_description
          Azure::ServiceFabric::V6_5_0_36::Models::GatewayResourceDescription
        end
        def resolved_service_endpoint
          Azure::ServiceFabric::V6_5_0_36::Models::ResolvedServiceEndpoint
        end
        def epoch
          Azure::ServiceFabric::V6_5_0_36::Models::Epoch
        end
        def resolved_service_partition
          Azure::ServiceFabric::V6_5_0_36::Models::ResolvedServicePartition
        end
        def node_load_metric_information
          Azure::ServiceFabric::V6_5_0_36::Models::NodeLoadMetricInformation
        end
        def selected_partition
          Azure::ServiceFabric::V6_5_0_36::Models::SelectedPartition
        end
        def resource_requests
          Azure::ServiceFabric::V6_5_0_36::Models::ResourceRequests
        end
        def invoke_data_loss_result
          Azure::ServiceFabric::V6_5_0_36::Models::InvokeDataLossResult
        end
        def health_evaluation_wrapper
          Azure::ServiceFabric::V6_5_0_36::Models::HealthEvaluationWrapper
        end
        def invoke_quorum_loss_result
          Azure::ServiceFabric::V6_5_0_36::Models::InvokeQuorumLossResult
        end
        def repair_task_history
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskHistory
        end
        def node_result
          Azure::ServiceFabric::V6_5_0_36::Models::NodeResult
        end
        def container_api_response
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerApiResponse
        end
        def node_transition_result
          Azure::ServiceFabric::V6_5_0_36::Models::NodeTransitionResult
        end
        def backup_info
          Azure::ServiceFabric::V6_5_0_36::Models::BackupInfo
        end
        def node_transition_progress
          Azure::ServiceFabric::V6_5_0_36::Models::NodeTransitionProgress
        end
        def resume_cluster_upgrade_description
          Azure::ServiceFabric::V6_5_0_36::Models::ResumeClusterUpgradeDescription
        end
        def operation_status
          Azure::ServiceFabric::V6_5_0_36::Models::OperationStatus
        end
        def node_id
          Azure::ServiceFabric::V6_5_0_36::Models::NodeId
        end
        def partition_data_loss_progress
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionDataLossProgress
        end
        def paged_service_partition_info_list
          Azure::ServiceFabric::V6_5_0_36::Models::PagedServicePartitionInfoList
        end
        def partition_quorum_loss_progress
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionQuorumLossProgress
        end
        def setting
          Azure::ServiceFabric::V6_5_0_36::Models::Setting
        end
        def restart_partition_result
          Azure::ServiceFabric::V6_5_0_36::Models::RestartPartitionResult
        end
        def repair_task_delete_description
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskDeleteDescription
        end
        def partition_restart_progress
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionRestartProgress
        end
        def application_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationEvent
        end
        def service_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthState
        end
        def deployed_application_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthState
        end
        def application_health
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealth
        end
        def application_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthEvaluation
        end
        def application_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthState
        end
        def replica_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthStateChunk
        end
        def partition_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthStateChunk
        end
        def service_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthStateChunk
        end
        def deployed_service_package_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthStateChunk
        end
        def deployed_application_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthStateChunk
        end
        def application_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthStateChunk
        end
        def application_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthStateChunkList
        end
        def applications_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationsHealthEvaluation
        end
        def application_type_applications_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeApplicationsHealthEvaluation
        end
        def cluster_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterEvent
        end
        def node_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthState
        end
        def cluster_health
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealth
        end
        def node_health_state_chunk
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthStateChunk
        end
        def node_health_state_chunk_list
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthStateChunkList
        end
        def container_instance_event
          Azure::ServiceFabric::V6_5_0_36::Models::ContainerInstanceEvent
        end
        def delta_nodes_check_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::DeltaNodesCheckHealthEvaluation
        end
        def deployed_service_package_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthState
        end
        def deployed_application_health
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealth
        end
        def deployed_application_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthEvaluation
        end
        def deployed_applications_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationsHealthEvaluation
        end
        def deployed_service_package_health
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealth
        end
        def deployed_service_package_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthEvaluation
        end
        def deployed_service_packages_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackagesHealthEvaluation
        end
        def deployed_stateful_service_replica_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatefulServiceReplicaInfo
        end
        def deployed_stateless_service_instance_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatelessServiceInstanceInfo
        end
        def health_event
          Azure::ServiceFabric::V6_5_0_36::Models::HealthEvent
        end
        def event_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::EventHealthEvaluation
        end
        def int64_range_partition_information
          Azure::ServiceFabric::V6_5_0_36::Models::Int64RangePartitionInformation
        end
        def named_partition_information
          Azure::ServiceFabric::V6_5_0_36::Models::NamedPartitionInformation
        end
        def node_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeEvent
        end
        def node_health
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealth
        end
        def node_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthEvaluation
        end
        def nodes_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::NodesHealthEvaluation
        end
        def partition_event
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionEvent
        end
        def partition_analysis_event
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionAnalysisEvent
        end
        def replica_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthState
        end
        def partition_health
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealth
        end
        def partition_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthEvaluation
        end
        def partition_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthState
        end
        def provision_application_type_description
          Azure::ServiceFabric::V6_5_0_36::Models::ProvisionApplicationTypeDescription
        end
        def external_store_provision_application_type_description
          Azure::ServiceFabric::V6_5_0_36::Models::ExternalStoreProvisionApplicationTypeDescription
        end
        def partition_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionSafetyCheck
        end
        def ensure_availability_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::EnsureAvailabilitySafetyCheck
        end
        def ensure_partition_quorum_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::EnsurePartitionQuorumSafetyCheck
        end
        def seed_node_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::SeedNodeSafetyCheck
        end
        def partitions_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionsHealthEvaluation
        end
        def replica_event
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaEvent
        end
        def replica_health
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealth
        end
        def replica_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthEvaluation
        end
        def replicas_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicasHealthEvaluation
        end
        def service_event
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceEvent
        end
        def service_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthEvaluation
        end
        def service_health
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealth
        end
        def service_placement_invalid_domain_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementInvalidDomainPolicyDescription
        end
        def service_placement_non_partially_place_service_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementNonPartiallyPlaceServicePolicyDescription
        end
        def service_placement_prefer_primary_domain_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementPreferPrimaryDomainPolicyDescription
        end
        def service_placement_required_domain_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementRequiredDomainPolicyDescription
        end
        def service_placement_require_domain_distribution_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementRequireDomainDistributionPolicyDescription
        end
        def services_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::ServicesHealthEvaluation
        end
        def singleton_partition_information
          Azure::ServiceFabric::V6_5_0_36::Models::SingletonPartitionInformation
        end
        def stateful_service_info
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceInfo
        end
        def stateful_service_partition_info
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServicePartitionInfo
        end
        def stateful_service_replica_health
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceReplicaHealth
        end
        def stateful_service_replica_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceReplicaHealthState
        end
        def stateful_service_type_description
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceTypeDescription
        end
        def stateless_service_info
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInfo
        end
        def stateless_service_instance_health
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInstanceHealth
        end
        def stateless_service_instance_health_state
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInstanceHealthState
        end
        def stateless_service_partition_info
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServicePartitionInfo
        end
        def stateless_service_type_description
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceTypeDescription
        end
        def system_application_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::SystemApplicationHealthEvaluation
        end
        def upgrade_domain_delta_nodes_check_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainDeltaNodesCheckHealthEvaluation
        end
        def upgrade_domain_nodes_health_evaluation
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainNodesHealthEvaluation
        end
        def wait_for_inbuild_replica_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::WaitForInbuildReplicaSafetyCheck
        end
        def wait_for_primary_placement_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::WaitForPrimaryPlacementSafetyCheck
        end
        def wait_for_primary_swap_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::WaitForPrimarySwapSafetyCheck
        end
        def wait_for_reconfiguration_safety_check
          Azure::ServiceFabric::V6_5_0_36::Models::WaitForReconfigurationSafetyCheck
        end
        def stateful_service_replica_info
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceReplicaInfo
        end
        def stateless_service_instance_info
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceInstanceInfo
        end
        def executing_faults_chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::ExecutingFaultsChaosEvent
        end
        def started_chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::StartedChaosEvent
        end
        def stopped_chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::StoppedChaosEvent
        end
        def test_error_chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::TestErrorChaosEvent
        end
        def validation_failed_chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::ValidationFailedChaosEvent
        end
        def waiting_chaos_event
          Azure::ServiceFabric::V6_5_0_36::Models::WaitingChaosEvent
        end
        def named_partition_scheme_description
          Azure::ServiceFabric::V6_5_0_36::Models::NamedPartitionSchemeDescription
        end
        def singleton_partition_scheme_description
          Azure::ServiceFabric::V6_5_0_36::Models::SingletonPartitionSchemeDescription
        end
        def uniform_int64_range_partition_scheme_description
          Azure::ServiceFabric::V6_5_0_36::Models::UniformInt64RangePartitionSchemeDescription
        end
        def stateful_service_description
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceDescription
        end
        def stateless_service_description
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceDescription
        end
        def primary_replicator_status
          Azure::ServiceFabric::V6_5_0_36::Models::PrimaryReplicatorStatus
        end
        def secondary_replicator_status
          Azure::ServiceFabric::V6_5_0_36::Models::SecondaryReplicatorStatus
        end
        def secondary_active_replicator_status
          Azure::ServiceFabric::V6_5_0_36::Models::SecondaryActiveReplicatorStatus
        end
        def secondary_idle_replicator_status
          Azure::ServiceFabric::V6_5_0_36::Models::SecondaryIdleReplicatorStatus
        end
        def key_value_store_replica_status
          Azure::ServiceFabric::V6_5_0_36::Models::KeyValueStoreReplicaStatus
        end
        def deployed_stateful_service_replica_detail_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatefulServiceReplicaDetailInfo
        end
        def deployed_stateless_service_instance_detail_info
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedStatelessServiceInstanceDetailInfo
        end
        def stateful_service_update_description
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulServiceUpdateDescription
        end
        def stateless_service_update_description
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessServiceUpdateDescription
        end
        def binary_property_value
          Azure::ServiceFabric::V6_5_0_36::Models::BinaryPropertyValue
        end
        def int64_property_value
          Azure::ServiceFabric::V6_5_0_36::Models::Int64PropertyValue
        end
        def double_property_value
          Azure::ServiceFabric::V6_5_0_36::Models::DoublePropertyValue
        end
        def string_property_value
          Azure::ServiceFabric::V6_5_0_36::Models::StringPropertyValue
        end
        def guid_property_value
          Azure::ServiceFabric::V6_5_0_36::Models::GuidPropertyValue
        end
        def check_exists_property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::CheckExistsPropertyBatchOperation
        end
        def check_sequence_property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::CheckSequencePropertyBatchOperation
        end
        def check_value_property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::CheckValuePropertyBatchOperation
        end
        def delete_property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::DeletePropertyBatchOperation
        end
        def get_property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::GetPropertyBatchOperation
        end
        def put_property_batch_operation
          Azure::ServiceFabric::V6_5_0_36::Models::PutPropertyBatchOperation
        end
        def successful_property_batch_info
          Azure::ServiceFabric::V6_5_0_36::Models::SuccessfulPropertyBatchInfo
        end
        def failed_property_batch_info
          Azure::ServiceFabric::V6_5_0_36::Models::FailedPropertyBatchInfo
        end
        def basic_retention_policy_description
          Azure::ServiceFabric::V6_5_0_36::Models::BasicRetentionPolicyDescription
        end
        def application_backup_configuration_info
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationBackupConfigurationInfo
        end
        def service_backup_configuration_info
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceBackupConfigurationInfo
        end
        def azure_blob_backup_storage_description
          Azure::ServiceFabric::V6_5_0_36::Models::AzureBlobBackupStorageDescription
        end
        def file_share_backup_storage_description
          Azure::ServiceFabric::V6_5_0_36::Models::FileShareBackupStorageDescription
        end
        def frequency_based_backup_schedule_description
          Azure::ServiceFabric::V6_5_0_36::Models::FrequencyBasedBackupScheduleDescription
        end
        def time_based_backup_schedule_description
          Azure::ServiceFabric::V6_5_0_36::Models::TimeBasedBackupScheduleDescription
        end
        def partition_backup_configuration_info
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionBackupConfigurationInfo
        end
        def application_backup_entity
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationBackupEntity
        end
        def service_backup_entity
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceBackupEntity
        end
        def partition_backup_entity
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionBackupEntity
        end
        def node_repair_impact_description
          Azure::ServiceFabric::V6_5_0_36::Models::NodeRepairImpactDescription
        end
        def node_repair_target_description
          Azure::ServiceFabric::V6_5_0_36::Models::NodeRepairTargetDescription
        end
        def average_partition_load_scaling_trigger
          Azure::ServiceFabric::V6_5_0_36::Models::AveragePartitionLoadScalingTrigger
        end
        def average_service_load_scaling_trigger
          Azure::ServiceFabric::V6_5_0_36::Models::AverageServiceLoadScalingTrigger
        end
        def partition_instance_count_scale_mechanism
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionInstanceCountScaleMechanism
        end
        def add_remove_incremental_named_partition_scaling_mechanism
          Azure::ServiceFabric::V6_5_0_36::Models::AddRemoveIncrementalNamedPartitionScalingMechanism
        end
        def application_created_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationCreatedEvent
        end
        def application_deleted_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationDeletedEvent
        end
        def application_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationNewHealthReportEvent
        end
        def application_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationHealthReportExpiredEvent
        end
        def application_upgrade_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeCompletedEvent
        end
        def application_upgrade_domain_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeDomainCompletedEvent
        end
        def application_upgrade_rollback_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeRollbackCompletedEvent
        end
        def application_upgrade_rollback_started_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeRollbackStartedEvent
        end
        def application_upgrade_started_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationUpgradeStartedEvent
        end
        def deployed_application_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationNewHealthReportEvent
        end
        def deployed_application_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationHealthReportExpiredEvent
        end
        def application_process_exited_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationProcessExitedEvent
        end
        def application_container_instance_exited_event
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationContainerInstanceExitedEvent
        end
        def node_aborted_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeAbortedEvent
        end
        def node_added_to_cluster_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeAddedToClusterEvent
        end
        def node_closed_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeClosedEvent
        end
        def node_deactivate_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivateCompletedEvent
        end
        def node_deactivate_started_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivateStartedEvent
        end
        def node_down_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDownEvent
        end
        def node_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeNewHealthReportEvent
        end
        def node_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeHealthReportExpiredEvent
        end
        def node_open_succeeded_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeOpenSucceededEvent
        end
        def node_open_failed_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeOpenFailedEvent
        end
        def node_removed_from_cluster_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeRemovedFromClusterEvent
        end
        def node_up_event
          Azure::ServiceFabric::V6_5_0_36::Models::NodeUpEvent
        end
        def partition_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionNewHealthReportEvent
        end
        def partition_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionHealthReportExpiredEvent
        end
        def partition_reconfigured_event
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionReconfiguredEvent
        end
        def partition_primary_move_analysis_event
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionPrimaryMoveAnalysisEvent
        end
        def service_created_event
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceCreatedEvent
        end
        def service_deleted_event
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceDeletedEvent
        end
        def service_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceNewHealthReportEvent
        end
        def service_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceHealthReportExpiredEvent
        end
        def deployed_service_package_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageNewHealthReportEvent
        end
        def deployed_service_package_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedServicePackageHealthReportExpiredEvent
        end
        def stateful_replica_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulReplicaNewHealthReportEvent
        end
        def stateful_replica_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::StatefulReplicaHealthReportExpiredEvent
        end
        def stateless_replica_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessReplicaNewHealthReportEvent
        end
        def stateless_replica_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::StatelessReplicaHealthReportExpiredEvent
        end
        def cluster_new_health_report_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterNewHealthReportEvent
        end
        def cluster_health_report_expired_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterHealthReportExpiredEvent
        end
        def cluster_upgrade_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeCompletedEvent
        end
        def cluster_upgrade_domain_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeDomainCompletedEvent
        end
        def cluster_upgrade_rollback_completed_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeRollbackCompletedEvent
        end
        def cluster_upgrade_rollback_started_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeRollbackStartedEvent
        end
        def cluster_upgrade_started_event
          Azure::ServiceFabric::V6_5_0_36::Models::ClusterUpgradeStartedEvent
        end
        def chaos_stopped_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosStoppedEvent
        end
        def chaos_started_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosStartedEvent
        end
        def chaos_code_package_restart_scheduled_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosCodePackageRestartScheduledEvent
        end
        def chaos_replica_removal_scheduled_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosReplicaRemovalScheduledEvent
        end
        def chaos_partition_secondary_move_scheduled_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosPartitionSecondaryMoveScheduledEvent
        end
        def chaos_partition_primary_move_scheduled_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosPartitionPrimaryMoveScheduledEvent
        end
        def chaos_replica_restart_scheduled_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosReplicaRestartScheduledEvent
        end
        def chaos_node_restart_scheduled_event
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosNodeRestartScheduledEvent
        end
        def secret_resource_properties
          Azure::ServiceFabric::V6_5_0_36::Models::SecretResourceProperties
        end
        def inlined_value_secret_resource_properties
          Azure::ServiceFabric::V6_5_0_36::Models::InlinedValueSecretResourceProperties
        end
        def application_scoped_volume
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolume
        end
        def application_scoped_volume_creation_parameters_service_fabric_volume_disk
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
        end
        def network_resource_properties
          Azure::ServiceFabric::V6_5_0_36::Models::NetworkResourceProperties
        end
        def local_network_resource_properties
          Azure::ServiceFabric::V6_5_0_36::Models::LocalNetworkResourceProperties
        end
        def azure_internal_monitoring_pipeline_sink_description
          Azure::ServiceFabric::V6_5_0_36::Models::AzureInternalMonitoringPipelineSinkDescription
        end
        def add_remove_replica_scaling_mechanism
          Azure::ServiceFabric::V6_5_0_36::Models::AddRemoveReplicaScalingMechanism
        end
        def auto_scaling_resource_metric
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingResourceMetric
        end
        def service_replica_description
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceReplicaDescription
        end
        def average_load_scaling_trigger
          Azure::ServiceFabric::V6_5_0_36::Models::AverageLoadScalingTrigger
        end
        def health_state
          Azure::ServiceFabric::V6_5_0_36::Models::HealthState
        end
        def fabric_error_codes
          Azure::ServiceFabric::V6_5_0_36::Models::FabricErrorCodes
        end
        def application_definition_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationDefinitionKind
        end
        def application_status
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationStatus
        end
        def application_package_cleanup_policy
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationPackageCleanupPolicy
        end
        def application_type_definition_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeDefinitionKind
        end
        def application_type_status
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationTypeStatus
        end
        def upgrade_kind
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeKind
        end
        def upgrade_mode
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeMode
        end
        def upgrade_sort_order
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeSortOrder
        end
        def failure_action
          Azure::ServiceFabric::V6_5_0_36::Models::FailureAction
        end
        def upgrade_domain_state
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeDomainState
        end
        def upgrade_state
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeState
        end
        def node_upgrade_phase
          Azure::ServiceFabric::V6_5_0_36::Models::NodeUpgradePhase
        end
        def failure_reason
          Azure::ServiceFabric::V6_5_0_36::Models::FailureReason
        end
        def deactivation_intent
          Azure::ServiceFabric::V6_5_0_36::Models::DeactivationIntent
        end
        def deployed_application_status
          Azure::ServiceFabric::V6_5_0_36::Models::DeployedApplicationStatus
        end
        def replica_status
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaStatus
        end
        def replica_role
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaRole
        end
        def reconfiguration_phase
          Azure::ServiceFabric::V6_5_0_36::Models::ReconfigurationPhase
        end
        def reconfiguration_type
          Azure::ServiceFabric::V6_5_0_36::Models::ReconfigurationType
        end
        def entity_kind
          Azure::ServiceFabric::V6_5_0_36::Models::EntityKind
        end
        def fabric_event_kind
          Azure::ServiceFabric::V6_5_0_36::Models::FabricEventKind
        end
        def health_evaluation_kind
          Azure::ServiceFabric::V6_5_0_36::Models::HealthEvaluationKind
        end
        def node_deactivation_intent
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationIntent
        end
        def node_deactivation_status
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationStatus
        end
        def node_deactivation_task_type
          Azure::ServiceFabric::V6_5_0_36::Models::NodeDeactivationTaskType
        end
        def node_status
          Azure::ServiceFabric::V6_5_0_36::Models::NodeStatus
        end
        def service_partition_status
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePartitionStatus
        end
        def service_status
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceStatus
        end
        def provision_application_type_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ProvisionApplicationTypeKind
        end
        def upgrade_type
          Azure::ServiceFabric::V6_5_0_36::Models::UpgradeType
        end
        def safety_check_kind
          Azure::ServiceFabric::V6_5_0_36::Models::SafetyCheckKind
        end
        def create_fabric_dump
          Azure::ServiceFabric::V6_5_0_36::Models::CreateFabricDump
        end
        def service_package_activation_mode
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePackageActivationMode
        end
        def service_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceKind
        end
        def service_partition_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePartitionKind
        end
        def service_placement_policy_type
          Azure::ServiceFabric::V6_5_0_36::Models::ServicePlacementPolicyType
        end
        def service_load_metric_weight
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceLoadMetricWeight
        end
        def host_type
          Azure::ServiceFabric::V6_5_0_36::Models::HostType
        end
        def host_isolation_mode
          Azure::ServiceFabric::V6_5_0_36::Models::HostIsolationMode
        end
        def deployment_status
          Azure::ServiceFabric::V6_5_0_36::Models::DeploymentStatus
        end
        def entry_point_status
          Azure::ServiceFabric::V6_5_0_36::Models::EntryPointStatus
        end
        def chaos_status
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosStatus
        end
        def chaos_schedule_status
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosScheduleStatus
        end
        def chaos_event_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ChaosEventKind
        end
        def compose_deployment_status
          Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentStatus
        end
        def compose_deployment_upgrade_state
          Azure::ServiceFabric::V6_5_0_36::Models::ComposeDeploymentUpgradeState
        end
        def service_correlation_scheme
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceCorrelationScheme
        end
        def move_cost
          Azure::ServiceFabric::V6_5_0_36::Models::MoveCost
        end
        def partition_scheme
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionScheme
        end
        def service_operation_name
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceOperationName
        end
        def replicator_operation_name
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicatorOperationName
        end
        def partition_access_status
          Azure::ServiceFabric::V6_5_0_36::Models::PartitionAccessStatus
        end
        def fabric_replica_status
          Azure::ServiceFabric::V6_5_0_36::Models::FabricReplicaStatus
        end
        def replica_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaKind
        end
        def service_type_registration_status
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceTypeRegistrationStatus
        end
        def service_endpoint_role
          Azure::ServiceFabric::V6_5_0_36::Models::ServiceEndpointRole
        end
        def operation_state
          Azure::ServiceFabric::V6_5_0_36::Models::OperationState
        end
        def operation_type
          Azure::ServiceFabric::V6_5_0_36::Models::OperationType
        end
        def package_sharing_policy_scope
          Azure::ServiceFabric::V6_5_0_36::Models::PackageSharingPolicyScope
        end
        def property_value_kind
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyValueKind
        end
        def property_batch_operation_kind
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchOperationKind
        end
        def property_batch_info_kind
          Azure::ServiceFabric::V6_5_0_36::Models::PropertyBatchInfoKind
        end
        def retention_policy_type
          Azure::ServiceFabric::V6_5_0_36::Models::RetentionPolicyType
        end
        def backup_storage_kind
          Azure::ServiceFabric::V6_5_0_36::Models::BackupStorageKind
        end
        def backup_schedule_kind
          Azure::ServiceFabric::V6_5_0_36::Models::BackupScheduleKind
        end
        def backup_policy_scope
          Azure::ServiceFabric::V6_5_0_36::Models::BackupPolicyScope
        end
        def backup_suspension_scope
          Azure::ServiceFabric::V6_5_0_36::Models::BackupSuspensionScope
        end
        def restore_state
          Azure::ServiceFabric::V6_5_0_36::Models::RestoreState
        end
        def backup_type
          Azure::ServiceFabric::V6_5_0_36::Models::BackupType
        end
        def backup_schedule_frequency_type
          Azure::ServiceFabric::V6_5_0_36::Models::BackupScheduleFrequencyType
        end
        def day_of_week
          Azure::ServiceFabric::V6_5_0_36::Models::DayOfWeek
        end
        def backup_state
          Azure::ServiceFabric::V6_5_0_36::Models::BackupState
        end
        def backup_entity_kind
          Azure::ServiceFabric::V6_5_0_36::Models::BackupEntityKind
        end
        def impact_level
          Azure::ServiceFabric::V6_5_0_36::Models::ImpactLevel
        end
        def repair_impact_kind
          Azure::ServiceFabric::V6_5_0_36::Models::RepairImpactKind
        end
        def repair_target_kind
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTargetKind
        end
        def state
          Azure::ServiceFabric::V6_5_0_36::Models::State
        end
        def result_status
          Azure::ServiceFabric::V6_5_0_36::Models::ResultStatus
        end
        def repair_task_health_check_state
          Azure::ServiceFabric::V6_5_0_36::Models::RepairTaskHealthCheckState
        end
        def scaling_trigger_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ScalingTriggerKind
        end
        def scaling_mechanism_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ScalingMechanismKind
        end
        def resource_status
          Azure::ServiceFabric::V6_5_0_36::Models::ResourceStatus
        end
        def secret_kind
          Azure::ServiceFabric::V6_5_0_36::Models::SecretKind
        end
        def volume_provider
          Azure::ServiceFabric::V6_5_0_36::Models::VolumeProvider
        end
        def size_types
          Azure::ServiceFabric::V6_5_0_36::Models::SizeTypes
        end
        def application_scoped_volume_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ApplicationScopedVolumeKind
        end
        def network_kind
          Azure::ServiceFabric::V6_5_0_36::Models::NetworkKind
        end
        def header_match_type
          Azure::ServiceFabric::V6_5_0_36::Models::HeaderMatchType
        end
        def operating_system_type
          Azure::ServiceFabric::V6_5_0_36::Models::OperatingSystemType
        end
        def diagnostics_sink_kind
          Azure::ServiceFabric::V6_5_0_36::Models::DiagnosticsSinkKind
        end
        def auto_scaling_mechanism_kind
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMechanismKind
        end
        def auto_scaling_metric_kind
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingMetricKind
        end
        def auto_scaling_resource_metric_name
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingResourceMetricName
        end
        def auto_scaling_trigger_kind
          Azure::ServiceFabric::V6_5_0_36::Models::AutoScalingTriggerKind
        end
        def node_status_filter
          Azure::ServiceFabric::V6_5_0_36::Models::NodeStatusFilter
        end
        def replica_health_report_service_kind
          Azure::ServiceFabric::V6_5_0_36::Models::ReplicaHealthReportServiceKind
        end
        def data_loss_mode
          Azure::ServiceFabric::V6_5_0_36::Models::DataLossMode
        end
        def node_transition_type
          Azure::ServiceFabric::V6_5_0_36::Models::NodeTransitionType
        end
        def quorum_loss_mode
          Azure::ServiceFabric::V6_5_0_36::Models::QuorumLossMode
        end
        def restart_partition_mode
          Azure::ServiceFabric::V6_5_0_36::Models::RestartPartitionMode
        end
      end
    end
    module Mgmt
      ApplicationType = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ApplicationType
      Version = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Version
      Application = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Application
      Service = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Service
      Clusters = Azure::ServiceFabric::Mgmt::V2018_02_01::Clusters
      ClusterVersions = Azure::ServiceFabric::Mgmt::V2018_02_01::ClusterVersions
      Operations = Azure::ServiceFabric::Mgmt::V2018_02_01::Operations

      module Models
        ServicePropertiesBase = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
        ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
        ApplicationMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
        ServiceCorrelationDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
        ServicePlacementPolicyDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
        ApplicationParameter = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
        ServiceLoadMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
        PartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
        ProxyResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
        RollingUpgradeMonitoringPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
        ApplicationTypeResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
        ApplicationResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
        ApplicationUpgradePolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
        VersionResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
        ServiceResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
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
        EndpointRangeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
        ServiceTypeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
        NodeTypeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
        ServiceTypeHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
        ClusterHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
        AvailableOperationDisplay = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
        ClusterUpgradeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
        CertificateDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
        ClusterUpgradePolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
        ClientCertificateThumbprint = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
        ClusterVersionDetails = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
        ServerCertificateCommonNames = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
        ClusterCodeVersionsResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
        SettingsParameterDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
        ClusterCodeVersionsListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
        ApplicationDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
        ClusterListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
        AzureActiveDirectory = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
        ClusterUpdateParameters = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
        ServerCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
        OperationResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
        SettingsSectionDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
        OperationListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
        ClientCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
        Resource = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
        ApplicationHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
        ErrorModelError = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
        DiagnosticsStorageAccountConfig = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
        ErrorModel = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
        Cluster = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
        ProvisioningState = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
      end

      class ServiceFabricManagementClass
        attr_reader :application_type, :version, :application, :service, :clusters, :cluster_versions, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @application_type = @client_0.application_type
          @version = @client_0.version
          @application = @client_0.application
          @service = @client_0.service

          @client_1 = Azure::ServiceFabric::Mgmt::V2018_02_01::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @clusters = @client_1.clusters
          @cluster_versions = @client_1.cluster_versions
          @operations = @client_1.operations

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
          def proxy_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
          end
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
          def endpoint_range_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
          end
          def service_type_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
          end
          def node_type_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
          end
          def service_type_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
          end
          def cluster_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
          end
          def available_operation_display
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
          end
          def cluster_upgrade_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
          end
          def certificate_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
          end
          def cluster_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
          end
          def client_certificate_thumbprint
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
          end
          def cluster_version_details
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
          end
          def server_certificate_common_names
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
          end
          def cluster_code_versions_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
          end
          def settings_parameter_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
          end
          def cluster_code_versions_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
          end
          def application_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
          end
          def cluster_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
          end
          def azure_active_directory
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
          end
          def cluster_update_parameters
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
          end
          def server_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
          end
          def operation_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
          end
          def settings_section_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
          end
          def operation_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
          end
          def client_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
          end
          def resource
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
          end
          def application_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
          end
          def error_model_error
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
          end
          def diagnostics_storage_account_config
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
          end
          def error_model
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
          end
          def cluster
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
          end
          def provisioning_state
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
          end
        end
      end
    end
  end
end
