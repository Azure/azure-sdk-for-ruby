# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Compute::Profiles::Latest
  module Mgmt
    Disks = Azure::Compute::Mgmt::V2018_04_01::Disks
    Snapshots = Azure::Compute::Mgmt::V2018_04_01::Snapshots
    ResourceSkus = Azure::Compute::Mgmt::V2017_09_01::ResourceSkus
    VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetRollingUpgrades
    LogAnalytics = Azure::Compute::Mgmt::V2017_12_01::LogAnalytics
    VirtualMachineRunCommands = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineRunCommands
    AvailabilitySets = Azure::Compute::Mgmt::V2017_12_01::AvailabilitySets
    VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensions
    VirtualMachines = Azure::Compute::Mgmt::V2017_12_01::VirtualMachines
    VirtualMachineImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineImages
    UsageOperations = Azure::Compute::Mgmt::V2017_12_01::UsageOperations
    VirtualMachineSizes = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineSizes
    VirtualMachineScaleSets = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSets
    VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetVMs
    Operations = Azure::Compute::Mgmt::V2017_12_01::Operations
    Images = Azure::Compute::Mgmt::V2017_12_01::Images

    module Models
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
      StorageAccountTypes = Azure::Compute::Mgmt::V2017_12_01::Models::StorageAccountTypes
      ComputeOperationValue = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationValue
      VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
      VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
      AutoOSUpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::AutoOSUpgradePolicy
      RollingUpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
      ImageOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
      RunCommandParameterDefinition = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandParameterDefinition
      ImageDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
      ImageStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
      ImageListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
      RunCommandInputParameter = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInputParameter
      ComputeOperationListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationListResult
      InstanceViewStatus = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
      RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
      VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
      VaultSecretGroup = Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
      VirtualMachineSize = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
      VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
      VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
      VaultCertificate = Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
      Resource = Azure::Compute::Mgmt::V2017_12_01::Models::Resource
      BootDiagnostics = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
      OSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
      RunCommandListResult = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandListResult
      VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      RunCommandInput = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInput
      VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
      LogAnalyticsOutput = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOutput
      LogAnalyticsInputBase = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsInputBase
      DiskInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
      VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
      UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfo
      UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      DataDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
      VirtualMachineInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      PurchasePlan = Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
      SubResource = Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
      RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
      NetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
      UsageName = Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
      VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
      ListUsagesResult = Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      DiskEncryptionSettings = Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
      MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      KeyVaultSecretReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
      StorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
      Sku = Azure::Compute::Mgmt::V2017_12_01::Models::Sku
      BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
      HardwareProfile = Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
      VirtualMachineListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
      VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
      VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
      WinRMListener = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
      UpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
      VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
      VirtualHardDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
      SshConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
      AdditionalUnattendContent = Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
      VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
      SshPublicKey = Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
      VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
      VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
      VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
      VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
      VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
      VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      WindowsConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
      VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
      OSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
      ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      AvailabilitySetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
      VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
      VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionsListResult
      ApiEntityReference = Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
      UpdateResource = Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
      VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
      VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
      Plan = Azure::Compute::Mgmt::V2017_12_01::Models::Plan
      VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
      RecoveryWalkResponse = Azure::Compute::Mgmt::V2017_12_01::Models::RecoveryWalkResponse
      DiagnosticsProfile = Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
      OSDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
      VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
      Usage = Azure::Compute::Mgmt::V2017_12_01::Models::Usage
      VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
      DataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
      VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
      LinuxConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
      ApiError = Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
      VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
      VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionUpdate
      SubResourceReadOnly = Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
      RunCommandDocumentBase = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocumentBase
      KeyVaultKeyReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
      VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
      VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
      VirtualMachineImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
      OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      WinRMConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
      VirtualMachineImageResource = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
      InnerError = Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
      VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
      VirtualMachineIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
      AvailabilitySet = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
      RollbackStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollbackStatusInfo
      UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoryStatus
      AvailabilitySetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetUpdate
      ApiErrorBase = Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
      VirtualMachineUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineUpdate
      VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
      NetworkInterfaceReference = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
      VirtualMachine = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
      VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
      VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
      VirtualMachineExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
      ImageReference = Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
      VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
      LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOperationResult
      RunCommandDocument = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocument
      RunCommandResult = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandResult
      ManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
      DiskCreateOptionTypes = Azure::Compute::Mgmt::V2017_12_01::Models::DiskCreateOptionTypes
      Image = Azure::Compute::Mgmt::V2017_12_01::Models::Image
      ImageUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::ImageUpdate
      VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      OperatingSystemTypes = Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemTypes
      RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
      RequestRateByIntervalInput = Azure::Compute::Mgmt::V2017_12_01::Models::RequestRateByIntervalInput
      VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
      PassNames = Azure::Compute::Mgmt::V2017_12_01::Models::PassNames
      ComponentNames = Azure::Compute::Mgmt::V2017_12_01::Models::ComponentNames
      VirtualMachineScaleSet = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
      ProtocolTypes = Azure::Compute::Mgmt::V2017_12_01::Models::ProtocolTypes
      StatusLevelTypes = Azure::Compute::Mgmt::V2017_12_01::Models::StatusLevelTypes
      UpgradeMode = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeMode
      VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::Compute::Mgmt::V2017_12_01::Models::CachingTypes
      UpgradeState = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeState
      UpgradeOperationInvoker = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationInvoker
      RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
      SettingNames = Azure::Compute::Mgmt::V2017_12_01::Models::SettingNames
      IntervalInMins = Azure::Compute::Mgmt::V2017_12_01::Models::IntervalInMins
      ThrottledRequestsInput = Azure::Compute::Mgmt::V2017_12_01::Models::ThrottledRequestsInput
      VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
      InstanceViewTypes = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
      MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceOperationResultCodeTypes
      OperatingSystemStateTypes = Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemStateTypes
      IPVersion = Azure::Compute::Mgmt::V2017_12_01::Models::IPVersion
      VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachinePriorityTypes
      VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineEvictionPolicyTypes
      ResourceIdentityType = Azure::Compute::Mgmt::V2017_12_01::Models::ResourceIdentityType
      RollingUpgradeActionType = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
    end

    #
    # ComputeManagementClass
    #
    class ComputeManagementClass
      attr_reader :disks, :snapshots, :resource_skus, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :log_analytics, :virtual_machine_run_commands, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machines, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :virtual_machine_scale_sets, :virtual_machine_scale_set_vms, :operations, :images, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Compute::Mgmt::V2018_04_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @disks = @client_0.disks
        @snapshots = @client_0.snapshots

        @client_1 = Azure::Compute::Mgmt::V2017_09_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @resource_skus = @client_1.resource_skus

        @client_2 = Azure::Compute::Mgmt::V2017_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @virtual_machine_scale_set_extensions = @client_2.virtual_machine_scale_set_extensions
        @virtual_machine_scale_set_rolling_upgrades = @client_2.virtual_machine_scale_set_rolling_upgrades
        @log_analytics = @client_2.log_analytics
        @virtual_machine_run_commands = @client_2.virtual_machine_run_commands
        @availability_sets = @client_2.availability_sets
        @virtual_machine_extension_images = @client_2.virtual_machine_extension_images
        @virtual_machine_extensions = @client_2.virtual_machine_extensions
        @virtual_machines = @client_2.virtual_machines
        @virtual_machine_images = @client_2.virtual_machine_images
        @usage_operations = @client_2.usage_operations
        @virtual_machine_sizes = @client_2.virtual_machine_sizes
        @virtual_machine_scale_sets = @client_2.virtual_machine_scale_sets
        @virtual_machine_scale_set_vms = @client_2.virtual_machine_scale_set_vms
        @operations = @client_2.operations
        @images = @client_2.images

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Compute/Mgmt'
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

    end

    class ModelClasses
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
      def storage_account_types
        Azure::Compute::Mgmt::V2017_12_01::Models::StorageAccountTypes
      end
      def compute_operation_value
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationValue
      end
      def virtual_machine_scale_set_update_osprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
      end
      def virtual_machine_scale_set_managed_disk_parameters
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
      end
      def auto_osupgrade_policy
        Azure::Compute::Mgmt::V2017_12_01::Models::AutoOSUpgradePolicy
      end
      def rolling_upgrade_policy
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
      end
      def image_osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
      end
      def run_command_parameter_definition
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandParameterDefinition
      end
      def image_data_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
      end
      def image_storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
      end
      def image_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
      end
      def run_command_input_parameter
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInputParameter
      end
      def compute_operation_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationListResult
      end
      def instance_view_status
        Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
      end
      def rolling_upgrade_progress_info
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
      end
      def virtual_machine_scale_set_update_osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
      end
      def vault_secret_group
        Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
      end
      def virtual_machine_size
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
      end
      def virtual_machine_scale_set_data_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
      end
      def virtual_machine_scale_set_update_storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      end
      def virtual_machine_extension_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
      end
      def vault_certificate
        Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
      end
      def resource
        Azure::Compute::Mgmt::V2017_12_01::Models::Resource
      end
      def boot_diagnostics
        Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
      end
      def osprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
      end
      def run_command_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandListResult
      end
      def virtual_machine_scale_set_update_network_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      end
      def run_command_input
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInput
      end
      def virtual_machine_scale_set_list_osupgrade_history
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      end
      def virtual_machine_scale_set_extension_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
      end
      def log_analytics_output
        Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOutput
      end
      def log_analytics_input_base
        Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsInputBase
      end
      def disk_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
      end
      def virtual_machine_scale_set_update_vmprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
      end
      def upgrade_operation_historical_status_info
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfo
      end
      def upgrade_operation_historical_status_info_properties
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      end
      def data_disk_image
        Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
      end
      def virtual_machine_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
      end
      def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      end
      def purchase_plan
        Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
      end
      def sub_resource
        Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
      end
      def rolling_upgrade_running_status
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
      end
      def network_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
      end
      def usage_name
        Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
      end
      def virtual_machine_agent_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
      end
      def list_usages_result
        Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
      end
      def virtual_machine_scale_set_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      end
      def virtual_machine_scale_set_update_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      end
      def disk_encryption_settings
        Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
      end
      def maintenance_redeploy_status
        Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
      end
      def virtual_machine_scale_set_network_configuration_dns_settings
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      end
      def key_vault_secret_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
      end
      def storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
      end
      def sku
        Azure::Compute::Mgmt::V2017_12_01::Models::Sku
      end
      def boot_diagnostics_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
      end
      def hardware_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
      end
      def virtual_machine_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
      end
      def virtual_machine_scale_set_identity
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
      end
      def virtual_machine_capture_parameters
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
      end
      def win_rmlistener
        Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
      end
      def upgrade_policy
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
      end
      def virtual_machine_scale_set_network_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
      end
      def virtual_hard_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
      end
      def ssh_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
      end
      def additional_unattend_content
        Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
      end
      def virtual_machine_scale_set_extension_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
      end
      def ssh_public_key
        Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
      end
      def virtual_machine_scale_set_vmprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
      end
      def virtual_machine_size_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
      end
      def virtual_machine_health_status
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
      end
      def virtual_machine_scale_set_osprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
      end
      def virtual_machine_scale_set_vminstance_ids
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
      end
      def virtual_machine_scale_set_osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
      end
      def virtual_machine_scale_set_vminstance_required_ids
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      end
      def windows_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
      end
      def virtual_machine_status_code_count
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
      end
      def osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
      end
      def compute_long_running_operation_properties
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      end
      def availability_set_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
      end
      def virtual_machine_scale_set_vmextensions_summary
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      end
      def virtual_machine_scale_set_instance_view_statuses_summary
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      end
      def virtual_machine_scale_set_storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
      end
      def virtual_machine_extensions_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionsListResult
      end
      def api_entity_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
      end
      def update_resource
        Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
      end
      def virtual_machine_scale_set_vminstance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
      end
      def virtual_machine_scale_set_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
      end
      def plan
        Azure::Compute::Mgmt::V2017_12_01::Models::Plan
      end
      def virtual_machine_scale_set_list_with_link_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
      end
      def recovery_walk_response
        Azure::Compute::Mgmt::V2017_12_01::Models::RecoveryWalkResponse
      end
      def diagnostics_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
      end
      def osdisk_image
        Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
      end
      def virtual_machine_extension_handler_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
      end
      def usage
        Azure::Compute::Mgmt::V2017_12_01::Models::Usage
      end
      def virtual_machine_scale_set_vmlist_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
      end
      def data_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
      end
      def virtual_machine_scale_set_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
      end
      def linux_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
      end
      def api_error
        Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
      end
      def virtual_machine_scale_set_sku
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
      end
      def virtual_machine_extension_update
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionUpdate
      end
      def sub_resource_read_only
        Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
      end
      def run_command_document_base
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocumentBase
      end
      def key_vault_key_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
      end
      def virtual_machine_scale_set_list_skus_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
      end
      def virtual_machine_scale_set_sku_capacity
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
      end
      def virtual_machine_image
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
      end
      def operation_status_response
        Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      end
      def win_rmconfiguration
        Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
      end
      def virtual_machine_image_resource
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
      end
      def inner_error
        Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
      end
      def virtual_machine_scale_set_network_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
      end
      def virtual_machine_scale_set_extension
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
      end
      def virtual_machine_identity
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
      end
      def availability_set
        Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
      end
      def rollback_status_info
        Azure::Compute::Mgmt::V2017_12_01::Models::RollbackStatusInfo
      end
      def upgrade_operation_history_status
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoryStatus
      end
      def availability_set_update
        Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetUpdate
      end
      def api_error_base
        Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
      end
      def virtual_machine_update
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineUpdate
      end
      def virtual_machine_capture_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
      end
      def network_interface_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
      end
      def virtual_machine
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
      end
      def virtual_machine_extension_image
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
      end
      def virtual_machine_scale_set_update
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
      end
      def virtual_machine_extension
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
      end
      def image_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
      end
      def virtual_machine_scale_set_vm
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
      end
      def log_analytics_operation_result
        Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOperationResult
      end
      def run_command_document
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocument
      end
      def run_command_result
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandResult
      end
      def managed_disk_parameters
        Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
      end
      def disk_create_option_types
        Azure::Compute::Mgmt::V2017_12_01::Models::DiskCreateOptionTypes
      end
      def image
        Azure::Compute::Mgmt::V2017_12_01::Models::Image
      end
      def image_update
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageUpdate
      end
      def virtual_machine_scale_set_update_ipconfiguration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      end
      def virtual_machine_scale_set_update_network_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      end
      def operating_system_types
        Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemTypes
      end
      def rolling_upgrade_status_info
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
      end
      def request_rate_by_interval_input
        Azure::Compute::Mgmt::V2017_12_01::Models::RequestRateByIntervalInput
      end
      def virtual_machine_scale_set_ipconfiguration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
      end
      def pass_names
        Azure::Compute::Mgmt::V2017_12_01::Models::PassNames
      end
      def component_names
        Azure::Compute::Mgmt::V2017_12_01::Models::ComponentNames
      end
      def virtual_machine_scale_set
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
      end
      def protocol_types
        Azure::Compute::Mgmt::V2017_12_01::Models::ProtocolTypes
      end
      def status_level_types
        Azure::Compute::Mgmt::V2017_12_01::Models::StatusLevelTypes
      end
      def upgrade_mode
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeMode
      end
      def virtual_machine_size_types
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeTypes
      end
      def caching_types
        Azure::Compute::Mgmt::V2017_12_01::Models::CachingTypes
      end
      def upgrade_state
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeState
      end
      def upgrade_operation_invoker
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationInvoker
      end
      def rolling_upgrade_status_code
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
      end
      def setting_names
        Azure::Compute::Mgmt::V2017_12_01::Models::SettingNames
      end
      def interval_in_mins
        Azure::Compute::Mgmt::V2017_12_01::Models::IntervalInMins
      end
      def throttled_requests_input
        Azure::Compute::Mgmt::V2017_12_01::Models::ThrottledRequestsInput
      end
      def virtual_machine_scale_set_sku_scale_type
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
      end
      def instance_view_types
        Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
      end
      def maintenance_operation_result_code_types
        Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceOperationResultCodeTypes
      end
      def operating_system_state_types
        Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemStateTypes
      end
      def ipversion
        Azure::Compute::Mgmt::V2017_12_01::Models::IPVersion
      end
      def virtual_machine_priority_types
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachinePriorityTypes
      end
      def virtual_machine_eviction_policy_types
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineEvictionPolicyTypes
      end
      def resource_identity_type
        Azure::Compute::Mgmt::V2017_12_01::Models::ResourceIdentityType
      end
      def rolling_upgrade_action_type
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
      end
    end
  end
end
