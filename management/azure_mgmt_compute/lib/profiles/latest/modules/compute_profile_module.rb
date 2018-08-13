# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Compute::Profiles::Latest
  module Mgmt
    ResourceSkus = Azure::Compute::Mgmt::V2017_09_01::ResourceSkus
    Disks = Azure::Compute::Mgmt::V2018_04_01::Disks
    Snapshots = Azure::Compute::Mgmt::V2018_04_01::Snapshots
    AvailabilitySets = Azure::Compute::Mgmt::V2018_06_01::AvailabilitySets
    VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineExtensions
    VirtualMachines = Azure::Compute::Mgmt::V2018_06_01::VirtualMachines
    VirtualMachineImages = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineImages
    UsageOperations = Azure::Compute::Mgmt::V2018_06_01::UsageOperations
    VirtualMachineSizes = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineSizes
    VirtualMachineScaleSets = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSets
    VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetVMs
    Galleries = Azure::Compute::Mgmt::V2018_06_01::Galleries
    GalleryImages = Azure::Compute::Mgmt::V2018_06_01::GalleryImages
    GalleryImageVersions = Azure::Compute::Mgmt::V2018_06_01::GalleryImageVersions
    Operations = Azure::Compute::Mgmt::V2018_06_01::Operations
    Images = Azure::Compute::Mgmt::V2018_06_01::Images
    VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetRollingUpgrades
    LogAnalytics = Azure::Compute::Mgmt::V2018_06_01::LogAnalytics
    VirtualMachineRunCommands = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineRunCommands

    module Models
      ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
      ResourceSkuRestrictions = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictions
      ResourceSkuCapacity = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacity
      ResourceSkuLocationInfo = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuLocationInfo
      ResourceSkuCapabilities = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapabilities
      ResourceSku = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSku
      ResourceSkuCosts = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCosts
      ResourceSkusResult = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkusResult
      ResourceSkuRestrictionInfo = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionInfo
      ResourceSkuCapacityScaleType = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacityScaleType
      ResourceSkuRestrictionsType = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsType
      OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      EncryptionSettings = Azure::Compute::Mgmt::V2018_04_01::Models::EncryptionSettings
      DiskSku = Azure::Compute::Mgmt::V2018_04_01::Models::DiskSku
      DiskUpdate = Azure::Compute::Mgmt::V2018_04_01::Models::DiskUpdate
      CreationData = Azure::Compute::Mgmt::V2018_04_01::Models::CreationData
      DiskList = Azure::Compute::Mgmt::V2018_04_01::Models::DiskList
      KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndSecretReference
      SnapshotSku = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotSku
      GrantAccessData = Azure::Compute::Mgmt::V2018_04_01::Models::GrantAccessData
      SourceVault = Azure::Compute::Mgmt::V2018_04_01::Models::SourceVault
      AccessUri = Azure::Compute::Mgmt::V2018_04_01::Models::AccessUri
      ImageDiskReference = Azure::Compute::Mgmt::V2018_04_01::Models::ImageDiskReference
      SnapshotList = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotList
      KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndKeyReference
      SnapshotUpdate = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotUpdate
      Disk = Azure::Compute::Mgmt::V2018_04_01::Models::Disk
      Snapshot = Azure::Compute::Mgmt::V2018_04_01::Models::Snapshot
      DiskCreateOption = Azure::Compute::Mgmt::V2018_04_01::Models::DiskCreateOption
      SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotStorageAccountTypes
      AccessLevel = Azure::Compute::Mgmt::V2018_04_01::Models::AccessLevel
      ImageListResult = Azure::Compute::Mgmt::V2018_06_01::Models::ImageListResult
      ComputeOperationValue = Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationValue
      VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
      RecoveryWalkResponse = Azure::Compute::Mgmt::V2018_06_01::Models::RecoveryWalkResponse
      SubResourceReadOnly = Azure::Compute::Mgmt::V2018_06_01::Models::SubResourceReadOnly
      AutoOSUpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::AutoOSUpgradePolicy
      RollingUpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradePolicy
      RunCommandParameterDefinition = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandParameterDefinition
      ImageOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::ImageOSDisk
      ImageDataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::ImageDataDisk
      ImageStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::ImageStorageProfile
      RunCommandInputParameter = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInputParameter
      ComputeOperationListResult = Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationListResult
      RollbackStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollbackStatusInfo
      VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
      VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
      VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetDataDisk
      VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceRedeployStatus
      RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeRunningStatus
      VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineHealthStatus
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      RunCommandListResult = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandListResult
      VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfo
      RunCommandInput = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInput
      VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      LogAnalyticsOutput = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOutput
      UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      LogAnalyticsInputBase = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsInputBase
      VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionListResult
      VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
      RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeProgressInfo
      UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoryStatus
      RunCommandDocumentBase = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocumentBase
      AvailabilitySetUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetUpdate
      ManagedDiskParameters = Azure::Compute::Mgmt::V2018_06_01::Models::ManagedDiskParameters
      VirtualMachineUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineUpdate
      Image = Azure::Compute::Mgmt::V2018_06_01::Models::Image
      ImageUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::ImageUpdate
      VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdate
      RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusInfo
      RequestRateByIntervalInput = Azure::Compute::Mgmt::V2018_06_01::Models::RequestRateByIntervalInput
      ThrottledRequestsInput = Azure::Compute::Mgmt::V2018_06_01::Models::ThrottledRequestsInput
      LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOperationResult
      RunCommandDocument = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocument
      RunCommandResult = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandResult
      StorageAccountTypes = Azure::Compute::Mgmt::V2018_06_01::Models::StorageAccountTypes
      MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceOperationResultCodeTypes
      OperatingSystemStateTypes = Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemStateTypes
      IPVersion = Azure::Compute::Mgmt::V2018_06_01::Models::IPVersion
      VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachinePriorityTypes
      VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineEvictionPolicyTypes
      UpgradeState = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeState
      UpgradeOperationInvoker = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationInvoker
      RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusCode
      RollingUpgradeActionType = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeActionType
      IntervalInMins = Azure::Compute::Mgmt::V2018_06_01::Models::IntervalInMins
      VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIpTag
      RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::RecommendedMachineConfiguration
      VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      GalleryImageVersionList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionList
      GalleryDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDiskImage
      GalleryArtifactSource = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactSource
      ReplicationStatus = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatus
      ResourceRange = Azure::Compute::Mgmt::V2018_06_01::Models::ResourceRange
      GalleryImageIdentifier = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageIdentifier
      GalleryIdentifier = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryIdentifier
      RegionalReplicationStatus = Azure::Compute::Mgmt::V2018_06_01::Models::RegionalReplicationStatus
      VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionStorageProfile
      GalleryImageList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageList
      GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactPublishingProfileBase
      ManagedArtifact = Azure::Compute::Mgmt::V2018_06_01::Models::ManagedArtifact
      ImagePurchasePlan = Azure::Compute::Mgmt::V2018_06_01::Models::ImagePurchasePlan
      Disallowed = Azure::Compute::Mgmt::V2018_06_01::Models::Disallowed
      GalleryList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryList
      Gallery = Azure::Compute::Mgmt::V2018_06_01::Models::Gallery
      GalleryImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImage
      GalleryImageVersionPublishingProfile = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionPublishingProfile
      GalleryOSDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryOSDiskImage
      GalleryDataDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDataDiskImage
      GalleryImageVersion = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersion
      ScaleTier = Azure::Compute::Mgmt::V2018_06_01::Models::ScaleTier
      AggregatedReplicationState = Azure::Compute::Mgmt::V2018_06_01::Models::AggregatedReplicationState
      ReplicationState = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationState
      HostCaching = Azure::Compute::Mgmt::V2018_06_01::Models::HostCaching
      ReplicationStatusTypes = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatusTypes
      DiagnosticsProfile = Azure::Compute::Mgmt::V2018_06_01::Models::DiagnosticsProfile
      InstanceViewStatus = Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewStatus
      VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionHandlerInstanceView
      VaultCertificate = Azure::Compute::Mgmt::V2018_06_01::Models::VaultCertificate
      VaultSecretGroup = Azure::Compute::Mgmt::V2018_06_01::Models::VaultSecretGroup
      VirtualMachineSize = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSize
      OSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::OSProfile
      InnerError = Azure::Compute::Mgmt::V2018_06_01::Models::InnerError
      VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionInstanceView
      NetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::NetworkProfile
      Resource = Azure::Compute::Mgmt::V2018_06_01::Models::Resource
      BootDiagnostics = Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnostics
      PurchasePlan = Azure::Compute::Mgmt::V2018_06_01::Models::PurchasePlan
      SubResource = Azure::Compute::Mgmt::V2018_06_01::Models::SubResource
      DataDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::DataDiskImage
      ApiErrorBase = Azure::Compute::Mgmt::V2018_06_01::Models::ApiErrorBase
      UsageName = Azure::Compute::Mgmt::V2018_06_01::Models::UsageName
      VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineAgentInstanceView
      ListUsagesResult = Azure::Compute::Mgmt::V2018_06_01::Models::ListUsagesResult
      DiskInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::DiskInstanceView
      ApiError = Azure::Compute::Mgmt::V2018_06_01::Models::ApiError
      BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnosticsInstanceView
      HardwareProfile = Azure::Compute::Mgmt::V2018_06_01::Models::HardwareProfile
      VirtualMachineIdentity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentity
      KeyVaultSecretReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultSecretReference
      VirtualMachineInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineInstanceView
      DiskEncryptionSettings = Azure::Compute::Mgmt::V2018_06_01::Models::DiskEncryptionSettings
      VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMListResult
      OSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::OSDisk
      VirtualMachineListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineListResult
      StorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::StorageProfile
      Sku = Azure::Compute::Mgmt::V2018_06_01::Models::Sku
      WinRMListener = Azure::Compute::Mgmt::V2018_06_01::Models::WinRMListener
      UpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradePolicy
      WindowsConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::WindowsConfiguration
      VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentity
      SshConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::SshConfiguration
      VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSProfile
      AvailabilitySetListResult = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetListResult
      VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSDisk
      VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetStorageProfile
      VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionsListResult
      ApiEntityReference = Azure::Compute::Mgmt::V2018_06_01::Models::ApiEntityReference
      VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceView
      VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureParameters
      VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListSkusResult
      ImageReference = Azure::Compute::Mgmt::V2018_06_01::Models::ImageReference
      VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkProfile
      VirtualHardDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualHardDisk
      VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSku
      AdditionalUnattendContent = Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalUnattendContent
      VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionProfile
      SshPublicKey = Azure::Compute::Mgmt::V2018_06_01::Models::SshPublicKey
      VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMProfile
      VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeListResult
      VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuCapacity
      OSDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::OSDiskImage
      VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
      Plan = Azure::Compute::Mgmt::V2018_06_01::Models::Plan
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      DataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::DataDisk
      VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineStatusCodeCount
      LinuxConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::LinuxConfiguration
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      Usage = Azure::Compute::Mgmt::V2018_06_01::Models::Usage
      VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      WinRMConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::WinRMConfiguration
      VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceView
      KeyVaultKeyReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultKeyReference
      VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListResult
      UpdateResource = Azure::Compute::Mgmt::V2018_06_01::Models::UpdateResource
      VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListWithLinkResult
      AvailabilitySet = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySet
      VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtension
      VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionUpdate
      VirtualMachineImage = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureResult
      NetworkInterfaceReference = Azure::Compute::Mgmt::V2018_06_01::Models::NetworkInterfaceReference
      VirtualMachine = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachine
      VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVM
      StatusLevelTypes = Azure::Compute::Mgmt::V2018_06_01::Models::StatusLevelTypes
      OperatingSystemTypes = Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::Compute::Mgmt::V2018_06_01::Models::CachingTypes
      DiskCreateOptionTypes = Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOptionTypes
      PassNames = Azure::Compute::Mgmt::V2018_06_01::Models::PassNames
      ComponentNames = Azure::Compute::Mgmt::V2018_06_01::Models::ComponentNames
      SettingNames = Azure::Compute::Mgmt::V2018_06_01::Models::SettingNames
      ProtocolTypes = Azure::Compute::Mgmt::V2018_06_01::Models::ProtocolTypes
      ResourceIdentityType = Azure::Compute::Mgmt::V2018_06_01::Models::ResourceIdentityType
      UpgradeMode = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeMode
      VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuScaleType
      InstanceViewTypes = Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewTypes
    end

    #
    # ComputeManagementClass
    #
    class ComputeManagementClass
      attr_reader :resource_skus, :disks, :snapshots, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machines, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :virtual_machine_scale_sets, :virtual_machine_scale_set_vms, :galleries, :gallery_images, :gallery_image_versions, :operations, :images, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :log_analytics, :virtual_machine_run_commands, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Compute::Mgmt::V2017_09_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @resource_skus = @client_0.resource_skus

        @client_1 = Azure::Compute::Mgmt::V2017_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)

        @client_2 = Azure::Compute::Mgmt::V2018_04_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @disks = @client_2.disks
        @snapshots = @client_2.snapshots

        @client_3 = Azure::Compute::Mgmt::V2018_06_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @availability_sets = @client_3.availability_sets
        @virtual_machine_extension_images = @client_3.virtual_machine_extension_images
        @virtual_machine_extensions = @client_3.virtual_machine_extensions
        @virtual_machines = @client_3.virtual_machines
        @virtual_machine_images = @client_3.virtual_machine_images
        @usage_operations = @client_3.usage_operations
        @virtual_machine_sizes = @client_3.virtual_machine_sizes
        @virtual_machine_scale_sets = @client_3.virtual_machine_scale_sets
        @virtual_machine_scale_set_vms = @client_3.virtual_machine_scale_set_vms
        @galleries = @client_3.galleries
        @gallery_images = @client_3.gallery_images
        @gallery_image_versions = @client_3.gallery_image_versions
        @operations = @client_3.operations
        @images = @client_3.images
        @virtual_machine_scale_set_extensions = @client_3.virtual_machine_scale_set_extensions
        @virtual_machine_scale_set_rolling_upgrades = @client_3.virtual_machine_scale_set_rolling_upgrades
        @log_analytics = @client_3.log_analytics
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
      def resource_sku_restrictions_reason_code
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
      end
      def resource_sku_restrictions
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictions
      end
      def resource_sku_capacity
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacity
      end
      def resource_sku_location_info
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuLocationInfo
      end
      def resource_sku_capabilities
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapabilities
      end
      def resource_sku
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSku
      end
      def resource_sku_costs
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCosts
      end
      def resource_skus_result
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkusResult
      end
      def resource_sku_restriction_info
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionInfo
      end
      def resource_sku_capacity_scale_type
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacityScaleType
      end
      def resource_sku_restrictions_type
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsType
      end
      def operation_status_response
        Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      end
      def compute_long_running_operation_properties
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      end
      def encryption_settings
        Azure::Compute::Mgmt::V2018_04_01::Models::EncryptionSettings
      end
      def disk_sku
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskSku
      end
      def disk_update
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskUpdate
      end
      def creation_data
        Azure::Compute::Mgmt::V2018_04_01::Models::CreationData
      end
      def disk_list
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskList
      end
      def key_vault_and_secret_reference
        Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndSecretReference
      end
      def snapshot_sku
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotSku
      end
      def grant_access_data
        Azure::Compute::Mgmt::V2018_04_01::Models::GrantAccessData
      end
      def source_vault
        Azure::Compute::Mgmt::V2018_04_01::Models::SourceVault
      end
      def access_uri
        Azure::Compute::Mgmt::V2018_04_01::Models::AccessUri
      end
      def image_disk_reference
        Azure::Compute::Mgmt::V2018_04_01::Models::ImageDiskReference
      end
      def snapshot_list
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotList
      end
      def key_vault_and_key_reference
        Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndKeyReference
      end
      def snapshot_update
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotUpdate
      end
      def disk
        Azure::Compute::Mgmt::V2018_04_01::Models::Disk
      end
      def snapshot
        Azure::Compute::Mgmt::V2018_04_01::Models::Snapshot
      end
      def disk_create_option
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskCreateOption
      end
      def snapshot_storage_account_types
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotStorageAccountTypes
      end
      def access_level
        Azure::Compute::Mgmt::V2018_04_01::Models::AccessLevel
      end
      def image_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageListResult
      end
      def compute_operation_value
        Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationValue
      end
      def virtual_machine_scale_set_update_osprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
      end
      def recovery_walk_response
        Azure::Compute::Mgmt::V2018_06_01::Models::RecoveryWalkResponse
      end
      def sub_resource_read_only
        Azure::Compute::Mgmt::V2018_06_01::Models::SubResourceReadOnly
      end
      def auto_osupgrade_policy
        Azure::Compute::Mgmt::V2018_06_01::Models::AutoOSUpgradePolicy
      end
      def rolling_upgrade_policy
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradePolicy
      end
      def run_command_parameter_definition
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandParameterDefinition
      end
      def image_osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageOSDisk
      end
      def image_data_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageDataDisk
      end
      def image_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageStorageProfile
      end
      def run_command_input_parameter
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInputParameter
      end
      def compute_operation_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationListResult
      end
      def rollback_status_info
        Azure::Compute::Mgmt::V2018_06_01::Models::RollbackStatusInfo
      end
      def virtual_machine_scale_set_managed_disk_parameters
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
      end
      def virtual_machine_scale_set_update_osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
      end
      def virtual_machine_scale_set_data_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetDataDisk
      end
      def virtual_machine_scale_set_update_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      end
      def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      end
      def virtual_machine_scale_set_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      end
      def virtual_machine_scale_set_update_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      end
      def maintenance_redeploy_status
        Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceRedeployStatus
      end
      def rolling_upgrade_running_status
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeRunningStatus
      end
      def virtual_machine_health_status
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineHealthStatus
      end
      def virtual_machine_scale_set_network_configuration_dns_settings
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      end
      def run_command_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandListResult
      end
      def virtual_machine_scale_set_list_osupgrade_history
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      end
      def upgrade_operation_historical_status_info
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfo
      end
      def run_command_input
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInput
      end
      def virtual_machine_scale_set_update_network_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      end
      def log_analytics_output
        Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOutput
      end
      def upgrade_operation_historical_status_info_properties
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      end
      def log_analytics_input_base
        Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsInputBase
      end
      def virtual_machine_scale_set_extension_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionListResult
      end
      def virtual_machine_scale_set_update_vmprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
      end
      def rolling_upgrade_progress_info
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeProgressInfo
      end
      def upgrade_operation_history_status
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoryStatus
      end
      def run_command_document_base
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocumentBase
      end
      def availability_set_update
        Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetUpdate
      end
      def managed_disk_parameters
        Azure::Compute::Mgmt::V2018_06_01::Models::ManagedDiskParameters
      end
      def virtual_machine_update
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineUpdate
      end
      def image
        Azure::Compute::Mgmt::V2018_06_01::Models::Image
      end
      def image_update
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageUpdate
      end
      def virtual_machine_scale_set_update_ipconfiguration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      end
      def virtual_machine_scale_set_update_network_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      end
      def virtual_machine_scale_set_update
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdate
      end
      def rolling_upgrade_status_info
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusInfo
      end
      def request_rate_by_interval_input
        Azure::Compute::Mgmt::V2018_06_01::Models::RequestRateByIntervalInput
      end
      def throttled_requests_input
        Azure::Compute::Mgmt::V2018_06_01::Models::ThrottledRequestsInput
      end
      def log_analytics_operation_result
        Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOperationResult
      end
      def run_command_document
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocument
      end
      def run_command_result
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandResult
      end
      def storage_account_types
        Azure::Compute::Mgmt::V2018_06_01::Models::StorageAccountTypes
      end
      def maintenance_operation_result_code_types
        Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceOperationResultCodeTypes
      end
      def operating_system_state_types
        Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemStateTypes
      end
      def ipversion
        Azure::Compute::Mgmt::V2018_06_01::Models::IPVersion
      end
      def virtual_machine_priority_types
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachinePriorityTypes
      end
      def virtual_machine_eviction_policy_types
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineEvictionPolicyTypes
      end
      def upgrade_state
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeState
      end
      def upgrade_operation_invoker
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationInvoker
      end
      def rolling_upgrade_status_code
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusCode
      end
      def rolling_upgrade_action_type
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeActionType
      end
      def interval_in_mins
        Azure::Compute::Mgmt::V2018_06_01::Models::IntervalInMins
      end
      def virtual_machine_scale_set_ip_tag
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIpTag
      end
      def recommended_machine_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::RecommendedMachineConfiguration
      end
      def virtual_machine_scale_set_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      end
      def gallery_image_version_list
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionList
      end
      def gallery_disk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDiskImage
      end
      def gallery_artifact_source
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactSource
      end
      def replication_status
        Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatus
      end
      def resource_range
        Azure::Compute::Mgmt::V2018_06_01::Models::ResourceRange
      end
      def gallery_image_identifier
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageIdentifier
      end
      def gallery_identifier
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryIdentifier
      end
      def regional_replication_status
        Azure::Compute::Mgmt::V2018_06_01::Models::RegionalReplicationStatus
      end
      def virtual_machine_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      end
      def gallery_image_version_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionStorageProfile
      end
      def gallery_image_list
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageList
      end
      def gallery_artifact_publishing_profile_base
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactPublishingProfileBase
      end
      def managed_artifact
        Azure::Compute::Mgmt::V2018_06_01::Models::ManagedArtifact
      end
      def image_purchase_plan
        Azure::Compute::Mgmt::V2018_06_01::Models::ImagePurchasePlan
      end
      def disallowed
        Azure::Compute::Mgmt::V2018_06_01::Models::Disallowed
      end
      def gallery_list
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryList
      end
      def gallery
        Azure::Compute::Mgmt::V2018_06_01::Models::Gallery
      end
      def gallery_image
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImage
      end
      def gallery_image_version_publishing_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionPublishingProfile
      end
      def gallery_osdisk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryOSDiskImage
      end
      def gallery_data_disk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDataDiskImage
      end
      def gallery_image_version
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersion
      end
      def scale_tier
        Azure::Compute::Mgmt::V2018_06_01::Models::ScaleTier
      end
      def aggregated_replication_state
        Azure::Compute::Mgmt::V2018_06_01::Models::AggregatedReplicationState
      end
      def replication_state
        Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationState
      end
      def host_caching
        Azure::Compute::Mgmt::V2018_06_01::Models::HostCaching
      end
      def replication_status_types
        Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatusTypes
      end
      def diagnostics_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::DiagnosticsProfile
      end
      def instance_view_status
        Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewStatus
      end
      def virtual_machine_extension_handler_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionHandlerInstanceView
      end
      def vault_certificate
        Azure::Compute::Mgmt::V2018_06_01::Models::VaultCertificate
      end
      def vault_secret_group
        Azure::Compute::Mgmt::V2018_06_01::Models::VaultSecretGroup
      end
      def virtual_machine_size
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSize
      end
      def osprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::OSProfile
      end
      def inner_error
        Azure::Compute::Mgmt::V2018_06_01::Models::InnerError
      end
      def virtual_machine_extension_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionInstanceView
      end
      def network_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::NetworkProfile
      end
      def resource
        Azure::Compute::Mgmt::V2018_06_01::Models::Resource
      end
      def boot_diagnostics
        Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnostics
      end
      def purchase_plan
        Azure::Compute::Mgmt::V2018_06_01::Models::PurchasePlan
      end
      def sub_resource
        Azure::Compute::Mgmt::V2018_06_01::Models::SubResource
      end
      def data_disk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::DataDiskImage
      end
      def api_error_base
        Azure::Compute::Mgmt::V2018_06_01::Models::ApiErrorBase
      end
      def usage_name
        Azure::Compute::Mgmt::V2018_06_01::Models::UsageName
      end
      def virtual_machine_agent_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineAgentInstanceView
      end
      def list_usages_result
        Azure::Compute::Mgmt::V2018_06_01::Models::ListUsagesResult
      end
      def disk_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::DiskInstanceView
      end
      def api_error
        Azure::Compute::Mgmt::V2018_06_01::Models::ApiError
      end
      def boot_diagnostics_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnosticsInstanceView
      end
      def hardware_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::HardwareProfile
      end
      def virtual_machine_identity
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentity
      end
      def key_vault_secret_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultSecretReference
      end
      def virtual_machine_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineInstanceView
      end
      def disk_encryption_settings
        Azure::Compute::Mgmt::V2018_06_01::Models::DiskEncryptionSettings
      end
      def virtual_machine_scale_set_vmlist_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMListResult
      end
      def osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::OSDisk
      end
      def virtual_machine_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineListResult
      end
      def storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::StorageProfile
      end
      def sku
        Azure::Compute::Mgmt::V2018_06_01::Models::Sku
      end
      def win_rmlistener
        Azure::Compute::Mgmt::V2018_06_01::Models::WinRMListener
      end
      def upgrade_policy
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradePolicy
      end
      def windows_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::WindowsConfiguration
      end
      def virtual_machine_scale_set_identity
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentity
      end
      def ssh_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::SshConfiguration
      end
      def virtual_machine_scale_set_osprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSProfile
      end
      def availability_set_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetListResult
      end
      def virtual_machine_scale_set_osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSDisk
      end
      def virtual_machine_scale_set_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetStorageProfile
      end
      def virtual_machine_extensions_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionsListResult
      end
      def api_entity_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::ApiEntityReference
      end
      def virtual_machine_scale_set_vminstance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceView
      end
      def virtual_machine_capture_parameters
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureParameters
      end
      def virtual_machine_scale_set_list_skus_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListSkusResult
      end
      def image_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageReference
      end
      def virtual_machine_scale_set_network_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkProfile
      end
      def virtual_hard_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualHardDisk
      end
      def virtual_machine_scale_set_sku
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSku
      end
      def additional_unattend_content
        Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalUnattendContent
      end
      def virtual_machine_scale_set_extension_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionProfile
      end
      def ssh_public_key
        Azure::Compute::Mgmt::V2018_06_01::Models::SshPublicKey
      end
      def virtual_machine_scale_set_vmprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMProfile
      end
      def virtual_machine_size_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeListResult
      end
      def virtual_machine_scale_set_sku_capacity
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuCapacity
      end
      def osdisk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::OSDiskImage
      end
      def virtual_machine_scale_set_vminstance_ids
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
      end
      def plan
        Azure::Compute::Mgmt::V2018_06_01::Models::Plan
      end
      def virtual_machine_scale_set_vminstance_required_ids
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      end
      def data_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::DataDisk
      end
      def virtual_machine_status_code_count
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineStatusCodeCount
      end
      def linux_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::LinuxConfiguration
      end
      def virtual_machine_scale_set_instance_view_statuses_summary
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      end
      def usage
        Azure::Compute::Mgmt::V2018_06_01::Models::Usage
      end
      def virtual_machine_scale_set_vmextensions_summary
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      end
      def win_rmconfiguration
        Azure::Compute::Mgmt::V2018_06_01::Models::WinRMConfiguration
      end
      def virtual_machine_scale_set_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceView
      end
      def key_vault_key_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultKeyReference
      end
      def virtual_machine_scale_set_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListResult
      end
      def update_resource
        Azure::Compute::Mgmt::V2018_06_01::Models::UpdateResource
      end
      def virtual_machine_scale_set_list_with_link_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListWithLinkResult
      end
      def availability_set
        Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySet
      end
      def virtual_machine_extension_image
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionImage
      end
      def virtual_machine_image_resource
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImageResource
      end
      def virtual_machine_extension
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtension
      end
      def virtual_machine_extension_update
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionUpdate
      end
      def virtual_machine_image
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImage
      end
      def virtual_machine_capture_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureResult
      end
      def network_interface_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::NetworkInterfaceReference
      end
      def virtual_machine
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachine
      end
      def virtual_machine_scale_set_ipconfiguration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIPConfiguration
      end
      def virtual_machine_scale_set_network_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
      end
      def virtual_machine_scale_set_extension
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtension
      end
      def virtual_machine_scale_set
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSet
      end
      def virtual_machine_scale_set_vm
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVM
      end
      def status_level_types
        Azure::Compute::Mgmt::V2018_06_01::Models::StatusLevelTypes
      end
      def operating_system_types
        Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemTypes
      end
      def virtual_machine_size_types
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeTypes
      end
      def caching_types
        Azure::Compute::Mgmt::V2018_06_01::Models::CachingTypes
      end
      def disk_create_option_types
        Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOptionTypes
      end
      def pass_names
        Azure::Compute::Mgmt::V2018_06_01::Models::PassNames
      end
      def component_names
        Azure::Compute::Mgmt::V2018_06_01::Models::ComponentNames
      end
      def setting_names
        Azure::Compute::Mgmt::V2018_06_01::Models::SettingNames
      end
      def protocol_types
        Azure::Compute::Mgmt::V2018_06_01::Models::ProtocolTypes
      end
      def resource_identity_type
        Azure::Compute::Mgmt::V2018_06_01::Models::ResourceIdentityType
      end
      def upgrade_mode
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeMode
      end
      def virtual_machine_scale_set_sku_scale_type
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuScaleType
      end
      def instance_view_types
        Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewTypes
      end
    end
  end
end
