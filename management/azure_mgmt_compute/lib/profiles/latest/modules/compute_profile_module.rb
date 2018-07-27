# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Compute::Profiles::Latest
  module Mgmt
    ResourceSkus = Azure::Compute::Mgmt::V2017_09_01::ResourceSkus
    Disks = Azure::Compute::Mgmt::V2018_04_01::Disks
    Snapshots = Azure::Compute::Mgmt::V2018_04_01::Snapshots
    Operations = Azure::Compute::Mgmt::V2018_06_01::Operations
    AvailabilitySets = Azure::Compute::Mgmt::V2018_06_01::AvailabilitySets
    VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineExtensions
    VirtualMachineImages = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineImages
    UsageOperations = Azure::Compute::Mgmt::V2018_06_01::UsageOperations
    VirtualMachineSizes = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineSizes
    Images = Azure::Compute::Mgmt::V2018_06_01::Images
    VirtualMachines = Azure::Compute::Mgmt::V2018_06_01::VirtualMachines
    VirtualMachineScaleSets = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSets
    VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetRollingUpgrades
    VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetVMs
    LogAnalytics = Azure::Compute::Mgmt::V2018_06_01::LogAnalytics
    VirtualMachineRunCommands = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineRunCommands
    Galleries = Azure::Compute::Mgmt::V2018_06_01::Galleries
    GalleryImages = Azure::Compute::Mgmt::V2018_06_01::GalleryImages
    GalleryImageVersions = Azure::Compute::Mgmt::V2018_06_01::GalleryImageVersions

    module Models
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
      ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
      ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      CreationData = Azure::Compute::Mgmt::V2018_04_01::Models::CreationData
      ImageDiskReference = Azure::Compute::Mgmt::V2018_04_01::Models::ImageDiskReference
      SnapshotList = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotList
      GrantAccessData = Azure::Compute::Mgmt::V2018_04_01::Models::GrantAccessData
      DiskList = Azure::Compute::Mgmt::V2018_04_01::Models::DiskList
      EncryptionSettings = Azure::Compute::Mgmt::V2018_04_01::Models::EncryptionSettings
      DiskSku = Azure::Compute::Mgmt::V2018_04_01::Models::DiskSku
      KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndKeyReference
      SourceVault = Azure::Compute::Mgmt::V2018_04_01::Models::SourceVault
      SnapshotUpdate = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotUpdate
      SnapshotSku = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotSku
      DiskUpdate = Azure::Compute::Mgmt::V2018_04_01::Models::DiskUpdate
      KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndSecretReference
      AccessUri = Azure::Compute::Mgmt::V2018_04_01::Models::AccessUri
      Disk = Azure::Compute::Mgmt::V2018_04_01::Models::Disk
      Snapshot = Azure::Compute::Mgmt::V2018_04_01::Models::Snapshot
      DiskCreateOption = Azure::Compute::Mgmt::V2018_04_01::Models::DiskCreateOption
      SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotStorageAccountTypes
      AccessLevel = Azure::Compute::Mgmt::V2018_04_01::Models::AccessLevel
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIpTag
      ComputeOperationListResult = Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationListResult
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      SubResource = Azure::Compute::Mgmt::V2018_06_01::Models::SubResource
      VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::RecommendedMachineConfiguration
      ImageListResult = Azure::Compute::Mgmt::V2018_06_01::Models::ImageListResult
      VirtualMachineSize = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSize
      VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      GalleryImageVersionList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionList
      VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentity
      VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionInstanceView
      VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSProfile
      GalleryDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDiskImage
      VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
      PurchasePlan = Azure::Compute::Mgmt::V2018_06_01::Models::PurchasePlan
      VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
      DataDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::DataDiskImage
      VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSDisk
      UsageName = Azure::Compute::Mgmt::V2018_06_01::Models::UsageName
      VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
      ListUsagesResult = Azure::Compute::Mgmt::V2018_06_01::Models::ListUsagesResult
      VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetDataDisk
      GalleryArtifactSource = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactSource
      VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetStorageProfile
      HardwareProfile = Azure::Compute::Mgmt::V2018_06_01::Models::HardwareProfile
      VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      KeyVaultSecretReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultSecretReference
      ApiEntityReference = Azure::Compute::Mgmt::V2018_06_01::Models::ApiEntityReference
      DiskEncryptionSettings = Azure::Compute::Mgmt::V2018_06_01::Models::DiskEncryptionSettings
      ComputeOperationValue = Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationValue
      ReplicationStatus = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatus
      InstanceViewStatus = Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewStatus
      DataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::DataDisk
      Sku = Azure::Compute::Mgmt::V2018_06_01::Models::Sku
      AdditionalUnattendContent = Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalUnattendContent
      ResourceRange = Azure::Compute::Mgmt::V2018_06_01::Models::ResourceRange
      WinRMConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::WinRMConfiguration
      GalleryImageIdentifier = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageIdentifier
      SshPublicKey = Azure::Compute::Mgmt::V2018_06_01::Models::SshPublicKey
      GalleryIdentifier = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryIdentifier
      LinuxConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::LinuxConfiguration
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      VaultSecretGroup = Azure::Compute::Mgmt::V2018_06_01::Models::VaultSecretGroup
      RunCommandResult = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandResult
      RegionalReplicationStatus = Azure::Compute::Mgmt::V2018_06_01::Models::RegionalReplicationStatus
      RunCommandListResult = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandListResult
      BootDiagnostics = Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnostics
      VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkProfile
      VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionHandlerInstanceView
      VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      DiskInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::DiskInstanceView
      RunCommandDocumentBase = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocumentBase
      VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionListResult
      MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceRedeployStatus
      VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionProfile
      GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionStorageProfile
      VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMProfile
      VirtualMachineListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineListResult
      VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
      RollingUpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradePolicy
      RunCommandParameterDefinition = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandParameterDefinition
      ImageOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::ImageOSDisk
      RunCommandInput = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInput
      ImageStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::ImageStorageProfile
      VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
      AvailabilitySetListResult = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetListResult
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      GalleryImageList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageList
      VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineStatusCodeCount
      VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionsListResult
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactPublishingProfileBase
      VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureParameters
      VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceView
      ManagedArtifact = Azure::Compute::Mgmt::V2018_06_01::Models::ManagedArtifact
      VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListResult
      VirtualHardDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualHardDisk
      VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListWithLinkResult
      StorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::StorageProfile
      VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuCapacity
      WindowsConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::WindowsConfiguration
      VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSku
      VaultCertificate = Azure::Compute::Mgmt::V2018_06_01::Models::VaultCertificate
      VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListSkusResult
      NetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::NetworkProfile
      ApiErrorBase = Azure::Compute::Mgmt::V2018_06_01::Models::ApiErrorBase
      VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineAgentInstanceView
      InnerError = Azure::Compute::Mgmt::V2018_06_01::Models::InnerError
      VirtualMachineIdentity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentity
      ApiError = Azure::Compute::Mgmt::V2018_06_01::Models::ApiError
      ImagePurchasePlan = Azure::Compute::Mgmt::V2018_06_01::Models::ImagePurchasePlan
      RollbackStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollbackStatusInfo
      UpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradePolicy
      UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoryStatus
      Disallowed = Azure::Compute::Mgmt::V2018_06_01::Models::Disallowed
      RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeProgressInfo
      GalleryList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryList
      UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      Usage = Azure::Compute::Mgmt::V2018_06_01::Models::Usage
      UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfo
      KeyVaultKeyReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultKeyReference
      VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      WinRMListener = Azure::Compute::Mgmt::V2018_06_01::Models::WinRMListener
      VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineHealthStatus
      OSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::OSProfile
      VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceView
      BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnosticsInstanceView
      RunCommandInputParameter = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInputParameter
      AutoOSUpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::AutoOSUpgradePolicy
      VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMListResult
      VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeListResult
      RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeRunningStatus
      Plan = Azure::Compute::Mgmt::V2018_06_01::Models::Plan
      LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOperationResult
      SshConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::SshConfiguration
      Resource = Azure::Compute::Mgmt::V2018_06_01::Models::Resource
      VirtualMachineInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineInstanceView
      UpdateResource = Azure::Compute::Mgmt::V2018_06_01::Models::UpdateResource
      OSDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::OSDiskImage
      SubResourceReadOnly = Azure::Compute::Mgmt::V2018_06_01::Models::SubResourceReadOnly
      DiagnosticsProfile = Azure::Compute::Mgmt::V2018_06_01::Models::DiagnosticsProfile
      RecoveryWalkResponse = Azure::Compute::Mgmt::V2018_06_01::Models::RecoveryWalkResponse
      OSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::OSDisk
      LogAnalyticsOutput = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOutput
      ImageDataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::ImageDataDisk
      LogAnalyticsInputBase = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsInputBase
      AvailabilitySet = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySet
      AvailabilitySetUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetUpdate
      VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtension
      VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionUpdate
      VirtualMachineImage = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureResult
      ImageReference = Azure::Compute::Mgmt::V2018_06_01::Models::ImageReference
      ManagedDiskParameters = Azure::Compute::Mgmt::V2018_06_01::Models::ManagedDiskParameters
      NetworkInterfaceReference = Azure::Compute::Mgmt::V2018_06_01::Models::NetworkInterfaceReference
      VirtualMachine = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachine
      VirtualMachineUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineUpdate
      Image = Azure::Compute::Mgmt::V2018_06_01::Models::Image
      ImageUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::ImageUpdate
      VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdate
      VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVM
      RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusInfo
      RequestRateByIntervalInput = Azure::Compute::Mgmt::V2018_06_01::Models::RequestRateByIntervalInput
      ThrottledRequestsInput = Azure::Compute::Mgmt::V2018_06_01::Models::ThrottledRequestsInput
      RunCommandDocument = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocument
      Gallery = Azure::Compute::Mgmt::V2018_06_01::Models::Gallery
      GalleryImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImage
      GalleryImageVersionPublishingProfile = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionPublishingProfile
      GalleryOSDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryOSDiskImage
      GalleryDataDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDataDiskImage
      GalleryImageVersion = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersion
      StatusLevelTypes = Azure::Compute::Mgmt::V2018_06_01::Models::StatusLevelTypes
      OperatingSystemTypes = Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::Compute::Mgmt::V2018_06_01::Models::CachingTypes
      DiskCreateOptionTypes = Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOptionTypes
      StorageAccountTypes = Azure::Compute::Mgmt::V2018_06_01::Models::StorageAccountTypes
      PassNames = Azure::Compute::Mgmt::V2018_06_01::Models::PassNames
      ComponentNames = Azure::Compute::Mgmt::V2018_06_01::Models::ComponentNames
      SettingNames = Azure::Compute::Mgmt::V2018_06_01::Models::SettingNames
      ProtocolTypes = Azure::Compute::Mgmt::V2018_06_01::Models::ProtocolTypes
      ResourceIdentityType = Azure::Compute::Mgmt::V2018_06_01::Models::ResourceIdentityType
      MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceOperationResultCodeTypes
      UpgradeMode = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeMode
      OperatingSystemStateTypes = Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemStateTypes
      IPVersion = Azure::Compute::Mgmt::V2018_06_01::Models::IPVersion
      VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachinePriorityTypes
      VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineEvictionPolicyTypes
      VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuScaleType
      UpgradeState = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeState
      UpgradeOperationInvoker = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationInvoker
      RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusCode
      RollingUpgradeActionType = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeActionType
      IntervalInMins = Azure::Compute::Mgmt::V2018_06_01::Models::IntervalInMins
      ScaleTier = Azure::Compute::Mgmt::V2018_06_01::Models::ScaleTier
      AggregatedReplicationState = Azure::Compute::Mgmt::V2018_06_01::Models::AggregatedReplicationState
      ReplicationState = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationState
      HostCaching = Azure::Compute::Mgmt::V2018_06_01::Models::HostCaching
      InstanceViewTypes = Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewTypes
      ReplicationStatusTypes = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatusTypes
    end

    #
    # ComputeManagementClass
    #
    class ComputeManagementClass
      attr_reader :resource_skus, :disks, :snapshots, :operations, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :log_analytics, :virtual_machine_run_commands, :galleries, :gallery_images, :gallery_image_versions, :configurable, :base_url, :options, :model_classes

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
        @operations = @client_3.operations
        @availability_sets = @client_3.availability_sets
        @virtual_machine_extension_images = @client_3.virtual_machine_extension_images
        @virtual_machine_extensions = @client_3.virtual_machine_extensions
        @virtual_machine_images = @client_3.virtual_machine_images
        @usage_operations = @client_3.usage_operations
        @virtual_machine_sizes = @client_3.virtual_machine_sizes
        @images = @client_3.images
        @virtual_machines = @client_3.virtual_machines
        @virtual_machine_scale_sets = @client_3.virtual_machine_scale_sets
        @virtual_machine_scale_set_extensions = @client_3.virtual_machine_scale_set_extensions
        @virtual_machine_scale_set_rolling_upgrades = @client_3.virtual_machine_scale_set_rolling_upgrades
        @virtual_machine_scale_set_vms = @client_3.virtual_machine_scale_set_vms
        @log_analytics = @client_3.log_analytics
        @virtual_machine_run_commands = @client_3.virtual_machine_run_commands
        @galleries = @client_3.galleries
        @gallery_images = @client_3.gallery_images
        @gallery_image_versions = @client_3.gallery_image_versions

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
      def resource_sku_restrictions_reason_code
        Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
      end
      def compute_long_running_operation_properties
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      end
      def operation_status_response
        Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      end
      def creation_data
        Azure::Compute::Mgmt::V2018_04_01::Models::CreationData
      end
      def image_disk_reference
        Azure::Compute::Mgmt::V2018_04_01::Models::ImageDiskReference
      end
      def snapshot_list
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotList
      end
      def grant_access_data
        Azure::Compute::Mgmt::V2018_04_01::Models::GrantAccessData
      end
      def disk_list
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskList
      end
      def encryption_settings
        Azure::Compute::Mgmt::V2018_04_01::Models::EncryptionSettings
      end
      def disk_sku
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskSku
      end
      def key_vault_and_key_reference
        Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndKeyReference
      end
      def source_vault
        Azure::Compute::Mgmt::V2018_04_01::Models::SourceVault
      end
      def snapshot_update
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotUpdate
      end
      def snapshot_sku
        Azure::Compute::Mgmt::V2018_04_01::Models::SnapshotSku
      end
      def disk_update
        Azure::Compute::Mgmt::V2018_04_01::Models::DiskUpdate
      end
      def key_vault_and_secret_reference
        Azure::Compute::Mgmt::V2018_04_01::Models::KeyVaultAndSecretReference
      end
      def access_uri
        Azure::Compute::Mgmt::V2018_04_01::Models::AccessUri
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
      def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      end
      def virtual_machine_scale_set_ip_tag
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIpTag
      end
      def compute_operation_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationListResult
      end
      def virtual_machine_scale_set_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      end
      def sub_resource
        Azure::Compute::Mgmt::V2018_06_01::Models::SubResource
      end
      def virtual_machine_scale_set_update_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      end
      def recommended_machine_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::RecommendedMachineConfiguration
      end
      def image_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageListResult
      end
      def virtual_machine_size
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSize
      end
      def virtual_machine_scale_set_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      end
      def gallery_image_version_list
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionList
      end
      def virtual_machine_scale_set_identity
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentity
      end
      def virtual_machine_extension_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionInstanceView
      end
      def virtual_machine_scale_set_osprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSProfile
      end
      def gallery_disk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDiskImage
      end
      def virtual_machine_scale_set_update_osprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
      end
      def purchase_plan
        Azure::Compute::Mgmt::V2018_06_01::Models::PurchasePlan
      end
      def virtual_machine_scale_set_managed_disk_parameters
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
      end
      def data_disk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::DataDiskImage
      end
      def virtual_machine_scale_set_osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSDisk
      end
      def usage_name
        Azure::Compute::Mgmt::V2018_06_01::Models::UsageName
      end
      def virtual_machine_scale_set_update_osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
      end
      def list_usages_result
        Azure::Compute::Mgmt::V2018_06_01::Models::ListUsagesResult
      end
      def virtual_machine_scale_set_data_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetDataDisk
      end
      def gallery_artifact_source
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactSource
      end
      def virtual_machine_scale_set_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetStorageProfile
      end
      def hardware_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::HardwareProfile
      end
      def virtual_machine_scale_set_update_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      end
      def key_vault_secret_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultSecretReference
      end
      def api_entity_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::ApiEntityReference
      end
      def disk_encryption_settings
        Azure::Compute::Mgmt::V2018_06_01::Models::DiskEncryptionSettings
      end
      def compute_operation_value
        Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationValue
      end
      def replication_status
        Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatus
      end
      def instance_view_status
        Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewStatus
      end
      def data_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::DataDisk
      end
      def sku
        Azure::Compute::Mgmt::V2018_06_01::Models::Sku
      end
      def additional_unattend_content
        Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalUnattendContent
      end
      def resource_range
        Azure::Compute::Mgmt::V2018_06_01::Models::ResourceRange
      end
      def win_rmconfiguration
        Azure::Compute::Mgmt::V2018_06_01::Models::WinRMConfiguration
      end
      def gallery_image_identifier
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageIdentifier
      end
      def ssh_public_key
        Azure::Compute::Mgmt::V2018_06_01::Models::SshPublicKey
      end
      def gallery_identifier
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryIdentifier
      end
      def linux_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::LinuxConfiguration
      end
      def virtual_machine_scale_set_network_configuration_dns_settings
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      end
      def vault_secret_group
        Azure::Compute::Mgmt::V2018_06_01::Models::VaultSecretGroup
      end
      def run_command_result
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandResult
      end
      def regional_replication_status
        Azure::Compute::Mgmt::V2018_06_01::Models::RegionalReplicationStatus
      end
      def run_command_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandListResult
      end
      def boot_diagnostics
        Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnostics
      end
      def virtual_machine_scale_set_network_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkProfile
      end
      def virtual_machine_extension_handler_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionHandlerInstanceView
      end
      def virtual_machine_scale_set_update_network_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      end
      def disk_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::DiskInstanceView
      end
      def run_command_document_base
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocumentBase
      end
      def virtual_machine_identity_user_assigned_identities_value
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
      end
      def virtual_machine_scale_set_extension_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionListResult
      end
      def maintenance_redeploy_status
        Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceRedeployStatus
      end
      def virtual_machine_scale_set_extension_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionProfile
      end
      def gallery_image_version_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionStorageProfile
      end
      def virtual_machine_scale_set_vmprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMProfile
      end
      def virtual_machine_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineListResult
      end
      def virtual_machine_scale_set_update_vmprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
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
      def run_command_input
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInput
      end
      def image_storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageStorageProfile
      end
      def virtual_machine_scale_set_vminstance_ids
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
      end
      def availability_set_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetListResult
      end
      def virtual_machine_scale_set_vminstance_required_ids
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      end
      def gallery_image_list
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageList
      end
      def virtual_machine_status_code_count
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineStatusCodeCount
      end
      def virtual_machine_extensions_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionsListResult
      end
      def virtual_machine_scale_set_instance_view_statuses_summary
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      end
      def gallery_artifact_publishing_profile_base
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactPublishingProfileBase
      end
      def virtual_machine_scale_set_vmextensions_summary
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      end
      def virtual_machine_capture_parameters
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureParameters
      end
      def virtual_machine_scale_set_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceView
      end
      def managed_artifact
        Azure::Compute::Mgmt::V2018_06_01::Models::ManagedArtifact
      end
      def virtual_machine_scale_set_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListResult
      end
      def virtual_hard_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualHardDisk
      end
      def virtual_machine_scale_set_list_with_link_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListWithLinkResult
      end
      def storage_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::StorageProfile
      end
      def virtual_machine_scale_set_sku_capacity
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuCapacity
      end
      def windows_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::WindowsConfiguration
      end
      def virtual_machine_scale_set_sku
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSku
      end
      def vault_certificate
        Azure::Compute::Mgmt::V2018_06_01::Models::VaultCertificate
      end
      def virtual_machine_scale_set_list_skus_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListSkusResult
      end
      def network_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::NetworkProfile
      end
      def api_error_base
        Azure::Compute::Mgmt::V2018_06_01::Models::ApiErrorBase
      end
      def virtual_machine_agent_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineAgentInstanceView
      end
      def inner_error
        Azure::Compute::Mgmt::V2018_06_01::Models::InnerError
      end
      def virtual_machine_identity
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentity
      end
      def api_error
        Azure::Compute::Mgmt::V2018_06_01::Models::ApiError
      end
      def image_purchase_plan
        Azure::Compute::Mgmt::V2018_06_01::Models::ImagePurchasePlan
      end
      def rollback_status_info
        Azure::Compute::Mgmt::V2018_06_01::Models::RollbackStatusInfo
      end
      def upgrade_policy
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradePolicy
      end
      def upgrade_operation_history_status
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoryStatus
      end
      def disallowed
        Azure::Compute::Mgmt::V2018_06_01::Models::Disallowed
      end
      def rolling_upgrade_progress_info
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeProgressInfo
      end
      def gallery_list
        Azure::Compute::Mgmt::V2018_06_01::Models::GalleryList
      end
      def upgrade_operation_historical_status_info_properties
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      end
      def usage
        Azure::Compute::Mgmt::V2018_06_01::Models::Usage
      end
      def upgrade_operation_historical_status_info
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfo
      end
      def key_vault_key_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultKeyReference
      end
      def virtual_machine_scale_set_list_osupgrade_history
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      end
      def win_rmlistener
        Azure::Compute::Mgmt::V2018_06_01::Models::WinRMListener
      end
      def virtual_machine_health_status
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineHealthStatus
      end
      def osprofile
        Azure::Compute::Mgmt::V2018_06_01::Models::OSProfile
      end
      def virtual_machine_scale_set_vminstance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceView
      end
      def boot_diagnostics_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnosticsInstanceView
      end
      def run_command_input_parameter
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInputParameter
      end
      def auto_osupgrade_policy
        Azure::Compute::Mgmt::V2018_06_01::Models::AutoOSUpgradePolicy
      end
      def virtual_machine_scale_set_vmlist_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMListResult
      end
      def virtual_machine_size_list_result
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeListResult
      end
      def rolling_upgrade_running_status
        Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeRunningStatus
      end
      def plan
        Azure::Compute::Mgmt::V2018_06_01::Models::Plan
      end
      def log_analytics_operation_result
        Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOperationResult
      end
      def ssh_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::SshConfiguration
      end
      def resource
        Azure::Compute::Mgmt::V2018_06_01::Models::Resource
      end
      def virtual_machine_instance_view
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineInstanceView
      end
      def update_resource
        Azure::Compute::Mgmt::V2018_06_01::Models::UpdateResource
      end
      def osdisk_image
        Azure::Compute::Mgmt::V2018_06_01::Models::OSDiskImage
      end
      def sub_resource_read_only
        Azure::Compute::Mgmt::V2018_06_01::Models::SubResourceReadOnly
      end
      def diagnostics_profile
        Azure::Compute::Mgmt::V2018_06_01::Models::DiagnosticsProfile
      end
      def recovery_walk_response
        Azure::Compute::Mgmt::V2018_06_01::Models::RecoveryWalkResponse
      end
      def osdisk
        Azure::Compute::Mgmt::V2018_06_01::Models::OSDisk
      end
      def log_analytics_output
        Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOutput
      end
      def image_data_disk
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageDataDisk
      end
      def log_analytics_input_base
        Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsInputBase
      end
      def availability_set
        Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySet
      end
      def availability_set_update
        Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetUpdate
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
      def image_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::ImageReference
      end
      def managed_disk_parameters
        Azure::Compute::Mgmt::V2018_06_01::Models::ManagedDiskParameters
      end
      def network_interface_reference
        Azure::Compute::Mgmt::V2018_06_01::Models::NetworkInterfaceReference
      end
      def virtual_machine
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachine
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
      def virtual_machine_scale_set_ipconfiguration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIPConfiguration
      end
      def virtual_machine_scale_set_update_ipconfiguration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      end
      def virtual_machine_scale_set_network_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
      end
      def virtual_machine_scale_set_update_network_configuration
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      end
      def virtual_machine_scale_set_extension
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtension
      end
      def virtual_machine_scale_set
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSet
      end
      def virtual_machine_scale_set_update
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdate
      end
      def virtual_machine_scale_set_vm
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVM
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
      def run_command_document
        Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocument
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
      def storage_account_types
        Azure::Compute::Mgmt::V2018_06_01::Models::StorageAccountTypes
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
      def maintenance_operation_result_code_types
        Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceOperationResultCodeTypes
      end
      def upgrade_mode
        Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeMode
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
      def virtual_machine_scale_set_sku_scale_type
        Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuScaleType
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
      def instance_view_types
        Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewTypes
      end
      def replication_status_types
        Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatusTypes
      end
    end
  end
end
