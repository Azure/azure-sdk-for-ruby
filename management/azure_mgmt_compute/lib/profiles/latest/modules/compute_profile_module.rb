# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Compute::Profiles::Latest
  module Mgmt
    ResourceSkus = Azure::Compute::Mgmt::V2019_04_01::ResourceSkus
    Galleries = Azure::Compute::Mgmt::V2019_12_01::Galleries
    GalleryImages = Azure::Compute::Mgmt::V2019_12_01::GalleryImages
    GalleryImageVersions = Azure::Compute::Mgmt::V2019_12_01::GalleryImageVersions
    GalleryApplications = Azure::Compute::Mgmt::V2019_12_01::GalleryApplications
    GalleryApplicationVersions = Azure::Compute::Mgmt::V2019_12_01::GalleryApplicationVersions
    Disks = Azure::Compute::Mgmt::V2020_09_30::Disks
    Snapshots = Azure::Compute::Mgmt::V2020_09_30::Snapshots
    DiskEncryptionSets = Azure::Compute::Mgmt::V2020_09_30::DiskEncryptionSets
    DiskAccesses = Azure::Compute::Mgmt::V2020_09_30::DiskAccesses
    DiskRestorePointOperations = Azure::Compute::Mgmt::V2020_09_30::DiskRestorePointOperations
    CloudServiceRoleInstances = Azure::Compute::Mgmt::V2020_10_01_preview::CloudServiceRoleInstances
    CloudServiceRoles = Azure::Compute::Mgmt::V2020_10_01_preview::CloudServiceRoles
    CloudServices = Azure::Compute::Mgmt::V2020_10_01_preview::CloudServices
    CloudServicesUpdateDomain = Azure::Compute::Mgmt::V2020_10_01_preview::CloudServicesUpdateDomain
    Operations = Azure::Compute::Mgmt::V2020_12_01::Operations
    AvailabilitySets = Azure::Compute::Mgmt::V2020_12_01::AvailabilitySets
    ProximityPlacementGroups = Azure::Compute::Mgmt::V2020_12_01::ProximityPlacementGroups
    DedicatedHostGroups = Azure::Compute::Mgmt::V2020_12_01::DedicatedHostGroups
    DedicatedHosts = Azure::Compute::Mgmt::V2020_12_01::DedicatedHosts
    SshPublicKeys = Azure::Compute::Mgmt::V2020_12_01::SshPublicKeys
    VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineExtensions
    VirtualMachineImages = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineImages
    VirtualMachineImagesEdgeZone = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineImagesEdgeZone
    UsageOperations = Azure::Compute::Mgmt::V2020_12_01::UsageOperations
    VirtualMachines = Azure::Compute::Mgmt::V2020_12_01::VirtualMachines
    VirtualMachineScaleSets = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineScaleSets
    VirtualMachineSizes = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineSizes
    Images = Azure::Compute::Mgmt::V2020_12_01::Images
    VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineScaleSetRollingUpgrades
    VirtualMachineScaleSetVMExtensions = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineScaleSetVMExtensions
    VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineScaleSetVMs
    LogAnalytics = Azure::Compute::Mgmt::V2020_12_01::LogAnalytics
    VirtualMachineRunCommands = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineRunCommands
    VirtualMachineScaleSetVMRunCommands = Azure::Compute::Mgmt::V2020_12_01::VirtualMachineScaleSetVMRunCommands

    module Models
      ResourceSkuRestrictionInfo = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictionInfo
      ResourceSkuRestrictions = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictions
      ResourceSkuCosts = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCosts
      ResourceSkuLocationInfo = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuLocationInfo
      ResourceSkuZoneDetails = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuZoneDetails
      ResourceSku = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSku
      ResourceSkuCapabilities = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCapabilities
      ResourceSkusResult = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkusResult
      ResourceSkuCapacity = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCapacity
      ResourceSkuCapacityScaleType = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCapacityScaleType
      ResourceSkuRestrictionsType = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictionsType
      ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictionsReasonCode
      RegionalReplicationStatus = Azure::Compute::Mgmt::V2019_12_01::Models::RegionalReplicationStatus
      UserArtifactManage = Azure::Compute::Mgmt::V2019_12_01::Models::UserArtifactManage
      ResourceRange = Azure::Compute::Mgmt::V2019_12_01::Models::ResourceRange
      GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionStorageProfile
      Disallowed = Azure::Compute::Mgmt::V2019_12_01::Models::Disallowed
      ImagePurchasePlan = Azure::Compute::Mgmt::V2019_12_01::Models::ImagePurchasePlan
      GalleryIdentifier = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryIdentifier
      EncryptionImages = Azure::Compute::Mgmt::V2019_12_01::Models::EncryptionImages
      UpdateResourceDefinition = Azure::Compute::Mgmt::V2019_12_01::Models::UpdateResourceDefinition
      GalleryApplicationVersionList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionList
      GalleryApplicationList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationList
      GalleryImageVersionList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionList
      GalleryImageList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageList
      GalleryList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryList
      ReplicationStatus = Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationStatus
      GalleryImageIdentifier = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageIdentifier
      GalleryDiskImage = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryDiskImage
      GalleryArtifactSource = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactSource
      ManagedArtifact = Azure::Compute::Mgmt::V2019_12_01::Models::ManagedArtifact
      DiskImageEncryption = Azure::Compute::Mgmt::V2019_12_01::Models::DiskImageEncryption
      GalleryArtifactVersionSource = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactVersionSource
      RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2019_12_01::Models::RecommendedMachineConfiguration
      UserArtifactSource = Azure::Compute::Mgmt::V2019_12_01::Models::UserArtifactSource
      GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactPublishingProfileBase
      TargetRegion = Azure::Compute::Mgmt::V2019_12_01::Models::TargetRegion
      Gallery = Azure::Compute::Mgmt::V2019_12_01::Models::Gallery
      GalleryUpdate = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryUpdate
      GalleryApplication = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplication
      GalleryApplicationUpdate = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationUpdate
      GalleryApplicationVersionPublishingProfile = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionPublishingProfile
      GalleryApplicationVersion = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersion
      GalleryApplicationVersionUpdate = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionUpdate
      GalleryImage = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImage
      GalleryImageUpdate = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageUpdate
      GalleryImageVersionPublishingProfile = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionPublishingProfile
      GalleryOSDiskImage = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryOSDiskImage
      GalleryDataDiskImage = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryDataDiskImage
      GalleryImageVersion = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersion
      GalleryImageVersionUpdate = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionUpdate
      OSDiskImageEncryption = Azure::Compute::Mgmt::V2019_12_01::Models::OSDiskImageEncryption
      DataDiskImageEncryption = Azure::Compute::Mgmt::V2019_12_01::Models::DataDiskImageEncryption
      AggregatedReplicationState = Azure::Compute::Mgmt::V2019_12_01::Models::AggregatedReplicationState
      ReplicationState = Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationState
      StorageAccountType = Azure::Compute::Mgmt::V2019_12_01::Models::StorageAccountType
      HostCaching = Azure::Compute::Mgmt::V2019_12_01::Models::HostCaching
      ReplicationStatusTypes = Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationStatusTypes
      GrantAccessData = Azure::Compute::Mgmt::V2020_09_30::Models::GrantAccessData
      AccessUri = Azure::Compute::Mgmt::V2020_09_30::Models::AccessUri
      ProxyOnlyResource = Azure::Compute::Mgmt::V2020_09_30::Models::ProxyOnlyResource
      SnapshotUpdate = Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotUpdate
      ImageDiskReference = Azure::Compute::Mgmt::V2020_09_30::Models::ImageDiskReference
      SnapshotList = Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotList
      SourceVault = Azure::Compute::Mgmt::V2020_09_30::Models::SourceVault
      EncryptionSetIdentity = Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionSetIdentity
      KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2020_09_30::Models::KeyVaultAndKeyReference
      EncryptionSettingsCollection = Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionSettingsCollection
      DiskEncryptionSetUpdate = Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetUpdate
      ShareInfoElement = Azure::Compute::Mgmt::V2020_09_30::Models::ShareInfoElement
      DiskEncryptionSetList = Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetList
      DiskUpdate = Azure::Compute::Mgmt::V2020_09_30::Models::DiskUpdate
      ResourceUriList = Azure::Compute::Mgmt::V2020_09_30::Models::ResourceUriList
      SnapshotSku = Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotSku
      PrivateEndpoint = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpoint
      PrivateLinkServiceConnectionState = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateLinkServiceConnectionState
      PrivateEndpointConnection = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointConnection
      KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2020_09_30::Models::KeyVaultAndSecretReference
      Encryption = Azure::Compute::Mgmt::V2020_09_30::Models::Encryption
      DiskAccessList = Azure::Compute::Mgmt::V2020_09_30::Models::DiskAccessList
      DiskList = Azure::Compute::Mgmt::V2020_09_30::Models::DiskList
      DiskAccessUpdate = Azure::Compute::Mgmt::V2020_09_30::Models::DiskAccessUpdate
      DiskSku = Azure::Compute::Mgmt::V2020_09_30::Models::DiskSku
      PrivateLinkResource = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateLinkResource
      EncryptionSettingsElement = Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionSettingsElement
      KeyForDiskEncryptionSet = Azure::Compute::Mgmt::V2020_09_30::Models::KeyForDiskEncryptionSet
      DiskRestorePointList = Azure::Compute::Mgmt::V2020_09_30::Models::DiskRestorePointList
      PrivateEndpointConnectionListResult = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointConnectionListResult
      CreationData = Azure::Compute::Mgmt::V2020_09_30::Models::CreationData
      PrivateLinkResourceListResult = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateLinkResourceListResult
      Disk = Azure::Compute::Mgmt::V2020_09_30::Models::Disk
      Snapshot = Azure::Compute::Mgmt::V2020_09_30::Models::Snapshot
      DiskEncryptionSet = Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSet
      DiskAccess = Azure::Compute::Mgmt::V2020_09_30::Models::DiskAccess
      DiskRestorePoint = Azure::Compute::Mgmt::V2020_09_30::Models::DiskRestorePoint
      DiskStorageAccountTypes = Azure::Compute::Mgmt::V2020_09_30::Models::DiskStorageAccountTypes
      HyperVGeneration = Azure::Compute::Mgmt::V2020_09_30::Models::HyperVGeneration
      DiskCreateOption = Azure::Compute::Mgmt::V2020_09_30::Models::DiskCreateOption
      DiskState = Azure::Compute::Mgmt::V2020_09_30::Models::DiskState
      EncryptionType = Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionType
      NetworkAccessPolicy = Azure::Compute::Mgmt::V2020_09_30::Models::NetworkAccessPolicy
      SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotStorageAccountTypes
      DiskEncryptionSetType = Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetType
      AccessLevel = Azure::Compute::Mgmt::V2020_09_30::Models::AccessLevel
      DiskEncryptionSetIdentityType = Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetIdentityType
      PrivateEndpointServiceConnectionStatus = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointServiceConnectionStatus
      PrivateEndpointConnectionProvisioningState = Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointConnectionProvisioningState
      CloudServiceVaultSecretGroup = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceVaultSecretGroup
      CloudServiceOsProfile = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceOsProfile
      LoadBalancerFrontendIPConfigurationProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerFrontendIPConfigurationProperties
      LoadBalancerFrontendIPConfiguration = Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerFrontendIPConfiguration
      LoadBalancerConfigurationProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerConfigurationProperties
      ResourceInstanceViewStatus = Azure::Compute::Mgmt::V2020_10_01_preview::Models::ResourceInstanceViewStatus
      LoadBalancerConfiguration = Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerConfiguration
      RoleInstanceProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceProperties
      CloudServiceNetworkProfile = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceNetworkProfile
      RoleInstanceListResult = Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceListResult
      CloudServiceVaultAndSecretReference = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceVaultAndSecretReference
      CloudServiceRoleProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleProperties
      CloudServiceExtensionProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceExtensionProperties
      CloudServiceRoleListResult = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleListResult
      Extension = Azure::Compute::Mgmt::V2020_10_01_preview::Models::Extension
      CloudServiceRoleProfile = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleProfile
      CloudServiceExtensionProfile = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceExtensionProfile
      CloudServiceProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceProperties
      InstanceSku = Azure::Compute::Mgmt::V2020_10_01_preview::Models::InstanceSku
      CloudService = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudService
      RoleInstanceInstanceView = Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceInstanceView
      CloudServiceUpdate = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceUpdate
      CloudServiceRoleSku = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleSku
      StatusCodeCount = Azure::Compute::Mgmt::V2020_10_01_preview::Models::StatusCodeCount
      CloudServiceRoleProfileProperties = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleProfileProperties
      InstanceViewStatusesSummary = Azure::Compute::Mgmt::V2020_10_01_preview::Models::InstanceViewStatusesSummary
      CloudServiceInstanceView = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceInstanceView
      RoleInstance = Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstance
      CloudServiceListResult = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceListResult
      CloudServiceVaultCertificate = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceVaultCertificate
      RoleInstances = Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstances
      CloudServiceRole = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRole
      UpdateDomain = Azure::Compute::Mgmt::V2020_10_01_preview::Models::UpdateDomain
      RoleInstanceNetworkProfile = Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceNetworkProfile
      UpdateDomainListResult = Azure::Compute::Mgmt::V2020_10_01_preview::Models::UpdateDomainListResult
      CloudServiceUpgradeMode = Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceUpgradeMode
      VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      VirtualMachineIdentity = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineIdentity
      ComputeOperationListResult = Azure::Compute::Mgmt::V2020_12_01::Models::ComputeOperationListResult
      MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2020_12_01::Models::MaintenanceRedeployStatus
      RetrieveBootDiagnosticsDataResult = Azure::Compute::Mgmt::V2020_12_01::Models::RetrieveBootDiagnosticsDataResult
      VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineHealthStatus
      SubResource = Azure::Compute::Mgmt::V2020_12_01::Models::SubResource
      AvailablePatchSummary = Azure::Compute::Mgmt::V2020_12_01::Models::AvailablePatchSummary
      PatchSettings = Azure::Compute::Mgmt::V2020_12_01::Models::PatchSettings
      VirtualMachineRunCommandsListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandsListResult
      WindowsConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::WindowsConfiguration
      VirtualMachineRunCommandScriptSource = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandScriptSource
      SshPublicKey = Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKey
      RunCommandResult = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandResult
      SshConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::SshConfiguration
      RunCommandListResult = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandListResult
      LinuxPatchSettings = Azure::Compute::Mgmt::V2020_12_01::Models::LinuxPatchSettings
      SubResourceReadOnly = Azure::Compute::Mgmt::V2020_12_01::Models::SubResourceReadOnly
      LinuxConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::LinuxConfiguration
      RunCommandParameterDefinition = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandParameterDefinition
      VaultCertificate = Azure::Compute::Mgmt::V2020_12_01::Models::VaultCertificate
      DedicatedHostAllocatableVM = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostAllocatableVM
      VaultSecretGroup = Azure::Compute::Mgmt::V2020_12_01::Models::VaultSecretGroup
      DedicatedHostInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostInstanceView
      OSProfile = Azure::Compute::Mgmt::V2020_12_01::Models::OSProfile
      RunCommandInputParameter = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandInputParameter
      AutomaticRepairsPolicy = Azure::Compute::Mgmt::V2020_12_01::Models::AutomaticRepairsPolicy
      SshPublicKeyGenerateKeyPairResult = Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeyGenerateKeyPairResult
      VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMInstanceView
      VMScaleSetConvertToSinglePlacementGroupInput = Azure::Compute::Mgmt::V2020_12_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
      NetworkProfile = Azure::Compute::Mgmt::V2020_12_01::Models::NetworkProfile
      VirtualMachineSize = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSize
      BootDiagnostics = Azure::Compute::Mgmt::V2020_12_01::Models::BootDiagnostics
      LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2020_12_01::Models::LogAnalyticsOperationResult
      DiagnosticsProfile = Azure::Compute::Mgmt::V2020_12_01::Models::DiagnosticsProfile
      LogAnalyticsOutput = Azure::Compute::Mgmt::V2020_12_01::Models::LogAnalyticsOutput
      BillingProfile = Azure::Compute::Mgmt::V2020_12_01::Models::BillingProfile
      LogAnalyticsInputBase = Azure::Compute::Mgmt::V2020_12_01::Models::LogAnalyticsInputBase
      VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionHandlerInstanceView
      UpdateResource = Azure::Compute::Mgmt::V2020_12_01::Models::UpdateResource
      VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineAgentInstanceView
      VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionsListResult
      DiskInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::DiskInstanceView
      VirtualMachineSoftwarePatchProperties = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSoftwarePatchProperties
      BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::BootDiagnosticsInstanceView
      InnerError = Azure::Compute::Mgmt::V2020_12_01::Models::InnerError
      ComputeOperationValue = Azure::Compute::Mgmt::V2020_12_01::Models::ComputeOperationValue
      VirtualMachineAssessPatchesResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineAssessPatchesResult
      DisallowedConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::DisallowedConfiguration
      LinuxParameters = Azure::Compute::Mgmt::V2020_12_01::Models::LinuxParameters
      InstanceViewStatus = Azure::Compute::Mgmt::V2020_12_01::Models::InstanceViewStatus
      PatchInstallationDetail = Azure::Compute::Mgmt::V2020_12_01::Models::PatchInstallationDetail
      Sku = Azure::Compute::Mgmt::V2020_12_01::Models::Sku
      PurchasePlan = Azure::Compute::Mgmt::V2020_12_01::Models::PurchasePlan
      VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      DataDiskImage = Azure::Compute::Mgmt::V2020_12_01::Models::DataDiskImage
      LastPatchInstallationSummary = Azure::Compute::Mgmt::V2020_12_01::Models::LastPatchInstallationSummary
      VirtualMachineImageFeature = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineImageFeature
      VirtualMachinePatchStatus = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachinePatchStatus
      UsageName = Azure::Compute::Mgmt::V2020_12_01::Models::UsageName
      VirtualMachineInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineInstanceView
      ListUsagesResult = Azure::Compute::Mgmt::V2020_12_01::Models::ListUsagesResult
      UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationHistoricalStatusInfo
      VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineCaptureParameters
      UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      Plan = Azure::Compute::Mgmt::V2020_12_01::Models::Plan
      VirtualMachineListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineListResult
      VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMListResult
      AutomaticOSUpgradePolicy = Azure::Compute::Mgmt::V2020_12_01::Models::AutomaticOSUpgradePolicy
      VirtualMachineScaleSetVMProtectionPolicy = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMProtectionPolicy
      RollingUpgradePolicy = Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradePolicy
      DiskEncryptionSettings = Azure::Compute::Mgmt::V2020_12_01::Models::DiskEncryptionSettings
      UpgradePolicy = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradePolicy
      DiffDiskSettings = Azure::Compute::Mgmt::V2020_12_01::Models::DiffDiskSettings
      ScaleInPolicy = Azure::Compute::Mgmt::V2020_12_01::Models::ScaleInPolicy
      OSDisk = Azure::Compute::Mgmt::V2020_12_01::Models::OSDisk
      RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeProgressInfo
      StorageProfile = Azure::Compute::Mgmt::V2020_12_01::Models::StorageProfile
      UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationHistoryStatus
      SecurityProfile = Azure::Compute::Mgmt::V2020_12_01::Models::SecurityProfile
      ImageDisk = Azure::Compute::Mgmt::V2020_12_01::Models::ImageDisk
      AdditionalUnattendContent = Azure::Compute::Mgmt::V2020_12_01::Models::AdditionalUnattendContent
      ImageStorageProfile = Azure::Compute::Mgmt::V2020_12_01::Models::ImageStorageProfile
      WinRMConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::WinRMConfiguration
      RollbackStatusInfo = Azure::Compute::Mgmt::V2020_12_01::Models::RollbackStatusInfo
      VirtualMachineRunCommandInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandInstanceView
      VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListSkusResult
      DedicatedHostGroupInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroupInstanceView
      ImageListResult = Azure::Compute::Mgmt::V2020_12_01::Models::ImageListResult
      DedicatedHostGroupListResult = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroupListResult
      VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      RunCommandInput = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandInput
      VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIdentity
      OrchestrationServiceStateInput = Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceStateInput
      VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetOSProfile
      VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSizeListResult
      VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
      VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionInstanceView
      VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
      Resource = Azure::Compute::Mgmt::V2020_12_01::Models::Resource
      VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetOSDisk
      ApiErrorBase = Azure::Compute::Mgmt::V2020_12_01::Models::ApiErrorBase
      VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
      WindowsParameters = Azure::Compute::Mgmt::V2020_12_01::Models::WindowsParameters
      VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetDataDisk
      VirtualMachineInstallPatchesResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineInstallPatchesResult
      VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetStorageProfile
      AutomaticOSUpgradeProperties = Azure::Compute::Mgmt::V2020_12_01::Models::AutomaticOSUpgradeProperties
      VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      Usage = Azure::Compute::Mgmt::V2020_12_01::Models::Usage
      ApiEntityReference = Azure::Compute::Mgmt::V2020_12_01::Models::ApiEntityReference
      RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeRunningStatus
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      KeyVaultSecretReference = Azure::Compute::Mgmt::V2020_12_01::Models::KeyVaultSecretReference
      VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIpTag
      VirtualHardDisk = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualHardDisk
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      DataDisk = Azure::Compute::Mgmt::V2020_12_01::Models::DataDisk
      VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      AdditionalCapabilities = Azure::Compute::Mgmt::V2020_12_01::Models::AdditionalCapabilities
      VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetSku
      AvailabilitySetListResult = Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySetListResult
      VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetSkuCapacity
      RunCommandDocumentBase = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandDocumentBase
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      DedicatedHostListResult = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostListResult
      VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListWithLinkResult
      ExtendedLocation = Azure::Compute::Mgmt::V2020_12_01::Models::ExtendedLocation
      VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListResult
      VirtualMachineScaleSetVMExtensionsListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtensionsListResult
      VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetNetworkProfile
      VirtualMachineInstallPatchesParameters = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineInstallPatchesParameters
      VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetInstanceView
      HardwareProfile = Azure::Compute::Mgmt::V2020_12_01::Models::HardwareProfile
      OrchestrationServiceSummary = Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceSummary
      VirtualMachineScaleSetVMNetworkProfileConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
      VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtensionListResult
      WinRMListener = Azure::Compute::Mgmt::V2020_12_01::Models::WinRMListener
      VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtensionProfile
      DedicatedHostAvailableCapacity = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostAvailableCapacity
      TerminateNotificationProfile = Azure::Compute::Mgmt::V2020_12_01::Models::TerminateNotificationProfile
      RecoveryWalkResponse = Azure::Compute::Mgmt::V2020_12_01::Models::RecoveryWalkResponse
      ScheduledEventsProfile = Azure::Compute::Mgmt::V2020_12_01::Models::ScheduledEventsProfile
      OSDiskImage = Azure::Compute::Mgmt::V2020_12_01::Models::OSDiskImage
      VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMProfile
      KeyVaultKeyReference = Azure::Compute::Mgmt::V2020_12_01::Models::KeyVaultKeyReference
      VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
      ProximityPlacementGroupListResult = Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroupListResult
      VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      ApiError = Azure::Compute::Mgmt::V2020_12_01::Models::ApiError
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      UefiSettings = Azure::Compute::Mgmt::V2020_12_01::Models::UefiSettings
      VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineStatusCodeCount
      VirtualMachineReimageParameters = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineReimageParameters
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      SshPublicKeysGroupListResult = Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeysGroupListResult
      VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
      AvailabilitySet = Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySet
      AvailabilitySetUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySetUpdate
      SubResourceWithColocationStatus = Azure::Compute::Mgmt::V2020_12_01::Models::SubResourceWithColocationStatus
      ProximityPlacementGroup = Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroup
      ProximityPlacementGroupUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroupUpdate
      DedicatedHostInstanceViewWithName = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostInstanceViewWithName
      DedicatedHostGroup = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroup
      DedicatedHostGroupUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroupUpdate
      DedicatedHost = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHost
      DedicatedHostUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostUpdate
      SshPublicKeyResource = Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeyResource
      SshPublicKeyUpdateResource = Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeyUpdateResource
      VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtension
      VirtualMachineScaleSetVMExtension = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtension
      VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionUpdate
      VirtualMachineScaleSetVMExtensionUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtensionUpdate
      VirtualMachineImage = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineCaptureResult
      ImageReference = Azure::Compute::Mgmt::V2020_12_01::Models::ImageReference
      DiskEncryptionSetParameters = Azure::Compute::Mgmt::V2020_12_01::Models::DiskEncryptionSetParameters
      ManagedDiskParameters = Azure::Compute::Mgmt::V2020_12_01::Models::ManagedDiskParameters
      NetworkInterfaceReference = Azure::Compute::Mgmt::V2020_12_01::Models::NetworkInterfaceReference
      VirtualMachine = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachine
      VirtualMachineUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineUpdate
      ImageOSDisk = Azure::Compute::Mgmt::V2020_12_01::Models::ImageOSDisk
      ImageDataDisk = Azure::Compute::Mgmt::V2020_12_01::Models::ImageDataDisk
      Image = Azure::Compute::Mgmt::V2020_12_01::Models::Image
      ImageUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::ImageUpdate
      VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSetExtensionUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtensionUpdate
      VirtualMachineScaleSet = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetVMReimageParameters = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMReimageParameters
      VirtualMachineScaleSetReimageParameters = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetReimageParameters
      VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdate
      VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVM
      RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeStatusInfo
      RequestRateByIntervalInput = Azure::Compute::Mgmt::V2020_12_01::Models::RequestRateByIntervalInput
      ThrottledRequestsInput = Azure::Compute::Mgmt::V2020_12_01::Models::ThrottledRequestsInput
      RunCommandDocument = Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandDocument
      VirtualMachineRunCommand = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommand
      VirtualMachineRunCommandUpdate = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandUpdate
      VmDiskTypes = Azure::Compute::Mgmt::V2020_12_01::Models::VmDiskTypes
      HyperVGenerationTypes = Azure::Compute::Mgmt::V2020_12_01::Models::HyperVGenerationTypes
      StatusLevelTypes = Azure::Compute::Mgmt::V2020_12_01::Models::StatusLevelTypes
      AvailabilitySetSkuTypes = Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySetSkuTypes
      ProximityPlacementGroupType = Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroupType
      DedicatedHostLicenseTypes = Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostLicenseTypes
      ExtendedLocationTypes = Azure::Compute::Mgmt::V2020_12_01::Models::ExtendedLocationTypes
      VMGuestPatchRebootBehavior = Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchRebootBehavior
      PatchAssessmentState = Azure::Compute::Mgmt::V2020_12_01::Models::PatchAssessmentState
      PatchOperationStatus = Azure::Compute::Mgmt::V2020_12_01::Models::PatchOperationStatus
      VMGuestPatchRebootSetting = Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchRebootSetting
      VMGuestPatchClassificationWindows = Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchClassificationWindows
      VMGuestPatchClassificationLinux = Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchClassificationLinux
      VMGuestPatchRebootStatus = Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchRebootStatus
      PatchInstallationState = Azure::Compute::Mgmt::V2020_12_01::Models::PatchInstallationState
      OperatingSystemTypes = Azure::Compute::Mgmt::V2020_12_01::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::Compute::Mgmt::V2020_12_01::Models::CachingTypes
      DiskCreateOptionTypes = Azure::Compute::Mgmt::V2020_12_01::Models::DiskCreateOptionTypes
      DiskDetachOptionTypes = Azure::Compute::Mgmt::V2020_12_01::Models::DiskDetachOptionTypes
      StorageAccountTypes = Azure::Compute::Mgmt::V2020_12_01::Models::StorageAccountTypes
      DiffDiskOptions = Azure::Compute::Mgmt::V2020_12_01::Models::DiffDiskOptions
      DiffDiskPlacement = Azure::Compute::Mgmt::V2020_12_01::Models::DiffDiskPlacement
      SecurityTypes = Azure::Compute::Mgmt::V2020_12_01::Models::SecurityTypes
      PassNames = Azure::Compute::Mgmt::V2020_12_01::Models::PassNames
      ComponentNames = Azure::Compute::Mgmt::V2020_12_01::Models::ComponentNames
      SettingNames = Azure::Compute::Mgmt::V2020_12_01::Models::SettingNames
      ProtocolTypes = Azure::Compute::Mgmt::V2020_12_01::Models::ProtocolTypes
      WindowsVMGuestPatchMode = Azure::Compute::Mgmt::V2020_12_01::Models::WindowsVMGuestPatchMode
      LinuxVMGuestPatchMode = Azure::Compute::Mgmt::V2020_12_01::Models::LinuxVMGuestPatchMode
      VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachinePriorityTypes
      VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineEvictionPolicyTypes
      ResourceIdentityType = Azure::Compute::Mgmt::V2020_12_01::Models::ResourceIdentityType
      MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2020_12_01::Models::MaintenanceOperationResultCodeTypes
      HyperVGenerationType = Azure::Compute::Mgmt::V2020_12_01::Models::HyperVGenerationType
      UpgradeMode = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeMode
      VirtualMachineScaleSetScaleInRules = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetScaleInRules
      OrchestrationMode = Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationMode
      OperatingSystemStateTypes = Azure::Compute::Mgmt::V2020_12_01::Models::OperatingSystemStateTypes
      IPVersion = Azure::Compute::Mgmt::V2020_12_01::Models::IPVersion
      OrchestrationServiceNames = Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceNames
      OrchestrationServiceState = Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceState
      VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetSkuScaleType
      UpgradeState = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeState
      UpgradeOperationInvoker = Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationInvoker
      RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeStatusCode
      RollingUpgradeActionType = Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeActionType
      IntervalInMins = Azure::Compute::Mgmt::V2020_12_01::Models::IntervalInMins
      OrchestrationServiceStateAction = Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceStateAction
      ExecutionState = Azure::Compute::Mgmt::V2020_12_01::Models::ExecutionState
      InstanceViewTypes = Azure::Compute::Mgmt::V2020_12_01::Models::InstanceViewTypes
    end

    #
    # ComputeManagementClass
    #
    class ComputeManagementClass
      attr_reader :resource_skus, :galleries, :gallery_images, :gallery_image_versions, :gallery_applications, :gallery_application_versions, :disks, :snapshots, :disk_encryption_sets, :disk_accesses, :disk_restore_point_operations, :cloud_service_role_instances, :cloud_service_roles, :cloud_services, :cloud_services_update_domain, :operations, :availability_sets, :proximity_placement_groups, :dedicated_host_groups, :dedicated_hosts, :ssh_public_keys, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :virtual_machine_images_edge_zone, :usage_operations, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_sizes, :images, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vmextensions, :virtual_machine_scale_set_vms, :log_analytics, :virtual_machine_run_commands, :virtual_machine_scale_set_vmrun_commands, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Compute::Mgmt::V2019_04_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @resource_skus = @client_0.resource_skus

        @client_1 = Azure::Compute::Mgmt::V2019_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @galleries = @client_1.galleries
        @gallery_images = @client_1.gallery_images
        @gallery_image_versions = @client_1.gallery_image_versions
        @gallery_applications = @client_1.gallery_applications
        @gallery_application_versions = @client_1.gallery_application_versions

        @client_2 = Azure::Compute::Mgmt::V2020_09_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @disks = @client_2.disks
        @snapshots = @client_2.snapshots
        @disk_encryption_sets = @client_2.disk_encryption_sets
        @disk_accesses = @client_2.disk_accesses
        @disk_restore_point_operations = @client_2.disk_restore_point_operations

        @client_3 = Azure::Compute::Mgmt::V2020_10_01_preview::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @cloud_service_role_instances = @client_3.cloud_service_role_instances
        @cloud_service_roles = @client_3.cloud_service_roles
        @cloud_services = @client_3.cloud_services
        @cloud_services_update_domain = @client_3.cloud_services_update_domain

        @client_4 = Azure::Compute::Mgmt::V2020_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_4.respond_to?(:subscription_id))
          @client_4.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_4)
        @operations = @client_4.operations
        @availability_sets = @client_4.availability_sets
        @proximity_placement_groups = @client_4.proximity_placement_groups
        @dedicated_host_groups = @client_4.dedicated_host_groups
        @dedicated_hosts = @client_4.dedicated_hosts
        @ssh_public_keys = @client_4.ssh_public_keys
        @virtual_machine_extension_images = @client_4.virtual_machine_extension_images
        @virtual_machine_extensions = @client_4.virtual_machine_extensions
        @virtual_machine_images = @client_4.virtual_machine_images
        @virtual_machine_images_edge_zone = @client_4.virtual_machine_images_edge_zone
        @usage_operations = @client_4.usage_operations
        @virtual_machines = @client_4.virtual_machines
        @virtual_machine_scale_sets = @client_4.virtual_machine_scale_sets
        @virtual_machine_sizes = @client_4.virtual_machine_sizes
        @images = @client_4.images
        @virtual_machine_scale_set_extensions = @client_4.virtual_machine_scale_set_extensions
        @virtual_machine_scale_set_rolling_upgrades = @client_4.virtual_machine_scale_set_rolling_upgrades
        @virtual_machine_scale_set_vmextensions = @client_4.virtual_machine_scale_set_vmextensions
        @virtual_machine_scale_set_vms = @client_4.virtual_machine_scale_set_vms
        @log_analytics = @client_4.log_analytics
        @virtual_machine_run_commands = @client_4.virtual_machine_run_commands
        @virtual_machine_scale_set_vmrun_commands = @client_4.virtual_machine_scale_set_vmrun_commands

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Compute/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_4.respond_to?method
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

    end

    class ModelClasses
      def resource_sku_restriction_info
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictionInfo
      end
      def resource_sku_restrictions
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictions
      end
      def resource_sku_costs
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCosts
      end
      def resource_sku_location_info
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuLocationInfo
      end
      def resource_sku_zone_details
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuZoneDetails
      end
      def resource_sku
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSku
      end
      def resource_sku_capabilities
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCapabilities
      end
      def resource_skus_result
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkusResult
      end
      def resource_sku_capacity
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCapacity
      end
      def resource_sku_capacity_scale_type
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuCapacityScaleType
      end
      def resource_sku_restrictions_type
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictionsType
      end
      def resource_sku_restrictions_reason_code
        Azure::Compute::Mgmt::V2019_04_01::Models::ResourceSkuRestrictionsReasonCode
      end
      def regional_replication_status
        Azure::Compute::Mgmt::V2019_12_01::Models::RegionalReplicationStatus
      end
      def user_artifact_manage
        Azure::Compute::Mgmt::V2019_12_01::Models::UserArtifactManage
      end
      def resource_range
        Azure::Compute::Mgmt::V2019_12_01::Models::ResourceRange
      end
      def gallery_image_version_storage_profile
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionStorageProfile
      end
      def disallowed
        Azure::Compute::Mgmt::V2019_12_01::Models::Disallowed
      end
      def image_purchase_plan
        Azure::Compute::Mgmt::V2019_12_01::Models::ImagePurchasePlan
      end
      def gallery_identifier
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryIdentifier
      end
      def encryption_images
        Azure::Compute::Mgmt::V2019_12_01::Models::EncryptionImages
      end
      def update_resource_definition
        Azure::Compute::Mgmt::V2019_12_01::Models::UpdateResourceDefinition
      end
      def gallery_application_version_list
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionList
      end
      def gallery_application_list
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationList
      end
      def gallery_image_version_list
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionList
      end
      def gallery_image_list
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageList
      end
      def gallery_list
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryList
      end
      def replication_status
        Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationStatus
      end
      def gallery_image_identifier
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageIdentifier
      end
      def gallery_disk_image
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryDiskImage
      end
      def gallery_artifact_source
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactSource
      end
      def managed_artifact
        Azure::Compute::Mgmt::V2019_12_01::Models::ManagedArtifact
      end
      def disk_image_encryption
        Azure::Compute::Mgmt::V2019_12_01::Models::DiskImageEncryption
      end
      def gallery_artifact_version_source
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactVersionSource
      end
      def recommended_machine_configuration
        Azure::Compute::Mgmt::V2019_12_01::Models::RecommendedMachineConfiguration
      end
      def user_artifact_source
        Azure::Compute::Mgmt::V2019_12_01::Models::UserArtifactSource
      end
      def gallery_artifact_publishing_profile_base
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactPublishingProfileBase
      end
      def target_region
        Azure::Compute::Mgmt::V2019_12_01::Models::TargetRegion
      end
      def gallery
        Azure::Compute::Mgmt::V2019_12_01::Models::Gallery
      end
      def gallery_update
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryUpdate
      end
      def gallery_application
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplication
      end
      def gallery_application_update
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationUpdate
      end
      def gallery_application_version_publishing_profile
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionPublishingProfile
      end
      def gallery_application_version
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersion
      end
      def gallery_application_version_update
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionUpdate
      end
      def gallery_image
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImage
      end
      def gallery_image_update
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageUpdate
      end
      def gallery_image_version_publishing_profile
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionPublishingProfile
      end
      def gallery_osdisk_image
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryOSDiskImage
      end
      def gallery_data_disk_image
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryDataDiskImage
      end
      def gallery_image_version
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersion
      end
      def gallery_image_version_update
        Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionUpdate
      end
      def osdisk_image_encryption
        Azure::Compute::Mgmt::V2019_12_01::Models::OSDiskImageEncryption
      end
      def data_disk_image_encryption
        Azure::Compute::Mgmt::V2019_12_01::Models::DataDiskImageEncryption
      end
      def aggregated_replication_state
        Azure::Compute::Mgmt::V2019_12_01::Models::AggregatedReplicationState
      end
      def replication_state
        Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationState
      end
      def storage_account_type
        Azure::Compute::Mgmt::V2019_12_01::Models::StorageAccountType
      end
      def host_caching
        Azure::Compute::Mgmt::V2019_12_01::Models::HostCaching
      end
      def replication_status_types
        Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationStatusTypes
      end
      def grant_access_data
        Azure::Compute::Mgmt::V2020_09_30::Models::GrantAccessData
      end
      def access_uri
        Azure::Compute::Mgmt::V2020_09_30::Models::AccessUri
      end
      def proxy_only_resource
        Azure::Compute::Mgmt::V2020_09_30::Models::ProxyOnlyResource
      end
      def snapshot_update
        Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotUpdate
      end
      def image_disk_reference
        Azure::Compute::Mgmt::V2020_09_30::Models::ImageDiskReference
      end
      def snapshot_list
        Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotList
      end
      def source_vault
        Azure::Compute::Mgmt::V2020_09_30::Models::SourceVault
      end
      def encryption_set_identity
        Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionSetIdentity
      end
      def key_vault_and_key_reference
        Azure::Compute::Mgmt::V2020_09_30::Models::KeyVaultAndKeyReference
      end
      def encryption_settings_collection
        Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionSettingsCollection
      end
      def disk_encryption_set_update
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetUpdate
      end
      def share_info_element
        Azure::Compute::Mgmt::V2020_09_30::Models::ShareInfoElement
      end
      def disk_encryption_set_list
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetList
      end
      def disk_update
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskUpdate
      end
      def resource_uri_list
        Azure::Compute::Mgmt::V2020_09_30::Models::ResourceUriList
      end
      def snapshot_sku
        Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotSku
      end
      def private_endpoint
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpoint
      end
      def private_link_service_connection_state
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateLinkServiceConnectionState
      end
      def private_endpoint_connection
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointConnection
      end
      def key_vault_and_secret_reference
        Azure::Compute::Mgmt::V2020_09_30::Models::KeyVaultAndSecretReference
      end
      def encryption
        Azure::Compute::Mgmt::V2020_09_30::Models::Encryption
      end
      def disk_access_list
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskAccessList
      end
      def disk_list
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskList
      end
      def disk_access_update
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskAccessUpdate
      end
      def disk_sku
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskSku
      end
      def private_link_resource
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateLinkResource
      end
      def encryption_settings_element
        Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionSettingsElement
      end
      def key_for_disk_encryption_set
        Azure::Compute::Mgmt::V2020_09_30::Models::KeyForDiskEncryptionSet
      end
      def disk_restore_point_list
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskRestorePointList
      end
      def private_endpoint_connection_list_result
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointConnectionListResult
      end
      def creation_data
        Azure::Compute::Mgmt::V2020_09_30::Models::CreationData
      end
      def private_link_resource_list_result
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateLinkResourceListResult
      end
      def disk
        Azure::Compute::Mgmt::V2020_09_30::Models::Disk
      end
      def snapshot
        Azure::Compute::Mgmt::V2020_09_30::Models::Snapshot
      end
      def disk_encryption_set
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSet
      end
      def disk_access
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskAccess
      end
      def disk_restore_point
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskRestorePoint
      end
      def disk_storage_account_types
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskStorageAccountTypes
      end
      def hyper_vgeneration
        Azure::Compute::Mgmt::V2020_09_30::Models::HyperVGeneration
      end
      def disk_create_option
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskCreateOption
      end
      def disk_state
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskState
      end
      def encryption_type
        Azure::Compute::Mgmt::V2020_09_30::Models::EncryptionType
      end
      def network_access_policy
        Azure::Compute::Mgmt::V2020_09_30::Models::NetworkAccessPolicy
      end
      def snapshot_storage_account_types
        Azure::Compute::Mgmt::V2020_09_30::Models::SnapshotStorageAccountTypes
      end
      def disk_encryption_set_type
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetType
      end
      def access_level
        Azure::Compute::Mgmt::V2020_09_30::Models::AccessLevel
      end
      def disk_encryption_set_identity_type
        Azure::Compute::Mgmt::V2020_09_30::Models::DiskEncryptionSetIdentityType
      end
      def private_endpoint_service_connection_status
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointServiceConnectionStatus
      end
      def private_endpoint_connection_provisioning_state
        Azure::Compute::Mgmt::V2020_09_30::Models::PrivateEndpointConnectionProvisioningState
      end
      def cloud_service_vault_secret_group
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceVaultSecretGroup
      end
      def cloud_service_os_profile
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceOsProfile
      end
      def load_balancer_frontend_ipconfiguration_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerFrontendIPConfigurationProperties
      end
      def load_balancer_frontend_ipconfiguration
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerFrontendIPConfiguration
      end
      def load_balancer_configuration_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerConfigurationProperties
      end
      def resource_instance_view_status
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::ResourceInstanceViewStatus
      end
      def load_balancer_configuration
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::LoadBalancerConfiguration
      end
      def role_instance_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceProperties
      end
      def cloud_service_network_profile
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceNetworkProfile
      end
      def role_instance_list_result
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceListResult
      end
      def cloud_service_vault_and_secret_reference
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceVaultAndSecretReference
      end
      def cloud_service_role_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleProperties
      end
      def cloud_service_extension_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceExtensionProperties
      end
      def cloud_service_role_list_result
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleListResult
      end
      def extension
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::Extension
      end
      def cloud_service_role_profile
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleProfile
      end
      def cloud_service_extension_profile
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceExtensionProfile
      end
      def cloud_service_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceProperties
      end
      def instance_sku
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::InstanceSku
      end
      def cloud_service
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudService
      end
      def role_instance_instance_view
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceInstanceView
      end
      def cloud_service_update
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceUpdate
      end
      def cloud_service_role_sku
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleSku
      end
      def status_code_count
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::StatusCodeCount
      end
      def cloud_service_role_profile_properties
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRoleProfileProperties
      end
      def instance_view_statuses_summary
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::InstanceViewStatusesSummary
      end
      def cloud_service_instance_view
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceInstanceView
      end
      def role_instance
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstance
      end
      def cloud_service_list_result
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceListResult
      end
      def cloud_service_vault_certificate
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceVaultCertificate
      end
      def role_instances
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstances
      end
      def cloud_service_role
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceRole
      end
      def update_domain
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::UpdateDomain
      end
      def role_instance_network_profile
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::RoleInstanceNetworkProfile
      end
      def update_domain_list_result
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::UpdateDomainListResult
      end
      def cloud_service_upgrade_mode
        Azure::Compute::Mgmt::V2020_10_01_preview::Models::CloudServiceUpgradeMode
      end
      def virtual_machine_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      end
      def virtual_machine_identity
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineIdentity
      end
      def compute_operation_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::ComputeOperationListResult
      end
      def maintenance_redeploy_status
        Azure::Compute::Mgmt::V2020_12_01::Models::MaintenanceRedeployStatus
      end
      def retrieve_boot_diagnostics_data_result
        Azure::Compute::Mgmt::V2020_12_01::Models::RetrieveBootDiagnosticsDataResult
      end
      def virtual_machine_health_status
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineHealthStatus
      end
      def sub_resource
        Azure::Compute::Mgmt::V2020_12_01::Models::SubResource
      end
      def available_patch_summary
        Azure::Compute::Mgmt::V2020_12_01::Models::AvailablePatchSummary
      end
      def patch_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::PatchSettings
      end
      def virtual_machine_run_commands_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandsListResult
      end
      def windows_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::WindowsConfiguration
      end
      def virtual_machine_run_command_script_source
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandScriptSource
      end
      def ssh_public_key
        Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKey
      end
      def run_command_result
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandResult
      end
      def ssh_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::SshConfiguration
      end
      def run_command_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandListResult
      end
      def linux_patch_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::LinuxPatchSettings
      end
      def sub_resource_read_only
        Azure::Compute::Mgmt::V2020_12_01::Models::SubResourceReadOnly
      end
      def linux_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::LinuxConfiguration
      end
      def run_command_parameter_definition
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandParameterDefinition
      end
      def vault_certificate
        Azure::Compute::Mgmt::V2020_12_01::Models::VaultCertificate
      end
      def dedicated_host_allocatable_vm
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostAllocatableVM
      end
      def vault_secret_group
        Azure::Compute::Mgmt::V2020_12_01::Models::VaultSecretGroup
      end
      def dedicated_host_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostInstanceView
      end
      def osprofile
        Azure::Compute::Mgmt::V2020_12_01::Models::OSProfile
      end
      def run_command_input_parameter
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandInputParameter
      end
      def automatic_repairs_policy
        Azure::Compute::Mgmt::V2020_12_01::Models::AutomaticRepairsPolicy
      end
      def ssh_public_key_generate_key_pair_result
        Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeyGenerateKeyPairResult
      end
      def virtual_machine_scale_set_vminstance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMInstanceView
      end
      def vmscale_set_convert_to_single_placement_group_input
        Azure::Compute::Mgmt::V2020_12_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
      end
      def network_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::NetworkProfile
      end
      def virtual_machine_size
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSize
      end
      def boot_diagnostics
        Azure::Compute::Mgmt::V2020_12_01::Models::BootDiagnostics
      end
      def log_analytics_operation_result
        Azure::Compute::Mgmt::V2020_12_01::Models::LogAnalyticsOperationResult
      end
      def diagnostics_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::DiagnosticsProfile
      end
      def log_analytics_output
        Azure::Compute::Mgmt::V2020_12_01::Models::LogAnalyticsOutput
      end
      def billing_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::BillingProfile
      end
      def log_analytics_input_base
        Azure::Compute::Mgmt::V2020_12_01::Models::LogAnalyticsInputBase
      end
      def virtual_machine_extension_handler_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionHandlerInstanceView
      end
      def update_resource
        Azure::Compute::Mgmt::V2020_12_01::Models::UpdateResource
      end
      def virtual_machine_agent_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineAgentInstanceView
      end
      def virtual_machine_extensions_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionsListResult
      end
      def disk_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::DiskInstanceView
      end
      def virtual_machine_software_patch_properties
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSoftwarePatchProperties
      end
      def boot_diagnostics_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::BootDiagnosticsInstanceView
      end
      def inner_error
        Azure::Compute::Mgmt::V2020_12_01::Models::InnerError
      end
      def compute_operation_value
        Azure::Compute::Mgmt::V2020_12_01::Models::ComputeOperationValue
      end
      def virtual_machine_assess_patches_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineAssessPatchesResult
      end
      def disallowed_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::DisallowedConfiguration
      end
      def linux_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::LinuxParameters
      end
      def instance_view_status
        Azure::Compute::Mgmt::V2020_12_01::Models::InstanceViewStatus
      end
      def patch_installation_detail
        Azure::Compute::Mgmt::V2020_12_01::Models::PatchInstallationDetail
      end
      def sku
        Azure::Compute::Mgmt::V2020_12_01::Models::Sku
      end
      def purchase_plan
        Azure::Compute::Mgmt::V2020_12_01::Models::PurchasePlan
      end
      def virtual_machine_scale_set_list_osupgrade_history
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      end
      def data_disk_image
        Azure::Compute::Mgmt::V2020_12_01::Models::DataDiskImage
      end
      def last_patch_installation_summary
        Azure::Compute::Mgmt::V2020_12_01::Models::LastPatchInstallationSummary
      end
      def virtual_machine_image_feature
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineImageFeature
      end
      def virtual_machine_patch_status
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachinePatchStatus
      end
      def usage_name
        Azure::Compute::Mgmt::V2020_12_01::Models::UsageName
      end
      def virtual_machine_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineInstanceView
      end
      def list_usages_result
        Azure::Compute::Mgmt::V2020_12_01::Models::ListUsagesResult
      end
      def upgrade_operation_historical_status_info
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationHistoricalStatusInfo
      end
      def virtual_machine_capture_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineCaptureParameters
      end
      def upgrade_operation_historical_status_info_properties
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      end
      def plan
        Azure::Compute::Mgmt::V2020_12_01::Models::Plan
      end
      def virtual_machine_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineListResult
      end
      def virtual_machine_scale_set_vmlist_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMListResult
      end
      def automatic_osupgrade_policy
        Azure::Compute::Mgmt::V2020_12_01::Models::AutomaticOSUpgradePolicy
      end
      def virtual_machine_scale_set_vmprotection_policy
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMProtectionPolicy
      end
      def rolling_upgrade_policy
        Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradePolicy
      end
      def disk_encryption_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::DiskEncryptionSettings
      end
      def upgrade_policy
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradePolicy
      end
      def diff_disk_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::DiffDiskSettings
      end
      def scale_in_policy
        Azure::Compute::Mgmt::V2020_12_01::Models::ScaleInPolicy
      end
      def osdisk
        Azure::Compute::Mgmt::V2020_12_01::Models::OSDisk
      end
      def rolling_upgrade_progress_info
        Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeProgressInfo
      end
      def storage_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::StorageProfile
      end
      def upgrade_operation_history_status
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationHistoryStatus
      end
      def security_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::SecurityProfile
      end
      def image_disk
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageDisk
      end
      def additional_unattend_content
        Azure::Compute::Mgmt::V2020_12_01::Models::AdditionalUnattendContent
      end
      def image_storage_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageStorageProfile
      end
      def win_rmconfiguration
        Azure::Compute::Mgmt::V2020_12_01::Models::WinRMConfiguration
      end
      def rollback_status_info
        Azure::Compute::Mgmt::V2020_12_01::Models::RollbackStatusInfo
      end
      def virtual_machine_run_command_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandInstanceView
      end
      def virtual_machine_scale_set_list_skus_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListSkusResult
      end
      def dedicated_host_group_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroupInstanceView
      end
      def image_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageListResult
      end
      def dedicated_host_group_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroupListResult
      end
      def virtual_machine_scale_set_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      end
      def run_command_input
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandInput
      end
      def virtual_machine_scale_set_identity
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIdentity
      end
      def orchestration_service_state_input
        Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceStateInput
      end
      def virtual_machine_scale_set_osprofile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetOSProfile
      end
      def virtual_machine_size_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSizeListResult
      end
      def virtual_machine_scale_set_update_osprofile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
      end
      def virtual_machine_extension_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionInstanceView
      end
      def virtual_machine_scale_set_managed_disk_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
      end
      def resource
        Azure::Compute::Mgmt::V2020_12_01::Models::Resource
      end
      def virtual_machine_scale_set_osdisk
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetOSDisk
      end
      def api_error_base
        Azure::Compute::Mgmt::V2020_12_01::Models::ApiErrorBase
      end
      def virtual_machine_scale_set_update_osdisk
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
      end
      def windows_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::WindowsParameters
      end
      def virtual_machine_scale_set_data_disk
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetDataDisk
      end
      def virtual_machine_install_patches_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineInstallPatchesResult
      end
      def virtual_machine_scale_set_storage_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetStorageProfile
      end
      def automatic_osupgrade_properties
        Azure::Compute::Mgmt::V2020_12_01::Models::AutomaticOSUpgradeProperties
      end
      def virtual_machine_scale_set_update_storage_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      end
      def usage
        Azure::Compute::Mgmt::V2020_12_01::Models::Usage
      end
      def api_entity_reference
        Azure::Compute::Mgmt::V2020_12_01::Models::ApiEntityReference
      end
      def rolling_upgrade_running_status
        Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeRunningStatus
      end
      def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      end
      def key_vault_secret_reference
        Azure::Compute::Mgmt::V2020_12_01::Models::KeyVaultSecretReference
      end
      def virtual_machine_scale_set_ip_tag
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIpTag
      end
      def virtual_hard_disk
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualHardDisk
      end
      def virtual_machine_scale_set_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      end
      def data_disk
        Azure::Compute::Mgmt::V2020_12_01::Models::DataDisk
      end
      def virtual_machine_scale_set_update_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      end
      def additional_capabilities
        Azure::Compute::Mgmt::V2020_12_01::Models::AdditionalCapabilities
      end
      def virtual_machine_scale_set_sku
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetSku
      end
      def availability_set_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySetListResult
      end
      def virtual_machine_scale_set_sku_capacity
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetSkuCapacity
      end
      def run_command_document_base
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandDocumentBase
      end
      def virtual_machine_scale_set_network_configuration_dns_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      end
      def dedicated_host_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostListResult
      end
      def virtual_machine_scale_set_list_with_link_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListWithLinkResult
      end
      def extended_location
        Azure::Compute::Mgmt::V2020_12_01::Models::ExtendedLocation
      end
      def virtual_machine_scale_set_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetListResult
      end
      def virtual_machine_scale_set_vmextensions_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtensionsListResult
      end
      def virtual_machine_scale_set_network_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetNetworkProfile
      end
      def virtual_machine_install_patches_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineInstallPatchesParameters
      end
      def virtual_machine_scale_set_update_network_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      end
      def virtual_machine_scale_set_instance_view
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetInstanceView
      end
      def hardware_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::HardwareProfile
      end
      def orchestration_service_summary
        Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceSummary
      end
      def virtual_machine_scale_set_vmnetwork_profile_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
      end
      def virtual_machine_scale_set_extension_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtensionListResult
      end
      def win_rmlistener
        Azure::Compute::Mgmt::V2020_12_01::Models::WinRMListener
      end
      def virtual_machine_scale_set_extension_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtensionProfile
      end
      def dedicated_host_available_capacity
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostAvailableCapacity
      end
      def terminate_notification_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::TerminateNotificationProfile
      end
      def recovery_walk_response
        Azure::Compute::Mgmt::V2020_12_01::Models::RecoveryWalkResponse
      end
      def scheduled_events_profile
        Azure::Compute::Mgmt::V2020_12_01::Models::ScheduledEventsProfile
      end
      def osdisk_image
        Azure::Compute::Mgmt::V2020_12_01::Models::OSDiskImage
      end
      def virtual_machine_scale_set_vmprofile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMProfile
      end
      def key_vault_key_reference
        Azure::Compute::Mgmt::V2020_12_01::Models::KeyVaultKeyReference
      end
      def virtual_machine_scale_set_update_vmprofile
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
      end
      def proximity_placement_group_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroupListResult
      end
      def virtual_machine_scale_set_vmextensions_summary
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      end
      def api_error
        Azure::Compute::Mgmt::V2020_12_01::Models::ApiError
      end
      def virtual_machine_scale_set_instance_view_statuses_summary
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      end
      def uefi_settings
        Azure::Compute::Mgmt::V2020_12_01::Models::UefiSettings
      end
      def virtual_machine_status_code_count
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineStatusCodeCount
      end
      def virtual_machine_reimage_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineReimageParameters
      end
      def virtual_machine_scale_set_vminstance_required_ids
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      end
      def ssh_public_keys_group_list_result
        Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeysGroupListResult
      end
      def virtual_machine_scale_set_vminstance_ids
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
      end
      def availability_set
        Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySet
      end
      def availability_set_update
        Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySetUpdate
      end
      def sub_resource_with_colocation_status
        Azure::Compute::Mgmt::V2020_12_01::Models::SubResourceWithColocationStatus
      end
      def proximity_placement_group
        Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroup
      end
      def proximity_placement_group_update
        Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroupUpdate
      end
      def dedicated_host_instance_view_with_name
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostInstanceViewWithName
      end
      def dedicated_host_group
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroup
      end
      def dedicated_host_group_update
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostGroupUpdate
      end
      def dedicated_host
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHost
      end
      def dedicated_host_update
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostUpdate
      end
      def ssh_public_key_resource
        Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeyResource
      end
      def ssh_public_key_update_resource
        Azure::Compute::Mgmt::V2020_12_01::Models::SshPublicKeyUpdateResource
      end
      def virtual_machine_extension_image
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionImage
      end
      def virtual_machine_image_resource
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineImageResource
      end
      def virtual_machine_extension
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtension
      end
      def virtual_machine_scale_set_vmextension
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtension
      end
      def virtual_machine_extension_update
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineExtensionUpdate
      end
      def virtual_machine_scale_set_vmextension_update
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMExtensionUpdate
      end
      def virtual_machine_image
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineImage
      end
      def virtual_machine_capture_result
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineCaptureResult
      end
      def image_reference
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageReference
      end
      def disk_encryption_set_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::DiskEncryptionSetParameters
      end
      def managed_disk_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::ManagedDiskParameters
      end
      def network_interface_reference
        Azure::Compute::Mgmt::V2020_12_01::Models::NetworkInterfaceReference
      end
      def virtual_machine
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachine
      end
      def virtual_machine_update
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineUpdate
      end
      def image_osdisk
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageOSDisk
      end
      def image_data_disk
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageDataDisk
      end
      def image
        Azure::Compute::Mgmt::V2020_12_01::Models::Image
      end
      def image_update
        Azure::Compute::Mgmt::V2020_12_01::Models::ImageUpdate
      end
      def virtual_machine_scale_set_ipconfiguration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetIPConfiguration
      end
      def virtual_machine_scale_set_update_ipconfiguration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      end
      def virtual_machine_scale_set_network_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
      end
      def virtual_machine_scale_set_update_network_configuration
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      end
      def virtual_machine_scale_set_extension
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtension
      end
      def virtual_machine_scale_set_extension_update
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetExtensionUpdate
      end
      def virtual_machine_scale_set
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSet
      end
      def virtual_machine_scale_set_vmreimage_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVMReimageParameters
      end
      def virtual_machine_scale_set_reimage_parameters
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetReimageParameters
      end
      def virtual_machine_scale_set_update
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetUpdate
      end
      def virtual_machine_scale_set_vm
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetVM
      end
      def rolling_upgrade_status_info
        Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeStatusInfo
      end
      def request_rate_by_interval_input
        Azure::Compute::Mgmt::V2020_12_01::Models::RequestRateByIntervalInput
      end
      def throttled_requests_input
        Azure::Compute::Mgmt::V2020_12_01::Models::ThrottledRequestsInput
      end
      def run_command_document
        Azure::Compute::Mgmt::V2020_12_01::Models::RunCommandDocument
      end
      def virtual_machine_run_command
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommand
      end
      def virtual_machine_run_command_update
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineRunCommandUpdate
      end
      def vm_disk_types
        Azure::Compute::Mgmt::V2020_12_01::Models::VmDiskTypes
      end
      def hyper_vgeneration_types
        Azure::Compute::Mgmt::V2020_12_01::Models::HyperVGenerationTypes
      end
      def status_level_types
        Azure::Compute::Mgmt::V2020_12_01::Models::StatusLevelTypes
      end
      def availability_set_sku_types
        Azure::Compute::Mgmt::V2020_12_01::Models::AvailabilitySetSkuTypes
      end
      def proximity_placement_group_type
        Azure::Compute::Mgmt::V2020_12_01::Models::ProximityPlacementGroupType
      end
      def dedicated_host_license_types
        Azure::Compute::Mgmt::V2020_12_01::Models::DedicatedHostLicenseTypes
      end
      def extended_location_types
        Azure::Compute::Mgmt::V2020_12_01::Models::ExtendedLocationTypes
      end
      def vmguest_patch_reboot_behavior
        Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchRebootBehavior
      end
      def patch_assessment_state
        Azure::Compute::Mgmt::V2020_12_01::Models::PatchAssessmentState
      end
      def patch_operation_status
        Azure::Compute::Mgmt::V2020_12_01::Models::PatchOperationStatus
      end
      def vmguest_patch_reboot_setting
        Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchRebootSetting
      end
      def vmguest_patch_classification_windows
        Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchClassificationWindows
      end
      def vmguest_patch_classification_linux
        Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchClassificationLinux
      end
      def vmguest_patch_reboot_status
        Azure::Compute::Mgmt::V2020_12_01::Models::VMGuestPatchRebootStatus
      end
      def patch_installation_state
        Azure::Compute::Mgmt::V2020_12_01::Models::PatchInstallationState
      end
      def operating_system_types
        Azure::Compute::Mgmt::V2020_12_01::Models::OperatingSystemTypes
      end
      def virtual_machine_size_types
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineSizeTypes
      end
      def caching_types
        Azure::Compute::Mgmt::V2020_12_01::Models::CachingTypes
      end
      def disk_create_option_types
        Azure::Compute::Mgmt::V2020_12_01::Models::DiskCreateOptionTypes
      end
      def disk_detach_option_types
        Azure::Compute::Mgmt::V2020_12_01::Models::DiskDetachOptionTypes
      end
      def storage_account_types
        Azure::Compute::Mgmt::V2020_12_01::Models::StorageAccountTypes
      end
      def diff_disk_options
        Azure::Compute::Mgmt::V2020_12_01::Models::DiffDiskOptions
      end
      def diff_disk_placement
        Azure::Compute::Mgmt::V2020_12_01::Models::DiffDiskPlacement
      end
      def security_types
        Azure::Compute::Mgmt::V2020_12_01::Models::SecurityTypes
      end
      def pass_names
        Azure::Compute::Mgmt::V2020_12_01::Models::PassNames
      end
      def component_names
        Azure::Compute::Mgmt::V2020_12_01::Models::ComponentNames
      end
      def setting_names
        Azure::Compute::Mgmt::V2020_12_01::Models::SettingNames
      end
      def protocol_types
        Azure::Compute::Mgmt::V2020_12_01::Models::ProtocolTypes
      end
      def windows_vmguest_patch_mode
        Azure::Compute::Mgmt::V2020_12_01::Models::WindowsVMGuestPatchMode
      end
      def linux_vmguest_patch_mode
        Azure::Compute::Mgmt::V2020_12_01::Models::LinuxVMGuestPatchMode
      end
      def virtual_machine_priority_types
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachinePriorityTypes
      end
      def virtual_machine_eviction_policy_types
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineEvictionPolicyTypes
      end
      def resource_identity_type
        Azure::Compute::Mgmt::V2020_12_01::Models::ResourceIdentityType
      end
      def maintenance_operation_result_code_types
        Azure::Compute::Mgmt::V2020_12_01::Models::MaintenanceOperationResultCodeTypes
      end
      def hyper_vgeneration_type
        Azure::Compute::Mgmt::V2020_12_01::Models::HyperVGenerationType
      end
      def upgrade_mode
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeMode
      end
      def virtual_machine_scale_set_scale_in_rules
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetScaleInRules
      end
      def orchestration_mode
        Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationMode
      end
      def operating_system_state_types
        Azure::Compute::Mgmt::V2020_12_01::Models::OperatingSystemStateTypes
      end
      def ipversion
        Azure::Compute::Mgmt::V2020_12_01::Models::IPVersion
      end
      def orchestration_service_names
        Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceNames
      end
      def orchestration_service_state
        Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceState
      end
      def virtual_machine_scale_set_sku_scale_type
        Azure::Compute::Mgmt::V2020_12_01::Models::VirtualMachineScaleSetSkuScaleType
      end
      def upgrade_state
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeState
      end
      def upgrade_operation_invoker
        Azure::Compute::Mgmt::V2020_12_01::Models::UpgradeOperationInvoker
      end
      def rolling_upgrade_status_code
        Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeStatusCode
      end
      def rolling_upgrade_action_type
        Azure::Compute::Mgmt::V2020_12_01::Models::RollingUpgradeActionType
      end
      def interval_in_mins
        Azure::Compute::Mgmt::V2020_12_01::Models::IntervalInMins
      end
      def orchestration_service_state_action
        Azure::Compute::Mgmt::V2020_12_01::Models::OrchestrationServiceStateAction
      end
      def execution_state
        Azure::Compute::Mgmt::V2020_12_01::Models::ExecutionState
      end
      def instance_view_types
        Azure::Compute::Mgmt::V2020_12_01::Models::InstanceViewTypes
      end
    end
  end
end
