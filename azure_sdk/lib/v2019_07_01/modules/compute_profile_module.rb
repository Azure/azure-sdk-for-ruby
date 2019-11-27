# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::V2019_07_01
  module Compute
    module Mgmt
      DedicatedHostGroups = Azure::Compute::Mgmt::V2019_03_01::DedicatedHostGroups
      DedicatedHosts = Azure::Compute::Mgmt::V2019_03_01::DedicatedHosts
      Galleries = Azure::Compute::Mgmt::V2019_03_01::Galleries
      GalleryImages = Azure::Compute::Mgmt::V2019_03_01::GalleryImages
      GalleryImageVersions = Azure::Compute::Mgmt::V2019_03_01::GalleryImageVersions
      GalleryApplications = Azure::Compute::Mgmt::V2019_03_01::GalleryApplications
      GalleryApplicationVersions = Azure::Compute::Mgmt::V2019_03_01::GalleryApplicationVersions
      Operations = Azure::Compute::Mgmt::V2018_10_01::Operations
      AvailabilitySets = Azure::Compute::Mgmt::V2018_10_01::AvailabilitySets
      ProximityPlacementGroups = Azure::Compute::Mgmt::V2018_10_01::ProximityPlacementGroups
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineExtensions
      VirtualMachineImages = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineImages
      UsageOperations = Azure::Compute::Mgmt::V2018_10_01::UsageOperations
      VirtualMachines = Azure::Compute::Mgmt::V2018_10_01::VirtualMachines
      VirtualMachineSizes = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineSizes
      Images = Azure::Compute::Mgmt::V2018_10_01::Images
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineScaleSets
      VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineScaleSetExtensions
      VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineScaleSetRollingUpgrades
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineScaleSetVMs
      LogAnalytics = Azure::Compute::Mgmt::V2018_10_01::LogAnalytics
      VirtualMachineRunCommands = Azure::Compute::Mgmt::V2018_10_01::VirtualMachineRunCommands
      Disks = Azure::Compute::Mgmt::V2018_09_30::Disks
      Snapshots = Azure::Compute::Mgmt::V2018_09_30::Snapshots

      module Models
        UserArtifactSource = Azure::Compute::Mgmt::V2019_03_01::Models::UserArtifactSource
        GalleryDiskImage = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryDiskImage
        GalleryList = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryList
        DedicatedHostAllocatableVM = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostAllocatableVM
        DedicatedHostInstanceView = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostInstanceView
        GalleryImageVersionList = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersionList
        GalleryArtifactSource = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryArtifactSource
        ImagePurchasePlan = Azure::Compute::Mgmt::V2019_03_01::Models::ImagePurchasePlan
        Disallowed = Azure::Compute::Mgmt::V2019_03_01::Models::Disallowed
        RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2019_03_01::Models::RecommendedMachineConfiguration
        TerminateNotificationProfile = Azure::Compute::Mgmt::V2019_03_01::Models::TerminateNotificationProfile
        AutomaticRepairsPolicy = Azure::Compute::Mgmt::V2019_03_01::Models::AutomaticRepairsPolicy
        ScheduledEventsProfile = Azure::Compute::Mgmt::V2019_03_01::Models::ScheduledEventsProfile
        ReplicationStatus = Azure::Compute::Mgmt::V2019_03_01::Models::ReplicationStatus
        ScaleInPolicy = Azure::Compute::Mgmt::V2019_03_01::Models::ScaleInPolicy
        TargetRegion = Azure::Compute::Mgmt::V2019_03_01::Models::TargetRegion
        GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersionStorageProfile
        DedicatedHostAvailableCapacity = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostAvailableCapacity
        DedicatedHostListResult = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostListResult
        ManagedArtifact = Azure::Compute::Mgmt::V2019_03_01::Models::ManagedArtifact
        GalleryImageIdentifier = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageIdentifier
        GalleryApplicationVersionList = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationVersionList
        BillingProfile = Azure::Compute::Mgmt::V2019_03_01::Models::BillingProfile
        VirtualMachineScaleSetVMNetworkProfileConfiguration = Azure::Compute::Mgmt::V2019_03_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
        VirtualMachineScaleSetVMProtectionPolicy = Azure::Compute::Mgmt::V2019_03_01::Models::VirtualMachineScaleSetVMProtectionPolicy
        GalleryImageList = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageList
        GalleryApplicationList = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationList
        ResourceRange = Azure::Compute::Mgmt::V2019_03_01::Models::ResourceRange
        DedicatedHostGroupListResult = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostGroupListResult
        VMScaleSetConvertToSinglePlacementGroupInput = Azure::Compute::Mgmt::V2019_03_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
        RegionalReplicationStatus = Azure::Compute::Mgmt::V2019_03_01::Models::RegionalReplicationStatus
        GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryArtifactPublishingProfileBase
        GalleryIdentifier = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryIdentifier
        DedicatedHostGroup = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostGroup
        DedicatedHostGroupUpdate = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostGroupUpdate
        DedicatedHost = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHost
        DedicatedHostUpdate = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostUpdate
        Gallery = Azure::Compute::Mgmt::V2019_03_01::Models::Gallery
        GalleryApplication = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplication
        GalleryApplicationVersionPublishingProfile = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationVersionPublishingProfile
        GalleryApplicationVersion = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationVersion
        GalleryImage = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImage
        GalleryImageVersionPublishingProfile = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersionPublishingProfile
        GalleryOSDiskImage = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryOSDiskImage
        GalleryDataDiskImage = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryDataDiskImage
        GalleryImageVersion = Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersion
        HyperVGenerationTypes = Azure::Compute::Mgmt::V2019_03_01::Models::HyperVGenerationTypes
        DedicatedHostLicenseTypes = Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostLicenseTypes
        HyperVGenerationType = Azure::Compute::Mgmt::V2019_03_01::Models::HyperVGenerationType
        VirtualMachineScaleSetScaleInRules = Azure::Compute::Mgmt::V2019_03_01::Models::VirtualMachineScaleSetScaleInRules
        AggregatedReplicationState = Azure::Compute::Mgmt::V2019_03_01::Models::AggregatedReplicationState
        ReplicationState = Azure::Compute::Mgmt::V2019_03_01::Models::ReplicationState
        StorageAccountType = Azure::Compute::Mgmt::V2019_03_01::Models::StorageAccountType
        HostCaching = Azure::Compute::Mgmt::V2019_03_01::Models::HostCaching
        ReplicationStatusTypes = Azure::Compute::Mgmt::V2019_03_01::Models::ReplicationStatusTypes
        VirtualMachineListResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineListResult
        AutomaticOSUpgradePolicy = Azure::Compute::Mgmt::V2018_10_01::Models::AutomaticOSUpgradePolicy
        ComputeOperationListResult = Azure::Compute::Mgmt::V2018_10_01::Models::ComputeOperationListResult
        RollingUpgradePolicy = Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradePolicy
        SubResource = Azure::Compute::Mgmt::V2018_10_01::Models::SubResource
        UpgradePolicy = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradePolicy
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineIdentity
        MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2018_10_01::Models::MaintenanceRedeployStatus
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySetListResult
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineInstanceView
        SubResourceReadOnly = Azure::Compute::Mgmt::V2018_10_01::Models::SubResourceReadOnly
        UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationHistoryStatus
        VirtualMachineSize = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineSize
        RollbackStatusInfo = Azure::Compute::Mgmt::V2018_10_01::Models::RollbackStatusInfo
        RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeRunningStatus
        ComputeOperationValue = Azure::Compute::Mgmt::V2018_10_01::Models::ComputeOperationValue
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionInstanceView
        InstanceViewStatus = Azure::Compute::Mgmt::V2018_10_01::Models::InstanceViewStatus
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMInstanceView
        Sku = Azure::Compute::Mgmt::V2018_10_01::Models::Sku
        PurchasePlan = Azure::Compute::Mgmt::V2018_10_01::Models::PurchasePlan
        ApiError = Azure::Compute::Mgmt::V2018_10_01::Models::ApiError
        DataDiskImage = Azure::Compute::Mgmt::V2018_10_01::Models::DataDiskImage
        ImageOSDisk = Azure::Compute::Mgmt::V2018_10_01::Models::ImageOSDisk
        VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineHealthStatus
        ImageDataDisk = Azure::Compute::Mgmt::V2018_10_01::Models::ImageDataDisk
        Usage = Azure::Compute::Mgmt::V2018_10_01::Models::Usage
        ImageStorageProfile = Azure::Compute::Mgmt::V2018_10_01::Models::ImageStorageProfile
        VirtualMachineReimageParameters = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineReimageParameters
        InnerError = Azure::Compute::Mgmt::V2018_10_01::Models::InnerError
        VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
        HardwareProfile = Azure::Compute::Mgmt::V2018_10_01::Models::HardwareProfile
        ImageListResult = Azure::Compute::Mgmt::V2018_10_01::Models::ImageListResult
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2018_10_01::Models::KeyVaultSecretReference
        VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2018_10_01::Models::DiskEncryptionSettings
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIdentity
        DiffDiskSettings = Azure::Compute::Mgmt::V2018_10_01::Models::DiffDiskSettings
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetOSProfile
        OSDisk = Azure::Compute::Mgmt::V2018_10_01::Models::OSDisk
        VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateOSProfile
        StorageProfile = Azure::Compute::Mgmt::V2018_10_01::Models::StorageProfile
        VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetManagedDiskParameters
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2018_10_01::Models::AdditionalUnattendContent
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetOSDisk
        WinRMConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::WinRMConfiguration
        VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateOSDisk
        SshPublicKey = Azure::Compute::Mgmt::V2018_10_01::Models::SshPublicKey
        VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetDataDisk
        LinuxConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::LinuxConfiguration
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetStorageProfile
        VaultSecretGroup = Azure::Compute::Mgmt::V2018_10_01::Models::VaultSecretGroup
        VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateStorageProfile
        RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeProgressInfo
        ApiEntityReference = Azure::Compute::Mgmt::V2018_10_01::Models::ApiEntityReference
        BootDiagnostics = Azure::Compute::Mgmt::V2018_10_01::Models::BootDiagnostics
        VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionHandlerInstanceView
        VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIpTag
        DiskInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::DiskInstanceView
        VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
        VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
        RunCommandResult = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandResult
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineSizeListResult
        RunCommandListResult = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandListResult
        RecoveryWalkResponse = Azure::Compute::Mgmt::V2018_10_01::Models::RecoveryWalkResponse
        VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        OSDiskImage = Azure::Compute::Mgmt::V2018_10_01::Models::OSDiskImage
        RunCommandDocumentBase = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandDocumentBase
        UsageName = Azure::Compute::Mgmt::V2018_10_01::Models::UsageName
        RunCommandParameterDefinition = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandParameterDefinition
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineCaptureParameters
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetNetworkProfile
        UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationHistoricalStatusInfo
        VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
        VirtualHardDisk = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualHardDisk
        RunCommandInput = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandInput
        DataDisk = Azure::Compute::Mgmt::V2018_10_01::Models::DataDisk
        VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetExtensionListResult
        WinRMListener = Azure::Compute::Mgmt::V2018_10_01::Models::WinRMListener
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetExtensionProfile
        SshConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::SshConfiguration
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMProfile
        OSProfile = Azure::Compute::Mgmt::V2018_10_01::Models::OSProfile
        VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateVMProfile
        DiagnosticsProfile = Azure::Compute::Mgmt::V2018_10_01::Models::DiagnosticsProfile
        RunCommandInputParameter = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandInputParameter
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::BootDiagnosticsInstanceView
        LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2018_10_01::Models::LogAnalyticsOperationResult
        ProximityPlacementGroupListResult = Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroupListResult
        LogAnalyticsOutput = Azure::Compute::Mgmt::V2018_10_01::Models::LogAnalyticsOutput
        VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionsListResult
        LogAnalyticsInputBase = Azure::Compute::Mgmt::V2018_10_01::Models::LogAnalyticsInputBase
        ListUsagesResult = Azure::Compute::Mgmt::V2018_10_01::Models::ListUsagesResult
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMInstanceIDs
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2018_10_01::Models::KeyVaultKeyReference
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        AdditionalCapabilities = Azure::Compute::Mgmt::V2018_10_01::Models::AdditionalCapabilities
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineStatusCodeCount
        VaultCertificate = Azure::Compute::Mgmt::V2018_10_01::Models::VaultCertificate
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineAgentInstanceView
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMExtensionsSummary
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMListResult
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetInstanceView
        Plan = Azure::Compute::Mgmt::V2018_10_01::Models::Plan
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListResult
        WindowsConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::WindowsConfiguration
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListWithLinkResult
        UpdateResource = Azure::Compute::Mgmt::V2018_10_01::Models::UpdateResource
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetSkuCapacity
        UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationHistoricalStatusInfoProperties
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetSku
        AutomaticOSUpgradeProperties = Azure::Compute::Mgmt::V2018_10_01::Models::AutomaticOSUpgradeProperties
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListSkusResult
        NetworkProfile = Azure::Compute::Mgmt::V2018_10_01::Models::NetworkProfile
        ApiErrorBase = Azure::Compute::Mgmt::V2018_10_01::Models::ApiErrorBase
        AvailabilitySet = Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySet
        AvailabilitySetUpdate = Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySetUpdate
        ProximityPlacementGroup = Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroup
        ProximityPlacementGroupUpdate = Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroupUpdate
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineImageResource
        VirtualMachineExtension = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtension
        VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionUpdate
        VirtualMachineImage = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineCaptureResult
        ImageReference = Azure::Compute::Mgmt::V2018_10_01::Models::ImageReference
        ManagedDiskParameters = Azure::Compute::Mgmt::V2018_10_01::Models::ManagedDiskParameters
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2018_10_01::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachine
        VirtualMachineUpdate = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineUpdate
        Image = Azure::Compute::Mgmt::V2018_10_01::Models::Image
        ImageUpdate = Azure::Compute::Mgmt::V2018_10_01::Models::ImageUpdate
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIPConfiguration
        VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetNetworkConfiguration
        VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSet
        VirtualMachineScaleSetVMReimageParameters = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMReimageParameters
        VirtualMachineScaleSetReimageParameters = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetReimageParameters
        VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdate
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVM
        RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeStatusInfo
        RequestRateByIntervalInput = Azure::Compute::Mgmt::V2018_10_01::Models::RequestRateByIntervalInput
        ThrottledRequestsInput = Azure::Compute::Mgmt::V2018_10_01::Models::ThrottledRequestsInput
        RunCommandDocument = Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandDocument
        StatusLevelTypes = Azure::Compute::Mgmt::V2018_10_01::Models::StatusLevelTypes
        AvailabilitySetSkuTypes = Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySetSkuTypes
        ProximityPlacementGroupType = Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroupType
        VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineSizeTypes
        CachingTypes = Azure::Compute::Mgmt::V2018_10_01::Models::CachingTypes
        DiskCreateOptionTypes = Azure::Compute::Mgmt::V2018_10_01::Models::DiskCreateOptionTypes
        StorageAccountTypes = Azure::Compute::Mgmt::V2018_10_01::Models::StorageAccountTypes
        DiffDiskOptions = Azure::Compute::Mgmt::V2018_10_01::Models::DiffDiskOptions
        PassNames = Azure::Compute::Mgmt::V2018_10_01::Models::PassNames
        ComponentNames = Azure::Compute::Mgmt::V2018_10_01::Models::ComponentNames
        SettingNames = Azure::Compute::Mgmt::V2018_10_01::Models::SettingNames
        ProtocolTypes = Azure::Compute::Mgmt::V2018_10_01::Models::ProtocolTypes
        ResourceIdentityType = Azure::Compute::Mgmt::V2018_10_01::Models::ResourceIdentityType
        MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2018_10_01::Models::MaintenanceOperationResultCodeTypes
        UpgradeMode = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeMode
        OperatingSystemStateTypes = Azure::Compute::Mgmt::V2018_10_01::Models::OperatingSystemStateTypes
        IPVersion = Azure::Compute::Mgmt::V2018_10_01::Models::IPVersion
        VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachinePriorityTypes
        VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineEvictionPolicyTypes
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetSkuScaleType
        UpgradeState = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeState
        UpgradeOperationInvoker = Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationInvoker
        RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeStatusCode
        RollingUpgradeActionType = Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeActionType
        IntervalInMins = Azure::Compute::Mgmt::V2018_10_01::Models::IntervalInMins
        InstanceViewTypes = Azure::Compute::Mgmt::V2018_10_01::Models::InstanceViewTypes
        EncryptionSettingsCollection = Azure::Compute::Mgmt::V2018_09_30::Models::EncryptionSettingsCollection
        Resource = Azure::Compute::Mgmt::V2018_09_30::Models::Resource
        ImageDiskReference = Azure::Compute::Mgmt::V2018_09_30::Models::ImageDiskReference
        DiskUpdate = Azure::Compute::Mgmt::V2018_09_30::Models::DiskUpdate
        SourceVault = Azure::Compute::Mgmt::V2018_09_30::Models::SourceVault
        DiskList = Azure::Compute::Mgmt::V2018_09_30::Models::DiskList
        KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2018_09_30::Models::KeyVaultAndKeyReference
        SnapshotSku = Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotSku
        DiskSku = Azure::Compute::Mgmt::V2018_09_30::Models::DiskSku
        GrantAccessData = Azure::Compute::Mgmt::V2018_09_30::Models::GrantAccessData
        KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2018_09_30::Models::KeyVaultAndSecretReference
        AccessUri = Azure::Compute::Mgmt::V2018_09_30::Models::AccessUri
        CreationData = Azure::Compute::Mgmt::V2018_09_30::Models::CreationData
        SnapshotList = Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotList
        EncryptionSettingsElement = Azure::Compute::Mgmt::V2018_09_30::Models::EncryptionSettingsElement
        SnapshotUpdate = Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotUpdate
        Disk = Azure::Compute::Mgmt::V2018_09_30::Models::Disk
        Snapshot = Azure::Compute::Mgmt::V2018_09_30::Models::Snapshot
        DiskStorageAccountTypes = Azure::Compute::Mgmt::V2018_09_30::Models::DiskStorageAccountTypes
        OperatingSystemTypes = Azure::Compute::Mgmt::V2018_09_30::Models::OperatingSystemTypes
        HyperVGeneration = Azure::Compute::Mgmt::V2018_09_30::Models::HyperVGeneration
        DiskCreateOption = Azure::Compute::Mgmt::V2018_09_30::Models::DiskCreateOption
        DiskState = Azure::Compute::Mgmt::V2018_09_30::Models::DiskState
        SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotStorageAccountTypes
        AccessLevel = Azure::Compute::Mgmt::V2018_09_30::Models::AccessLevel
      end

      class ComputeManagementClass
        attr_reader :dedicated_host_groups, :dedicated_hosts, :galleries, :gallery_images, :gallery_image_versions, :gallery_applications, :gallery_application_versions, :operations, :availability_sets, :proximity_placement_groups, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machines, :virtual_machine_sizes, :images, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :log_analytics, :virtual_machine_run_commands, :disks, :snapshots, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Compute::Mgmt::V2019_03_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @dedicated_host_groups = @client_0.dedicated_host_groups
          @dedicated_hosts = @client_0.dedicated_hosts
          @galleries = @client_0.galleries
          @gallery_images = @client_0.gallery_images
          @gallery_image_versions = @client_0.gallery_image_versions
          @gallery_applications = @client_0.gallery_applications
          @gallery_application_versions = @client_0.gallery_application_versions

          @client_1 = Azure::Compute::Mgmt::V2018_10_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @availability_sets = @client_1.availability_sets
          @proximity_placement_groups = @client_1.proximity_placement_groups
          @virtual_machine_extension_images = @client_1.virtual_machine_extension_images
          @virtual_machine_extensions = @client_1.virtual_machine_extensions
          @virtual_machine_images = @client_1.virtual_machine_images
          @usage_operations = @client_1.usage_operations
          @virtual_machines = @client_1.virtual_machines
          @virtual_machine_sizes = @client_1.virtual_machine_sizes
          @images = @client_1.images
          @virtual_machine_scale_sets = @client_1.virtual_machine_scale_sets
          @virtual_machine_scale_set_extensions = @client_1.virtual_machine_scale_set_extensions
          @virtual_machine_scale_set_rolling_upgrades = @client_1.virtual_machine_scale_set_rolling_upgrades
          @virtual_machine_scale_set_vms = @client_1.virtual_machine_scale_set_vms
          @log_analytics = @client_1.log_analytics
          @virtual_machine_run_commands = @client_1.virtual_machine_run_commands

          @client_2 = Azure::Compute::Mgmt::V2018_09_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @disks = @client_2.disks
          @snapshots = @client_2.snapshots

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Compute/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_2.respond_to?method
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
          def user_artifact_source
            Azure::Compute::Mgmt::V2019_03_01::Models::UserArtifactSource
          end
          def gallery_disk_image
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryDiskImage
          end
          def gallery_list
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryList
          end
          def dedicated_host_allocatable_vm
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostAllocatableVM
          end
          def dedicated_host_instance_view
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostInstanceView
          end
          def gallery_image_version_list
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersionList
          end
          def gallery_artifact_source
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryArtifactSource
          end
          def image_purchase_plan
            Azure::Compute::Mgmt::V2019_03_01::Models::ImagePurchasePlan
          end
          def disallowed
            Azure::Compute::Mgmt::V2019_03_01::Models::Disallowed
          end
          def recommended_machine_configuration
            Azure::Compute::Mgmt::V2019_03_01::Models::RecommendedMachineConfiguration
          end
          def terminate_notification_profile
            Azure::Compute::Mgmt::V2019_03_01::Models::TerminateNotificationProfile
          end
          def automatic_repairs_policy
            Azure::Compute::Mgmt::V2019_03_01::Models::AutomaticRepairsPolicy
          end
          def scheduled_events_profile
            Azure::Compute::Mgmt::V2019_03_01::Models::ScheduledEventsProfile
          end
          def replication_status
            Azure::Compute::Mgmt::V2019_03_01::Models::ReplicationStatus
          end
          def scale_in_policy
            Azure::Compute::Mgmt::V2019_03_01::Models::ScaleInPolicy
          end
          def target_region
            Azure::Compute::Mgmt::V2019_03_01::Models::TargetRegion
          end
          def gallery_image_version_storage_profile
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersionStorageProfile
          end
          def dedicated_host_available_capacity
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostAvailableCapacity
          end
          def dedicated_host_list_result
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostListResult
          end
          def managed_artifact
            Azure::Compute::Mgmt::V2019_03_01::Models::ManagedArtifact
          end
          def gallery_image_identifier
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageIdentifier
          end
          def gallery_application_version_list
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationVersionList
          end
          def billing_profile
            Azure::Compute::Mgmt::V2019_03_01::Models::BillingProfile
          end
          def virtual_machine_scale_set_vmnetwork_profile_configuration
            Azure::Compute::Mgmt::V2019_03_01::Models::VirtualMachineScaleSetVMNetworkProfileConfiguration
          end
          def virtual_machine_scale_set_vmprotection_policy
            Azure::Compute::Mgmt::V2019_03_01::Models::VirtualMachineScaleSetVMProtectionPolicy
          end
          def gallery_image_list
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageList
          end
          def gallery_application_list
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationList
          end
          def resource_range
            Azure::Compute::Mgmt::V2019_03_01::Models::ResourceRange
          end
          def dedicated_host_group_list_result
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostGroupListResult
          end
          def vmscale_set_convert_to_single_placement_group_input
            Azure::Compute::Mgmt::V2019_03_01::Models::VMScaleSetConvertToSinglePlacementGroupInput
          end
          def regional_replication_status
            Azure::Compute::Mgmt::V2019_03_01::Models::RegionalReplicationStatus
          end
          def gallery_artifact_publishing_profile_base
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryArtifactPublishingProfileBase
          end
          def gallery_identifier
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryIdentifier
          end
          def dedicated_host_group
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostGroup
          end
          def dedicated_host_group_update
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostGroupUpdate
          end
          def dedicated_host
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHost
          end
          def dedicated_host_update
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostUpdate
          end
          def gallery
            Azure::Compute::Mgmt::V2019_03_01::Models::Gallery
          end
          def gallery_application
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplication
          end
          def gallery_application_version_publishing_profile
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationVersionPublishingProfile
          end
          def gallery_application_version
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryApplicationVersion
          end
          def gallery_image
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImage
          end
          def gallery_image_version_publishing_profile
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersionPublishingProfile
          end
          def gallery_osdisk_image
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryOSDiskImage
          end
          def gallery_data_disk_image
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryDataDiskImage
          end
          def gallery_image_version
            Azure::Compute::Mgmt::V2019_03_01::Models::GalleryImageVersion
          end
          def hyper_vgeneration_types
            Azure::Compute::Mgmt::V2019_03_01::Models::HyperVGenerationTypes
          end
          def dedicated_host_license_types
            Azure::Compute::Mgmt::V2019_03_01::Models::DedicatedHostLicenseTypes
          end
          def hyper_vgeneration_type
            Azure::Compute::Mgmt::V2019_03_01::Models::HyperVGenerationType
          end
          def virtual_machine_scale_set_scale_in_rules
            Azure::Compute::Mgmt::V2019_03_01::Models::VirtualMachineScaleSetScaleInRules
          end
          def aggregated_replication_state
            Azure::Compute::Mgmt::V2019_03_01::Models::AggregatedReplicationState
          end
          def replication_state
            Azure::Compute::Mgmt::V2019_03_01::Models::ReplicationState
          end
          def storage_account_type
            Azure::Compute::Mgmt::V2019_03_01::Models::StorageAccountType
          end
          def host_caching
            Azure::Compute::Mgmt::V2019_03_01::Models::HostCaching
          end
          def replication_status_types
            Azure::Compute::Mgmt::V2019_03_01::Models::ReplicationStatusTypes
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineListResult
          end
          def automatic_osupgrade_policy
            Azure::Compute::Mgmt::V2018_10_01::Models::AutomaticOSUpgradePolicy
          end
          def compute_operation_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::ComputeOperationListResult
          end
          def rolling_upgrade_policy
            Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradePolicy
          end
          def sub_resource
            Azure::Compute::Mgmt::V2018_10_01::Models::SubResource
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradePolicy
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineIdentity
          end
          def maintenance_redeploy_status
            Azure::Compute::Mgmt::V2018_10_01::Models::MaintenanceRedeployStatus
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySetListResult
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineInstanceView
          end
          def sub_resource_read_only
            Azure::Compute::Mgmt::V2018_10_01::Models::SubResourceReadOnly
          end
          def upgrade_operation_history_status
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationHistoryStatus
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineSize
          end
          def rollback_status_info
            Azure::Compute::Mgmt::V2018_10_01::Models::RollbackStatusInfo
          end
          def rolling_upgrade_running_status
            Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeRunningStatus
          end
          def compute_operation_value
            Azure::Compute::Mgmt::V2018_10_01::Models::ComputeOperationValue
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionInstanceView
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2018_10_01::Models::InstanceViewStatus
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMInstanceView
          end
          def sku
            Azure::Compute::Mgmt::V2018_10_01::Models::Sku
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2018_10_01::Models::PurchasePlan
          end
          def api_error
            Azure::Compute::Mgmt::V2018_10_01::Models::ApiError
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2018_10_01::Models::DataDiskImage
          end
          def image_osdisk
            Azure::Compute::Mgmt::V2018_10_01::Models::ImageOSDisk
          end
          def virtual_machine_health_status
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineHealthStatus
          end
          def image_data_disk
            Azure::Compute::Mgmt::V2018_10_01::Models::ImageDataDisk
          end
          def usage
            Azure::Compute::Mgmt::V2018_10_01::Models::Usage
          end
          def image_storage_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::ImageStorageProfile
          end
          def virtual_machine_reimage_parameters
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineReimageParameters
          end
          def inner_error
            Azure::Compute::Mgmt::V2018_10_01::Models::InnerError
          end
          def virtual_machine_scale_set_list_osupgrade_history
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::HardwareProfile
          end
          def image_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::ImageListResult
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2018_10_01::Models::KeyVaultSecretReference
          end
          def virtual_machine_scale_set_identity_user_assigned_identities_value
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2018_10_01::Models::DiskEncryptionSettings
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIdentity
          end
          def diff_disk_settings
            Azure::Compute::Mgmt::V2018_10_01::Models::DiffDiskSettings
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetOSProfile
          end
          def osdisk
            Azure::Compute::Mgmt::V2018_10_01::Models::OSDisk
          end
          def virtual_machine_scale_set_update_osprofile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateOSProfile
          end
          def storage_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::StorageProfile
          end
          def virtual_machine_scale_set_managed_disk_parameters
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetManagedDiskParameters
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2018_10_01::Models::AdditionalUnattendContent
          end
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetOSDisk
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2018_10_01::Models::WinRMConfiguration
          end
          def virtual_machine_scale_set_update_osdisk
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateOSDisk
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2018_10_01::Models::SshPublicKey
          end
          def virtual_machine_scale_set_data_disk
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetDataDisk
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetStorageProfile
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2018_10_01::Models::VaultSecretGroup
          end
          def virtual_machine_scale_set_update_storage_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateStorageProfile
          end
          def rolling_upgrade_progress_info
            Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeProgressInfo
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2018_10_01::Models::ApiEntityReference
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2018_10_01::Models::BootDiagnostics
          end
          def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionHandlerInstanceView
          end
          def virtual_machine_scale_set_ip_tag
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIpTag
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::DiskInstanceView
          end
          def virtual_machine_scale_set_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
          end
          def virtual_machine_identity_user_assigned_identities_value
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
          end
          def virtual_machine_scale_set_update_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
          end
          def run_command_result
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandResult
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineSizeListResult
          end
          def run_command_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandListResult
          end
          def recovery_walk_response
            Azure::Compute::Mgmt::V2018_10_01::Models::RecoveryWalkResponse
          end
          def virtual_machine_scale_set_network_configuration_dns_settings
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2018_10_01::Models::OSDiskImage
          end
          def run_command_document_base
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandDocumentBase
          end
          def usage_name
            Azure::Compute::Mgmt::V2018_10_01::Models::UsageName
          end
          def run_command_parameter_definition
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandParameterDefinition
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineCaptureParameters
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetNetworkProfile
          end
          def upgrade_operation_historical_status_info
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationHistoricalStatusInfo
          end
          def virtual_machine_scale_set_update_network_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualHardDisk
          end
          def run_command_input
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandInput
          end
          def data_disk
            Azure::Compute::Mgmt::V2018_10_01::Models::DataDisk
          end
          def virtual_machine_scale_set_extension_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetExtensionListResult
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2018_10_01::Models::WinRMListener
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetExtensionProfile
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::SshConfiguration
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMProfile
          end
          def osprofile
            Azure::Compute::Mgmt::V2018_10_01::Models::OSProfile
          end
          def virtual_machine_scale_set_update_vmprofile
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateVMProfile
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::DiagnosticsProfile
          end
          def run_command_input_parameter
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandInputParameter
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::BootDiagnosticsInstanceView
          end
          def log_analytics_operation_result
            Azure::Compute::Mgmt::V2018_10_01::Models::LogAnalyticsOperationResult
          end
          def proximity_placement_group_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroupListResult
          end
          def log_analytics_output
            Azure::Compute::Mgmt::V2018_10_01::Models::LogAnalyticsOutput
          end
          def virtual_machine_extensions_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionsListResult
          end
          def log_analytics_input_base
            Azure::Compute::Mgmt::V2018_10_01::Models::LogAnalyticsInputBase
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2018_10_01::Models::ListUsagesResult
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2018_10_01::Models::KeyVaultKeyReference
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def additional_capabilities
            Azure::Compute::Mgmt::V2018_10_01::Models::AdditionalCapabilities
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineStatusCodeCount
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2018_10_01::Models::VaultCertificate
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineAgentInstanceView
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMListResult
          end
          def virtual_machine_scale_set_instance_view
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetInstanceView
          end
          def plan
            Azure::Compute::Mgmt::V2018_10_01::Models::Plan
          end
          def virtual_machine_scale_set_list_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListResult
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::WindowsConfiguration
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def update_resource
            Azure::Compute::Mgmt::V2018_10_01::Models::UpdateResource
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetSkuCapacity
          end
          def upgrade_operation_historical_status_info_properties
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationHistoricalStatusInfoProperties
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetSku
          end
          def automatic_osupgrade_properties
            Azure::Compute::Mgmt::V2018_10_01::Models::AutomaticOSUpgradeProperties
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetListSkusResult
          end
          def network_profile
            Azure::Compute::Mgmt::V2018_10_01::Models::NetworkProfile
          end
          def api_error_base
            Azure::Compute::Mgmt::V2018_10_01::Models::ApiErrorBase
          end
          def availability_set
            Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySet
          end
          def availability_set_update
            Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySetUpdate
          end
          def proximity_placement_group
            Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroup
          end
          def proximity_placement_group_update
            Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroupUpdate
          end
          def virtual_machine_extension_image
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionImage
          end
          def virtual_machine_image_resource
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineImageResource
          end
          def virtual_machine_extension
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtension
          end
          def virtual_machine_extension_update
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineExtensionUpdate
          end
          def virtual_machine_image
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineImage
          end
          def virtual_machine_capture_result
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineCaptureResult
          end
          def image_reference
            Azure::Compute::Mgmt::V2018_10_01::Models::ImageReference
          end
          def managed_disk_parameters
            Azure::Compute::Mgmt::V2018_10_01::Models::ManagedDiskParameters
          end
          def network_interface_reference
            Azure::Compute::Mgmt::V2018_10_01::Models::NetworkInterfaceReference
          end
          def virtual_machine
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachine
          end
          def virtual_machine_update
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineUpdate
          end
          def image
            Azure::Compute::Mgmt::V2018_10_01::Models::Image
          end
          def image_update
            Azure::Compute::Mgmt::V2018_10_01::Models::ImageUpdate
          end
          def virtual_machine_scale_set_ipconfiguration
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetIPConfiguration
          end
          def virtual_machine_scale_set_update_ipconfiguration
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
          end
          def virtual_machine_scale_set_network_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetNetworkConfiguration
          end
          def virtual_machine_scale_set_update_network_configuration
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
          end
          def virtual_machine_scale_set_extension
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetExtension
          end
          def virtual_machine_scale_set
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSet
          end
          def virtual_machine_scale_set_vmreimage_parameters
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVMReimageParameters
          end
          def virtual_machine_scale_set_reimage_parameters
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetReimageParameters
          end
          def virtual_machine_scale_set_update
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetUpdate
          end
          def virtual_machine_scale_set_vm
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetVM
          end
          def rolling_upgrade_status_info
            Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeStatusInfo
          end
          def request_rate_by_interval_input
            Azure::Compute::Mgmt::V2018_10_01::Models::RequestRateByIntervalInput
          end
          def throttled_requests_input
            Azure::Compute::Mgmt::V2018_10_01::Models::ThrottledRequestsInput
          end
          def run_command_document
            Azure::Compute::Mgmt::V2018_10_01::Models::RunCommandDocument
          end
          def status_level_types
            Azure::Compute::Mgmt::V2018_10_01::Models::StatusLevelTypes
          end
          def availability_set_sku_types
            Azure::Compute::Mgmt::V2018_10_01::Models::AvailabilitySetSkuTypes
          end
          def proximity_placement_group_type
            Azure::Compute::Mgmt::V2018_10_01::Models::ProximityPlacementGroupType
          end
          def virtual_machine_size_types
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineSizeTypes
          end
          def caching_types
            Azure::Compute::Mgmt::V2018_10_01::Models::CachingTypes
          end
          def disk_create_option_types
            Azure::Compute::Mgmt::V2018_10_01::Models::DiskCreateOptionTypes
          end
          def storage_account_types
            Azure::Compute::Mgmt::V2018_10_01::Models::StorageAccountTypes
          end
          def diff_disk_options
            Azure::Compute::Mgmt::V2018_10_01::Models::DiffDiskOptions
          end
          def pass_names
            Azure::Compute::Mgmt::V2018_10_01::Models::PassNames
          end
          def component_names
            Azure::Compute::Mgmt::V2018_10_01::Models::ComponentNames
          end
          def setting_names
            Azure::Compute::Mgmt::V2018_10_01::Models::SettingNames
          end
          def protocol_types
            Azure::Compute::Mgmt::V2018_10_01::Models::ProtocolTypes
          end
          def resource_identity_type
            Azure::Compute::Mgmt::V2018_10_01::Models::ResourceIdentityType
          end
          def maintenance_operation_result_code_types
            Azure::Compute::Mgmt::V2018_10_01::Models::MaintenanceOperationResultCodeTypes
          end
          def upgrade_mode
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeMode
          end
          def operating_system_state_types
            Azure::Compute::Mgmt::V2018_10_01::Models::OperatingSystemStateTypes
          end
          def ipversion
            Azure::Compute::Mgmt::V2018_10_01::Models::IPVersion
          end
          def virtual_machine_priority_types
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachinePriorityTypes
          end
          def virtual_machine_eviction_policy_types
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineEvictionPolicyTypes
          end
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2018_10_01::Models::VirtualMachineScaleSetSkuScaleType
          end
          def upgrade_state
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeState
          end
          def upgrade_operation_invoker
            Azure::Compute::Mgmt::V2018_10_01::Models::UpgradeOperationInvoker
          end
          def rolling_upgrade_status_code
            Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeStatusCode
          end
          def rolling_upgrade_action_type
            Azure::Compute::Mgmt::V2018_10_01::Models::RollingUpgradeActionType
          end
          def interval_in_mins
            Azure::Compute::Mgmt::V2018_10_01::Models::IntervalInMins
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2018_10_01::Models::InstanceViewTypes
          end
          def encryption_settings_collection
            Azure::Compute::Mgmt::V2018_09_30::Models::EncryptionSettingsCollection
          end
          def resource
            Azure::Compute::Mgmt::V2018_09_30::Models::Resource
          end
          def image_disk_reference
            Azure::Compute::Mgmt::V2018_09_30::Models::ImageDiskReference
          end
          def disk_update
            Azure::Compute::Mgmt::V2018_09_30::Models::DiskUpdate
          end
          def source_vault
            Azure::Compute::Mgmt::V2018_09_30::Models::SourceVault
          end
          def disk_list
            Azure::Compute::Mgmt::V2018_09_30::Models::DiskList
          end
          def key_vault_and_key_reference
            Azure::Compute::Mgmt::V2018_09_30::Models::KeyVaultAndKeyReference
          end
          def snapshot_sku
            Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotSku
          end
          def disk_sku
            Azure::Compute::Mgmt::V2018_09_30::Models::DiskSku
          end
          def grant_access_data
            Azure::Compute::Mgmt::V2018_09_30::Models::GrantAccessData
          end
          def key_vault_and_secret_reference
            Azure::Compute::Mgmt::V2018_09_30::Models::KeyVaultAndSecretReference
          end
          def access_uri
            Azure::Compute::Mgmt::V2018_09_30::Models::AccessUri
          end
          def creation_data
            Azure::Compute::Mgmt::V2018_09_30::Models::CreationData
          end
          def snapshot_list
            Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotList
          end
          def encryption_settings_element
            Azure::Compute::Mgmt::V2018_09_30::Models::EncryptionSettingsElement
          end
          def snapshot_update
            Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotUpdate
          end
          def disk
            Azure::Compute::Mgmt::V2018_09_30::Models::Disk
          end
          def snapshot
            Azure::Compute::Mgmt::V2018_09_30::Models::Snapshot
          end
          def disk_storage_account_types
            Azure::Compute::Mgmt::V2018_09_30::Models::DiskStorageAccountTypes
          end
          def operating_system_types
            Azure::Compute::Mgmt::V2018_09_30::Models::OperatingSystemTypes
          end
          def hyper_vgeneration
            Azure::Compute::Mgmt::V2018_09_30::Models::HyperVGeneration
          end
          def disk_create_option
            Azure::Compute::Mgmt::V2018_09_30::Models::DiskCreateOption
          end
          def disk_state
            Azure::Compute::Mgmt::V2018_09_30::Models::DiskState
          end
          def snapshot_storage_account_types
            Azure::Compute::Mgmt::V2018_09_30::Models::SnapshotStorageAccountTypes
          end
          def access_level
            Azure::Compute::Mgmt::V2018_09_30::Models::AccessLevel
          end
        end
      end
    end
  end
end
