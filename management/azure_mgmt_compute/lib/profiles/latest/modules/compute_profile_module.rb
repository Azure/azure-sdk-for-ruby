# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Compute::Profiles::Latest
  module Mgmt
    ResourceSkus = Azure::Compute::Mgmt::V2019_04_01::ResourceSkus
    Operations = Azure::Compute::Mgmt::V2019_07_01::Operations
    AvailabilitySets = Azure::Compute::Mgmt::V2019_07_01::AvailabilitySets
    ProximityPlacementGroups = Azure::Compute::Mgmt::V2019_07_01::ProximityPlacementGroups
    DedicatedHostGroups = Azure::Compute::Mgmt::V2019_07_01::DedicatedHostGroups
    DedicatedHosts = Azure::Compute::Mgmt::V2019_07_01::DedicatedHosts
    VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineExtensions
    VirtualMachineImages = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineImages
    UsageOperations = Azure::Compute::Mgmt::V2019_07_01::UsageOperations
    VirtualMachines = Azure::Compute::Mgmt::V2019_07_01::VirtualMachines
    VirtualMachineSizes = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineSizes
    Images = Azure::Compute::Mgmt::V2019_07_01::Images
    VirtualMachineScaleSets = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineScaleSets
    VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineScaleSetRollingUpgrades
    VirtualMachineScaleSetVMExtensions = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineScaleSetVMExtensions
    VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineScaleSetVMs
    LogAnalytics = Azure::Compute::Mgmt::V2019_07_01::LogAnalytics
    Disks = Azure::Compute::Mgmt::V2019_07_01::Disks
    Snapshots = Azure::Compute::Mgmt::V2019_07_01::Snapshots
    DiskEncryptionSets = Azure::Compute::Mgmt::V2019_07_01::DiskEncryptionSets
    Galleries = Azure::Compute::Mgmt::V2019_07_01::Galleries
    GalleryImages = Azure::Compute::Mgmt::V2019_07_01::GalleryImages
    GalleryImageVersions = Azure::Compute::Mgmt::V2019_07_01::GalleryImageVersions
    GalleryApplications = Azure::Compute::Mgmt::V2019_07_01::GalleryApplications
    GalleryApplicationVersions = Azure::Compute::Mgmt::V2019_07_01::GalleryApplicationVersions
    VirtualMachineRunCommands = Azure::Compute::Mgmt::V2019_07_01::VirtualMachineRunCommands

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
      VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateOSDisk
      VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetDataDisk
      ComputeOperationListResult = Azure::Compute::Mgmt::V2019_07_01::Models::ComputeOperationListResult
      VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetStorageProfile
      SubResource = Azure::Compute::Mgmt::V2019_07_01::Models::SubResource
      VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      ImageStorageProfile = Azure::Compute::Mgmt::V2019_07_01::Models::ImageStorageProfile
      GrantAccessData = Azure::Compute::Mgmt::V2019_07_01::Models::GrantAccessData
      AvailabilitySetListResult = Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySetListResult
      SnapshotSku = Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotSku
      RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::RecommendedMachineConfiguration
      ImageListResult = Azure::Compute::Mgmt::V2019_07_01::Models::ImageListResult
      SubResourceReadOnly = Azure::Compute::Mgmt::V2019_07_01::Models::SubResourceReadOnly
      VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      GalleryImageIdentifier = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageIdentifier
      VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIdentity
      DedicatedHostAllocatableVM = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostAllocatableVM
      VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetOSProfile
      DedicatedHostInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostInstanceView
      VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateOSProfile
      ReplicationStatus = Azure::Compute::Mgmt::V2019_07_01::Models::ReplicationStatus
      VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetManagedDiskParameters
      VirtualMachineSize = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineSize
      VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetOSDisk
      RegionalReplicationStatus = Azure::Compute::Mgmt::V2019_07_01::Models::RegionalReplicationStatus
      ComputeOperationValue = Azure::Compute::Mgmt::V2019_07_01::Models::ComputeOperationValue
      VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionInstanceView
      InstanceViewStatus = Azure::Compute::Mgmt::V2019_07_01::Models::InstanceViewStatus
      TargetRegion = Azure::Compute::Mgmt::V2019_07_01::Models::TargetRegion
      Sku = Azure::Compute::Mgmt::V2019_07_01::Models::Sku
      PurchasePlan = Azure::Compute::Mgmt::V2019_07_01::Models::PurchasePlan
      DiskList = Azure::Compute::Mgmt::V2019_07_01::Models::DiskList
      DataDiskImage = Azure::Compute::Mgmt::V2019_07_01::Models::DataDiskImage
      ApiEntityReference = Azure::Compute::Mgmt::V2019_07_01::Models::ApiEntityReference
      GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryArtifactPublishingProfileBase
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      Usage = Azure::Compute::Mgmt::V2019_07_01::Models::Usage
      VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIpTag
      VirtualMachineReimageParameters = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineReimageParameters
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      GalleryIdentifier = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryIdentifier
      VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      HardwareProfile = Azure::Compute::Mgmt::V2019_07_01::Models::HardwareProfile
      DiskUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::DiskUpdate
      KeyVaultSecretReference = Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultSecretReference
      GalleryDiskImage = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryDiskImage
      KeyVaultKeyReference = Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultKeyReference
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      VirtualHardDisk = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualHardDisk
      RunCommandResult = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandResult
      ManagedArtifact = Azure::Compute::Mgmt::V2019_07_01::Models::ManagedArtifact
      RunCommandListResult = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandListResult
      DataDisk = Azure::Compute::Mgmt::V2019_07_01::Models::DataDisk
      VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetNetworkProfile
      AdditionalCapabilities = Azure::Compute::Mgmt::V2019_07_01::Models::AdditionalCapabilities
      VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      WinRMListener = Azure::Compute::Mgmt::V2019_07_01::Models::WinRMListener
      RunCommandDocumentBase = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandDocumentBase
      WindowsConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::WindowsConfiguration
      VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetExtensionListResult
      SshConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::SshConfiguration
      VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetExtensionProfile
      VaultCertificate = Azure::Compute::Mgmt::V2019_07_01::Models::VaultCertificate
      TerminateNotificationProfile = Azure::Compute::Mgmt::V2019_07_01::Models::TerminateNotificationProfile
      OSProfile = Azure::Compute::Mgmt::V2019_07_01::Models::OSProfile
      ScheduledEventsProfile = Azure::Compute::Mgmt::V2019_07_01::Models::ScheduledEventsProfile
      EncryptionSetIdentity = Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionSetIdentity
      VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMProfile
      BootDiagnostics = Azure::Compute::Mgmt::V2019_07_01::Models::BootDiagnostics
      VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateVMProfile
      BillingProfile = Azure::Compute::Mgmt::V2019_07_01::Models::BillingProfile
      RunCommandParameterDefinition = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandParameterDefinition
      VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineAgentInstanceView
      RunCommandInput = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandInput
      BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::BootDiagnosticsInstanceView
      RunCommandInputParameter = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandInputParameter
      VirtualMachineIdentity = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineIdentity
      GalleryApplicationVersionList = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationVersionList
      VirtualMachineInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineInstanceView
      VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMInstanceIDs
      SnapshotUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotUpdate
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      AutomaticOSUpgradePolicy = Azure::Compute::Mgmt::V2019_07_01::Models::AutomaticOSUpgradePolicy
      VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineStatusCodeCount
      UpgradePolicy = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradePolicy
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      GalleryArtifactSource = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryArtifactSource
      VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      ImageDisk = Azure::Compute::Mgmt::V2019_07_01::Models::ImageDisk
      VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetInstanceView
      Disallowed = Azure::Compute::Mgmt::V2019_07_01::Models::Disallowed
      VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListResult
      ResourceRange = Azure::Compute::Mgmt::V2019_07_01::Models::ResourceRange
      VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListWithLinkResult
      DedicatedHostAvailableCapacity = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostAvailableCapacity
      VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetSkuCapacity
      DedicatedHostListResult = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostListResult
      VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetSku
      GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersionStorageProfile
      VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListSkusResult
      VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionsListResult
      ApiErrorBase = Azure::Compute::Mgmt::V2019_07_01::Models::ApiErrorBase
      AutomaticOSUpgradeProperties = Azure::Compute::Mgmt::V2019_07_01::Models::AutomaticOSUpgradeProperties
      InnerError = Azure::Compute::Mgmt::V2019_07_01::Models::InnerError
      ListUsagesResult = Azure::Compute::Mgmt::V2019_07_01::Models::ListUsagesResult
      ApiError = Azure::Compute::Mgmt::V2019_07_01::Models::ApiError
      Plan = Azure::Compute::Mgmt::V2019_07_01::Models::Plan
      RollbackStatusInfo = Azure::Compute::Mgmt::V2019_07_01::Models::RollbackStatusInfo
      DiskEncryptionSetUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetUpdate
      UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationHistoryStatus
      DiffDiskSettings = Azure::Compute::Mgmt::V2019_07_01::Models::DiffDiskSettings
      RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeProgressInfo
      StorageProfile = Azure::Compute::Mgmt::V2019_07_01::Models::StorageProfile
      UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      WinRMConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::WinRMConfiguration
      UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationHistoricalStatusInfo
      LinuxConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::LinuxConfiguration
      VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      AutomaticRepairsPolicy = Azure::Compute::Mgmt::V2019_07_01::Models::AutomaticRepairsPolicy
      VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineHealthStatus
      DiagnosticsProfile = Azure::Compute::Mgmt::V2019_07_01::Models::DiagnosticsProfile
      VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMInstanceView
      DiskInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::DiskInstanceView
      VirtualMachineScaleSetVMNetworkProfileConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
      MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2019_07_01::Models::MaintenanceRedeployStatus
      VirtualMachineScaleSetVMProtectionPolicy = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMProtectionPolicy
      VirtualMachineListResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineListResult
      GalleryApplicationList = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationList
      ScaleInPolicy = Azure::Compute::Mgmt::V2019_07_01::Models::ScaleInPolicy
      VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMListResult
      ImagePurchasePlan = Azure::Compute::Mgmt::V2019_07_01::Models::ImagePurchasePlan
      RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeRunningStatus
      DedicatedHostGroupListResult = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostGroupListResult
      GalleryImageVersionList = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersionList
      VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineSizeListResult
      OSDiskImage = Azure::Compute::Mgmt::V2019_07_01::Models::OSDiskImage
      Resource = Azure::Compute::Mgmt::V2019_07_01::Models::Resource
      VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineCaptureParameters
      UpdateResource = Azure::Compute::Mgmt::V2019_07_01::Models::UpdateResource
      DiskEncryptionSettings = Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSettings
      RecoveryWalkResponse = Azure::Compute::Mgmt::V2019_07_01::Models::RecoveryWalkResponse
      AdditionalUnattendContent = Azure::Compute::Mgmt::V2019_07_01::Models::AdditionalUnattendContent
      GalleryImageList = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageList
      VaultSecretGroup = Azure::Compute::Mgmt::V2019_07_01::Models::VaultSecretGroup
      GalleryList = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryList
      VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionHandlerInstanceView
      LogAnalyticsInputBase = Azure::Compute::Mgmt::V2019_07_01::Models::LogAnalyticsInputBase
      SnapshotList = Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotList
      LogAnalyticsOutput = Azure::Compute::Mgmt::V2019_07_01::Models::LogAnalyticsOutput
      AccessUri = Azure::Compute::Mgmt::V2019_07_01::Models::AccessUri
      LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2019_07_01::Models::LogAnalyticsOperationResult
      GalleryArtifactVersionSource = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryArtifactVersionSource
      VMScaleSetConvertToSinglePlacementGroupInput = Azure::Compute::Mgmt::V2019_07_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
      UsageName = Azure::Compute::Mgmt::V2019_07_01::Models::UsageName
      DiskSku = Azure::Compute::Mgmt::V2019_07_01::Models::DiskSku
      OSDisk = Azure::Compute::Mgmt::V2019_07_01::Models::OSDisk
      ImageDiskReference = Azure::Compute::Mgmt::V2019_07_01::Models::ImageDiskReference
      NetworkProfile = Azure::Compute::Mgmt::V2019_07_01::Models::NetworkProfile
      CreationData = Azure::Compute::Mgmt::V2019_07_01::Models::CreationData
      RollingUpgradePolicy = Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradePolicy
      SourceVault = Azure::Compute::Mgmt::V2019_07_01::Models::SourceVault
      UserArtifactSource = Azure::Compute::Mgmt::V2019_07_01::Models::UserArtifactSource
      KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultAndSecretReference
      SshPublicKey = Azure::Compute::Mgmt::V2019_07_01::Models::SshPublicKey
      KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultAndKeyReference
      ProximityPlacementGroupListResult = Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroupListResult
      EncryptionSettingsElement = Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionSettingsElement
      VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      EncryptionSettingsCollection = Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionSettingsCollection
      DiskEncryptionSetList = Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetList
      Encryption = Azure::Compute::Mgmt::V2019_07_01::Models::Encryption
      AvailabilitySet = Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySet
      AvailabilitySetUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySetUpdate
      ProximityPlacementGroup = Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroup
      ProximityPlacementGroupUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroupUpdate
      DedicatedHostGroup = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostGroup
      DedicatedHostGroupUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostGroupUpdate
      DedicatedHost = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHost
      DedicatedHostUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostUpdate
      VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtension
      VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionUpdate
      VirtualMachineImage = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineCaptureResult
      ImageReference = Azure::Compute::Mgmt::V2019_07_01::Models::ImageReference
      DiskEncryptionSetParameters = Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetParameters
      ManagedDiskParameters = Azure::Compute::Mgmt::V2019_07_01::Models::ManagedDiskParameters
      NetworkInterfaceReference = Azure::Compute::Mgmt::V2019_07_01::Models::NetworkInterfaceReference
      VirtualMachine = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachine
      VirtualMachineUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineUpdate
      ImageOSDisk = Azure::Compute::Mgmt::V2019_07_01::Models::ImageOSDisk
      ImageDataDisk = Azure::Compute::Mgmt::V2019_07_01::Models::ImageDataDisk
      Image = Azure::Compute::Mgmt::V2019_07_01::Models::Image
      ImageUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::ImageUpdate
      VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetVMReimageParameters = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMReimageParameters
      VirtualMachineScaleSetReimageParameters = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetReimageParameters
      VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdate
      VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVM
      RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeStatusInfo
      RequestRateByIntervalInput = Azure::Compute::Mgmt::V2019_07_01::Models::RequestRateByIntervalInput
      ThrottledRequestsInput = Azure::Compute::Mgmt::V2019_07_01::Models::ThrottledRequestsInput
      Disk = Azure::Compute::Mgmt::V2019_07_01::Models::Disk
      Snapshot = Azure::Compute::Mgmt::V2019_07_01::Models::Snapshot
      DiskEncryptionSet = Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSet
      Gallery = Azure::Compute::Mgmt::V2019_07_01::Models::Gallery
      GalleryApplication = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplication
      GalleryApplicationVersionPublishingProfile = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationVersionPublishingProfile
      GalleryApplicationVersion = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationVersion
      GalleryImage = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImage
      GalleryImageVersionPublishingProfile = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersionPublishingProfile
      GalleryOSDiskImage = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryOSDiskImage
      GalleryDataDiskImage = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryDataDiskImage
      GalleryImageVersion = Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersion
      RunCommandDocument = Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandDocument
      HyperVGenerationTypes = Azure::Compute::Mgmt::V2019_07_01::Models::HyperVGenerationTypes
      StatusLevelTypes = Azure::Compute::Mgmt::V2019_07_01::Models::StatusLevelTypes
      AvailabilitySetSkuTypes = Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySetSkuTypes
      ProximityPlacementGroupType = Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroupType
      DedicatedHostLicenseTypes = Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostLicenseTypes
      OperatingSystemTypes = Azure::Compute::Mgmt::V2019_07_01::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::Compute::Mgmt::V2019_07_01::Models::CachingTypes
      DiskCreateOptionTypes = Azure::Compute::Mgmt::V2019_07_01::Models::DiskCreateOptionTypes
      StorageAccountTypes = Azure::Compute::Mgmt::V2019_07_01::Models::StorageAccountTypes
      DiffDiskOptions = Azure::Compute::Mgmt::V2019_07_01::Models::DiffDiskOptions
      PassNames = Azure::Compute::Mgmt::V2019_07_01::Models::PassNames
      ComponentNames = Azure::Compute::Mgmt::V2019_07_01::Models::ComponentNames
      SettingNames = Azure::Compute::Mgmt::V2019_07_01::Models::SettingNames
      ProtocolTypes = Azure::Compute::Mgmt::V2019_07_01::Models::ProtocolTypes
      VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachinePriorityTypes
      VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineEvictionPolicyTypes
      ResourceIdentityType = Azure::Compute::Mgmt::V2019_07_01::Models::ResourceIdentityType
      MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2019_07_01::Models::MaintenanceOperationResultCodeTypes
      HyperVGenerationType = Azure::Compute::Mgmt::V2019_07_01::Models::HyperVGenerationType
      UpgradeMode = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeMode
      VirtualMachineScaleSetScaleInRules = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetScaleInRules
      OperatingSystemStateTypes = Azure::Compute::Mgmt::V2019_07_01::Models::OperatingSystemStateTypes
      IPVersion = Azure::Compute::Mgmt::V2019_07_01::Models::IPVersion
      VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetSkuScaleType
      UpgradeState = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeState
      UpgradeOperationInvoker = Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationInvoker
      RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeStatusCode
      RollingUpgradeActionType = Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeActionType
      IntervalInMins = Azure::Compute::Mgmt::V2019_07_01::Models::IntervalInMins
      DiskStorageAccountTypes = Azure::Compute::Mgmt::V2019_07_01::Models::DiskStorageAccountTypes
      HyperVGeneration = Azure::Compute::Mgmt::V2019_07_01::Models::HyperVGeneration
      DiskCreateOption = Azure::Compute::Mgmt::V2019_07_01::Models::DiskCreateOption
      DiskState = Azure::Compute::Mgmt::V2019_07_01::Models::DiskState
      EncryptionType = Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionType
      SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotStorageAccountTypes
      AccessLevel = Azure::Compute::Mgmt::V2019_07_01::Models::AccessLevel
      DiskEncryptionSetIdentityType = Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetIdentityType
      AggregatedReplicationState = Azure::Compute::Mgmt::V2019_07_01::Models::AggregatedReplicationState
      ReplicationState = Azure::Compute::Mgmt::V2019_07_01::Models::ReplicationState
      StorageAccountType = Azure::Compute::Mgmt::V2019_07_01::Models::StorageAccountType
      HostCaching = Azure::Compute::Mgmt::V2019_07_01::Models::HostCaching
      InstanceViewTypes = Azure::Compute::Mgmt::V2019_07_01::Models::InstanceViewTypes
      ReplicationStatusTypes = Azure::Compute::Mgmt::V2019_07_01::Models::ReplicationStatusTypes
    end

    #
    # ComputeManagementClass
    #
    class ComputeManagementClass
      attr_reader :resource_skus, :operations, :availability_sets, :proximity_placement_groups, :dedicated_host_groups, :dedicated_hosts, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machines, :virtual_machine_sizes, :images, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vmextensions, :virtual_machine_scale_set_vms, :log_analytics, :disks, :snapshots, :disk_encryption_sets, :galleries, :gallery_images, :gallery_image_versions, :gallery_applications, :gallery_application_versions, :virtual_machine_run_commands, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Compute::Mgmt::V2018_09_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @client_1 = Azure::Compute::Mgmt::V2019_03_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)

        @client_2 = Azure::Compute::Mgmt::V2019_04_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @resource_skus = @client_2.resource_skus

        @client_3 = Azure::Compute::Mgmt::V2019_07_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @operations = @client_3.operations
        @availability_sets = @client_3.availability_sets
        @proximity_placement_groups = @client_3.proximity_placement_groups
        @dedicated_host_groups = @client_3.dedicated_host_groups
        @dedicated_hosts = @client_3.dedicated_hosts
        @virtual_machine_extension_images = @client_3.virtual_machine_extension_images
        @virtual_machine_extensions = @client_3.virtual_machine_extensions
        @virtual_machine_images = @client_3.virtual_machine_images
        @usage_operations = @client_3.usage_operations
        @virtual_machines = @client_3.virtual_machines
        @virtual_machine_sizes = @client_3.virtual_machine_sizes
        @images = @client_3.images
        @virtual_machine_scale_sets = @client_3.virtual_machine_scale_sets
        @virtual_machine_scale_set_extensions = @client_3.virtual_machine_scale_set_extensions
        @virtual_machine_scale_set_rolling_upgrades = @client_3.virtual_machine_scale_set_rolling_upgrades
        @virtual_machine_scale_set_vmextensions = @client_3.virtual_machine_scale_set_vmextensions
        @virtual_machine_scale_set_vms = @client_3.virtual_machine_scale_set_vms
        @log_analytics = @client_3.log_analytics
        @disks = @client_3.disks
        @snapshots = @client_3.snapshots
        @disk_encryption_sets = @client_3.disk_encryption_sets
        @galleries = @client_3.galleries
        @gallery_images = @client_3.gallery_images
        @gallery_image_versions = @client_3.gallery_image_versions
        @gallery_applications = @client_3.gallery_applications
        @gallery_application_versions = @client_3.gallery_application_versions
        @virtual_machine_run_commands = @client_3.virtual_machine_run_commands

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Compute/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_3.respond_to?method
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
      def virtual_machine_scale_set_update_osdisk
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateOSDisk
      end
      def virtual_machine_scale_set_data_disk
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetDataDisk
      end
      def compute_operation_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::ComputeOperationListResult
      end
      def virtual_machine_scale_set_storage_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetStorageProfile
      end
      def sub_resource
        Azure::Compute::Mgmt::V2019_07_01::Models::SubResource
      end
      def virtual_machine_scale_set_update_storage_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      end
      def image_storage_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageStorageProfile
      end
      def grant_access_data
        Azure::Compute::Mgmt::V2019_07_01::Models::GrantAccessData
      end
      def availability_set_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySetListResult
      end
      def snapshot_sku
        Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotSku
      end
      def recommended_machine_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::RecommendedMachineConfiguration
      end
      def image_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageListResult
      end
      def sub_resource_read_only
        Azure::Compute::Mgmt::V2019_07_01::Models::SubResourceReadOnly
      end
      def virtual_machine_scale_set_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      end
      def gallery_image_identifier
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageIdentifier
      end
      def virtual_machine_scale_set_identity
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIdentity
      end
      def dedicated_host_allocatable_vm
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostAllocatableVM
      end
      def virtual_machine_scale_set_osprofile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetOSProfile
      end
      def dedicated_host_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostInstanceView
      end
      def virtual_machine_scale_set_update_osprofile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateOSProfile
      end
      def replication_status
        Azure::Compute::Mgmt::V2019_07_01::Models::ReplicationStatus
      end
      def virtual_machine_scale_set_managed_disk_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetManagedDiskParameters
      end
      def virtual_machine_size
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineSize
      end
      def virtual_machine_scale_set_osdisk
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetOSDisk
      end
      def regional_replication_status
        Azure::Compute::Mgmt::V2019_07_01::Models::RegionalReplicationStatus
      end
      def compute_operation_value
        Azure::Compute::Mgmt::V2019_07_01::Models::ComputeOperationValue
      end
      def virtual_machine_extension_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionInstanceView
      end
      def instance_view_status
        Azure::Compute::Mgmt::V2019_07_01::Models::InstanceViewStatus
      end
      def target_region
        Azure::Compute::Mgmt::V2019_07_01::Models::TargetRegion
      end
      def sku
        Azure::Compute::Mgmt::V2019_07_01::Models::Sku
      end
      def purchase_plan
        Azure::Compute::Mgmt::V2019_07_01::Models::PurchasePlan
      end
      def disk_list
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskList
      end
      def data_disk_image
        Azure::Compute::Mgmt::V2019_07_01::Models::DataDiskImage
      end
      def api_entity_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::ApiEntityReference
      end
      def gallery_artifact_publishing_profile_base
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryArtifactPublishingProfileBase
      end
      def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      end
      def usage
        Azure::Compute::Mgmt::V2019_07_01::Models::Usage
      end
      def virtual_machine_scale_set_ip_tag
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIpTag
      end
      def virtual_machine_reimage_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineReimageParameters
      end
      def virtual_machine_scale_set_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      end
      def gallery_identifier
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryIdentifier
      end
      def virtual_machine_scale_set_update_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      end
      def hardware_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::HardwareProfile
      end
      def disk_update
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskUpdate
      end
      def key_vault_secret_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultSecretReference
      end
      def gallery_disk_image
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryDiskImage
      end
      def key_vault_key_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultKeyReference
      end
      def virtual_machine_scale_set_network_configuration_dns_settings
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      end
      def virtual_hard_disk
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualHardDisk
      end
      def run_command_result
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandResult
      end
      def managed_artifact
        Azure::Compute::Mgmt::V2019_07_01::Models::ManagedArtifact
      end
      def run_command_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandListResult
      end
      def data_disk
        Azure::Compute::Mgmt::V2019_07_01::Models::DataDisk
      end
      def virtual_machine_scale_set_network_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetNetworkProfile
      end
      def additional_capabilities
        Azure::Compute::Mgmt::V2019_07_01::Models::AdditionalCapabilities
      end
      def virtual_machine_scale_set_update_network_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      end
      def win_rmlistener
        Azure::Compute::Mgmt::V2019_07_01::Models::WinRMListener
      end
      def run_command_document_base
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandDocumentBase
      end
      def windows_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::WindowsConfiguration
      end
      def virtual_machine_scale_set_extension_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetExtensionListResult
      end
      def ssh_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::SshConfiguration
      end
      def virtual_machine_scale_set_extension_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetExtensionProfile
      end
      def vault_certificate
        Azure::Compute::Mgmt::V2019_07_01::Models::VaultCertificate
      end
      def terminate_notification_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::TerminateNotificationProfile
      end
      def osprofile
        Azure::Compute::Mgmt::V2019_07_01::Models::OSProfile
      end
      def scheduled_events_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::ScheduledEventsProfile
      end
      def encryption_set_identity
        Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionSetIdentity
      end
      def virtual_machine_scale_set_vmprofile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMProfile
      end
      def boot_diagnostics
        Azure::Compute::Mgmt::V2019_07_01::Models::BootDiagnostics
      end
      def virtual_machine_scale_set_update_vmprofile
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateVMProfile
      end
      def billing_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::BillingProfile
      end
      def run_command_parameter_definition
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandParameterDefinition
      end
      def virtual_machine_agent_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineAgentInstanceView
      end
      def run_command_input
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandInput
      end
      def boot_diagnostics_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::BootDiagnosticsInstanceView
      end
      def run_command_input_parameter
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandInputParameter
      end
      def virtual_machine_identity
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineIdentity
      end
      def gallery_application_version_list
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationVersionList
      end
      def virtual_machine_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineInstanceView
      end
      def virtual_machine_scale_set_vminstance_ids
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMInstanceIDs
      end
      def snapshot_update
        Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotUpdate
      end
      def virtual_machine_scale_set_vminstance_required_ids
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      end
      def automatic_osupgrade_policy
        Azure::Compute::Mgmt::V2019_07_01::Models::AutomaticOSUpgradePolicy
      end
      def virtual_machine_status_code_count
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineStatusCodeCount
      end
      def upgrade_policy
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradePolicy
      end
      def virtual_machine_scale_set_instance_view_statuses_summary
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      end
      def gallery_artifact_source
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryArtifactSource
      end
      def virtual_machine_scale_set_vmextensions_summary
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      end
      def image_disk
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageDisk
      end
      def virtual_machine_scale_set_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetInstanceView
      end
      def disallowed
        Azure::Compute::Mgmt::V2019_07_01::Models::Disallowed
      end
      def virtual_machine_scale_set_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListResult
      end
      def resource_range
        Azure::Compute::Mgmt::V2019_07_01::Models::ResourceRange
      end
      def virtual_machine_scale_set_list_with_link_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListWithLinkResult
      end
      def dedicated_host_available_capacity
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostAvailableCapacity
      end
      def virtual_machine_scale_set_sku_capacity
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetSkuCapacity
      end
      def dedicated_host_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostListResult
      end
      def virtual_machine_scale_set_sku
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetSku
      end
      def gallery_image_version_storage_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersionStorageProfile
      end
      def virtual_machine_scale_set_list_skus_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListSkusResult
      end
      def virtual_machine_extensions_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionsListResult
      end
      def api_error_base
        Azure::Compute::Mgmt::V2019_07_01::Models::ApiErrorBase
      end
      def automatic_osupgrade_properties
        Azure::Compute::Mgmt::V2019_07_01::Models::AutomaticOSUpgradeProperties
      end
      def inner_error
        Azure::Compute::Mgmt::V2019_07_01::Models::InnerError
      end
      def list_usages_result
        Azure::Compute::Mgmt::V2019_07_01::Models::ListUsagesResult
      end
      def api_error
        Azure::Compute::Mgmt::V2019_07_01::Models::ApiError
      end
      def plan
        Azure::Compute::Mgmt::V2019_07_01::Models::Plan
      end
      def rollback_status_info
        Azure::Compute::Mgmt::V2019_07_01::Models::RollbackStatusInfo
      end
      def disk_encryption_set_update
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetUpdate
      end
      def upgrade_operation_history_status
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationHistoryStatus
      end
      def diff_disk_settings
        Azure::Compute::Mgmt::V2019_07_01::Models::DiffDiskSettings
      end
      def rolling_upgrade_progress_info
        Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeProgressInfo
      end
      def storage_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::StorageProfile
      end
      def upgrade_operation_historical_status_info_properties
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      end
      def win_rmconfiguration
        Azure::Compute::Mgmt::V2019_07_01::Models::WinRMConfiguration
      end
      def upgrade_operation_historical_status_info
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationHistoricalStatusInfo
      end
      def linux_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::LinuxConfiguration
      end
      def virtual_machine_scale_set_list_osupgrade_history
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      end
      def automatic_repairs_policy
        Azure::Compute::Mgmt::V2019_07_01::Models::AutomaticRepairsPolicy
      end
      def virtual_machine_health_status
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineHealthStatus
      end
      def diagnostics_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::DiagnosticsProfile
      end
      def virtual_machine_scale_set_vminstance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMInstanceView
      end
      def disk_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskInstanceView
      end
      def virtual_machine_scale_set_vmnetwork_profile_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
      end
      def maintenance_redeploy_status
        Azure::Compute::Mgmt::V2019_07_01::Models::MaintenanceRedeployStatus
      end
      def virtual_machine_scale_set_vmprotection_policy
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMProtectionPolicy
      end
      def virtual_machine_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineListResult
      end
      def gallery_application_list
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationList
      end
      def scale_in_policy
        Azure::Compute::Mgmt::V2019_07_01::Models::ScaleInPolicy
      end
      def virtual_machine_scale_set_vmlist_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMListResult
      end
      def image_purchase_plan
        Azure::Compute::Mgmt::V2019_07_01::Models::ImagePurchasePlan
      end
      def rolling_upgrade_running_status
        Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeRunningStatus
      end
      def dedicated_host_group_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostGroupListResult
      end
      def gallery_image_version_list
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersionList
      end
      def virtual_machine_size_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineSizeListResult
      end
      def osdisk_image
        Azure::Compute::Mgmt::V2019_07_01::Models::OSDiskImage
      end
      def resource
        Azure::Compute::Mgmt::V2019_07_01::Models::Resource
      end
      def virtual_machine_capture_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineCaptureParameters
      end
      def update_resource
        Azure::Compute::Mgmt::V2019_07_01::Models::UpdateResource
      end
      def disk_encryption_settings
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSettings
      end
      def recovery_walk_response
        Azure::Compute::Mgmt::V2019_07_01::Models::RecoveryWalkResponse
      end
      def additional_unattend_content
        Azure::Compute::Mgmt::V2019_07_01::Models::AdditionalUnattendContent
      end
      def gallery_image_list
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageList
      end
      def vault_secret_group
        Azure::Compute::Mgmt::V2019_07_01::Models::VaultSecretGroup
      end
      def gallery_list
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryList
      end
      def virtual_machine_extension_handler_instance_view
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionHandlerInstanceView
      end
      def log_analytics_input_base
        Azure::Compute::Mgmt::V2019_07_01::Models::LogAnalyticsInputBase
      end
      def snapshot_list
        Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotList
      end
      def log_analytics_output
        Azure::Compute::Mgmt::V2019_07_01::Models::LogAnalyticsOutput
      end
      def access_uri
        Azure::Compute::Mgmt::V2019_07_01::Models::AccessUri
      end
      def log_analytics_operation_result
        Azure::Compute::Mgmt::V2019_07_01::Models::LogAnalyticsOperationResult
      end
      def gallery_artifact_version_source
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryArtifactVersionSource
      end
      def vmscale_set_convert_to_single_placement_group_input
        Azure::Compute::Mgmt::V2019_07_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
      end
      def usage_name
        Azure::Compute::Mgmt::V2019_07_01::Models::UsageName
      end
      def disk_sku
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskSku
      end
      def osdisk
        Azure::Compute::Mgmt::V2019_07_01::Models::OSDisk
      end
      def image_disk_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageDiskReference
      end
      def network_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::NetworkProfile
      end
      def creation_data
        Azure::Compute::Mgmt::V2019_07_01::Models::CreationData
      end
      def rolling_upgrade_policy
        Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradePolicy
      end
      def source_vault
        Azure::Compute::Mgmt::V2019_07_01::Models::SourceVault
      end
      def user_artifact_source
        Azure::Compute::Mgmt::V2019_07_01::Models::UserArtifactSource
      end
      def key_vault_and_secret_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultAndSecretReference
      end
      def ssh_public_key
        Azure::Compute::Mgmt::V2019_07_01::Models::SshPublicKey
      end
      def key_vault_and_key_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::KeyVaultAndKeyReference
      end
      def proximity_placement_group_list_result
        Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroupListResult
      end
      def encryption_settings_element
        Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionSettingsElement
      end
      def virtual_machine_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      end
      def encryption_settings_collection
        Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionSettingsCollection
      end
      def disk_encryption_set_list
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetList
      end
      def encryption
        Azure::Compute::Mgmt::V2019_07_01::Models::Encryption
      end
      def availability_set
        Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySet
      end
      def availability_set_update
        Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySetUpdate
      end
      def proximity_placement_group
        Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroup
      end
      def proximity_placement_group_update
        Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroupUpdate
      end
      def dedicated_host_group
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostGroup
      end
      def dedicated_host_group_update
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostGroupUpdate
      end
      def dedicated_host
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHost
      end
      def dedicated_host_update
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostUpdate
      end
      def virtual_machine_extension_image
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionImage
      end
      def virtual_machine_image_resource
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineImageResource
      end
      def virtual_machine_extension
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtension
      end
      def virtual_machine_extension_update
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineExtensionUpdate
      end
      def virtual_machine_image
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineImage
      end
      def virtual_machine_capture_result
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineCaptureResult
      end
      def image_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageReference
      end
      def disk_encryption_set_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetParameters
      end
      def managed_disk_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::ManagedDiskParameters
      end
      def network_interface_reference
        Azure::Compute::Mgmt::V2019_07_01::Models::NetworkInterfaceReference
      end
      def virtual_machine
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachine
      end
      def virtual_machine_update
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineUpdate
      end
      def image_osdisk
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageOSDisk
      end
      def image_data_disk
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageDataDisk
      end
      def image
        Azure::Compute::Mgmt::V2019_07_01::Models::Image
      end
      def image_update
        Azure::Compute::Mgmt::V2019_07_01::Models::ImageUpdate
      end
      def virtual_machine_scale_set_ipconfiguration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetIPConfiguration
      end
      def virtual_machine_scale_set_update_ipconfiguration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      end
      def virtual_machine_scale_set_network_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetNetworkConfiguration
      end
      def virtual_machine_scale_set_update_network_configuration
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      end
      def virtual_machine_scale_set_extension
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetExtension
      end
      def virtual_machine_scale_set
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSet
      end
      def virtual_machine_scale_set_vmreimage_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVMReimageParameters
      end
      def virtual_machine_scale_set_reimage_parameters
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetReimageParameters
      end
      def virtual_machine_scale_set_update
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetUpdate
      end
      def virtual_machine_scale_set_vm
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetVM
      end
      def rolling_upgrade_status_info
        Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeStatusInfo
      end
      def request_rate_by_interval_input
        Azure::Compute::Mgmt::V2019_07_01::Models::RequestRateByIntervalInput
      end
      def throttled_requests_input
        Azure::Compute::Mgmt::V2019_07_01::Models::ThrottledRequestsInput
      end
      def disk
        Azure::Compute::Mgmt::V2019_07_01::Models::Disk
      end
      def snapshot
        Azure::Compute::Mgmt::V2019_07_01::Models::Snapshot
      end
      def disk_encryption_set
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSet
      end
      def gallery
        Azure::Compute::Mgmt::V2019_07_01::Models::Gallery
      end
      def gallery_application
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplication
      end
      def gallery_application_version_publishing_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationVersionPublishingProfile
      end
      def gallery_application_version
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryApplicationVersion
      end
      def gallery_image
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImage
      end
      def gallery_image_version_publishing_profile
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersionPublishingProfile
      end
      def gallery_osdisk_image
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryOSDiskImage
      end
      def gallery_data_disk_image
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryDataDiskImage
      end
      def gallery_image_version
        Azure::Compute::Mgmt::V2019_07_01::Models::GalleryImageVersion
      end
      def run_command_document
        Azure::Compute::Mgmt::V2019_07_01::Models::RunCommandDocument
      end
      def hyper_vgeneration_types
        Azure::Compute::Mgmt::V2019_07_01::Models::HyperVGenerationTypes
      end
      def status_level_types
        Azure::Compute::Mgmt::V2019_07_01::Models::StatusLevelTypes
      end
      def availability_set_sku_types
        Azure::Compute::Mgmt::V2019_07_01::Models::AvailabilitySetSkuTypes
      end
      def proximity_placement_group_type
        Azure::Compute::Mgmt::V2019_07_01::Models::ProximityPlacementGroupType
      end
      def dedicated_host_license_types
        Azure::Compute::Mgmt::V2019_07_01::Models::DedicatedHostLicenseTypes
      end
      def operating_system_types
        Azure::Compute::Mgmt::V2019_07_01::Models::OperatingSystemTypes
      end
      def virtual_machine_size_types
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineSizeTypes
      end
      def caching_types
        Azure::Compute::Mgmt::V2019_07_01::Models::CachingTypes
      end
      def disk_create_option_types
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskCreateOptionTypes
      end
      def storage_account_types
        Azure::Compute::Mgmt::V2019_07_01::Models::StorageAccountTypes
      end
      def diff_disk_options
        Azure::Compute::Mgmt::V2019_07_01::Models::DiffDiskOptions
      end
      def pass_names
        Azure::Compute::Mgmt::V2019_07_01::Models::PassNames
      end
      def component_names
        Azure::Compute::Mgmt::V2019_07_01::Models::ComponentNames
      end
      def setting_names
        Azure::Compute::Mgmt::V2019_07_01::Models::SettingNames
      end
      def protocol_types
        Azure::Compute::Mgmt::V2019_07_01::Models::ProtocolTypes
      end
      def virtual_machine_priority_types
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachinePriorityTypes
      end
      def virtual_machine_eviction_policy_types
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineEvictionPolicyTypes
      end
      def resource_identity_type
        Azure::Compute::Mgmt::V2019_07_01::Models::ResourceIdentityType
      end
      def maintenance_operation_result_code_types
        Azure::Compute::Mgmt::V2019_07_01::Models::MaintenanceOperationResultCodeTypes
      end
      def hyper_vgeneration_type
        Azure::Compute::Mgmt::V2019_07_01::Models::HyperVGenerationType
      end
      def upgrade_mode
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeMode
      end
      def virtual_machine_scale_set_scale_in_rules
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetScaleInRules
      end
      def operating_system_state_types
        Azure::Compute::Mgmt::V2019_07_01::Models::OperatingSystemStateTypes
      end
      def ipversion
        Azure::Compute::Mgmt::V2019_07_01::Models::IPVersion
      end
      def virtual_machine_scale_set_sku_scale_type
        Azure::Compute::Mgmt::V2019_07_01::Models::VirtualMachineScaleSetSkuScaleType
      end
      def upgrade_state
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeState
      end
      def upgrade_operation_invoker
        Azure::Compute::Mgmt::V2019_07_01::Models::UpgradeOperationInvoker
      end
      def rolling_upgrade_status_code
        Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeStatusCode
      end
      def rolling_upgrade_action_type
        Azure::Compute::Mgmt::V2019_07_01::Models::RollingUpgradeActionType
      end
      def interval_in_mins
        Azure::Compute::Mgmt::V2019_07_01::Models::IntervalInMins
      end
      def disk_storage_account_types
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskStorageAccountTypes
      end
      def hyper_vgeneration
        Azure::Compute::Mgmt::V2019_07_01::Models::HyperVGeneration
      end
      def disk_create_option
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskCreateOption
      end
      def disk_state
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskState
      end
      def encryption_type
        Azure::Compute::Mgmt::V2019_07_01::Models::EncryptionType
      end
      def snapshot_storage_account_types
        Azure::Compute::Mgmt::V2019_07_01::Models::SnapshotStorageAccountTypes
      end
      def access_level
        Azure::Compute::Mgmt::V2019_07_01::Models::AccessLevel
      end
      def disk_encryption_set_identity_type
        Azure::Compute::Mgmt::V2019_07_01::Models::DiskEncryptionSetIdentityType
      end
      def aggregated_replication_state
        Azure::Compute::Mgmt::V2019_07_01::Models::AggregatedReplicationState
      end
      def replication_state
        Azure::Compute::Mgmt::V2019_07_01::Models::ReplicationState
      end
      def storage_account_type
        Azure::Compute::Mgmt::V2019_07_01::Models::StorageAccountType
      end
      def host_caching
        Azure::Compute::Mgmt::V2019_07_01::Models::HostCaching
      end
      def instance_view_types
        Azure::Compute::Mgmt::V2019_07_01::Models::InstanceViewTypes
      end
      def replication_status_types
        Azure::Compute::Mgmt::V2019_07_01::Models::ReplicationStatusTypes
      end
    end
  end
end
