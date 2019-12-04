# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_service_fabric'

module Azure::ServiceFabric::Profiles::Latest
  MeshSecret = Azure::ServiceFabric::V7_0_0_42::MeshSecret
  MeshSecretValue = Azure::ServiceFabric::V7_0_0_42::MeshSecretValue
  MeshVolume = Azure::ServiceFabric::V7_0_0_42::MeshVolume
  MeshNetwork = Azure::ServiceFabric::V7_0_0_42::MeshNetwork
  MeshApplication = Azure::ServiceFabric::V7_0_0_42::MeshApplication
  MeshService = Azure::ServiceFabric::V7_0_0_42::MeshService
  MeshCodePackage = Azure::ServiceFabric::V7_0_0_42::MeshCodePackage
  MeshServiceReplica = Azure::ServiceFabric::V7_0_0_42::MeshServiceReplica
  MeshGateway = Azure::ServiceFabric::V7_0_0_42::MeshGateway

  module Models
    ReplicatorStatus = Azure::ServiceFabric::V7_0_0_42::Models::ReplicatorStatus
    RemoteReplicatorAcknowledgementDetail = Azure::ServiceFabric::V7_0_0_42::Models::RemoteReplicatorAcknowledgementDetail
    FabricError = Azure::ServiceFabric::V7_0_0_42::Models::FabricError
    RemoteReplicatorAcknowledgementStatus = Azure::ServiceFabric::V7_0_0_42::Models::RemoteReplicatorAcknowledgementStatus
    AadMetadata = Azure::ServiceFabric::V7_0_0_42::Models::AadMetadata
    RemoteReplicatorStatus = Azure::ServiceFabric::V7_0_0_42::Models::RemoteReplicatorStatus
    AnalysisEventMetadata = Azure::ServiceFabric::V7_0_0_42::Models::AnalysisEventMetadata
    UpgradeOrchestrationServiceStateSummary = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeOrchestrationServiceStateSummary
    ApplicationTypeImageStorePath = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeImageStorePath
    DiagnosticsRef = Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsRef
    RestartNodeDescription = Azure::ServiceFabric::V7_0_0_42::Models::RestartNodeDescription
    HealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::HealthEvaluation
    BackupEntity = Azure::ServiceFabric::V7_0_0_42::Models::BackupEntity
    PagedSecretResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedSecretResourceDescriptionList
    ServiceFromTemplateDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceFromTemplateDescription
    ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeHealthPolicyMapItem
    ReliableCollectionsRef = Azure::ServiceFabric::V7_0_0_42::Models::ReliableCollectionsRef
    ApplicationHealthPolicyMapItem = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthPolicyMapItem
    BackupProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::BackupProgressInfo
    SecretResourcePropertiesBase = Azure::ServiceFabric::V7_0_0_42::Models::SecretResourcePropertiesBase
    ServiceNameInfo = Azure::ServiceFabric::V7_0_0_42::Models::ServiceNameInfo
    ReplicaHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthStateChunkList
    ContainerState = Azure::ServiceFabric::V7_0_0_42::Models::ContainerState
    PartitionHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthStateChunkList
    ContainerEvent = Azure::ServiceFabric::V7_0_0_42::Models::ContainerEvent
    ServiceHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthStateChunkList
    ServicePlacementPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementPolicyDescription
    DeployedServicePackageHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthStateChunkList
    ContainerInstanceView = Azure::ServiceFabric::V7_0_0_42::Models::ContainerInstanceView
    DeployedApplicationHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthStateChunkList
    ProbeExec = Azure::ServiceFabric::V7_0_0_42::Models::ProbeExec
    ApplicationScopedVolumeCreationParameters = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolumeCreationParameters
    PagedBackupInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupInfoList
    PartitionHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthStateFilter
    BackupInfo = Azure::ServiceFabric::V7_0_0_42::Models::BackupInfo
    DeployedServicePackageHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthStateFilter
    ServiceLoadMetricDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceLoadMetricDescription
    ApplicationHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthStateFilter
    ServiceTypeExtensionDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeExtensionDescription
    ApplicationInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationInfo
    ServiceTypeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeDescription
    ApplicationLoadInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationLoadInfo
    ServiceTypeInfo = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeInfo
    VolumeResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::VolumeResourceDescription
    ServiceTypeManifest = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeManifest
    ApplicationTypeHealthPolicyMapItem = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeHealthPolicyMapItem
    BackupPartitionDescription = Azure::ServiceFabric::V7_0_0_42::Models::BackupPartitionDescription
    PagedApplicationTypeInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedApplicationTypeInfoList
    RestoreProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::RestoreProgressInfo
    MonitoringPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::MonitoringPolicyDescription
    RestorePartitionDescription = Azure::ServiceFabric::V7_0_0_42::Models::RestorePartitionDescription
    UpgradeDomainInfo = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainInfo
    PagedBackupConfigurationInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupConfigurationInfoList
    SafetyCheckWrapper = Azure::ServiceFabric::V7_0_0_42::Models::SafetyCheckWrapper
    BackupConfigurationInfo = Azure::ServiceFabric::V7_0_0_42::Models::BackupConfigurationInfo
    CurrentUpgradeDomainProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::CurrentUpgradeDomainProgressInfo
    BackupSuspensionInfo = Azure::ServiceFabric::V7_0_0_42::Models::BackupSuspensionInfo
    ApplicationUpgradeProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeProgressInfo
    ProbeHttpGetHeaders = Azure::ServiceFabric::V7_0_0_42::Models::ProbeHttpGetHeaders
    EndpointRef = Azure::ServiceFabric::V7_0_0_42::Models::EndpointRef
    ProbeHttpGet = Azure::ServiceFabric::V7_0_0_42::Models::ProbeHttpGet
    NetworkRef = Azure::ServiceFabric::V7_0_0_42::Models::NetworkRef
    DisableBackupDescription = Azure::ServiceFabric::V7_0_0_42::Models::DisableBackupDescription
    NetworkResourcePropertiesBase = Azure::ServiceFabric::V7_0_0_42::Models::NetworkResourcePropertiesBase
    ProbeTcpSocket = Azure::ServiceFabric::V7_0_0_42::Models::ProbeTcpSocket
    ClusterHealthChunk = Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthChunk
    PagedBackupPolicyDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupPolicyDescriptionList
    ClusterHealthPolicy = Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthPolicy
    BackupPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::BackupPolicyDescription
    ClusterHealthPolicies = Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthPolicies
    RetentionPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::RetentionPolicyDescription
    LoadMetricInformation = Azure::ServiceFabric::V7_0_0_42::Models::LoadMetricInformation
    BackupStorageDescription = Azure::ServiceFabric::V7_0_0_42::Models::BackupStorageDescription
    ClusterVersion = Azure::ServiceFabric::V7_0_0_42::Models::ClusterVersion
    BackupScheduleDescription = Azure::ServiceFabric::V7_0_0_42::Models::BackupScheduleDescription
    ContainerApiResult = Azure::ServiceFabric::V7_0_0_42::Models::ContainerApiResult
    Probe = Azure::ServiceFabric::V7_0_0_42::Models::Probe
    GatewayDestination = Azure::ServiceFabric::V7_0_0_42::Models::GatewayDestination
    ContainerCodePackageProperties = Azure::ServiceFabric::V7_0_0_42::Models::ContainerCodePackageProperties
    DeactivationIntentDescription = Azure::ServiceFabric::V7_0_0_42::Models::DeactivationIntentDescription
    PropertyBatchInfo = Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchInfo
    HttpRouteMatchPath = Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteMatchPath
    LoadMetricReport = Azure::ServiceFabric::V7_0_0_42::Models::LoadMetricReport
    HttpRouteMatchRule = Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteMatchRule
    PartitionLoadInformation = Azure::ServiceFabric::V7_0_0_42::Models::PartitionLoadInformation
    HttpRouteConfig = Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteConfig
    ExecutionPolicy = Azure::ServiceFabric::V7_0_0_42::Models::ExecutionPolicy
    HttpConfig = Azure::ServiceFabric::V7_0_0_42::Models::HttpConfig
    AutoScalingTrigger = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingTrigger
    DeployedServiceReplicaInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServiceReplicaInfo
    ClusterUpgradeDescriptionObject = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeDescriptionObject
    PagedGatewayResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedGatewayResourceDescriptionList
    FailedUpgradeDomainProgressObject = Azure::ServiceFabric::V7_0_0_42::Models::FailedUpgradeDomainProgressObject
    ImageRegistryCredential = Azure::ServiceFabric::V7_0_0_42::Models::ImageRegistryCredential
    ClusterUpgradeProgressObject = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeProgressObject
    EntityKindHealthStateCount = Azure::ServiceFabric::V7_0_0_42::Models::EntityKindHealthStateCount
    ClusterConfigurationUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ClusterConfigurationUpgradeDescription
    EntityHealth = Azure::ServiceFabric::V7_0_0_42::Models::EntityHealth
    UpgradeOrchestrationServiceState = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeOrchestrationServiceState
    EntityHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::EntityHealthStateChunk
    EntityHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::EntityHealthStateChunkList
    ServiceUpgradeProgress = Azure::ServiceFabric::V7_0_0_42::Models::ServiceUpgradeProgress
    EnvironmentVariable = Azure::ServiceFabric::V7_0_0_42::Models::EnvironmentVariable
    AutoScalingMechanism = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMechanism
    FabricCodeVersionInfo = Azure::ServiceFabric::V7_0_0_42::Models::FabricCodeVersionInfo
    UnprovisionApplicationTypeDescriptionInfo = Azure::ServiceFabric::V7_0_0_42::Models::UnprovisionApplicationTypeDescriptionInfo
    ClusterConfigurationUpgradeStatusInfo = Azure::ServiceFabric::V7_0_0_42::Models::ClusterConfigurationUpgradeStatusInfo
    CodePackageEntryPointStatistics = Azure::ServiceFabric::V7_0_0_42::Models::CodePackageEntryPointStatistics
    Setting = Azure::ServiceFabric::V7_0_0_42::Models::Setting
    CodePackageEntryPoint = Azure::ServiceFabric::V7_0_0_42::Models::CodePackageEntryPoint
    NodeDeactivationTaskId = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationTaskId
    DeployedCodePackageInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedCodePackageInfo
    NodeDeactivationInfo = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationInfo
    ChaosContext = Azure::ServiceFabric::V7_0_0_42::Models::ChaosContext
    UploadSessionInfo = Azure::ServiceFabric::V7_0_0_42::Models::UploadSessionInfo
    ChaosTargetFilter = Azure::ServiceFabric::V7_0_0_42::Models::ChaosTargetFilter
    NodeInfo = Azure::ServiceFabric::V7_0_0_42::Models::NodeInfo
    ChaosParameters = Azure::ServiceFabric::V7_0_0_42::Models::ChaosParameters
    NodeLoadInfo = Azure::ServiceFabric::V7_0_0_42::Models::NodeLoadInfo
    Chaos = Azure::ServiceFabric::V7_0_0_42::Models::Chaos
    PagedApplicationInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedApplicationInfoList
    ChaosParametersDictionaryItem = Azure::ServiceFabric::V7_0_0_42::Models::ChaosParametersDictionaryItem
    PagedNodeInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedNodeInfoList
    ChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosEvent
    ServicePartitionInfo = Azure::ServiceFabric::V7_0_0_42::Models::ServicePartitionInfo
    ChaosEventWrapper = Azure::ServiceFabric::V7_0_0_42::Models::ChaosEventWrapper
    ReplicaInfo = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaInfo
    ChaosEventsSegment = Azure::ServiceFabric::V7_0_0_42::Models::ChaosEventsSegment
    ServiceInfo = Azure::ServiceFabric::V7_0_0_42::Models::ServiceInfo
    ChaosScheduleJobActiveDaysOfWeek = Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleJobActiveDaysOfWeek
    RepairTaskUpdateHealthPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskUpdateHealthPolicyDescription
    TimeOfDay = Azure::ServiceFabric::V7_0_0_42::Models::TimeOfDay
    RepairTaskCancelDescription = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskCancelDescription
    TimeRange = Azure::ServiceFabric::V7_0_0_42::Models::TimeRange
    RepairTask = Azure::ServiceFabric::V7_0_0_42::Models::RepairTask
    ChaosScheduleJob = Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleJob
    ProvisionFabricDescription = Azure::ServiceFabric::V7_0_0_42::Models::ProvisionFabricDescription
    ChaosSchedule = Azure::ServiceFabric::V7_0_0_42::Models::ChaosSchedule
    RepairTargetDescriptionBase = Azure::ServiceFabric::V7_0_0_42::Models::RepairTargetDescriptionBase
    ChaosScheduleDescription = Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleDescription
    UnprovisionFabricDescription = Azure::ServiceFabric::V7_0_0_42::Models::UnprovisionFabricDescription
    AutoScalingPolicy = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingPolicy
    ClusterUpgradeHealthPolicyObject = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeHealthPolicyObject
    ServiceIdentity = Azure::ServiceFabric::V7_0_0_42::Models::ServiceIdentity
    RollingUpgradeUpdateDescription = Azure::ServiceFabric::V7_0_0_42::Models::RollingUpgradeUpdateDescription
    ServiceResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceResourceDescription
    EndpointProperties = Azure::ServiceFabric::V7_0_0_42::Models::EndpointProperties
    PropertyBatchDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchDescriptionList
    NodeImpact = Azure::ServiceFabric::V7_0_0_42::Models::NodeImpact
    PropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchOperation
    PagedBackupEntityList = Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupEntityList
    PropertyDescription = Azure::ServiceFabric::V7_0_0_42::Models::PropertyDescription
    ResourceLimits = Azure::ServiceFabric::V7_0_0_42::Models::ResourceLimits
    ApplicationCapacityDescription = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationCapacityDescription
    SecretResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::SecretResourceDescription
    ManagedApplicationIdentity = Azure::ServiceFabric::V7_0_0_42::Models::ManagedApplicationIdentity
    ServiceTypeHealthPolicy = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeHealthPolicy
    ManagedApplicationIdentityDescription = Azure::ServiceFabric::V7_0_0_42::Models::ManagedApplicationIdentityDescription
    ApplicationHealthPolicies = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthPolicies
    ApplicationDescription = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationDescription
    SecretValueProperties = Azure::ServiceFabric::V7_0_0_42::Models::SecretValueProperties
    ComposeDeploymentStatusInfo = Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentStatusInfo
    PagedSecretValueResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedSecretValueResourceDescriptionList
    RegistryCredential = Azure::ServiceFabric::V7_0_0_42::Models::RegistryCredential
    VolumeReference = Azure::ServiceFabric::V7_0_0_42::Models::VolumeReference
    ComposeDeploymentUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentUpgradeDescription
    ServiceHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthStateFilter
    ComposeDeploymentUpgradeProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentUpgradeProgressInfo
    ApplicationParameter = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationParameter
    PagedComposeDeploymentStatusInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedComposeDeploymentStatusInfoList
    ApplicationNameInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationNameInfo
    CreateComposeDeploymentDescription = Azure::ServiceFabric::V7_0_0_42::Models::CreateComposeDeploymentDescription
    ApplicationTypeInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeInfo
    DeployedServicePackageInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageInfo
    ApplicationUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeDescription
    ServiceCorrelationDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceCorrelationDescription
    NodeUpgradeProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::NodeUpgradeProgressInfo
    PartitionSchemeDescription = Azure::ServiceFabric::V7_0_0_42::Models::PartitionSchemeDescription
    ClusterConfiguration = Azure::ServiceFabric::V7_0_0_42::Models::ClusterConfiguration
    PagedPropertyInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedPropertyInfoList
    NetworkResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::NetworkResourceDescription
    PropertyInfo = Azure::ServiceFabric::V7_0_0_42::Models::PropertyInfo
    NodeHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthStateFilter
    PropertyMetadata = Azure::ServiceFabric::V7_0_0_42::Models::PropertyMetadata
    ClusterManifest = Azure::ServiceFabric::V7_0_0_42::Models::ClusterManifest
    ScalingTriggerDescription = Azure::ServiceFabric::V7_0_0_42::Models::ScalingTriggerDescription
    ContainerApiRequestBody = Azure::ServiceFabric::V7_0_0_42::Models::ContainerApiRequestBody
    ScalingMechanismDescription = Azure::ServiceFabric::V7_0_0_42::Models::ScalingMechanismDescription
    ConfigParameterOverride = Azure::ServiceFabric::V7_0_0_42::Models::ConfigParameterOverride
    ScalingPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ScalingPolicyDescription
    HttpRouteMatchHeader = Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteMatchHeader
    ServiceDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceDescription
    HttpHostConfig = Azure::ServiceFabric::V7_0_0_42::Models::HttpHostConfig
    DiagnosticsSinkProperties = Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsSinkProperties
    ReconfigurationInformation = Azure::ServiceFabric::V7_0_0_42::Models::ReconfigurationInformation
    DiagnosticsDescription = Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsDescription
    HealthStateCount = Azure::ServiceFabric::V7_0_0_42::Models::HealthStateCount
    ReplicatorQueueStatus = Azure::ServiceFabric::V7_0_0_42::Models::ReplicatorQueueStatus
    EntityHealthState = Azure::ServiceFabric::V7_0_0_42::Models::EntityHealthState
    FabricErrorError = Azure::ServiceFabric::V7_0_0_42::Models::FabricErrorError
    FabricEvent = Azure::ServiceFabric::V7_0_0_42::Models::FabricEvent
    ContainerLogs = Azure::ServiceFabric::V7_0_0_42::Models::ContainerLogs
    HealthInformation = Azure::ServiceFabric::V7_0_0_42::Models::HealthInformation
    AadMetadataObject = Azure::ServiceFabric::V7_0_0_42::Models::AadMetadataObject
    NodeDeactivationTask = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationTask
    UploadSession = Azure::ServiceFabric::V7_0_0_42::Models::UploadSession
    ApplicationResourceUpgradeProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationResourceUpgradeProgressInfo
    NodeLoadMetricInformation = Azure::ServiceFabric::V7_0_0_42::Models::NodeLoadMetricInformation
    PagedDeployedApplicationInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedDeployedApplicationInfoList
    PagedApplicationResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedApplicationResourceDescriptionList
    PagedServicePartitionInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedServicePartitionInfoList
    ApplicationResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationResourceDescription
    PagedServiceInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedServiceInfoList
    PagedServiceReplicaDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedServiceReplicaDescriptionList
    RepairTaskApproveDescription = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskApproveDescription
    LoadMetricReportInfo = Azure::ServiceFabric::V7_0_0_42::Models::LoadMetricReportInfo
    ProvisionApplicationTypeDescriptionBase = Azure::ServiceFabric::V7_0_0_42::Models::ProvisionApplicationTypeDescriptionBase
    DeployedServiceReplicaDetailInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServiceReplicaDetailInfo
    ResumeClusterUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ResumeClusterUpgradeDescription
    PagedServiceResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedServiceResourceDescriptionList
    UpdateClusterUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::UpdateClusterUpgradeDescription
    ServiceReplicaProperties = Azure::ServiceFabric::V7_0_0_42::Models::ServiceReplicaProperties
    GetBackupByStorageQueryDescription = Azure::ServiceFabric::V7_0_0_42::Models::GetBackupByStorageQueryDescription
    ServiceProperties = Azure::ServiceFabric::V7_0_0_42::Models::ServiceProperties
    ResourceRequirements = Azure::ServiceFabric::V7_0_0_42::Models::ResourceRequirements
    ReplicaStatusBase = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaStatusBase
    ApplicationHealthPolicy = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthPolicy
    ServiceUpdateDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceUpdateDescription
    SecretValueResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::SecretValueResourceDescription
    AutoScalingMetric = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMetric
    ReplicaHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthStateFilter
    IdentityDescription = Azure::ServiceFabric::V7_0_0_42::Models::IdentityDescription
    ApplicationMetricDescription = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationMetricDescription
    FileVersion = Azure::ServiceFabric::V7_0_0_42::Models::FileVersion
    ApplicationTypeManifest = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeManifest
    DiskInfo = Azure::ServiceFabric::V7_0_0_42::Models::DiskInfo
    FailureUpgradeDomainProgressInfo = Azure::ServiceFabric::V7_0_0_42::Models::FailureUpgradeDomainProgressInfo
    FileInfo = Azure::ServiceFabric::V7_0_0_42::Models::FileInfo
    PagedNetworkResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedNetworkResourceDescriptionList
    FolderInfo = Azure::ServiceFabric::V7_0_0_42::Models::FolderInfo
    ClusterLoadInfo = Azure::ServiceFabric::V7_0_0_42::Models::ClusterLoadInfo
    FolderSizeInfo = Azure::ServiceFabric::V7_0_0_42::Models::FolderSizeInfo
    TcpConfig = Azure::ServiceFabric::V7_0_0_42::Models::TcpConfig
    UsageInfo = Azure::ServiceFabric::V7_0_0_42::Models::UsageInfo
    GatewayResourceDescription = Azure::ServiceFabric::V7_0_0_42::Models::GatewayResourceDescription
    ImageStoreContent = Azure::ServiceFabric::V7_0_0_42::Models::ImageStoreContent
    HealthStatistics = Azure::ServiceFabric::V7_0_0_42::Models::HealthStatistics
    ImageStoreCopyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ImageStoreCopyDescription
    FabricConfigVersionInfo = Azure::ServiceFabric::V7_0_0_42::Models::FabricConfigVersionInfo
    ImageStoreInfo = Azure::ServiceFabric::V7_0_0_42::Models::ImageStoreInfo
    UploadChunkRange = Azure::ServiceFabric::V7_0_0_42::Models::UploadChunkRange
    RestartDeployedCodePackageDescription = Azure::ServiceFabric::V7_0_0_42::Models::RestartDeployedCodePackageDescription
    PartitionInformation = Azure::ServiceFabric::V7_0_0_42::Models::PartitionInformation
    DeployedServiceTypeInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServiceTypeInfo
    RepairTaskDeleteDescription = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskDeleteDescription
    ResolvedServiceEndpoint = Azure::ServiceFabric::V7_0_0_42::Models::ResolvedServiceEndpoint
    RepairImpactDescriptionBase = Azure::ServiceFabric::V7_0_0_42::Models::RepairImpactDescriptionBase
    ResolvedServicePartition = Azure::ServiceFabric::V7_0_0_42::Models::ResolvedServicePartition
    ResourceRequests = Azure::ServiceFabric::V7_0_0_42::Models::ResourceRequests
    SelectedPartition = Azure::ServiceFabric::V7_0_0_42::Models::SelectedPartition
    HealthEvaluationWrapper = Azure::ServiceFabric::V7_0_0_42::Models::HealthEvaluationWrapper
    InvokeDataLossResult = Azure::ServiceFabric::V7_0_0_42::Models::InvokeDataLossResult
    VolumeProviderParametersAzureFile = Azure::ServiceFabric::V7_0_0_42::Models::VolumeProviderParametersAzureFile
    InvokeQuorumLossResult = Azure::ServiceFabric::V7_0_0_42::Models::InvokeQuorumLossResult
    PagedVolumeResourceDescriptionList = Azure::ServiceFabric::V7_0_0_42::Models::PagedVolumeResourceDescriptionList
    NodeResult = Azure::ServiceFabric::V7_0_0_42::Models::NodeResult
    NodeId = Azure::ServiceFabric::V7_0_0_42::Models::NodeId
    NodeTransitionResult = Azure::ServiceFabric::V7_0_0_42::Models::NodeTransitionResult
    ContainerApiResponse = Azure::ServiceFabric::V7_0_0_42::Models::ContainerApiResponse
    NodeTransitionProgress = Azure::ServiceFabric::V7_0_0_42::Models::NodeTransitionProgress
    UnplacedReplicaInformation = Azure::ServiceFabric::V7_0_0_42::Models::UnplacedReplicaInformation
    OperationStatus = Azure::ServiceFabric::V7_0_0_42::Models::OperationStatus
    ContainerLabel = Azure::ServiceFabric::V7_0_0_42::Models::ContainerLabel
    PartitionDataLossProgress = Azure::ServiceFabric::V7_0_0_42::Models::PartitionDataLossProgress
    PagedReplicaInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedReplicaInfoList
    PartitionQuorumLossProgress = Azure::ServiceFabric::V7_0_0_42::Models::PartitionQuorumLossProgress
    StartClusterUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::StartClusterUpgradeDescription
    RestartPartitionResult = Azure::ServiceFabric::V7_0_0_42::Models::RestartPartitionResult
    SecretValue = Azure::ServiceFabric::V7_0_0_42::Models::SecretValue
    PartitionRestartProgress = Azure::ServiceFabric::V7_0_0_42::Models::PartitionRestartProgress
    SafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::SafetyCheck
    PackageSharingPolicyInfo = Azure::ServiceFabric::V7_0_0_42::Models::PackageSharingPolicyInfo
    DeployedApplicationInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationInfo
    DeployServicePackageToNodeDescription = Azure::ServiceFabric::V7_0_0_42::Models::DeployServicePackageToNodeDescription
    RepairTaskUpdateInfo = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskUpdateInfo
    ResumeApplicationUpgradeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ResumeApplicationUpgradeDescription
    EnableBackupDescription = Azure::ServiceFabric::V7_0_0_42::Models::EnableBackupDescription
    ApplicationUpgradeUpdateDescription = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeUpdateDescription
    ClusterHealthChunkQueryDescription = Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthChunkQueryDescription
    NameDescription = Azure::ServiceFabric::V7_0_0_42::Models::NameDescription
    RepairTaskHistory = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskHistory
    PagedSubNameInfoList = Azure::ServiceFabric::V7_0_0_42::Models::PagedSubNameInfoList
    Epoch = Azure::ServiceFabric::V7_0_0_42::Models::Epoch
    PropertyValue = Azure::ServiceFabric::V7_0_0_42::Models::PropertyValue
    DeployedApplicationHealthStateFilter = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthStateFilter
    IdentityItemDescription = Azure::ServiceFabric::V7_0_0_42::Models::IdentityItemDescription
    ApplicationEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationEvent
    ServiceHealthState = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthState
    DeployedApplicationHealthState = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthState
    ApplicationHealth = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealth
    ApplicationHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthEvaluation
    ApplicationHealthState = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthState
    ReplicaHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthStateChunk
    PartitionHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthStateChunk
    ServiceHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthStateChunk
    DeployedServicePackageHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthStateChunk
    DeployedApplicationHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthStateChunk
    ApplicationHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthStateChunk
    ApplicationHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthStateChunkList
    ApplicationsHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationsHealthEvaluation
    ApplicationTypeApplicationsHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeApplicationsHealthEvaluation
    ClusterEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterEvent
    NodeHealthState = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthState
    ClusterHealth = Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealth
    NodeHealthStateChunk = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthStateChunk
    NodeHealthStateChunkList = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthStateChunkList
    ContainerInstanceEvent = Azure::ServiceFabric::V7_0_0_42::Models::ContainerInstanceEvent
    DeltaNodesCheckHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::DeltaNodesCheckHealthEvaluation
    DeployedServicePackageHealthState = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthState
    DeployedApplicationHealth = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealth
    DeployedApplicationHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthEvaluation
    DeployedApplicationsHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationsHealthEvaluation
    DeployedServicePackageHealth = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealth
    DeployedServicePackageHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthEvaluation
    DeployedServicePackagesHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackagesHealthEvaluation
    DeployedStatefulServiceReplicaInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatefulServiceReplicaInfo
    DeployedStatelessServiceInstanceInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatelessServiceInstanceInfo
    HealthEvent = Azure::ServiceFabric::V7_0_0_42::Models::HealthEvent
    EventHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::EventHealthEvaluation
    Int64RangePartitionInformation = Azure::ServiceFabric::V7_0_0_42::Models::Int64RangePartitionInformation
    NamedPartitionInformation = Azure::ServiceFabric::V7_0_0_42::Models::NamedPartitionInformation
    NodeEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeEvent
    NodeHealth = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealth
    NodeHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthEvaluation
    NodesHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::NodesHealthEvaluation
    PartitionEvent = Azure::ServiceFabric::V7_0_0_42::Models::PartitionEvent
    PartitionAnalysisEvent = Azure::ServiceFabric::V7_0_0_42::Models::PartitionAnalysisEvent
    ReplicaHealthState = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthState
    PartitionHealth = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealth
    PartitionHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthEvaluation
    PartitionHealthState = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthState
    ProvisionApplicationTypeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ProvisionApplicationTypeDescription
    ExternalStoreProvisionApplicationTypeDescription = Azure::ServiceFabric::V7_0_0_42::Models::ExternalStoreProvisionApplicationTypeDescription
    PartitionSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::PartitionSafetyCheck
    EnsureAvailabilitySafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::EnsureAvailabilitySafetyCheck
    EnsurePartitionQuorumSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::EnsurePartitionQuorumSafetyCheck
    SeedNodeSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::SeedNodeSafetyCheck
    PartitionsHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::PartitionsHealthEvaluation
    ReplicaEvent = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaEvent
    ReplicaHealth = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealth
    ReplicaHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthEvaluation
    ReplicasHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ReplicasHealthEvaluation
    ServiceEvent = Azure::ServiceFabric::V7_0_0_42::Models::ServiceEvent
    ServiceHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthEvaluation
    ServiceHealth = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealth
    ServicePlacementInvalidDomainPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementInvalidDomainPolicyDescription
    ServicePlacementNonPartiallyPlaceServicePolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementNonPartiallyPlaceServicePolicyDescription
    ServicePlacementPreferPrimaryDomainPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementPreferPrimaryDomainPolicyDescription
    ServicePlacementRequiredDomainPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementRequiredDomainPolicyDescription
    ServicePlacementRequireDomainDistributionPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementRequireDomainDistributionPolicyDescription
    ServicesHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::ServicesHealthEvaluation
    SingletonPartitionInformation = Azure::ServiceFabric::V7_0_0_42::Models::SingletonPartitionInformation
    StatefulServiceInfo = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceInfo
    StatefulServicePartitionInfo = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServicePartitionInfo
    StatefulServiceReplicaHealth = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceReplicaHealth
    StatefulServiceReplicaHealthState = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceReplicaHealthState
    StatefulServiceTypeDescription = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceTypeDescription
    StatelessServiceInfo = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInfo
    StatelessServiceInstanceHealth = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInstanceHealth
    StatelessServiceInstanceHealthState = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInstanceHealthState
    StatelessServicePartitionInfo = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServicePartitionInfo
    StatelessServiceTypeDescription = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceTypeDescription
    SystemApplicationHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::SystemApplicationHealthEvaluation
    UpgradeDomainDeltaNodesCheckHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainDeltaNodesCheckHealthEvaluation
    UpgradeDomainNodesHealthEvaluation = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainNodesHealthEvaluation
    WaitForInbuildReplicaSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::WaitForInbuildReplicaSafetyCheck
    WaitForPrimaryPlacementSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::WaitForPrimaryPlacementSafetyCheck
    WaitForPrimarySwapSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::WaitForPrimarySwapSafetyCheck
    WaitForReconfigurationSafetyCheck = Azure::ServiceFabric::V7_0_0_42::Models::WaitForReconfigurationSafetyCheck
    StatefulServiceReplicaInfo = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceReplicaInfo
    StatelessServiceInstanceInfo = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInstanceInfo
    ExecutingFaultsChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::ExecutingFaultsChaosEvent
    StartedChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::StartedChaosEvent
    StoppedChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::StoppedChaosEvent
    TestErrorChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::TestErrorChaosEvent
    ValidationFailedChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::ValidationFailedChaosEvent
    WaitingChaosEvent = Azure::ServiceFabric::V7_0_0_42::Models::WaitingChaosEvent
    NamedPartitionSchemeDescription = Azure::ServiceFabric::V7_0_0_42::Models::NamedPartitionSchemeDescription
    SingletonPartitionSchemeDescription = Azure::ServiceFabric::V7_0_0_42::Models::SingletonPartitionSchemeDescription
    UniformInt64RangePartitionSchemeDescription = Azure::ServiceFabric::V7_0_0_42::Models::UniformInt64RangePartitionSchemeDescription
    StatefulServiceDescription = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceDescription
    StatelessServiceDescription = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceDescription
    PrimaryReplicatorStatus = Azure::ServiceFabric::V7_0_0_42::Models::PrimaryReplicatorStatus
    SecondaryReplicatorStatus = Azure::ServiceFabric::V7_0_0_42::Models::SecondaryReplicatorStatus
    SecondaryActiveReplicatorStatus = Azure::ServiceFabric::V7_0_0_42::Models::SecondaryActiveReplicatorStatus
    SecondaryIdleReplicatorStatus = Azure::ServiceFabric::V7_0_0_42::Models::SecondaryIdleReplicatorStatus
    KeyValueStoreReplicaStatus = Azure::ServiceFabric::V7_0_0_42::Models::KeyValueStoreReplicaStatus
    DeployedStatefulServiceReplicaDetailInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatefulServiceReplicaDetailInfo
    DeployedStatelessServiceInstanceDetailInfo = Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatelessServiceInstanceDetailInfo
    StatefulServiceUpdateDescription = Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceUpdateDescription
    StatelessServiceUpdateDescription = Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceUpdateDescription
    BinaryPropertyValue = Azure::ServiceFabric::V7_0_0_42::Models::BinaryPropertyValue
    Int64PropertyValue = Azure::ServiceFabric::V7_0_0_42::Models::Int64PropertyValue
    DoublePropertyValue = Azure::ServiceFabric::V7_0_0_42::Models::DoublePropertyValue
    StringPropertyValue = Azure::ServiceFabric::V7_0_0_42::Models::StringPropertyValue
    GuidPropertyValue = Azure::ServiceFabric::V7_0_0_42::Models::GuidPropertyValue
    CheckExistsPropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::CheckExistsPropertyBatchOperation
    CheckSequencePropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::CheckSequencePropertyBatchOperation
    CheckValuePropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::CheckValuePropertyBatchOperation
    DeletePropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::DeletePropertyBatchOperation
    GetPropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::GetPropertyBatchOperation
    PutPropertyBatchOperation = Azure::ServiceFabric::V7_0_0_42::Models::PutPropertyBatchOperation
    SuccessfulPropertyBatchInfo = Azure::ServiceFabric::V7_0_0_42::Models::SuccessfulPropertyBatchInfo
    FailedPropertyBatchInfo = Azure::ServiceFabric::V7_0_0_42::Models::FailedPropertyBatchInfo
    BasicRetentionPolicyDescription = Azure::ServiceFabric::V7_0_0_42::Models::BasicRetentionPolicyDescription
    ApplicationBackupConfigurationInfo = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationBackupConfigurationInfo
    ServiceBackupConfigurationInfo = Azure::ServiceFabric::V7_0_0_42::Models::ServiceBackupConfigurationInfo
    AzureBlobBackupStorageDescription = Azure::ServiceFabric::V7_0_0_42::Models::AzureBlobBackupStorageDescription
    FileShareBackupStorageDescription = Azure::ServiceFabric::V7_0_0_42::Models::FileShareBackupStorageDescription
    FrequencyBasedBackupScheduleDescription = Azure::ServiceFabric::V7_0_0_42::Models::FrequencyBasedBackupScheduleDescription
    TimeBasedBackupScheduleDescription = Azure::ServiceFabric::V7_0_0_42::Models::TimeBasedBackupScheduleDescription
    PartitionBackupConfigurationInfo = Azure::ServiceFabric::V7_0_0_42::Models::PartitionBackupConfigurationInfo
    ApplicationBackupEntity = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationBackupEntity
    ServiceBackupEntity = Azure::ServiceFabric::V7_0_0_42::Models::ServiceBackupEntity
    PartitionBackupEntity = Azure::ServiceFabric::V7_0_0_42::Models::PartitionBackupEntity
    NodeRepairImpactDescription = Azure::ServiceFabric::V7_0_0_42::Models::NodeRepairImpactDescription
    NodeRepairTargetDescription = Azure::ServiceFabric::V7_0_0_42::Models::NodeRepairTargetDescription
    AveragePartitionLoadScalingTrigger = Azure::ServiceFabric::V7_0_0_42::Models::AveragePartitionLoadScalingTrigger
    AverageServiceLoadScalingTrigger = Azure::ServiceFabric::V7_0_0_42::Models::AverageServiceLoadScalingTrigger
    PartitionInstanceCountScaleMechanism = Azure::ServiceFabric::V7_0_0_42::Models::PartitionInstanceCountScaleMechanism
    AddRemoveIncrementalNamedPartitionScalingMechanism = Azure::ServiceFabric::V7_0_0_42::Models::AddRemoveIncrementalNamedPartitionScalingMechanism
    ApplicationCreatedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationCreatedEvent
    ApplicationDeletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationDeletedEvent
    ApplicationNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationNewHealthReportEvent
    ApplicationHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthReportExpiredEvent
    ApplicationUpgradeCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeCompletedEvent
    ApplicationUpgradeDomainCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeDomainCompletedEvent
    ApplicationUpgradeRollbackCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeRollbackCompletedEvent
    ApplicationUpgradeRollbackStartedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeRollbackStartedEvent
    ApplicationUpgradeStartedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeStartedEvent
    DeployedApplicationNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationNewHealthReportEvent
    DeployedApplicationHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthReportExpiredEvent
    ApplicationProcessExitedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationProcessExitedEvent
    ApplicationContainerInstanceExitedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationContainerInstanceExitedEvent
    NodeAbortedEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeAbortedEvent
    NodeAddedToClusterEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeAddedToClusterEvent
    NodeClosedEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeClosedEvent
    NodeDeactivateCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivateCompletedEvent
    NodeDeactivateStartedEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivateStartedEvent
    NodeDownEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeDownEvent
    NodeNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeNewHealthReportEvent
    NodeHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthReportExpiredEvent
    NodeOpenSucceededEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeOpenSucceededEvent
    NodeOpenFailedEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeOpenFailedEvent
    NodeRemovedFromClusterEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeRemovedFromClusterEvent
    NodeUpEvent = Azure::ServiceFabric::V7_0_0_42::Models::NodeUpEvent
    PartitionNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::PartitionNewHealthReportEvent
    PartitionHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthReportExpiredEvent
    PartitionReconfiguredEvent = Azure::ServiceFabric::V7_0_0_42::Models::PartitionReconfiguredEvent
    PartitionPrimaryMoveAnalysisEvent = Azure::ServiceFabric::V7_0_0_42::Models::PartitionPrimaryMoveAnalysisEvent
    ServiceCreatedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ServiceCreatedEvent
    ServiceDeletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ServiceDeletedEvent
    ServiceNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::ServiceNewHealthReportEvent
    ServiceHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthReportExpiredEvent
    DeployedServicePackageNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageNewHealthReportEvent
    DeployedServicePackageHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthReportExpiredEvent
    StatefulReplicaNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::StatefulReplicaNewHealthReportEvent
    StatefulReplicaHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::StatefulReplicaHealthReportExpiredEvent
    StatelessReplicaNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::StatelessReplicaNewHealthReportEvent
    StatelessReplicaHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::StatelessReplicaHealthReportExpiredEvent
    ClusterNewHealthReportEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterNewHealthReportEvent
    ClusterHealthReportExpiredEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthReportExpiredEvent
    ClusterUpgradeCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeCompletedEvent
    ClusterUpgradeDomainCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeDomainCompletedEvent
    ClusterUpgradeRollbackCompletedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeRollbackCompletedEvent
    ClusterUpgradeRollbackStartedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeRollbackStartedEvent
    ClusterUpgradeStartedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeStartedEvent
    ChaosStoppedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosStoppedEvent
    ChaosStartedEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosStartedEvent
    ChaosCodePackageRestartScheduledEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosCodePackageRestartScheduledEvent
    ChaosReplicaRemovalScheduledEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosReplicaRemovalScheduledEvent
    ChaosPartitionSecondaryMoveScheduledEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosPartitionSecondaryMoveScheduledEvent
    ChaosPartitionPrimaryMoveScheduledEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosPartitionPrimaryMoveScheduledEvent
    ChaosReplicaRestartScheduledEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosReplicaRestartScheduledEvent
    ChaosNodeRestartScheduledEvent = Azure::ServiceFabric::V7_0_0_42::Models::ChaosNodeRestartScheduledEvent
    SecretResourceProperties = Azure::ServiceFabric::V7_0_0_42::Models::SecretResourceProperties
    InlinedValueSecretResourceProperties = Azure::ServiceFabric::V7_0_0_42::Models::InlinedValueSecretResourceProperties
    ApplicationScopedVolume = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolume
    ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
    NetworkResourceProperties = Azure::ServiceFabric::V7_0_0_42::Models::NetworkResourceProperties
    LocalNetworkResourceProperties = Azure::ServiceFabric::V7_0_0_42::Models::LocalNetworkResourceProperties
    AzureInternalMonitoringPipelineSinkDescription = Azure::ServiceFabric::V7_0_0_42::Models::AzureInternalMonitoringPipelineSinkDescription
    AddRemoveReplicaScalingMechanism = Azure::ServiceFabric::V7_0_0_42::Models::AddRemoveReplicaScalingMechanism
    AutoScalingResourceMetric = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingResourceMetric
    RunToCompletionExecutionPolicy = Azure::ServiceFabric::V7_0_0_42::Models::RunToCompletionExecutionPolicy
    ServiceReplicaDescription = Azure::ServiceFabric::V7_0_0_42::Models::ServiceReplicaDescription
    AverageLoadScalingTrigger = Azure::ServiceFabric::V7_0_0_42::Models::AverageLoadScalingTrigger
    HealthState = Azure::ServiceFabric::V7_0_0_42::Models::HealthState
    FabricErrorCodes = Azure::ServiceFabric::V7_0_0_42::Models::FabricErrorCodes
    ApplicationDefinitionKind = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationDefinitionKind
    ApplicationStatus = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationStatus
    ApplicationPackageCleanupPolicy = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationPackageCleanupPolicy
    ApplicationTypeDefinitionKind = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeDefinitionKind
    ApplicationTypeStatus = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeStatus
    UpgradeKind = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeKind
    UpgradeMode = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeMode
    UpgradeSortOrder = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeSortOrder
    FailureAction = Azure::ServiceFabric::V7_0_0_42::Models::FailureAction
    UpgradeDomainState = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainState
    UpgradeState = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeState
    NodeUpgradePhase = Azure::ServiceFabric::V7_0_0_42::Models::NodeUpgradePhase
    FailureReason = Azure::ServiceFabric::V7_0_0_42::Models::FailureReason
    DeactivationIntent = Azure::ServiceFabric::V7_0_0_42::Models::DeactivationIntent
    DeployedApplicationStatus = Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationStatus
    ReplicaStatus = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaStatus
    ReplicaRole = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaRole
    ReconfigurationPhase = Azure::ServiceFabric::V7_0_0_42::Models::ReconfigurationPhase
    ReconfigurationType = Azure::ServiceFabric::V7_0_0_42::Models::ReconfigurationType
    EntityKind = Azure::ServiceFabric::V7_0_0_42::Models::EntityKind
    FabricEventKind = Azure::ServiceFabric::V7_0_0_42::Models::FabricEventKind
    HealthEvaluationKind = Azure::ServiceFabric::V7_0_0_42::Models::HealthEvaluationKind
    NodeDeactivationIntent = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationIntent
    NodeDeactivationStatus = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationStatus
    NodeDeactivationTaskType = Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationTaskType
    NodeStatus = Azure::ServiceFabric::V7_0_0_42::Models::NodeStatus
    ServicePartitionStatus = Azure::ServiceFabric::V7_0_0_42::Models::ServicePartitionStatus
    ServiceStatus = Azure::ServiceFabric::V7_0_0_42::Models::ServiceStatus
    ProvisionApplicationTypeKind = Azure::ServiceFabric::V7_0_0_42::Models::ProvisionApplicationTypeKind
    UpgradeType = Azure::ServiceFabric::V7_0_0_42::Models::UpgradeType
    SafetyCheckKind = Azure::ServiceFabric::V7_0_0_42::Models::SafetyCheckKind
    CreateFabricDump = Azure::ServiceFabric::V7_0_0_42::Models::CreateFabricDump
    ServicePackageActivationMode = Azure::ServiceFabric::V7_0_0_42::Models::ServicePackageActivationMode
    ServiceKind = Azure::ServiceFabric::V7_0_0_42::Models::ServiceKind
    ServicePartitionKind = Azure::ServiceFabric::V7_0_0_42::Models::ServicePartitionKind
    ServicePlacementPolicyType = Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementPolicyType
    ServiceLoadMetricWeight = Azure::ServiceFabric::V7_0_0_42::Models::ServiceLoadMetricWeight
    HostType = Azure::ServiceFabric::V7_0_0_42::Models::HostType
    HostIsolationMode = Azure::ServiceFabric::V7_0_0_42::Models::HostIsolationMode
    DeploymentStatus = Azure::ServiceFabric::V7_0_0_42::Models::DeploymentStatus
    EntryPointStatus = Azure::ServiceFabric::V7_0_0_42::Models::EntryPointStatus
    ChaosStatus = Azure::ServiceFabric::V7_0_0_42::Models::ChaosStatus
    ChaosScheduleStatus = Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleStatus
    ChaosEventKind = Azure::ServiceFabric::V7_0_0_42::Models::ChaosEventKind
    ComposeDeploymentStatus = Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentStatus
    ComposeDeploymentUpgradeState = Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentUpgradeState
    ServiceCorrelationScheme = Azure::ServiceFabric::V7_0_0_42::Models::ServiceCorrelationScheme
    MoveCost = Azure::ServiceFabric::V7_0_0_42::Models::MoveCost
    PartitionScheme = Azure::ServiceFabric::V7_0_0_42::Models::PartitionScheme
    ServiceOperationName = Azure::ServiceFabric::V7_0_0_42::Models::ServiceOperationName
    ReplicatorOperationName = Azure::ServiceFabric::V7_0_0_42::Models::ReplicatorOperationName
    PartitionAccessStatus = Azure::ServiceFabric::V7_0_0_42::Models::PartitionAccessStatus
    FabricReplicaStatus = Azure::ServiceFabric::V7_0_0_42::Models::FabricReplicaStatus
    ReplicaKind = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaKind
    ServiceTypeRegistrationStatus = Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeRegistrationStatus
    ServiceEndpointRole = Azure::ServiceFabric::V7_0_0_42::Models::ServiceEndpointRole
    OperationState = Azure::ServiceFabric::V7_0_0_42::Models::OperationState
    OperationType = Azure::ServiceFabric::V7_0_0_42::Models::OperationType
    PackageSharingPolicyScope = Azure::ServiceFabric::V7_0_0_42::Models::PackageSharingPolicyScope
    PropertyValueKind = Azure::ServiceFabric::V7_0_0_42::Models::PropertyValueKind
    PropertyBatchOperationKind = Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchOperationKind
    PropertyBatchInfoKind = Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchInfoKind
    RetentionPolicyType = Azure::ServiceFabric::V7_0_0_42::Models::RetentionPolicyType
    BackupStorageKind = Azure::ServiceFabric::V7_0_0_42::Models::BackupStorageKind
    BackupScheduleKind = Azure::ServiceFabric::V7_0_0_42::Models::BackupScheduleKind
    BackupPolicyScope = Azure::ServiceFabric::V7_0_0_42::Models::BackupPolicyScope
    BackupSuspensionScope = Azure::ServiceFabric::V7_0_0_42::Models::BackupSuspensionScope
    RestoreState = Azure::ServiceFabric::V7_0_0_42::Models::RestoreState
    BackupType = Azure::ServiceFabric::V7_0_0_42::Models::BackupType
    BackupScheduleFrequencyType = Azure::ServiceFabric::V7_0_0_42::Models::BackupScheduleFrequencyType
    DayOfWeek = Azure::ServiceFabric::V7_0_0_42::Models::DayOfWeek
    BackupState = Azure::ServiceFabric::V7_0_0_42::Models::BackupState
    BackupEntityKind = Azure::ServiceFabric::V7_0_0_42::Models::BackupEntityKind
    ImpactLevel = Azure::ServiceFabric::V7_0_0_42::Models::ImpactLevel
    RepairImpactKind = Azure::ServiceFabric::V7_0_0_42::Models::RepairImpactKind
    RepairTargetKind = Azure::ServiceFabric::V7_0_0_42::Models::RepairTargetKind
    State = Azure::ServiceFabric::V7_0_0_42::Models::State
    ResultStatus = Azure::ServiceFabric::V7_0_0_42::Models::ResultStatus
    RepairTaskHealthCheckState = Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskHealthCheckState
    ScalingTriggerKind = Azure::ServiceFabric::V7_0_0_42::Models::ScalingTriggerKind
    ScalingMechanismKind = Azure::ServiceFabric::V7_0_0_42::Models::ScalingMechanismKind
    ResourceStatus = Azure::ServiceFabric::V7_0_0_42::Models::ResourceStatus
    SecretKind = Azure::ServiceFabric::V7_0_0_42::Models::SecretKind
    VolumeProvider = Azure::ServiceFabric::V7_0_0_42::Models::VolumeProvider
    SizeTypes = Azure::ServiceFabric::V7_0_0_42::Models::SizeTypes
    ApplicationScopedVolumeKind = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolumeKind
    NetworkKind = Azure::ServiceFabric::V7_0_0_42::Models::NetworkKind
    HeaderMatchType = Azure::ServiceFabric::V7_0_0_42::Models::HeaderMatchType
    OperatingSystemType = Azure::ServiceFabric::V7_0_0_42::Models::OperatingSystemType
    ImageRegistryPasswordType = Azure::ServiceFabric::V7_0_0_42::Models::ImageRegistryPasswordType
    EnvironmentVariableType = Azure::ServiceFabric::V7_0_0_42::Models::EnvironmentVariableType
    SettingType = Azure::ServiceFabric::V7_0_0_42::Models::SettingType
    Scheme = Azure::ServiceFabric::V7_0_0_42::Models::Scheme
    ApplicationResourceUpgradeState = Azure::ServiceFabric::V7_0_0_42::Models::ApplicationResourceUpgradeState
    RollingUpgradeMode = Azure::ServiceFabric::V7_0_0_42::Models::RollingUpgradeMode
    DiagnosticsSinkKind = Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsSinkKind
    AutoScalingMechanismKind = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMechanismKind
    AutoScalingMetricKind = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMetricKind
    AutoScalingResourceMetricName = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingResourceMetricName
    AutoScalingTriggerKind = Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingTriggerKind
    ExecutionPolicyType = Azure::ServiceFabric::V7_0_0_42::Models::ExecutionPolicyType
    RestartPolicy = Azure::ServiceFabric::V7_0_0_42::Models::RestartPolicy
    NodeStatusFilter = Azure::ServiceFabric::V7_0_0_42::Models::NodeStatusFilter
    ReplicaHealthReportServiceKind = Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthReportServiceKind
    DataLossMode = Azure::ServiceFabric::V7_0_0_42::Models::DataLossMode
    NodeTransitionType = Azure::ServiceFabric::V7_0_0_42::Models::NodeTransitionType
    QuorumLossMode = Azure::ServiceFabric::V7_0_0_42::Models::QuorumLossMode
    RestartPartitionMode = Azure::ServiceFabric::V7_0_0_42::Models::RestartPartitionMode
  end

  #
  # ServiceFabricDataClass
  #
  class ServiceFabricDataClass
    attr_reader :mesh_secret, :mesh_secret_value, :mesh_volume, :mesh_network, :mesh_application, :mesh_service, :mesh_code_package, :mesh_service_replica, :mesh_gateway, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::ServiceFabric::V7_0_0_42::ServiceFabricClientAPIs.new(configurable.credentials, base_url, options)
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
      profile_information = 'Profiles/Latest/ServiceFabric'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def replicator_status
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicatorStatus
    end
    def remote_replicator_acknowledgement_detail
      Azure::ServiceFabric::V7_0_0_42::Models::RemoteReplicatorAcknowledgementDetail
    end
    def fabric_error
      Azure::ServiceFabric::V7_0_0_42::Models::FabricError
    end
    def remote_replicator_acknowledgement_status
      Azure::ServiceFabric::V7_0_0_42::Models::RemoteReplicatorAcknowledgementStatus
    end
    def aad_metadata
      Azure::ServiceFabric::V7_0_0_42::Models::AadMetadata
    end
    def remote_replicator_status
      Azure::ServiceFabric::V7_0_0_42::Models::RemoteReplicatorStatus
    end
    def analysis_event_metadata
      Azure::ServiceFabric::V7_0_0_42::Models::AnalysisEventMetadata
    end
    def upgrade_orchestration_service_state_summary
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeOrchestrationServiceStateSummary
    end
    def application_type_image_store_path
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeImageStorePath
    end
    def diagnostics_ref
      Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsRef
    end
    def restart_node_description
      Azure::ServiceFabric::V7_0_0_42::Models::RestartNodeDescription
    end
    def health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::HealthEvaluation
    end
    def backup_entity
      Azure::ServiceFabric::V7_0_0_42::Models::BackupEntity
    end
    def paged_secret_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedSecretResourceDescriptionList
    end
    def service_from_template_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceFromTemplateDescription
    end
    def service_type_health_policy_map_item
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeHealthPolicyMapItem
    end
    def reliable_collections_ref
      Azure::ServiceFabric::V7_0_0_42::Models::ReliableCollectionsRef
    end
    def application_health_policy_map_item
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthPolicyMapItem
    end
    def backup_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::BackupProgressInfo
    end
    def secret_resource_properties_base
      Azure::ServiceFabric::V7_0_0_42::Models::SecretResourcePropertiesBase
    end
    def service_name_info
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceNameInfo
    end
    def replica_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthStateChunkList
    end
    def container_state
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerState
    end
    def partition_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthStateChunkList
    end
    def container_event
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerEvent
    end
    def service_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthStateChunkList
    end
    def service_placement_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementPolicyDescription
    end
    def deployed_service_package_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthStateChunkList
    end
    def container_instance_view
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerInstanceView
    end
    def deployed_application_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthStateChunkList
    end
    def probe_exec
      Azure::ServiceFabric::V7_0_0_42::Models::ProbeExec
    end
    def application_scoped_volume_creation_parameters
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolumeCreationParameters
    end
    def paged_backup_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupInfoList
    end
    def partition_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthStateFilter
    end
    def backup_info
      Azure::ServiceFabric::V7_0_0_42::Models::BackupInfo
    end
    def deployed_service_package_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthStateFilter
    end
    def service_load_metric_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceLoadMetricDescription
    end
    def application_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthStateFilter
    end
    def service_type_extension_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeExtensionDescription
    end
    def application_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationInfo
    end
    def service_type_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeDescription
    end
    def application_load_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationLoadInfo
    end
    def service_type_info
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeInfo
    end
    def volume_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::VolumeResourceDescription
    end
    def service_type_manifest
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeManifest
    end
    def application_type_health_policy_map_item
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeHealthPolicyMapItem
    end
    def backup_partition_description
      Azure::ServiceFabric::V7_0_0_42::Models::BackupPartitionDescription
    end
    def paged_application_type_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedApplicationTypeInfoList
    end
    def restore_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::RestoreProgressInfo
    end
    def monitoring_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::MonitoringPolicyDescription
    end
    def restore_partition_description
      Azure::ServiceFabric::V7_0_0_42::Models::RestorePartitionDescription
    end
    def upgrade_domain_info
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainInfo
    end
    def paged_backup_configuration_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupConfigurationInfoList
    end
    def safety_check_wrapper
      Azure::ServiceFabric::V7_0_0_42::Models::SafetyCheckWrapper
    end
    def backup_configuration_info
      Azure::ServiceFabric::V7_0_0_42::Models::BackupConfigurationInfo
    end
    def current_upgrade_domain_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::CurrentUpgradeDomainProgressInfo
    end
    def backup_suspension_info
      Azure::ServiceFabric::V7_0_0_42::Models::BackupSuspensionInfo
    end
    def application_upgrade_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeProgressInfo
    end
    def probe_http_get_headers
      Azure::ServiceFabric::V7_0_0_42::Models::ProbeHttpGetHeaders
    end
    def endpoint_ref
      Azure::ServiceFabric::V7_0_0_42::Models::EndpointRef
    end
    def probe_http_get
      Azure::ServiceFabric::V7_0_0_42::Models::ProbeHttpGet
    end
    def network_ref
      Azure::ServiceFabric::V7_0_0_42::Models::NetworkRef
    end
    def disable_backup_description
      Azure::ServiceFabric::V7_0_0_42::Models::DisableBackupDescription
    end
    def network_resource_properties_base
      Azure::ServiceFabric::V7_0_0_42::Models::NetworkResourcePropertiesBase
    end
    def probe_tcp_socket
      Azure::ServiceFabric::V7_0_0_42::Models::ProbeTcpSocket
    end
    def cluster_health_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthChunk
    end
    def paged_backup_policy_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupPolicyDescriptionList
    end
    def cluster_health_policy
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthPolicy
    end
    def backup_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::BackupPolicyDescription
    end
    def cluster_health_policies
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthPolicies
    end
    def retention_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::RetentionPolicyDescription
    end
    def load_metric_information
      Azure::ServiceFabric::V7_0_0_42::Models::LoadMetricInformation
    end
    def backup_storage_description
      Azure::ServiceFabric::V7_0_0_42::Models::BackupStorageDescription
    end
    def cluster_version
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterVersion
    end
    def backup_schedule_description
      Azure::ServiceFabric::V7_0_0_42::Models::BackupScheduleDescription
    end
    def container_api_result
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerApiResult
    end
    def probe
      Azure::ServiceFabric::V7_0_0_42::Models::Probe
    end
    def gateway_destination
      Azure::ServiceFabric::V7_0_0_42::Models::GatewayDestination
    end
    def container_code_package_properties
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerCodePackageProperties
    end
    def deactivation_intent_description
      Azure::ServiceFabric::V7_0_0_42::Models::DeactivationIntentDescription
    end
    def property_batch_info
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchInfo
    end
    def http_route_match_path
      Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteMatchPath
    end
    def load_metric_report
      Azure::ServiceFabric::V7_0_0_42::Models::LoadMetricReport
    end
    def http_route_match_rule
      Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteMatchRule
    end
    def partition_load_information
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionLoadInformation
    end
    def http_route_config
      Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteConfig
    end
    def execution_policy
      Azure::ServiceFabric::V7_0_0_42::Models::ExecutionPolicy
    end
    def http_config
      Azure::ServiceFabric::V7_0_0_42::Models::HttpConfig
    end
    def auto_scaling_trigger
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingTrigger
    end
    def deployed_service_replica_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServiceReplicaInfo
    end
    def cluster_upgrade_description_object
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeDescriptionObject
    end
    def paged_gateway_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedGatewayResourceDescriptionList
    end
    def failed_upgrade_domain_progress_object
      Azure::ServiceFabric::V7_0_0_42::Models::FailedUpgradeDomainProgressObject
    end
    def image_registry_credential
      Azure::ServiceFabric::V7_0_0_42::Models::ImageRegistryCredential
    end
    def cluster_upgrade_progress_object
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeProgressObject
    end
    def entity_kind_health_state_count
      Azure::ServiceFabric::V7_0_0_42::Models::EntityKindHealthStateCount
    end
    def cluster_configuration_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterConfigurationUpgradeDescription
    end
    def entity_health
      Azure::ServiceFabric::V7_0_0_42::Models::EntityHealth
    end
    def upgrade_orchestration_service_state
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeOrchestrationServiceState
    end
    def entity_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::EntityHealthStateChunk
    end
    def entity_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::EntityHealthStateChunkList
    end
    def service_upgrade_progress
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceUpgradeProgress
    end
    def environment_variable
      Azure::ServiceFabric::V7_0_0_42::Models::EnvironmentVariable
    end
    def auto_scaling_mechanism
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMechanism
    end
    def fabric_code_version_info
      Azure::ServiceFabric::V7_0_0_42::Models::FabricCodeVersionInfo
    end
    def unprovision_application_type_description_info
      Azure::ServiceFabric::V7_0_0_42::Models::UnprovisionApplicationTypeDescriptionInfo
    end
    def cluster_configuration_upgrade_status_info
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterConfigurationUpgradeStatusInfo
    end
    def code_package_entry_point_statistics
      Azure::ServiceFabric::V7_0_0_42::Models::CodePackageEntryPointStatistics
    end
    def setting
      Azure::ServiceFabric::V7_0_0_42::Models::Setting
    end
    def code_package_entry_point
      Azure::ServiceFabric::V7_0_0_42::Models::CodePackageEntryPoint
    end
    def node_deactivation_task_id
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationTaskId
    end
    def deployed_code_package_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedCodePackageInfo
    end
    def node_deactivation_info
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationInfo
    end
    def chaos_context
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosContext
    end
    def upload_session_info
      Azure::ServiceFabric::V7_0_0_42::Models::UploadSessionInfo
    end
    def chaos_target_filter
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosTargetFilter
    end
    def node_info
      Azure::ServiceFabric::V7_0_0_42::Models::NodeInfo
    end
    def chaos_parameters
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosParameters
    end
    def node_load_info
      Azure::ServiceFabric::V7_0_0_42::Models::NodeLoadInfo
    end
    def chaos
      Azure::ServiceFabric::V7_0_0_42::Models::Chaos
    end
    def paged_application_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedApplicationInfoList
    end
    def chaos_parameters_dictionary_item
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosParametersDictionaryItem
    end
    def paged_node_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedNodeInfoList
    end
    def chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosEvent
    end
    def service_partition_info
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePartitionInfo
    end
    def chaos_event_wrapper
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosEventWrapper
    end
    def replica_info
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaInfo
    end
    def chaos_events_segment
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosEventsSegment
    end
    def service_info
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceInfo
    end
    def chaos_schedule_job_active_days_of_week
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleJobActiveDaysOfWeek
    end
    def repair_task_update_health_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskUpdateHealthPolicyDescription
    end
    def time_of_day
      Azure::ServiceFabric::V7_0_0_42::Models::TimeOfDay
    end
    def repair_task_cancel_description
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskCancelDescription
    end
    def time_range
      Azure::ServiceFabric::V7_0_0_42::Models::TimeRange
    end
    def repair_task
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTask
    end
    def chaos_schedule_job
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleJob
    end
    def provision_fabric_description
      Azure::ServiceFabric::V7_0_0_42::Models::ProvisionFabricDescription
    end
    def chaos_schedule
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosSchedule
    end
    def repair_target_description_base
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTargetDescriptionBase
    end
    def chaos_schedule_description
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleDescription
    end
    def unprovision_fabric_description
      Azure::ServiceFabric::V7_0_0_42::Models::UnprovisionFabricDescription
    end
    def auto_scaling_policy
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingPolicy
    end
    def cluster_upgrade_health_policy_object
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeHealthPolicyObject
    end
    def service_identity
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceIdentity
    end
    def rolling_upgrade_update_description
      Azure::ServiceFabric::V7_0_0_42::Models::RollingUpgradeUpdateDescription
    end
    def service_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceResourceDescription
    end
    def endpoint_properties
      Azure::ServiceFabric::V7_0_0_42::Models::EndpointProperties
    end
    def property_batch_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchDescriptionList
    end
    def node_impact
      Azure::ServiceFabric::V7_0_0_42::Models::NodeImpact
    end
    def property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchOperation
    end
    def paged_backup_entity_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedBackupEntityList
    end
    def property_description
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyDescription
    end
    def resource_limits
      Azure::ServiceFabric::V7_0_0_42::Models::ResourceLimits
    end
    def application_capacity_description
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationCapacityDescription
    end
    def secret_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::SecretResourceDescription
    end
    def managed_application_identity
      Azure::ServiceFabric::V7_0_0_42::Models::ManagedApplicationIdentity
    end
    def service_type_health_policy
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeHealthPolicy
    end
    def managed_application_identity_description
      Azure::ServiceFabric::V7_0_0_42::Models::ManagedApplicationIdentityDescription
    end
    def application_health_policies
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthPolicies
    end
    def application_description
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationDescription
    end
    def secret_value_properties
      Azure::ServiceFabric::V7_0_0_42::Models::SecretValueProperties
    end
    def compose_deployment_status_info
      Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentStatusInfo
    end
    def paged_secret_value_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedSecretValueResourceDescriptionList
    end
    def registry_credential
      Azure::ServiceFabric::V7_0_0_42::Models::RegistryCredential
    end
    def volume_reference
      Azure::ServiceFabric::V7_0_0_42::Models::VolumeReference
    end
    def compose_deployment_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentUpgradeDescription
    end
    def service_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthStateFilter
    end
    def compose_deployment_upgrade_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentUpgradeProgressInfo
    end
    def application_parameter
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationParameter
    end
    def paged_compose_deployment_status_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedComposeDeploymentStatusInfoList
    end
    def application_name_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationNameInfo
    end
    def create_compose_deployment_description
      Azure::ServiceFabric::V7_0_0_42::Models::CreateComposeDeploymentDescription
    end
    def application_type_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeInfo
    end
    def deployed_service_package_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageInfo
    end
    def application_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeDescription
    end
    def service_correlation_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceCorrelationDescription
    end
    def node_upgrade_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::NodeUpgradeProgressInfo
    end
    def partition_scheme_description
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionSchemeDescription
    end
    def cluster_configuration
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterConfiguration
    end
    def paged_property_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedPropertyInfoList
    end
    def network_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::NetworkResourceDescription
    end
    def property_info
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyInfo
    end
    def node_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthStateFilter
    end
    def property_metadata
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyMetadata
    end
    def cluster_manifest
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterManifest
    end
    def scaling_trigger_description
      Azure::ServiceFabric::V7_0_0_42::Models::ScalingTriggerDescription
    end
    def container_api_request_body
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerApiRequestBody
    end
    def scaling_mechanism_description
      Azure::ServiceFabric::V7_0_0_42::Models::ScalingMechanismDescription
    end
    def config_parameter_override
      Azure::ServiceFabric::V7_0_0_42::Models::ConfigParameterOverride
    end
    def scaling_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ScalingPolicyDescription
    end
    def http_route_match_header
      Azure::ServiceFabric::V7_0_0_42::Models::HttpRouteMatchHeader
    end
    def service_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceDescription
    end
    def http_host_config
      Azure::ServiceFabric::V7_0_0_42::Models::HttpHostConfig
    end
    def diagnostics_sink_properties
      Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsSinkProperties
    end
    def reconfiguration_information
      Azure::ServiceFabric::V7_0_0_42::Models::ReconfigurationInformation
    end
    def diagnostics_description
      Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsDescription
    end
    def health_state_count
      Azure::ServiceFabric::V7_0_0_42::Models::HealthStateCount
    end
    def replicator_queue_status
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicatorQueueStatus
    end
    def entity_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::EntityHealthState
    end
    def fabric_error_error
      Azure::ServiceFabric::V7_0_0_42::Models::FabricErrorError
    end
    def fabric_event
      Azure::ServiceFabric::V7_0_0_42::Models::FabricEvent
    end
    def container_logs
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerLogs
    end
    def health_information
      Azure::ServiceFabric::V7_0_0_42::Models::HealthInformation
    end
    def aad_metadata_object
      Azure::ServiceFabric::V7_0_0_42::Models::AadMetadataObject
    end
    def node_deactivation_task
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationTask
    end
    def upload_session
      Azure::ServiceFabric::V7_0_0_42::Models::UploadSession
    end
    def application_resource_upgrade_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationResourceUpgradeProgressInfo
    end
    def node_load_metric_information
      Azure::ServiceFabric::V7_0_0_42::Models::NodeLoadMetricInformation
    end
    def paged_deployed_application_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedDeployedApplicationInfoList
    end
    def paged_application_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedApplicationResourceDescriptionList
    end
    def paged_service_partition_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedServicePartitionInfoList
    end
    def application_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationResourceDescription
    end
    def paged_service_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedServiceInfoList
    end
    def paged_service_replica_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedServiceReplicaDescriptionList
    end
    def repair_task_approve_description
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskApproveDescription
    end
    def load_metric_report_info
      Azure::ServiceFabric::V7_0_0_42::Models::LoadMetricReportInfo
    end
    def provision_application_type_description_base
      Azure::ServiceFabric::V7_0_0_42::Models::ProvisionApplicationTypeDescriptionBase
    end
    def deployed_service_replica_detail_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServiceReplicaDetailInfo
    end
    def resume_cluster_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::ResumeClusterUpgradeDescription
    end
    def paged_service_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedServiceResourceDescriptionList
    end
    def update_cluster_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::UpdateClusterUpgradeDescription
    end
    def service_replica_properties
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceReplicaProperties
    end
    def get_backup_by_storage_query_description
      Azure::ServiceFabric::V7_0_0_42::Models::GetBackupByStorageQueryDescription
    end
    def service_properties
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceProperties
    end
    def resource_requirements
      Azure::ServiceFabric::V7_0_0_42::Models::ResourceRequirements
    end
    def replica_status_base
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaStatusBase
    end
    def application_health_policy
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthPolicy
    end
    def service_update_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceUpdateDescription
    end
    def secret_value_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::SecretValueResourceDescription
    end
    def auto_scaling_metric
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMetric
    end
    def replica_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthStateFilter
    end
    def identity_description
      Azure::ServiceFabric::V7_0_0_42::Models::IdentityDescription
    end
    def application_metric_description
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationMetricDescription
    end
    def file_version
      Azure::ServiceFabric::V7_0_0_42::Models::FileVersion
    end
    def application_type_manifest
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeManifest
    end
    def disk_info
      Azure::ServiceFabric::V7_0_0_42::Models::DiskInfo
    end
    def failure_upgrade_domain_progress_info
      Azure::ServiceFabric::V7_0_0_42::Models::FailureUpgradeDomainProgressInfo
    end
    def file_info
      Azure::ServiceFabric::V7_0_0_42::Models::FileInfo
    end
    def paged_network_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedNetworkResourceDescriptionList
    end
    def folder_info
      Azure::ServiceFabric::V7_0_0_42::Models::FolderInfo
    end
    def cluster_load_info
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterLoadInfo
    end
    def folder_size_info
      Azure::ServiceFabric::V7_0_0_42::Models::FolderSizeInfo
    end
    def tcp_config
      Azure::ServiceFabric::V7_0_0_42::Models::TcpConfig
    end
    def usage_info
      Azure::ServiceFabric::V7_0_0_42::Models::UsageInfo
    end
    def gateway_resource_description
      Azure::ServiceFabric::V7_0_0_42::Models::GatewayResourceDescription
    end
    def image_store_content
      Azure::ServiceFabric::V7_0_0_42::Models::ImageStoreContent
    end
    def health_statistics
      Azure::ServiceFabric::V7_0_0_42::Models::HealthStatistics
    end
    def image_store_copy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ImageStoreCopyDescription
    end
    def fabric_config_version_info
      Azure::ServiceFabric::V7_0_0_42::Models::FabricConfigVersionInfo
    end
    def image_store_info
      Azure::ServiceFabric::V7_0_0_42::Models::ImageStoreInfo
    end
    def upload_chunk_range
      Azure::ServiceFabric::V7_0_0_42::Models::UploadChunkRange
    end
    def restart_deployed_code_package_description
      Azure::ServiceFabric::V7_0_0_42::Models::RestartDeployedCodePackageDescription
    end
    def partition_information
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionInformation
    end
    def deployed_service_type_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServiceTypeInfo
    end
    def repair_task_delete_description
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskDeleteDescription
    end
    def resolved_service_endpoint
      Azure::ServiceFabric::V7_0_0_42::Models::ResolvedServiceEndpoint
    end
    def repair_impact_description_base
      Azure::ServiceFabric::V7_0_0_42::Models::RepairImpactDescriptionBase
    end
    def resolved_service_partition
      Azure::ServiceFabric::V7_0_0_42::Models::ResolvedServicePartition
    end
    def resource_requests
      Azure::ServiceFabric::V7_0_0_42::Models::ResourceRequests
    end
    def selected_partition
      Azure::ServiceFabric::V7_0_0_42::Models::SelectedPartition
    end
    def health_evaluation_wrapper
      Azure::ServiceFabric::V7_0_0_42::Models::HealthEvaluationWrapper
    end
    def invoke_data_loss_result
      Azure::ServiceFabric::V7_0_0_42::Models::InvokeDataLossResult
    end
    def volume_provider_parameters_azure_file
      Azure::ServiceFabric::V7_0_0_42::Models::VolumeProviderParametersAzureFile
    end
    def invoke_quorum_loss_result
      Azure::ServiceFabric::V7_0_0_42::Models::InvokeQuorumLossResult
    end
    def paged_volume_resource_description_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedVolumeResourceDescriptionList
    end
    def node_result
      Azure::ServiceFabric::V7_0_0_42::Models::NodeResult
    end
    def node_id
      Azure::ServiceFabric::V7_0_0_42::Models::NodeId
    end
    def node_transition_result
      Azure::ServiceFabric::V7_0_0_42::Models::NodeTransitionResult
    end
    def container_api_response
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerApiResponse
    end
    def node_transition_progress
      Azure::ServiceFabric::V7_0_0_42::Models::NodeTransitionProgress
    end
    def unplaced_replica_information
      Azure::ServiceFabric::V7_0_0_42::Models::UnplacedReplicaInformation
    end
    def operation_status
      Azure::ServiceFabric::V7_0_0_42::Models::OperationStatus
    end
    def container_label
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerLabel
    end
    def partition_data_loss_progress
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionDataLossProgress
    end
    def paged_replica_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedReplicaInfoList
    end
    def partition_quorum_loss_progress
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionQuorumLossProgress
    end
    def start_cluster_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::StartClusterUpgradeDescription
    end
    def restart_partition_result
      Azure::ServiceFabric::V7_0_0_42::Models::RestartPartitionResult
    end
    def secret_value
      Azure::ServiceFabric::V7_0_0_42::Models::SecretValue
    end
    def partition_restart_progress
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionRestartProgress
    end
    def safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::SafetyCheck
    end
    def package_sharing_policy_info
      Azure::ServiceFabric::V7_0_0_42::Models::PackageSharingPolicyInfo
    end
    def deployed_application_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationInfo
    end
    def deploy_service_package_to_node_description
      Azure::ServiceFabric::V7_0_0_42::Models::DeployServicePackageToNodeDescription
    end
    def repair_task_update_info
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskUpdateInfo
    end
    def resume_application_upgrade_description
      Azure::ServiceFabric::V7_0_0_42::Models::ResumeApplicationUpgradeDescription
    end
    def enable_backup_description
      Azure::ServiceFabric::V7_0_0_42::Models::EnableBackupDescription
    end
    def application_upgrade_update_description
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeUpdateDescription
    end
    def cluster_health_chunk_query_description
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthChunkQueryDescription
    end
    def name_description
      Azure::ServiceFabric::V7_0_0_42::Models::NameDescription
    end
    def repair_task_history
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskHistory
    end
    def paged_sub_name_info_list
      Azure::ServiceFabric::V7_0_0_42::Models::PagedSubNameInfoList
    end
    def epoch
      Azure::ServiceFabric::V7_0_0_42::Models::Epoch
    end
    def property_value
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyValue
    end
    def deployed_application_health_state_filter
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthStateFilter
    end
    def identity_item_description
      Azure::ServiceFabric::V7_0_0_42::Models::IdentityItemDescription
    end
    def application_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationEvent
    end
    def service_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthState
    end
    def deployed_application_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthState
    end
    def application_health
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealth
    end
    def application_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthEvaluation
    end
    def application_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthState
    end
    def replica_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthStateChunk
    end
    def partition_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthStateChunk
    end
    def service_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthStateChunk
    end
    def deployed_service_package_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthStateChunk
    end
    def deployed_application_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthStateChunk
    end
    def application_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthStateChunk
    end
    def application_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthStateChunkList
    end
    def applications_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationsHealthEvaluation
    end
    def application_type_applications_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeApplicationsHealthEvaluation
    end
    def cluster_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterEvent
    end
    def node_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthState
    end
    def cluster_health
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealth
    end
    def node_health_state_chunk
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthStateChunk
    end
    def node_health_state_chunk_list
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthStateChunkList
    end
    def container_instance_event
      Azure::ServiceFabric::V7_0_0_42::Models::ContainerInstanceEvent
    end
    def delta_nodes_check_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::DeltaNodesCheckHealthEvaluation
    end
    def deployed_service_package_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthState
    end
    def deployed_application_health
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealth
    end
    def deployed_application_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthEvaluation
    end
    def deployed_applications_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationsHealthEvaluation
    end
    def deployed_service_package_health
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealth
    end
    def deployed_service_package_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthEvaluation
    end
    def deployed_service_packages_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackagesHealthEvaluation
    end
    def deployed_stateful_service_replica_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatefulServiceReplicaInfo
    end
    def deployed_stateless_service_instance_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatelessServiceInstanceInfo
    end
    def health_event
      Azure::ServiceFabric::V7_0_0_42::Models::HealthEvent
    end
    def event_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::EventHealthEvaluation
    end
    def int64_range_partition_information
      Azure::ServiceFabric::V7_0_0_42::Models::Int64RangePartitionInformation
    end
    def named_partition_information
      Azure::ServiceFabric::V7_0_0_42::Models::NamedPartitionInformation
    end
    def node_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeEvent
    end
    def node_health
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealth
    end
    def node_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthEvaluation
    end
    def nodes_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::NodesHealthEvaluation
    end
    def partition_event
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionEvent
    end
    def partition_analysis_event
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionAnalysisEvent
    end
    def replica_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthState
    end
    def partition_health
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealth
    end
    def partition_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthEvaluation
    end
    def partition_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthState
    end
    def provision_application_type_description
      Azure::ServiceFabric::V7_0_0_42::Models::ProvisionApplicationTypeDescription
    end
    def external_store_provision_application_type_description
      Azure::ServiceFabric::V7_0_0_42::Models::ExternalStoreProvisionApplicationTypeDescription
    end
    def partition_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionSafetyCheck
    end
    def ensure_availability_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::EnsureAvailabilitySafetyCheck
    end
    def ensure_partition_quorum_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::EnsurePartitionQuorumSafetyCheck
    end
    def seed_node_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::SeedNodeSafetyCheck
    end
    def partitions_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionsHealthEvaluation
    end
    def replica_event
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaEvent
    end
    def replica_health
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealth
    end
    def replica_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthEvaluation
    end
    def replicas_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicasHealthEvaluation
    end
    def service_event
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceEvent
    end
    def service_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthEvaluation
    end
    def service_health
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealth
    end
    def service_placement_invalid_domain_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementInvalidDomainPolicyDescription
    end
    def service_placement_non_partially_place_service_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementNonPartiallyPlaceServicePolicyDescription
    end
    def service_placement_prefer_primary_domain_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementPreferPrimaryDomainPolicyDescription
    end
    def service_placement_required_domain_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementRequiredDomainPolicyDescription
    end
    def service_placement_require_domain_distribution_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementRequireDomainDistributionPolicyDescription
    end
    def services_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::ServicesHealthEvaluation
    end
    def singleton_partition_information
      Azure::ServiceFabric::V7_0_0_42::Models::SingletonPartitionInformation
    end
    def stateful_service_info
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceInfo
    end
    def stateful_service_partition_info
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServicePartitionInfo
    end
    def stateful_service_replica_health
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceReplicaHealth
    end
    def stateful_service_replica_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceReplicaHealthState
    end
    def stateful_service_type_description
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceTypeDescription
    end
    def stateless_service_info
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInfo
    end
    def stateless_service_instance_health
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInstanceHealth
    end
    def stateless_service_instance_health_state
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInstanceHealthState
    end
    def stateless_service_partition_info
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServicePartitionInfo
    end
    def stateless_service_type_description
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceTypeDescription
    end
    def system_application_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::SystemApplicationHealthEvaluation
    end
    def upgrade_domain_delta_nodes_check_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainDeltaNodesCheckHealthEvaluation
    end
    def upgrade_domain_nodes_health_evaluation
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainNodesHealthEvaluation
    end
    def wait_for_inbuild_replica_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::WaitForInbuildReplicaSafetyCheck
    end
    def wait_for_primary_placement_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::WaitForPrimaryPlacementSafetyCheck
    end
    def wait_for_primary_swap_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::WaitForPrimarySwapSafetyCheck
    end
    def wait_for_reconfiguration_safety_check
      Azure::ServiceFabric::V7_0_0_42::Models::WaitForReconfigurationSafetyCheck
    end
    def stateful_service_replica_info
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceReplicaInfo
    end
    def stateless_service_instance_info
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceInstanceInfo
    end
    def executing_faults_chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::ExecutingFaultsChaosEvent
    end
    def started_chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::StartedChaosEvent
    end
    def stopped_chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::StoppedChaosEvent
    end
    def test_error_chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::TestErrorChaosEvent
    end
    def validation_failed_chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::ValidationFailedChaosEvent
    end
    def waiting_chaos_event
      Azure::ServiceFabric::V7_0_0_42::Models::WaitingChaosEvent
    end
    def named_partition_scheme_description
      Azure::ServiceFabric::V7_0_0_42::Models::NamedPartitionSchemeDescription
    end
    def singleton_partition_scheme_description
      Azure::ServiceFabric::V7_0_0_42::Models::SingletonPartitionSchemeDescription
    end
    def uniform_int64_range_partition_scheme_description
      Azure::ServiceFabric::V7_0_0_42::Models::UniformInt64RangePartitionSchemeDescription
    end
    def stateful_service_description
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceDescription
    end
    def stateless_service_description
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceDescription
    end
    def primary_replicator_status
      Azure::ServiceFabric::V7_0_0_42::Models::PrimaryReplicatorStatus
    end
    def secondary_replicator_status
      Azure::ServiceFabric::V7_0_0_42::Models::SecondaryReplicatorStatus
    end
    def secondary_active_replicator_status
      Azure::ServiceFabric::V7_0_0_42::Models::SecondaryActiveReplicatorStatus
    end
    def secondary_idle_replicator_status
      Azure::ServiceFabric::V7_0_0_42::Models::SecondaryIdleReplicatorStatus
    end
    def key_value_store_replica_status
      Azure::ServiceFabric::V7_0_0_42::Models::KeyValueStoreReplicaStatus
    end
    def deployed_stateful_service_replica_detail_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatefulServiceReplicaDetailInfo
    end
    def deployed_stateless_service_instance_detail_info
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedStatelessServiceInstanceDetailInfo
    end
    def stateful_service_update_description
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulServiceUpdateDescription
    end
    def stateless_service_update_description
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessServiceUpdateDescription
    end
    def binary_property_value
      Azure::ServiceFabric::V7_0_0_42::Models::BinaryPropertyValue
    end
    def int64_property_value
      Azure::ServiceFabric::V7_0_0_42::Models::Int64PropertyValue
    end
    def double_property_value
      Azure::ServiceFabric::V7_0_0_42::Models::DoublePropertyValue
    end
    def string_property_value
      Azure::ServiceFabric::V7_0_0_42::Models::StringPropertyValue
    end
    def guid_property_value
      Azure::ServiceFabric::V7_0_0_42::Models::GuidPropertyValue
    end
    def check_exists_property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::CheckExistsPropertyBatchOperation
    end
    def check_sequence_property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::CheckSequencePropertyBatchOperation
    end
    def check_value_property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::CheckValuePropertyBatchOperation
    end
    def delete_property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::DeletePropertyBatchOperation
    end
    def get_property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::GetPropertyBatchOperation
    end
    def put_property_batch_operation
      Azure::ServiceFabric::V7_0_0_42::Models::PutPropertyBatchOperation
    end
    def successful_property_batch_info
      Azure::ServiceFabric::V7_0_0_42::Models::SuccessfulPropertyBatchInfo
    end
    def failed_property_batch_info
      Azure::ServiceFabric::V7_0_0_42::Models::FailedPropertyBatchInfo
    end
    def basic_retention_policy_description
      Azure::ServiceFabric::V7_0_0_42::Models::BasicRetentionPolicyDescription
    end
    def application_backup_configuration_info
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationBackupConfigurationInfo
    end
    def service_backup_configuration_info
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceBackupConfigurationInfo
    end
    def azure_blob_backup_storage_description
      Azure::ServiceFabric::V7_0_0_42::Models::AzureBlobBackupStorageDescription
    end
    def file_share_backup_storage_description
      Azure::ServiceFabric::V7_0_0_42::Models::FileShareBackupStorageDescription
    end
    def frequency_based_backup_schedule_description
      Azure::ServiceFabric::V7_0_0_42::Models::FrequencyBasedBackupScheduleDescription
    end
    def time_based_backup_schedule_description
      Azure::ServiceFabric::V7_0_0_42::Models::TimeBasedBackupScheduleDescription
    end
    def partition_backup_configuration_info
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionBackupConfigurationInfo
    end
    def application_backup_entity
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationBackupEntity
    end
    def service_backup_entity
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceBackupEntity
    end
    def partition_backup_entity
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionBackupEntity
    end
    def node_repair_impact_description
      Azure::ServiceFabric::V7_0_0_42::Models::NodeRepairImpactDescription
    end
    def node_repair_target_description
      Azure::ServiceFabric::V7_0_0_42::Models::NodeRepairTargetDescription
    end
    def average_partition_load_scaling_trigger
      Azure::ServiceFabric::V7_0_0_42::Models::AveragePartitionLoadScalingTrigger
    end
    def average_service_load_scaling_trigger
      Azure::ServiceFabric::V7_0_0_42::Models::AverageServiceLoadScalingTrigger
    end
    def partition_instance_count_scale_mechanism
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionInstanceCountScaleMechanism
    end
    def add_remove_incremental_named_partition_scaling_mechanism
      Azure::ServiceFabric::V7_0_0_42::Models::AddRemoveIncrementalNamedPartitionScalingMechanism
    end
    def application_created_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationCreatedEvent
    end
    def application_deleted_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationDeletedEvent
    end
    def application_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationNewHealthReportEvent
    end
    def application_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationHealthReportExpiredEvent
    end
    def application_upgrade_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeCompletedEvent
    end
    def application_upgrade_domain_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeDomainCompletedEvent
    end
    def application_upgrade_rollback_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeRollbackCompletedEvent
    end
    def application_upgrade_rollback_started_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeRollbackStartedEvent
    end
    def application_upgrade_started_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationUpgradeStartedEvent
    end
    def deployed_application_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationNewHealthReportEvent
    end
    def deployed_application_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationHealthReportExpiredEvent
    end
    def application_process_exited_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationProcessExitedEvent
    end
    def application_container_instance_exited_event
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationContainerInstanceExitedEvent
    end
    def node_aborted_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeAbortedEvent
    end
    def node_added_to_cluster_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeAddedToClusterEvent
    end
    def node_closed_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeClosedEvent
    end
    def node_deactivate_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivateCompletedEvent
    end
    def node_deactivate_started_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivateStartedEvent
    end
    def node_down_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDownEvent
    end
    def node_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeNewHealthReportEvent
    end
    def node_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeHealthReportExpiredEvent
    end
    def node_open_succeeded_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeOpenSucceededEvent
    end
    def node_open_failed_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeOpenFailedEvent
    end
    def node_removed_from_cluster_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeRemovedFromClusterEvent
    end
    def node_up_event
      Azure::ServiceFabric::V7_0_0_42::Models::NodeUpEvent
    end
    def partition_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionNewHealthReportEvent
    end
    def partition_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionHealthReportExpiredEvent
    end
    def partition_reconfigured_event
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionReconfiguredEvent
    end
    def partition_primary_move_analysis_event
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionPrimaryMoveAnalysisEvent
    end
    def service_created_event
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceCreatedEvent
    end
    def service_deleted_event
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceDeletedEvent
    end
    def service_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceNewHealthReportEvent
    end
    def service_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceHealthReportExpiredEvent
    end
    def deployed_service_package_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageNewHealthReportEvent
    end
    def deployed_service_package_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedServicePackageHealthReportExpiredEvent
    end
    def stateful_replica_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulReplicaNewHealthReportEvent
    end
    def stateful_replica_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::StatefulReplicaHealthReportExpiredEvent
    end
    def stateless_replica_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessReplicaNewHealthReportEvent
    end
    def stateless_replica_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::StatelessReplicaHealthReportExpiredEvent
    end
    def cluster_new_health_report_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterNewHealthReportEvent
    end
    def cluster_health_report_expired_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterHealthReportExpiredEvent
    end
    def cluster_upgrade_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeCompletedEvent
    end
    def cluster_upgrade_domain_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeDomainCompletedEvent
    end
    def cluster_upgrade_rollback_completed_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeRollbackCompletedEvent
    end
    def cluster_upgrade_rollback_started_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeRollbackStartedEvent
    end
    def cluster_upgrade_started_event
      Azure::ServiceFabric::V7_0_0_42::Models::ClusterUpgradeStartedEvent
    end
    def chaos_stopped_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosStoppedEvent
    end
    def chaos_started_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosStartedEvent
    end
    def chaos_code_package_restart_scheduled_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosCodePackageRestartScheduledEvent
    end
    def chaos_replica_removal_scheduled_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosReplicaRemovalScheduledEvent
    end
    def chaos_partition_secondary_move_scheduled_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosPartitionSecondaryMoveScheduledEvent
    end
    def chaos_partition_primary_move_scheduled_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosPartitionPrimaryMoveScheduledEvent
    end
    def chaos_replica_restart_scheduled_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosReplicaRestartScheduledEvent
    end
    def chaos_node_restart_scheduled_event
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosNodeRestartScheduledEvent
    end
    def secret_resource_properties
      Azure::ServiceFabric::V7_0_0_42::Models::SecretResourceProperties
    end
    def inlined_value_secret_resource_properties
      Azure::ServiceFabric::V7_0_0_42::Models::InlinedValueSecretResourceProperties
    end
    def application_scoped_volume
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolume
    end
    def application_scoped_volume_creation_parameters_service_fabric_volume_disk
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
    end
    def network_resource_properties
      Azure::ServiceFabric::V7_0_0_42::Models::NetworkResourceProperties
    end
    def local_network_resource_properties
      Azure::ServiceFabric::V7_0_0_42::Models::LocalNetworkResourceProperties
    end
    def azure_internal_monitoring_pipeline_sink_description
      Azure::ServiceFabric::V7_0_0_42::Models::AzureInternalMonitoringPipelineSinkDescription
    end
    def add_remove_replica_scaling_mechanism
      Azure::ServiceFabric::V7_0_0_42::Models::AddRemoveReplicaScalingMechanism
    end
    def auto_scaling_resource_metric
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingResourceMetric
    end
    def run_to_completion_execution_policy
      Azure::ServiceFabric::V7_0_0_42::Models::RunToCompletionExecutionPolicy
    end
    def service_replica_description
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceReplicaDescription
    end
    def average_load_scaling_trigger
      Azure::ServiceFabric::V7_0_0_42::Models::AverageLoadScalingTrigger
    end
    def health_state
      Azure::ServiceFabric::V7_0_0_42::Models::HealthState
    end
    def fabric_error_codes
      Azure::ServiceFabric::V7_0_0_42::Models::FabricErrorCodes
    end
    def application_definition_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationDefinitionKind
    end
    def application_status
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationStatus
    end
    def application_package_cleanup_policy
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationPackageCleanupPolicy
    end
    def application_type_definition_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeDefinitionKind
    end
    def application_type_status
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationTypeStatus
    end
    def upgrade_kind
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeKind
    end
    def upgrade_mode
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeMode
    end
    def upgrade_sort_order
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeSortOrder
    end
    def failure_action
      Azure::ServiceFabric::V7_0_0_42::Models::FailureAction
    end
    def upgrade_domain_state
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeDomainState
    end
    def upgrade_state
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeState
    end
    def node_upgrade_phase
      Azure::ServiceFabric::V7_0_0_42::Models::NodeUpgradePhase
    end
    def failure_reason
      Azure::ServiceFabric::V7_0_0_42::Models::FailureReason
    end
    def deactivation_intent
      Azure::ServiceFabric::V7_0_0_42::Models::DeactivationIntent
    end
    def deployed_application_status
      Azure::ServiceFabric::V7_0_0_42::Models::DeployedApplicationStatus
    end
    def replica_status
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaStatus
    end
    def replica_role
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaRole
    end
    def reconfiguration_phase
      Azure::ServiceFabric::V7_0_0_42::Models::ReconfigurationPhase
    end
    def reconfiguration_type
      Azure::ServiceFabric::V7_0_0_42::Models::ReconfigurationType
    end
    def entity_kind
      Azure::ServiceFabric::V7_0_0_42::Models::EntityKind
    end
    def fabric_event_kind
      Azure::ServiceFabric::V7_0_0_42::Models::FabricEventKind
    end
    def health_evaluation_kind
      Azure::ServiceFabric::V7_0_0_42::Models::HealthEvaluationKind
    end
    def node_deactivation_intent
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationIntent
    end
    def node_deactivation_status
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationStatus
    end
    def node_deactivation_task_type
      Azure::ServiceFabric::V7_0_0_42::Models::NodeDeactivationTaskType
    end
    def node_status
      Azure::ServiceFabric::V7_0_0_42::Models::NodeStatus
    end
    def service_partition_status
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePartitionStatus
    end
    def service_status
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceStatus
    end
    def provision_application_type_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ProvisionApplicationTypeKind
    end
    def upgrade_type
      Azure::ServiceFabric::V7_0_0_42::Models::UpgradeType
    end
    def safety_check_kind
      Azure::ServiceFabric::V7_0_0_42::Models::SafetyCheckKind
    end
    def create_fabric_dump
      Azure::ServiceFabric::V7_0_0_42::Models::CreateFabricDump
    end
    def service_package_activation_mode
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePackageActivationMode
    end
    def service_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceKind
    end
    def service_partition_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePartitionKind
    end
    def service_placement_policy_type
      Azure::ServiceFabric::V7_0_0_42::Models::ServicePlacementPolicyType
    end
    def service_load_metric_weight
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceLoadMetricWeight
    end
    def host_type
      Azure::ServiceFabric::V7_0_0_42::Models::HostType
    end
    def host_isolation_mode
      Azure::ServiceFabric::V7_0_0_42::Models::HostIsolationMode
    end
    def deployment_status
      Azure::ServiceFabric::V7_0_0_42::Models::DeploymentStatus
    end
    def entry_point_status
      Azure::ServiceFabric::V7_0_0_42::Models::EntryPointStatus
    end
    def chaos_status
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosStatus
    end
    def chaos_schedule_status
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosScheduleStatus
    end
    def chaos_event_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ChaosEventKind
    end
    def compose_deployment_status
      Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentStatus
    end
    def compose_deployment_upgrade_state
      Azure::ServiceFabric::V7_0_0_42::Models::ComposeDeploymentUpgradeState
    end
    def service_correlation_scheme
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceCorrelationScheme
    end
    def move_cost
      Azure::ServiceFabric::V7_0_0_42::Models::MoveCost
    end
    def partition_scheme
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionScheme
    end
    def service_operation_name
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceOperationName
    end
    def replicator_operation_name
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicatorOperationName
    end
    def partition_access_status
      Azure::ServiceFabric::V7_0_0_42::Models::PartitionAccessStatus
    end
    def fabric_replica_status
      Azure::ServiceFabric::V7_0_0_42::Models::FabricReplicaStatus
    end
    def replica_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaKind
    end
    def service_type_registration_status
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceTypeRegistrationStatus
    end
    def service_endpoint_role
      Azure::ServiceFabric::V7_0_0_42::Models::ServiceEndpointRole
    end
    def operation_state
      Azure::ServiceFabric::V7_0_0_42::Models::OperationState
    end
    def operation_type
      Azure::ServiceFabric::V7_0_0_42::Models::OperationType
    end
    def package_sharing_policy_scope
      Azure::ServiceFabric::V7_0_0_42::Models::PackageSharingPolicyScope
    end
    def property_value_kind
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyValueKind
    end
    def property_batch_operation_kind
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchOperationKind
    end
    def property_batch_info_kind
      Azure::ServiceFabric::V7_0_0_42::Models::PropertyBatchInfoKind
    end
    def retention_policy_type
      Azure::ServiceFabric::V7_0_0_42::Models::RetentionPolicyType
    end
    def backup_storage_kind
      Azure::ServiceFabric::V7_0_0_42::Models::BackupStorageKind
    end
    def backup_schedule_kind
      Azure::ServiceFabric::V7_0_0_42::Models::BackupScheduleKind
    end
    def backup_policy_scope
      Azure::ServiceFabric::V7_0_0_42::Models::BackupPolicyScope
    end
    def backup_suspension_scope
      Azure::ServiceFabric::V7_0_0_42::Models::BackupSuspensionScope
    end
    def restore_state
      Azure::ServiceFabric::V7_0_0_42::Models::RestoreState
    end
    def backup_type
      Azure::ServiceFabric::V7_0_0_42::Models::BackupType
    end
    def backup_schedule_frequency_type
      Azure::ServiceFabric::V7_0_0_42::Models::BackupScheduleFrequencyType
    end
    def day_of_week
      Azure::ServiceFabric::V7_0_0_42::Models::DayOfWeek
    end
    def backup_state
      Azure::ServiceFabric::V7_0_0_42::Models::BackupState
    end
    def backup_entity_kind
      Azure::ServiceFabric::V7_0_0_42::Models::BackupEntityKind
    end
    def impact_level
      Azure::ServiceFabric::V7_0_0_42::Models::ImpactLevel
    end
    def repair_impact_kind
      Azure::ServiceFabric::V7_0_0_42::Models::RepairImpactKind
    end
    def repair_target_kind
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTargetKind
    end
    def state
      Azure::ServiceFabric::V7_0_0_42::Models::State
    end
    def result_status
      Azure::ServiceFabric::V7_0_0_42::Models::ResultStatus
    end
    def repair_task_health_check_state
      Azure::ServiceFabric::V7_0_0_42::Models::RepairTaskHealthCheckState
    end
    def scaling_trigger_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ScalingTriggerKind
    end
    def scaling_mechanism_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ScalingMechanismKind
    end
    def resource_status
      Azure::ServiceFabric::V7_0_0_42::Models::ResourceStatus
    end
    def secret_kind
      Azure::ServiceFabric::V7_0_0_42::Models::SecretKind
    end
    def volume_provider
      Azure::ServiceFabric::V7_0_0_42::Models::VolumeProvider
    end
    def size_types
      Azure::ServiceFabric::V7_0_0_42::Models::SizeTypes
    end
    def application_scoped_volume_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationScopedVolumeKind
    end
    def network_kind
      Azure::ServiceFabric::V7_0_0_42::Models::NetworkKind
    end
    def header_match_type
      Azure::ServiceFabric::V7_0_0_42::Models::HeaderMatchType
    end
    def operating_system_type
      Azure::ServiceFabric::V7_0_0_42::Models::OperatingSystemType
    end
    def image_registry_password_type
      Azure::ServiceFabric::V7_0_0_42::Models::ImageRegistryPasswordType
    end
    def environment_variable_type
      Azure::ServiceFabric::V7_0_0_42::Models::EnvironmentVariableType
    end
    def setting_type
      Azure::ServiceFabric::V7_0_0_42::Models::SettingType
    end
    def scheme
      Azure::ServiceFabric::V7_0_0_42::Models::Scheme
    end
    def application_resource_upgrade_state
      Azure::ServiceFabric::V7_0_0_42::Models::ApplicationResourceUpgradeState
    end
    def rolling_upgrade_mode
      Azure::ServiceFabric::V7_0_0_42::Models::RollingUpgradeMode
    end
    def diagnostics_sink_kind
      Azure::ServiceFabric::V7_0_0_42::Models::DiagnosticsSinkKind
    end
    def auto_scaling_mechanism_kind
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMechanismKind
    end
    def auto_scaling_metric_kind
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingMetricKind
    end
    def auto_scaling_resource_metric_name
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingResourceMetricName
    end
    def auto_scaling_trigger_kind
      Azure::ServiceFabric::V7_0_0_42::Models::AutoScalingTriggerKind
    end
    def execution_policy_type
      Azure::ServiceFabric::V7_0_0_42::Models::ExecutionPolicyType
    end
    def restart_policy
      Azure::ServiceFabric::V7_0_0_42::Models::RestartPolicy
    end
    def node_status_filter
      Azure::ServiceFabric::V7_0_0_42::Models::NodeStatusFilter
    end
    def replica_health_report_service_kind
      Azure::ServiceFabric::V7_0_0_42::Models::ReplicaHealthReportServiceKind
    end
    def data_loss_mode
      Azure::ServiceFabric::V7_0_0_42::Models::DataLossMode
    end
    def node_transition_type
      Azure::ServiceFabric::V7_0_0_42::Models::NodeTransitionType
    end
    def quorum_loss_mode
      Azure::ServiceFabric::V7_0_0_42::Models::QuorumLossMode
    end
    def restart_partition_mode
      Azure::ServiceFabric::V7_0_0_42::Models::RestartPartitionMode
    end
  end
end
