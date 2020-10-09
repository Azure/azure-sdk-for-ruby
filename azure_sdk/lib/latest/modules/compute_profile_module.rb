# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::Latest
  module Compute
    module Mgmt
      ResourceSkus = Azure::Compute::Mgmt::V2019_04_01::ResourceSkus
      Galleries = Azure::Compute::Mgmt::V2019_12_01::Galleries
      GalleryImages = Azure::Compute::Mgmt::V2019_12_01::GalleryImages
      GalleryImageVersions = Azure::Compute::Mgmt::V2019_12_01::GalleryImageVersions
      GalleryApplications = Azure::Compute::Mgmt::V2019_12_01::GalleryApplications
      GalleryApplicationVersions = Azure::Compute::Mgmt::V2019_12_01::GalleryApplicationVersions
      Operations = Azure::Compute::Mgmt::V2020_06_01::Operations
      AvailabilitySets = Azure::Compute::Mgmt::V2020_06_01::AvailabilitySets
      ProximityPlacementGroups = Azure::Compute::Mgmt::V2020_06_01::ProximityPlacementGroups
      DedicatedHostGroups = Azure::Compute::Mgmt::V2020_06_01::DedicatedHostGroups
      DedicatedHosts = Azure::Compute::Mgmt::V2020_06_01::DedicatedHosts
      SshPublicKeys = Azure::Compute::Mgmt::V2020_06_01::SshPublicKeys
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineExtensions
      VirtualMachineImages = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineImages
      UsageOperations = Azure::Compute::Mgmt::V2020_06_01::UsageOperations
      VirtualMachines = Azure::Compute::Mgmt::V2020_06_01::VirtualMachines
      VirtualMachineSizes = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineSizes
      Images = Azure::Compute::Mgmt::V2020_06_01::Images
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineScaleSets
      VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineScaleSetExtensions
      VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineScaleSetRollingUpgrades
      VirtualMachineScaleSetVMExtensions = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineScaleSetVMExtensions
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineScaleSetVMs
      LogAnalytics = Azure::Compute::Mgmt::V2020_06_01::LogAnalytics
      VirtualMachineRunCommands = Azure::Compute::Mgmt::V2020_06_01::VirtualMachineRunCommands
      Disks = Azure::Compute::Mgmt::V2020_06_30::Disks
      Snapshots = Azure::Compute::Mgmt::V2020_06_30::Snapshots
      DiskEncryptionSets = Azure::Compute::Mgmt::V2020_06_30::DiskEncryptionSets
      DiskAccesses = Azure::Compute::Mgmt::V2020_06_30::DiskAccesses

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
        ReplicationStatus = Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationStatus
        RegionalReplicationStatus = Azure::Compute::Mgmt::V2019_12_01::Models::RegionalReplicationStatus
        GalleryApplicationList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationList
        GalleryImageList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageList
        GalleryDiskImage = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryDiskImage
        UserArtifactSource = Azure::Compute::Mgmt::V2019_12_01::Models::UserArtifactSource
        GalleryIdentifier = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryIdentifier
        ManagedArtifact = Azure::Compute::Mgmt::V2019_12_01::Models::ManagedArtifact
        TargetRegion = Azure::Compute::Mgmt::V2019_12_01::Models::TargetRegion
        EncryptionImages = Azure::Compute::Mgmt::V2019_12_01::Models::EncryptionImages
        Disallowed = Azure::Compute::Mgmt::V2019_12_01::Models::Disallowed
        RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2019_12_01::Models::RecommendedMachineConfiguration
        GalleryApplicationVersionList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionList
        GalleryArtifactSource = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactSource
        DiskImageEncryption = Azure::Compute::Mgmt::V2019_12_01::Models::DiskImageEncryption
        GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactPublishingProfileBase
        GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionStorageProfile
        ImagePurchasePlan = Azure::Compute::Mgmt::V2019_12_01::Models::ImagePurchasePlan
        GalleryImageVersionList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionList
        UpdateResourceDefinition = Azure::Compute::Mgmt::V2019_12_01::Models::UpdateResourceDefinition
        GalleryArtifactVersionSource = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactVersionSource
        ResourceRange = Azure::Compute::Mgmt::V2019_12_01::Models::ResourceRange
        GalleryImageIdentifier = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageIdentifier
        GalleryList = Azure::Compute::Mgmt::V2019_12_01::Models::GalleryList
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
        AvailablePatchSummary = Azure::Compute::Mgmt::V2020_06_01::Models::AvailablePatchSummary
        ComputeOperationValue = Azure::Compute::Mgmt::V2020_06_01::Models::ComputeOperationValue
        LastPatchInstallationSummary = Azure::Compute::Mgmt::V2020_06_01::Models::LastPatchInstallationSummary
        DisallowedConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::DisallowedConfiguration
        VirtualMachinePatchStatus = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachinePatchStatus
        InstanceViewStatus = Azure::Compute::Mgmt::V2020_06_01::Models::InstanceViewStatus
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineInstanceView
        Sku = Azure::Compute::Mgmt::V2020_06_01::Models::Sku
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineAgentInstanceView
        DiskInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::DiskInstanceView
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySetListResult
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::BootDiagnosticsInstanceView
        AutomaticRepairsPolicy = Azure::Compute::Mgmt::V2020_06_01::Models::AutomaticRepairsPolicy
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMListResult
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
        VirtualMachineScaleSetVMProtectionPolicy = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMProtectionPolicy
        NetworkProfile = Azure::Compute::Mgmt::V2020_06_01::Models::NetworkProfile
        SubResourceReadOnly = Azure::Compute::Mgmt::V2020_06_01::Models::SubResourceReadOnly
        BootDiagnostics = Azure::Compute::Mgmt::V2020_06_01::Models::BootDiagnostics
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMInstanceView
        DiagnosticsProfile = Azure::Compute::Mgmt::V2020_06_01::Models::DiagnosticsProfile
        DedicatedHostAllocatableVM = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostAllocatableVM
        BillingProfile = Azure::Compute::Mgmt::V2020_06_01::Models::BillingProfile
        DedicatedHostInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostInstanceView
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionHandlerInstanceView
        UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationHistoricalStatusInfo
        DedicatedHostListResult = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostListResult
        SshPublicKeyGenerateKeyPairResult = Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeyGenerateKeyPairResult
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineStatusCodeCount
        RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeProgressInfo
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        VirtualMachineSize = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSize
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationHistoryStatus
        VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionInstanceView
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineIdentity
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetSku
        MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2020_06_01::Models::MaintenanceRedeployStatus
        VirtualMachineSoftwarePatchProperties = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSoftwarePatchProperties
        VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineHealthStatus
        ComputeOperationListResult = Azure::Compute::Mgmt::V2020_06_01::Models::ComputeOperationListResult
        VirtualMachineAssessPatchesResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineAssessPatchesResult
        RetrieveBootDiagnosticsDataResult = Azure::Compute::Mgmt::V2020_06_01::Models::RetrieveBootDiagnosticsDataResult
        OSDiskImage = Azure::Compute::Mgmt::V2020_06_01::Models::OSDiskImage
        SubResource = Azure::Compute::Mgmt::V2020_06_01::Models::SubResource
        AutomaticOSUpgradeProperties = Azure::Compute::Mgmt::V2020_06_01::Models::AutomaticOSUpgradeProperties
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetSkuCapacity
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
        Usage = Azure::Compute::Mgmt::V2020_06_01::Models::Usage
        RunCommandResult = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandResult
        VirtualMachineReimageParameters = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineReimageParameters
        RunCommandListResult = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandListResult
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListWithLinkResult
        VirtualMachineListResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineListResult
        HardwareProfile = Azure::Compute::Mgmt::V2020_06_01::Models::HardwareProfile
        AutomaticOSUpgradePolicy = Azure::Compute::Mgmt::V2020_06_01::Models::AutomaticOSUpgradePolicy
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2020_06_01::Models::KeyVaultSecretReference
        RollingUpgradePolicy = Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradePolicy
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2020_06_01::Models::KeyVaultKeyReference
        UpgradePolicy = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradePolicy
        VirtualHardDisk = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualHardDisk
        ScaleInPolicy = Azure::Compute::Mgmt::V2020_06_01::Models::ScaleInPolicy
        OrchestrationServiceSummary = Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceSummary
        RunCommandDocumentBase = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandDocumentBase
        DataDisk = Azure::Compute::Mgmt::V2020_06_01::Models::DataDisk
        RunCommandParameterDefinition = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandParameterDefinition
        SecurityProfile = Azure::Compute::Mgmt::V2020_06_01::Models::SecurityProfile
        ImageDisk = Azure::Compute::Mgmt::V2020_06_01::Models::ImageDisk
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2020_06_01::Models::AdditionalUnattendContent
        ImageStorageProfile = Azure::Compute::Mgmt::V2020_06_01::Models::ImageStorageProfile
        WinRMConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::WinRMConfiguration
        RunCommandInput = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandInput
        WindowsConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::WindowsConfiguration
        RunCommandInputParameter = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandInputParameter
        SshConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::SshConfiguration
        ImageListResult = Azure::Compute::Mgmt::V2020_06_01::Models::ImageListResult
        VaultCertificate = Azure::Compute::Mgmt::V2020_06_01::Models::VaultCertificate
        VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
        OSProfile = Azure::Compute::Mgmt::V2020_06_01::Models::OSProfile
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIdentity
        DedicatedHostGroupInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroupInstanceView
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetOSProfile
        DedicatedHostGroupListResult = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroupListResult
        VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
        VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
        VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
        SshPublicKeysGroupListResult = Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeysGroupListResult
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetOSDisk
        RollbackStatusInfo = Azure::Compute::Mgmt::V2020_06_01::Models::RollbackStatusInfo
        VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
        VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionsListResult
        VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetDataDisk
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetStorageProfile
        DataDiskImage = Azure::Compute::Mgmt::V2020_06_01::Models::DataDiskImage
        VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
        ListUsagesResult = Azure::Compute::Mgmt::V2020_06_01::Models::ListUsagesResult
        ApiEntityReference = Azure::Compute::Mgmt::V2020_06_01::Models::ApiEntityReference
        Plan = Azure::Compute::Mgmt::V2020_06_01::Models::Plan
        VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetInstanceView
        VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIpTag
        DiffDiskSettings = Azure::Compute::Mgmt::V2020_06_01::Models::DiffDiskSettings
        VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        StorageProfile = Azure::Compute::Mgmt::V2020_06_01::Models::StorageProfile
        VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
        WinRMListener = Azure::Compute::Mgmt::V2020_06_01::Models::WinRMListener
        OrchestrationServiceStateInput = Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceStateInput
        SshPublicKey = Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKey
        VMScaleSetConvertToSinglePlacementGroupInput = Azure::Compute::Mgmt::V2020_06_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
        VaultSecretGroup = Azure::Compute::Mgmt::V2020_06_01::Models::VaultSecretGroup
        VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        VirtualMachineScaleSetVMNetworkProfileConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
        LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2020_06_01::Models::LogAnalyticsOperationResult
        UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
        LogAnalyticsOutput = Azure::Compute::Mgmt::V2020_06_01::Models::LogAnalyticsOutput
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListSkusResult
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetNetworkProfile
        PurchasePlan = Azure::Compute::Mgmt::V2020_06_01::Models::PurchasePlan
        VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineCaptureParameters
        LogAnalyticsInputBase = Azure::Compute::Mgmt::V2020_06_01::Models::LogAnalyticsInputBase
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2020_06_01::Models::DiskEncryptionSettings
        RecoveryWalkResponse = Azure::Compute::Mgmt::V2020_06_01::Models::RecoveryWalkResponse
        AdditionalCapabilities = Azure::Compute::Mgmt::V2020_06_01::Models::AdditionalCapabilities
        VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtensionListResult
        LinuxConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::LinuxConfiguration
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtensionProfile
        DedicatedHostAvailableCapacity = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostAvailableCapacity
        TerminateNotificationProfile = Azure::Compute::Mgmt::V2020_06_01::Models::TerminateNotificationProfile
        ScheduledEventsProfile = Azure::Compute::Mgmt::V2020_06_01::Models::ScheduledEventsProfile
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListResult
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMProfile
        PatchSettings = Azure::Compute::Mgmt::V2020_06_01::Models::PatchSettings
        VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSizeListResult
        UpdateResource = Azure::Compute::Mgmt::V2020_06_01::Models::UpdateResource
        OSDisk = Azure::Compute::Mgmt::V2020_06_01::Models::OSDisk
        UsageName = Azure::Compute::Mgmt::V2020_06_01::Models::UsageName
        ProximityPlacementGroupListResult = Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroupListResult
        RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeRunningStatus
        AvailabilitySet = Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySet
        AvailabilitySetUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySetUpdate
        SubResourceWithColocationStatus = Azure::Compute::Mgmt::V2020_06_01::Models::SubResourceWithColocationStatus
        ProximityPlacementGroup = Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroup
        ProximityPlacementGroupUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroupUpdate
        DedicatedHostInstanceViewWithName = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostInstanceViewWithName
        DedicatedHostGroup = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroup
        DedicatedHostGroupUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroupUpdate
        DedicatedHost = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHost
        DedicatedHostUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostUpdate
        SshPublicKeyResource = Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeyResource
        SshPublicKeyUpdateResource = Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeyUpdateResource
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineImageResource
        VirtualMachineExtension = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtension
        VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionUpdate
        VirtualMachineImage = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineCaptureResult
        ImageReference = Azure::Compute::Mgmt::V2020_06_01::Models::ImageReference
        DiskEncryptionSetParameters = Azure::Compute::Mgmt::V2020_06_01::Models::DiskEncryptionSetParameters
        ManagedDiskParameters = Azure::Compute::Mgmt::V2020_06_01::Models::ManagedDiskParameters
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2020_06_01::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachine
        VirtualMachineUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineUpdate
        ImageOSDisk = Azure::Compute::Mgmt::V2020_06_01::Models::ImageOSDisk
        ImageDataDisk = Azure::Compute::Mgmt::V2020_06_01::Models::ImageDataDisk
        Image = Azure::Compute::Mgmt::V2020_06_01::Models::Image
        ImageUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::ImageUpdate
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIPConfiguration
        VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
        VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSetExtensionUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtensionUpdate
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSet
        VirtualMachineScaleSetVMReimageParameters = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMReimageParameters
        VirtualMachineScaleSetReimageParameters = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetReimageParameters
        VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdate
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVM
        RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeStatusInfo
        RequestRateByIntervalInput = Azure::Compute::Mgmt::V2020_06_01::Models::RequestRateByIntervalInput
        ThrottledRequestsInput = Azure::Compute::Mgmt::V2020_06_01::Models::ThrottledRequestsInput
        RunCommandDocument = Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandDocument
        VmDiskTypes = Azure::Compute::Mgmt::V2020_06_01::Models::VmDiskTypes
        HyperVGenerationTypes = Azure::Compute::Mgmt::V2020_06_01::Models::HyperVGenerationTypes
        StatusLevelTypes = Azure::Compute::Mgmt::V2020_06_01::Models::StatusLevelTypes
        AvailabilitySetSkuTypes = Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySetSkuTypes
        ProximityPlacementGroupType = Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroupType
        DedicatedHostLicenseTypes = Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostLicenseTypes
        SoftwareUpdateRebootBehavior = Azure::Compute::Mgmt::V2020_06_01::Models::SoftwareUpdateRebootBehavior
        PatchAssessmentState = Azure::Compute::Mgmt::V2020_06_01::Models::PatchAssessmentState
        PatchOperationStatus = Azure::Compute::Mgmt::V2020_06_01::Models::PatchOperationStatus
        VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSizeTypes
        CachingTypes = Azure::Compute::Mgmt::V2020_06_01::Models::CachingTypes
        DiskCreateOptionTypes = Azure::Compute::Mgmt::V2020_06_01::Models::DiskCreateOptionTypes
        StorageAccountTypes = Azure::Compute::Mgmt::V2020_06_01::Models::StorageAccountTypes
        DiffDiskOptions = Azure::Compute::Mgmt::V2020_06_01::Models::DiffDiskOptions
        DiffDiskPlacement = Azure::Compute::Mgmt::V2020_06_01::Models::DiffDiskPlacement
        PassNames = Azure::Compute::Mgmt::V2020_06_01::Models::PassNames
        ComponentNames = Azure::Compute::Mgmt::V2020_06_01::Models::ComponentNames
        SettingNames = Azure::Compute::Mgmt::V2020_06_01::Models::SettingNames
        ProtocolTypes = Azure::Compute::Mgmt::V2020_06_01::Models::ProtocolTypes
        InGuestPatchMode = Azure::Compute::Mgmt::V2020_06_01::Models::InGuestPatchMode
        VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachinePriorityTypes
        VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineEvictionPolicyTypes
        ResourceIdentityType = Azure::Compute::Mgmt::V2020_06_01::Models::ResourceIdentityType
        MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2020_06_01::Models::MaintenanceOperationResultCodeTypes
        HyperVGenerationType = Azure::Compute::Mgmt::V2020_06_01::Models::HyperVGenerationType
        RebootStatus = Azure::Compute::Mgmt::V2020_06_01::Models::RebootStatus
        UpgradeMode = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeMode
        VirtualMachineScaleSetScaleInRules = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetScaleInRules
        OperatingSystemStateTypes = Azure::Compute::Mgmt::V2020_06_01::Models::OperatingSystemStateTypes
        IPVersion = Azure::Compute::Mgmt::V2020_06_01::Models::IPVersion
        OrchestrationServiceNames = Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceNames
        OrchestrationServiceState = Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceState
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetSkuScaleType
        UpgradeState = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeState
        UpgradeOperationInvoker = Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationInvoker
        RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeStatusCode
        RollingUpgradeActionType = Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeActionType
        IntervalInMins = Azure::Compute::Mgmt::V2020_06_01::Models::IntervalInMins
        OrchestrationServiceStateAction = Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceStateAction
        InstanceViewTypes = Azure::Compute::Mgmt::V2020_06_01::Models::InstanceViewTypes
        SnapshotUpdate = Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotUpdate
        Resource = Azure::Compute::Mgmt::V2020_06_30::Models::Resource
        SnapshotList = Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotList
        ImageDiskReference = Azure::Compute::Mgmt::V2020_06_30::Models::ImageDiskReference
        EncryptionSetIdentity = Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionSetIdentity
        SourceVault = Azure::Compute::Mgmt::V2020_06_30::Models::SourceVault
        KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2020_06_30::Models::KeyVaultAndSecretReference
        KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2020_06_30::Models::KeyVaultAndKeyReference
        EncryptionSettingsCollection = Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionSettingsCollection
        DiskEncryptionSetUpdate = Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetUpdate
        ShareInfoElement = Azure::Compute::Mgmt::V2020_06_30::Models::ShareInfoElement
        DiskEncryptionSetList = Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetList
        DiskUpdate = Azure::Compute::Mgmt::V2020_06_30::Models::DiskUpdate
        ResourceUriList = Azure::Compute::Mgmt::V2020_06_30::Models::ResourceUriList
        SnapshotSku = Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotSku
        PrivateEndpoint = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpoint
        AccessUri = Azure::Compute::Mgmt::V2020_06_30::Models::AccessUri
        PrivateLinkServiceConnectionState = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateLinkServiceConnectionState
        DiskSku = Azure::Compute::Mgmt::V2020_06_30::Models::DiskSku
        PrivateEndpointConnection = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpointConnection
        EncryptionSettingsElement = Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionSettingsElement
        ApiError = Azure::Compute::Mgmt::V2020_06_30::Models::ApiError
        Encryption = Azure::Compute::Mgmt::V2020_06_30::Models::Encryption
        ApiErrorBase = Azure::Compute::Mgmt::V2020_06_30::Models::ApiErrorBase
        GrantAccessData = Azure::Compute::Mgmt::V2020_06_30::Models::GrantAccessData
        DiskAccessList = Azure::Compute::Mgmt::V2020_06_30::Models::DiskAccessList
        CreationData = Azure::Compute::Mgmt::V2020_06_30::Models::CreationData
        DiskAccessUpdate = Azure::Compute::Mgmt::V2020_06_30::Models::DiskAccessUpdate
        InnerError = Azure::Compute::Mgmt::V2020_06_30::Models::InnerError
        PrivateLinkResource = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateLinkResource
        DiskList = Azure::Compute::Mgmt::V2020_06_30::Models::DiskList
        PrivateLinkResourceListResult = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateLinkResourceListResult
        Disk = Azure::Compute::Mgmt::V2020_06_30::Models::Disk
        Snapshot = Azure::Compute::Mgmt::V2020_06_30::Models::Snapshot
        DiskEncryptionSet = Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSet
        DiskAccess = Azure::Compute::Mgmt::V2020_06_30::Models::DiskAccess
        DiskStorageAccountTypes = Azure::Compute::Mgmt::V2020_06_30::Models::DiskStorageAccountTypes
        OperatingSystemTypes = Azure::Compute::Mgmt::V2020_06_30::Models::OperatingSystemTypes
        HyperVGeneration = Azure::Compute::Mgmt::V2020_06_30::Models::HyperVGeneration
        DiskCreateOption = Azure::Compute::Mgmt::V2020_06_30::Models::DiskCreateOption
        DiskState = Azure::Compute::Mgmt::V2020_06_30::Models::DiskState
        EncryptionType = Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionType
        NetworkAccessPolicy = Azure::Compute::Mgmt::V2020_06_30::Models::NetworkAccessPolicy
        SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotStorageAccountTypes
        DiskEncryptionSetType = Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetType
        AccessLevel = Azure::Compute::Mgmt::V2020_06_30::Models::AccessLevel
        DiskEncryptionSetIdentityType = Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetIdentityType
        PrivateEndpointServiceConnectionStatus = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpointServiceConnectionStatus
        PrivateEndpointConnectionProvisioningState = Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpointConnectionProvisioningState
      end

      class ComputeManagementClass
        attr_reader :resource_skus, :galleries, :gallery_images, :gallery_image_versions, :gallery_applications, :gallery_application_versions, :operations, :availability_sets, :proximity_placement_groups, :dedicated_host_groups, :dedicated_hosts, :ssh_public_keys, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machines, :virtual_machine_sizes, :images, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vmextensions, :virtual_machine_scale_set_vms, :log_analytics, :virtual_machine_run_commands, :disks, :snapshots, :disk_encryption_sets, :disk_accesses, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

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

          @client_2 = Azure::Compute::Mgmt::V2020_06_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @operations = @client_2.operations
          @availability_sets = @client_2.availability_sets
          @proximity_placement_groups = @client_2.proximity_placement_groups
          @dedicated_host_groups = @client_2.dedicated_host_groups
          @dedicated_hosts = @client_2.dedicated_hosts
          @ssh_public_keys = @client_2.ssh_public_keys
          @virtual_machine_extension_images = @client_2.virtual_machine_extension_images
          @virtual_machine_extensions = @client_2.virtual_machine_extensions
          @virtual_machine_images = @client_2.virtual_machine_images
          @usage_operations = @client_2.usage_operations
          @virtual_machines = @client_2.virtual_machines
          @virtual_machine_sizes = @client_2.virtual_machine_sizes
          @images = @client_2.images
          @virtual_machine_scale_sets = @client_2.virtual_machine_scale_sets
          @virtual_machine_scale_set_extensions = @client_2.virtual_machine_scale_set_extensions
          @virtual_machine_scale_set_rolling_upgrades = @client_2.virtual_machine_scale_set_rolling_upgrades
          @virtual_machine_scale_set_vmextensions = @client_2.virtual_machine_scale_set_vmextensions
          @virtual_machine_scale_set_vms = @client_2.virtual_machine_scale_set_vms
          @log_analytics = @client_2.log_analytics
          @virtual_machine_run_commands = @client_2.virtual_machine_run_commands

          @client_3 = Azure::Compute::Mgmt::V2020_06_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @disks = @client_3.disks
          @snapshots = @client_3.snapshots
          @disk_encryption_sets = @client_3.disk_encryption_sets
          @disk_accesses = @client_3.disk_accesses

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Compute/Mgmt"
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
          def replication_status
            Azure::Compute::Mgmt::V2019_12_01::Models::ReplicationStatus
          end
          def regional_replication_status
            Azure::Compute::Mgmt::V2019_12_01::Models::RegionalReplicationStatus
          end
          def gallery_application_list
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationList
          end
          def gallery_image_list
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageList
          end
          def gallery_disk_image
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryDiskImage
          end
          def user_artifact_source
            Azure::Compute::Mgmt::V2019_12_01::Models::UserArtifactSource
          end
          def gallery_identifier
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryIdentifier
          end
          def managed_artifact
            Azure::Compute::Mgmt::V2019_12_01::Models::ManagedArtifact
          end
          def target_region
            Azure::Compute::Mgmt::V2019_12_01::Models::TargetRegion
          end
          def encryption_images
            Azure::Compute::Mgmt::V2019_12_01::Models::EncryptionImages
          end
          def disallowed
            Azure::Compute::Mgmt::V2019_12_01::Models::Disallowed
          end
          def recommended_machine_configuration
            Azure::Compute::Mgmt::V2019_12_01::Models::RecommendedMachineConfiguration
          end
          def gallery_application_version_list
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryApplicationVersionList
          end
          def gallery_artifact_source
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactSource
          end
          def disk_image_encryption
            Azure::Compute::Mgmt::V2019_12_01::Models::DiskImageEncryption
          end
          def gallery_artifact_publishing_profile_base
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactPublishingProfileBase
          end
          def gallery_image_version_storage_profile
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionStorageProfile
          end
          def image_purchase_plan
            Azure::Compute::Mgmt::V2019_12_01::Models::ImagePurchasePlan
          end
          def gallery_image_version_list
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageVersionList
          end
          def update_resource_definition
            Azure::Compute::Mgmt::V2019_12_01::Models::UpdateResourceDefinition
          end
          def gallery_artifact_version_source
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryArtifactVersionSource
          end
          def resource_range
            Azure::Compute::Mgmt::V2019_12_01::Models::ResourceRange
          end
          def gallery_image_identifier
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryImageIdentifier
          end
          def gallery_list
            Azure::Compute::Mgmt::V2019_12_01::Models::GalleryList
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
          def available_patch_summary
            Azure::Compute::Mgmt::V2020_06_01::Models::AvailablePatchSummary
          end
          def compute_operation_value
            Azure::Compute::Mgmt::V2020_06_01::Models::ComputeOperationValue
          end
          def last_patch_installation_summary
            Azure::Compute::Mgmt::V2020_06_01::Models::LastPatchInstallationSummary
          end
          def disallowed_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::DisallowedConfiguration
          end
          def virtual_machine_patch_status
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachinePatchStatus
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2020_06_01::Models::InstanceViewStatus
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineInstanceView
          end
          def sku
            Azure::Compute::Mgmt::V2020_06_01::Models::Sku
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineAgentInstanceView
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::DiskInstanceView
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySetListResult
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::BootDiagnosticsInstanceView
          end
          def automatic_repairs_policy
            Azure::Compute::Mgmt::V2020_06_01::Models::AutomaticRepairsPolicy
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMListResult
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def virtual_machine_scale_set_vmprotection_policy
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMProtectionPolicy
          end
          def network_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::NetworkProfile
          end
          def sub_resource_read_only
            Azure::Compute::Mgmt::V2020_06_01::Models::SubResourceReadOnly
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2020_06_01::Models::BootDiagnostics
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMInstanceView
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::DiagnosticsProfile
          end
          def dedicated_host_allocatable_vm
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostAllocatableVM
          end
          def billing_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::BillingProfile
          end
          def dedicated_host_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostInstanceView
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionHandlerInstanceView
          end
          def upgrade_operation_historical_status_info
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationHistoricalStatusInfo
          end
          def dedicated_host_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostListResult
          end
          def ssh_public_key_generate_key_pair_result
            Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeyGenerateKeyPairResult
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineStatusCodeCount
          end
          def rolling_upgrade_progress_info
            Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeProgressInfo
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSize
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def upgrade_operation_history_status
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationHistoryStatus
          end
          def virtual_machine_identity_user_assigned_identities_value
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionInstanceView
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineIdentity
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetSku
          end
          def maintenance_redeploy_status
            Azure::Compute::Mgmt::V2020_06_01::Models::MaintenanceRedeployStatus
          end
          def virtual_machine_software_patch_properties
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSoftwarePatchProperties
          end
          def virtual_machine_health_status
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineHealthStatus
          end
          def compute_operation_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::ComputeOperationListResult
          end
          def virtual_machine_assess_patches_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineAssessPatchesResult
          end
          def retrieve_boot_diagnostics_data_result
            Azure::Compute::Mgmt::V2020_06_01::Models::RetrieveBootDiagnosticsDataResult
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2020_06_01::Models::OSDiskImage
          end
          def sub_resource
            Azure::Compute::Mgmt::V2020_06_01::Models::SubResource
          end
          def automatic_osupgrade_properties
            Azure::Compute::Mgmt::V2020_06_01::Models::AutomaticOSUpgradeProperties
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetSkuCapacity
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def usage
            Azure::Compute::Mgmt::V2020_06_01::Models::Usage
          end
          def run_command_result
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandResult
          end
          def virtual_machine_reimage_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineReimageParameters
          end
          def run_command_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandListResult
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineListResult
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::HardwareProfile
          end
          def automatic_osupgrade_policy
            Azure::Compute::Mgmt::V2020_06_01::Models::AutomaticOSUpgradePolicy
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2020_06_01::Models::KeyVaultSecretReference
          end
          def rolling_upgrade_policy
            Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradePolicy
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2020_06_01::Models::KeyVaultKeyReference
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradePolicy
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualHardDisk
          end
          def scale_in_policy
            Azure::Compute::Mgmt::V2020_06_01::Models::ScaleInPolicy
          end
          def orchestration_service_summary
            Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceSummary
          end
          def run_command_document_base
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandDocumentBase
          end
          def data_disk
            Azure::Compute::Mgmt::V2020_06_01::Models::DataDisk
          end
          def run_command_parameter_definition
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandParameterDefinition
          end
          def security_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::SecurityProfile
          end
          def image_disk
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageDisk
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2020_06_01::Models::AdditionalUnattendContent
          end
          def image_storage_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageStorageProfile
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2020_06_01::Models::WinRMConfiguration
          end
          def run_command_input
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandInput
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::WindowsConfiguration
          end
          def run_command_input_parameter
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandInputParameter
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::SshConfiguration
          end
          def image_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageListResult
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2020_06_01::Models::VaultCertificate
          end
          def virtual_machine_scale_set_identity_user_assigned_identities_value
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
          end
          def osprofile
            Azure::Compute::Mgmt::V2020_06_01::Models::OSProfile
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIdentity
          end
          def dedicated_host_group_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroupInstanceView
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetOSProfile
          end
          def dedicated_host_group_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroupListResult
          end
          def virtual_machine_scale_set_update_osprofile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
          end
          def virtual_machine_scale_set_list_osupgrade_history
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
          end
          def virtual_machine_scale_set_managed_disk_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
          end
          def ssh_public_keys_group_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeysGroupListResult
          end
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetOSDisk
          end
          def rollback_status_info
            Azure::Compute::Mgmt::V2020_06_01::Models::RollbackStatusInfo
          end
          def virtual_machine_scale_set_update_osdisk
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
          end
          def virtual_machine_extensions_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionsListResult
          end
          def virtual_machine_scale_set_data_disk
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetDataDisk
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetStorageProfile
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2020_06_01::Models::DataDiskImage
          end
          def virtual_machine_scale_set_update_storage_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2020_06_01::Models::ListUsagesResult
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2020_06_01::Models::ApiEntityReference
          end
          def plan
            Azure::Compute::Mgmt::V2020_06_01::Models::Plan
          end
          def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
          end
          def virtual_machine_scale_set_instance_view
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetInstanceView
          end
          def virtual_machine_scale_set_ip_tag
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIpTag
          end
          def diff_disk_settings
            Azure::Compute::Mgmt::V2020_06_01::Models::DiffDiskSettings
          end
          def virtual_machine_scale_set_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
          end
          def storage_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::StorageProfile
          end
          def virtual_machine_scale_set_update_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2020_06_01::Models::WinRMListener
          end
          def orchestration_service_state_input
            Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceStateInput
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKey
          end
          def vmscale_set_convert_to_single_placement_group_input
            Azure::Compute::Mgmt::V2020_06_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2020_06_01::Models::VaultSecretGroup
          end
          def virtual_machine_scale_set_network_configuration_dns_settings
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
          end
          def virtual_machine_scale_set_vmnetwork_profile_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
          end
          def log_analytics_operation_result
            Azure::Compute::Mgmt::V2020_06_01::Models::LogAnalyticsOperationResult
          end
          def upgrade_operation_historical_status_info_properties
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
          end
          def log_analytics_output
            Azure::Compute::Mgmt::V2020_06_01::Models::LogAnalyticsOutput
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListSkusResult
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetNetworkProfile
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2020_06_01::Models::PurchasePlan
          end
          def virtual_machine_scale_set_update_network_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineCaptureParameters
          end
          def log_analytics_input_base
            Azure::Compute::Mgmt::V2020_06_01::Models::LogAnalyticsInputBase
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2020_06_01::Models::DiskEncryptionSettings
          end
          def recovery_walk_response
            Azure::Compute::Mgmt::V2020_06_01::Models::RecoveryWalkResponse
          end
          def additional_capabilities
            Azure::Compute::Mgmt::V2020_06_01::Models::AdditionalCapabilities
          end
          def virtual_machine_scale_set_extension_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtensionListResult
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtensionProfile
          end
          def dedicated_host_available_capacity
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostAvailableCapacity
          end
          def terminate_notification_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::TerminateNotificationProfile
          end
          def scheduled_events_profile
            Azure::Compute::Mgmt::V2020_06_01::Models::ScheduledEventsProfile
          end
          def virtual_machine_scale_set_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetListResult
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMProfile
          end
          def patch_settings
            Azure::Compute::Mgmt::V2020_06_01::Models::PatchSettings
          end
          def virtual_machine_scale_set_update_vmprofile
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSizeListResult
          end
          def update_resource
            Azure::Compute::Mgmt::V2020_06_01::Models::UpdateResource
          end
          def osdisk
            Azure::Compute::Mgmt::V2020_06_01::Models::OSDisk
          end
          def usage_name
            Azure::Compute::Mgmt::V2020_06_01::Models::UsageName
          end
          def proximity_placement_group_list_result
            Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroupListResult
          end
          def rolling_upgrade_running_status
            Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeRunningStatus
          end
          def availability_set
            Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySet
          end
          def availability_set_update
            Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySetUpdate
          end
          def sub_resource_with_colocation_status
            Azure::Compute::Mgmt::V2020_06_01::Models::SubResourceWithColocationStatus
          end
          def proximity_placement_group
            Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroup
          end
          def proximity_placement_group_update
            Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroupUpdate
          end
          def dedicated_host_instance_view_with_name
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostInstanceViewWithName
          end
          def dedicated_host_group
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroup
          end
          def dedicated_host_group_update
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostGroupUpdate
          end
          def dedicated_host
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHost
          end
          def dedicated_host_update
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostUpdate
          end
          def ssh_public_key_resource
            Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeyResource
          end
          def ssh_public_key_update_resource
            Azure::Compute::Mgmt::V2020_06_01::Models::SshPublicKeyUpdateResource
          end
          def virtual_machine_extension_image
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionImage
          end
          def virtual_machine_image_resource
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineImageResource
          end
          def virtual_machine_extension
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtension
          end
          def virtual_machine_extension_update
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineExtensionUpdate
          end
          def virtual_machine_image
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineImage
          end
          def virtual_machine_capture_result
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineCaptureResult
          end
          def image_reference
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageReference
          end
          def disk_encryption_set_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::DiskEncryptionSetParameters
          end
          def managed_disk_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::ManagedDiskParameters
          end
          def network_interface_reference
            Azure::Compute::Mgmt::V2020_06_01::Models::NetworkInterfaceReference
          end
          def virtual_machine
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachine
          end
          def virtual_machine_update
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineUpdate
          end
          def image_osdisk
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageOSDisk
          end
          def image_data_disk
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageDataDisk
          end
          def image
            Azure::Compute::Mgmt::V2020_06_01::Models::Image
          end
          def image_update
            Azure::Compute::Mgmt::V2020_06_01::Models::ImageUpdate
          end
          def virtual_machine_scale_set_ipconfiguration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetIPConfiguration
          end
          def virtual_machine_scale_set_update_ipconfiguration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
          end
          def virtual_machine_scale_set_network_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
          end
          def virtual_machine_scale_set_update_network_configuration
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
          end
          def virtual_machine_scale_set_extension
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtension
          end
          def virtual_machine_scale_set_extension_update
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetExtensionUpdate
          end
          def virtual_machine_scale_set
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSet
          end
          def virtual_machine_scale_set_vmreimage_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVMReimageParameters
          end
          def virtual_machine_scale_set_reimage_parameters
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetReimageParameters
          end
          def virtual_machine_scale_set_update
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetUpdate
          end
          def virtual_machine_scale_set_vm
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetVM
          end
          def rolling_upgrade_status_info
            Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeStatusInfo
          end
          def request_rate_by_interval_input
            Azure::Compute::Mgmt::V2020_06_01::Models::RequestRateByIntervalInput
          end
          def throttled_requests_input
            Azure::Compute::Mgmt::V2020_06_01::Models::ThrottledRequestsInput
          end
          def run_command_document
            Azure::Compute::Mgmt::V2020_06_01::Models::RunCommandDocument
          end
          def vm_disk_types
            Azure::Compute::Mgmt::V2020_06_01::Models::VmDiskTypes
          end
          def hyper_vgeneration_types
            Azure::Compute::Mgmt::V2020_06_01::Models::HyperVGenerationTypes
          end
          def status_level_types
            Azure::Compute::Mgmt::V2020_06_01::Models::StatusLevelTypes
          end
          def availability_set_sku_types
            Azure::Compute::Mgmt::V2020_06_01::Models::AvailabilitySetSkuTypes
          end
          def proximity_placement_group_type
            Azure::Compute::Mgmt::V2020_06_01::Models::ProximityPlacementGroupType
          end
          def dedicated_host_license_types
            Azure::Compute::Mgmt::V2020_06_01::Models::DedicatedHostLicenseTypes
          end
          def software_update_reboot_behavior
            Azure::Compute::Mgmt::V2020_06_01::Models::SoftwareUpdateRebootBehavior
          end
          def patch_assessment_state
            Azure::Compute::Mgmt::V2020_06_01::Models::PatchAssessmentState
          end
          def patch_operation_status
            Azure::Compute::Mgmt::V2020_06_01::Models::PatchOperationStatus
          end
          def virtual_machine_size_types
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineSizeTypes
          end
          def caching_types
            Azure::Compute::Mgmt::V2020_06_01::Models::CachingTypes
          end
          def disk_create_option_types
            Azure::Compute::Mgmt::V2020_06_01::Models::DiskCreateOptionTypes
          end
          def storage_account_types
            Azure::Compute::Mgmt::V2020_06_01::Models::StorageAccountTypes
          end
          def diff_disk_options
            Azure::Compute::Mgmt::V2020_06_01::Models::DiffDiskOptions
          end
          def diff_disk_placement
            Azure::Compute::Mgmt::V2020_06_01::Models::DiffDiskPlacement
          end
          def pass_names
            Azure::Compute::Mgmt::V2020_06_01::Models::PassNames
          end
          def component_names
            Azure::Compute::Mgmt::V2020_06_01::Models::ComponentNames
          end
          def setting_names
            Azure::Compute::Mgmt::V2020_06_01::Models::SettingNames
          end
          def protocol_types
            Azure::Compute::Mgmt::V2020_06_01::Models::ProtocolTypes
          end
          def in_guest_patch_mode
            Azure::Compute::Mgmt::V2020_06_01::Models::InGuestPatchMode
          end
          def virtual_machine_priority_types
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachinePriorityTypes
          end
          def virtual_machine_eviction_policy_types
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineEvictionPolicyTypes
          end
          def resource_identity_type
            Azure::Compute::Mgmt::V2020_06_01::Models::ResourceIdentityType
          end
          def maintenance_operation_result_code_types
            Azure::Compute::Mgmt::V2020_06_01::Models::MaintenanceOperationResultCodeTypes
          end
          def hyper_vgeneration_type
            Azure::Compute::Mgmt::V2020_06_01::Models::HyperVGenerationType
          end
          def reboot_status
            Azure::Compute::Mgmt::V2020_06_01::Models::RebootStatus
          end
          def upgrade_mode
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeMode
          end
          def virtual_machine_scale_set_scale_in_rules
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetScaleInRules
          end
          def operating_system_state_types
            Azure::Compute::Mgmt::V2020_06_01::Models::OperatingSystemStateTypes
          end
          def ipversion
            Azure::Compute::Mgmt::V2020_06_01::Models::IPVersion
          end
          def orchestration_service_names
            Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceNames
          end
          def orchestration_service_state
            Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceState
          end
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2020_06_01::Models::VirtualMachineScaleSetSkuScaleType
          end
          def upgrade_state
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeState
          end
          def upgrade_operation_invoker
            Azure::Compute::Mgmt::V2020_06_01::Models::UpgradeOperationInvoker
          end
          def rolling_upgrade_status_code
            Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeStatusCode
          end
          def rolling_upgrade_action_type
            Azure::Compute::Mgmt::V2020_06_01::Models::RollingUpgradeActionType
          end
          def interval_in_mins
            Azure::Compute::Mgmt::V2020_06_01::Models::IntervalInMins
          end
          def orchestration_service_state_action
            Azure::Compute::Mgmt::V2020_06_01::Models::OrchestrationServiceStateAction
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2020_06_01::Models::InstanceViewTypes
          end
          def snapshot_update
            Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotUpdate
          end
          def resource
            Azure::Compute::Mgmt::V2020_06_30::Models::Resource
          end
          def snapshot_list
            Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotList
          end
          def image_disk_reference
            Azure::Compute::Mgmt::V2020_06_30::Models::ImageDiskReference
          end
          def encryption_set_identity
            Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionSetIdentity
          end
          def source_vault
            Azure::Compute::Mgmt::V2020_06_30::Models::SourceVault
          end
          def key_vault_and_secret_reference
            Azure::Compute::Mgmt::V2020_06_30::Models::KeyVaultAndSecretReference
          end
          def key_vault_and_key_reference
            Azure::Compute::Mgmt::V2020_06_30::Models::KeyVaultAndKeyReference
          end
          def encryption_settings_collection
            Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionSettingsCollection
          end
          def disk_encryption_set_update
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetUpdate
          end
          def share_info_element
            Azure::Compute::Mgmt::V2020_06_30::Models::ShareInfoElement
          end
          def disk_encryption_set_list
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetList
          end
          def disk_update
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskUpdate
          end
          def resource_uri_list
            Azure::Compute::Mgmt::V2020_06_30::Models::ResourceUriList
          end
          def snapshot_sku
            Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotSku
          end
          def private_endpoint
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpoint
          end
          def access_uri
            Azure::Compute::Mgmt::V2020_06_30::Models::AccessUri
          end
          def private_link_service_connection_state
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateLinkServiceConnectionState
          end
          def disk_sku
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskSku
          end
          def private_endpoint_connection
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpointConnection
          end
          def encryption_settings_element
            Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionSettingsElement
          end
          def api_error
            Azure::Compute::Mgmt::V2020_06_30::Models::ApiError
          end
          def encryption
            Azure::Compute::Mgmt::V2020_06_30::Models::Encryption
          end
          def api_error_base
            Azure::Compute::Mgmt::V2020_06_30::Models::ApiErrorBase
          end
          def grant_access_data
            Azure::Compute::Mgmt::V2020_06_30::Models::GrantAccessData
          end
          def disk_access_list
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskAccessList
          end
          def creation_data
            Azure::Compute::Mgmt::V2020_06_30::Models::CreationData
          end
          def disk_access_update
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskAccessUpdate
          end
          def inner_error
            Azure::Compute::Mgmt::V2020_06_30::Models::InnerError
          end
          def private_link_resource
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateLinkResource
          end
          def disk_list
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskList
          end
          def private_link_resource_list_result
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateLinkResourceListResult
          end
          def disk
            Azure::Compute::Mgmt::V2020_06_30::Models::Disk
          end
          def snapshot
            Azure::Compute::Mgmt::V2020_06_30::Models::Snapshot
          end
          def disk_encryption_set
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSet
          end
          def disk_access
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskAccess
          end
          def disk_storage_account_types
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskStorageAccountTypes
          end
          def operating_system_types
            Azure::Compute::Mgmt::V2020_06_30::Models::OperatingSystemTypes
          end
          def hyper_vgeneration
            Azure::Compute::Mgmt::V2020_06_30::Models::HyperVGeneration
          end
          def disk_create_option
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskCreateOption
          end
          def disk_state
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskState
          end
          def encryption_type
            Azure::Compute::Mgmt::V2020_06_30::Models::EncryptionType
          end
          def network_access_policy
            Azure::Compute::Mgmt::V2020_06_30::Models::NetworkAccessPolicy
          end
          def snapshot_storage_account_types
            Azure::Compute::Mgmt::V2020_06_30::Models::SnapshotStorageAccountTypes
          end
          def disk_encryption_set_type
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetType
          end
          def access_level
            Azure::Compute::Mgmt::V2020_06_30::Models::AccessLevel
          end
          def disk_encryption_set_identity_type
            Azure::Compute::Mgmt::V2020_06_30::Models::DiskEncryptionSetIdentityType
          end
          def private_endpoint_service_connection_status
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpointServiceConnectionStatus
          end
          def private_endpoint_connection_provisioning_state
            Azure::Compute::Mgmt::V2020_06_30::Models::PrivateEndpointConnectionProvisioningState
          end
        end
      end
    end
  end
end
