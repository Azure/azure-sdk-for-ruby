# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Compute::Profiles::V2019_03_01_Hybrid
  module Mgmt
    ResourceSkus = Azure::Compute::Mgmt::V2017_03_30::ResourceSkus
    Disks = Azure::Compute::Mgmt::V2017_03_30::Disks
    Snapshots = Azure::Compute::Mgmt::V2017_03_30::Snapshots
    Operations = Azure::Compute::Mgmt::V2017_12_01::Operations
    AvailabilitySets = Azure::Compute::Mgmt::V2017_12_01::AvailabilitySets
    VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensions
    VirtualMachines = Azure::Compute::Mgmt::V2017_12_01::VirtualMachines
    VirtualMachineImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineImages
    UsageOperations = Azure::Compute::Mgmt::V2017_12_01::UsageOperations
    VirtualMachineSizes = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineSizes
    Images = Azure::Compute::Mgmt::V2017_12_01::Images
    VirtualMachineScaleSets = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSets
    VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetRollingUpgrades
    VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetVMs
    LogAnalytics = Azure::Compute::Mgmt::V2017_12_01::LogAnalytics
    VirtualMachineRunCommands = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineRunCommands

    module Models
      EncryptionSettings = Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
      ResourceSkuCapacity = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacity
      ResourceSkuCosts = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCosts
      ResourceSkuCapabilities = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapabilities
      ResourceSkuRestrictions = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictions
      ResourceSku = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSku
      ResourceSkusResult = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkusResult
      SnapshotList = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
      KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
      KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
      SourceVault = Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
      CreationData = Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
      ImageDiskReference = Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
      DiskList = Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
      ResourceUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
      DiskSku = Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
      GrantAccessData = Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
      AccessUri = Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
      Disk = Azure::Compute::Mgmt::V2017_03_30::Models::Disk
      DiskUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::DiskUpdate
      Snapshot = Azure::Compute::Mgmt::V2017_03_30::Models::Snapshot
      SnapshotUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotUpdate
      ResourceSkuCapacityScaleType = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacityScaleType
      ResourceSkuRestrictionsType = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictionsType
      ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictionsReasonCode
      DiskCreateOption = Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
      AccessLevel = Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
      VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
      ComputeOperationValue = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationValue
      VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
      InstanceViewStatus = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
      VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
      Sku = Azure::Compute::Mgmt::V2017_12_01::Models::Sku
      VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
      VirtualMachineListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
      AutoOSUpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::AutoOSUpgradePolicy
      VirtualMachineSize = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
      RollingUpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
      UpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
      VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
      ImageOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
      RunCommandParameterDefinition = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandParameterDefinition
      ImageDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
      PurchasePlan = Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
      ImageStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
      DataDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
      UpdateResource = Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
      UsageName = Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
      Resource = Azure::Compute::Mgmt::V2017_12_01::Models::Resource
      ListUsagesResult = Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
      ImageListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
      RunCommandInputParameter = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInputParameter
      VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
      HardwareProfile = Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
      ComputeOperationListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationListResult
      KeyVaultSecretReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
      SubResource = Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
      DiskEncryptionSettings = Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
      VirtualHardDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
      RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
      OSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
      ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      StorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
      VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
      WinRMListener = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
      VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
      WindowsConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
      VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
      SshConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
      VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      VaultCertificate = Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
      ApiEntityReference = Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
      OSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      NetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      DiagnosticsProfile = Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
      VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
      RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
      BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
      VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
      MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      RecoveryWalkResponse = Azure::Compute::Mgmt::V2017_12_01::Models::RecoveryWalkResponse
      VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
      AvailabilitySetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
      VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
      RunCommandListResult = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandListResult
      VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
      VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionsListResult
      VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
      RunCommandInput = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInput
      VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
      VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
      VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
      LogAnalyticsOutput = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOutput
      VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
      LogAnalyticsInputBase = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsInputBase
      VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
      AdditionalUnattendContent = Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
      VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
      SshPublicKey = Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
      UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfo
      VaultSecretGroup = Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
      UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      BootDiagnostics = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
      VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
      DiskInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      VirtualMachineInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
      VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
      VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      OSDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
      VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      Plan = Azure::Compute::Mgmt::V2017_12_01::Models::Plan
      VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
      DataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
      VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
      LinuxConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
      VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
      VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
      VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
      SubResourceReadOnly = Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
      VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
      Usage = Azure::Compute::Mgmt::V2017_12_01::Models::Usage
      VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
      WinRMConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
      ApiErrorBase = Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
      VirtualMachineIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
      InnerError = Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
      KeyVaultKeyReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
      ApiError = Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
      RunCommandDocumentBase = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocumentBase
      RollbackStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollbackStatusInfo
      OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoryStatus
      AvailabilitySet = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
      AvailabilitySetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetUpdate
      VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
      VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionUpdate
      VirtualMachineImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
      ImageReference = Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
      ManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
      NetworkInterfaceReference = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
      VirtualMachine = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
      VirtualMachineUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineUpdate
      Image = Azure::Compute::Mgmt::V2017_12_01::Models::Image
      ImageUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::ImageUpdate
      VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
      VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
      RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
      RequestRateByIntervalInput = Azure::Compute::Mgmt::V2017_12_01::Models::RequestRateByIntervalInput
      ThrottledRequestsInput = Azure::Compute::Mgmt::V2017_12_01::Models::ThrottledRequestsInput
      LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOperationResult
      RunCommandDocument = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocument
      RunCommandResult = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandResult
      StatusLevelTypes = Azure::Compute::Mgmt::V2017_12_01::Models::StatusLevelTypes
      OperatingSystemTypes = Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::Compute::Mgmt::V2017_12_01::Models::CachingTypes
      DiskCreateOptionTypes = Azure::Compute::Mgmt::V2017_12_01::Models::DiskCreateOptionTypes
      StorageAccountTypes = Azure::Compute::Mgmt::V2017_12_01::Models::StorageAccountTypes
      PassNames = Azure::Compute::Mgmt::V2017_12_01::Models::PassNames
      ComponentNames = Azure::Compute::Mgmt::V2017_12_01::Models::ComponentNames
      SettingNames = Azure::Compute::Mgmt::V2017_12_01::Models::SettingNames
      ProtocolTypes = Azure::Compute::Mgmt::V2017_12_01::Models::ProtocolTypes
      ResourceIdentityType = Azure::Compute::Mgmt::V2017_12_01::Models::ResourceIdentityType
      MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceOperationResultCodeTypes
      UpgradeMode = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeMode
      OperatingSystemStateTypes = Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemStateTypes
      IPVersion = Azure::Compute::Mgmt::V2017_12_01::Models::IPVersion
      VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachinePriorityTypes
      VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineEvictionPolicyTypes
      VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
      UpgradeState = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeState
      UpgradeOperationInvoker = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationInvoker
      RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
      RollingUpgradeActionType = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
      IntervalInMins = Azure::Compute::Mgmt::V2017_12_01::Models::IntervalInMins
      InstanceViewTypes = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
    end

    #
    # ComputeManagementClass
    #
    class ComputeManagementClass
      attr_reader :resource_skus, :disks, :snapshots, :operations, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machines, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :log_analytics, :virtual_machine_run_commands, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Compute::Mgmt::V2017_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @resource_skus = @client_0.resource_skus
        @disks = @client_0.disks
        @snapshots = @client_0.snapshots

        @client_1 = Azure::Compute::Mgmt::V2017_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @operations = @client_1.operations
        @availability_sets = @client_1.availability_sets
        @virtual_machine_extension_images = @client_1.virtual_machine_extension_images
        @virtual_machine_extensions = @client_1.virtual_machine_extensions
        @virtual_machines = @client_1.virtual_machines
        @virtual_machine_images = @client_1.virtual_machine_images
        @usage_operations = @client_1.usage_operations
        @virtual_machine_sizes = @client_1.virtual_machine_sizes
        @images = @client_1.images
        @virtual_machine_scale_sets = @client_1.virtual_machine_scale_sets
        @virtual_machine_scale_set_extensions = @client_1.virtual_machine_scale_set_extensions
        @virtual_machine_scale_set_rolling_upgrades = @client_1.virtual_machine_scale_set_rolling_upgrades
        @virtual_machine_scale_set_vms = @client_1.virtual_machine_scale_set_vms
        @log_analytics = @client_1.log_analytics
        @virtual_machine_run_commands = @client_1.virtual_machine_run_commands

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/V2019_03_01_Hybrid/Compute/Mgmt'
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

    end

    class ModelClasses
      def encryption_settings
        Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
      end
      def resource_sku_capacity
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacity
      end
      def resource_sku_costs
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCosts
      end
      def resource_sku_capabilities
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapabilities
      end
      def resource_sku_restrictions
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictions
      end
      def resource_sku
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSku
      end
      def resource_skus_result
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkusResult
      end
      def snapshot_list
        Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
      end
      def key_vault_and_key_reference
        Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
      end
      def key_vault_and_secret_reference
        Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
      end
      def source_vault
        Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
      end
      def creation_data
        Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
      end
      def image_disk_reference
        Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
      end
      def disk_list
        Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
      end
      def resource_update
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
      end
      def disk_sku
        Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
      end
      def grant_access_data
        Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
      end
      def access_uri
        Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
      end
      def disk
        Azure::Compute::Mgmt::V2017_03_30::Models::Disk
      end
      def disk_update
        Azure::Compute::Mgmt::V2017_03_30::Models::DiskUpdate
      end
      def snapshot
        Azure::Compute::Mgmt::V2017_03_30::Models::Snapshot
      end
      def snapshot_update
        Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotUpdate
      end
      def resource_sku_capacity_scale_type
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacityScaleType
      end
      def resource_sku_restrictions_type
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictionsType
      end
      def resource_sku_restrictions_reason_code
        Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictionsReasonCode
      end
      def disk_create_option
        Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
      end
      def access_level
        Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
      end
      def virtual_machine_scale_set_osprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
      end
      def compute_operation_value
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationValue
      end
      def virtual_machine_scale_set_update_osprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
      end
      def instance_view_status
        Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
      end
      def virtual_machine_scale_set_managed_disk_parameters
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
      end
      def sku
        Azure::Compute::Mgmt::V2017_12_01::Models::Sku
      end
      def virtual_machine_scale_set_osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
      end
      def virtual_machine_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
      end
      def auto_osupgrade_policy
        Azure::Compute::Mgmt::V2017_12_01::Models::AutoOSUpgradePolicy
      end
      def virtual_machine_size
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
      end
      def rolling_upgrade_policy
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
      end
      def upgrade_policy
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
      end
      def virtual_machine_extension_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
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
      def purchase_plan
        Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
      end
      def image_storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
      end
      def data_disk_image
        Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
      end
      def update_resource
        Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
      end
      def usage_name
        Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
      end
      def resource
        Azure::Compute::Mgmt::V2017_12_01::Models::Resource
      end
      def list_usages_result
        Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
      end
      def image_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
      end
      def run_command_input_parameter
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInputParameter
      end
      def virtual_machine_scale_set_identity
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
      end
      def hardware_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
      end
      def compute_operation_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationListResult
      end
      def key_vault_secret_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
      end
      def sub_resource
        Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
      end
      def disk_encryption_settings
        Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
      end
      def virtual_hard_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
      end
      def rolling_upgrade_progress_info
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
      end
      def osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
      end
      def compute_long_running_operation_properties
        Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
      end
      def storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
      end
      def virtual_machine_scale_set_update_osdisk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
      end
      def win_rmlistener
        Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
      end
      def virtual_machine_scale_set_data_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
      end
      def windows_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
      end
      def virtual_machine_scale_set_storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
      end
      def ssh_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
      end
      def virtual_machine_scale_set_update_storage_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
      end
      def vault_certificate
        Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
      end
      def api_entity_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
      end
      def osprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
      end
      def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      end
      def network_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
      end
      def virtual_machine_scale_set_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      end
      def diagnostics_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
      end
      def virtual_machine_scale_set_update_public_ipaddress_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
      end
      def virtual_machine_agent_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
      end
      def rolling_upgrade_running_status
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
      end
      def boot_diagnostics_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
      end
      def virtual_machine_scale_set_vmlist_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
      end
      def maintenance_redeploy_status
        Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
      end
      def virtual_machine_scale_set_network_configuration_dns_settings
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      end
      def recovery_walk_response
        Azure::Compute::Mgmt::V2017_12_01::Models::RecoveryWalkResponse
      end
      def virtual_machine_scale_set_vminstance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
      end
      def availability_set_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
      end
      def virtual_machine_health_status
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
      end
      def run_command_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandListResult
      end
      def virtual_machine_scale_set_network_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
      end
      def virtual_machine_extensions_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionsListResult
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
      def virtual_machine_capture_parameters
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
      end
      def virtual_machine_scale_set_extension_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
      end
      def log_analytics_output
        Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOutput
      end
      def virtual_machine_scale_set_extension_profile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
      end
      def log_analytics_input_base
        Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsInputBase
      end
      def virtual_machine_scale_set_vmprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
      end
      def additional_unattend_content
        Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
      end
      def virtual_machine_scale_set_update_vmprofile
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
      end
      def ssh_public_key
        Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
      end
      def upgrade_operation_historical_status_info
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfo
      end
      def vault_secret_group
        Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
      end
      def upgrade_operation_historical_status_info_properties
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoricalStatusInfoProperties
      end
      def boot_diagnostics
        Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
      end
      def virtual_machine_scale_set_vminstance_ids
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
      end
      def disk_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
      end
      def virtual_machine_scale_set_vminstance_required_ids
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      end
      def virtual_machine_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
      end
      def virtual_machine_status_code_count
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
      end
      def virtual_machine_size_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
      end
      def virtual_machine_scale_set_instance_view_statuses_summary
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      end
      def osdisk_image
        Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
      end
      def virtual_machine_scale_set_vmextensions_summary
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
      end
      def plan
        Azure::Compute::Mgmt::V2017_12_01::Models::Plan
      end
      def virtual_machine_scale_set_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
      end
      def data_disk
        Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
      end
      def virtual_machine_scale_set_list_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
      end
      def linux_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
      end
      def virtual_machine_scale_set_list_with_link_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
      end
      def virtual_machine_extension_handler_instance_view
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
      end
      def virtual_machine_scale_set_sku_capacity
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
      end
      def sub_resource_read_only
        Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
      end
      def virtual_machine_scale_set_sku
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
      end
      def usage
        Azure::Compute::Mgmt::V2017_12_01::Models::Usage
      end
      def virtual_machine_scale_set_list_skus_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
      end
      def win_rmconfiguration
        Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
      end
      def api_error_base
        Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
      end
      def virtual_machine_identity
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
      end
      def inner_error
        Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
      end
      def key_vault_key_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
      end
      def api_error
        Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
      end
      def run_command_document_base
        Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocumentBase
      end
      def rollback_status_info
        Azure::Compute::Mgmt::V2017_12_01::Models::RollbackStatusInfo
      end
      def operation_status_response
        Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
      end
      def upgrade_operation_history_status
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeOperationHistoryStatus
      end
      def availability_set
        Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
      end
      def availability_set_update
        Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetUpdate
      end
      def virtual_machine_extension_image
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
      end
      def virtual_machine_image_resource
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
      end
      def virtual_machine_extension
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
      end
      def virtual_machine_extension_update
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionUpdate
      end
      def virtual_machine_image
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
      end
      def virtual_machine_capture_result
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
      end
      def image_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
      end
      def managed_disk_parameters
        Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
      end
      def network_interface_reference
        Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
      end
      def virtual_machine
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
      end
      def virtual_machine_update
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineUpdate
      end
      def image
        Azure::Compute::Mgmt::V2017_12_01::Models::Image
      end
      def image_update
        Azure::Compute::Mgmt::V2017_12_01::Models::ImageUpdate
      end
      def virtual_machine_scale_set_ipconfiguration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
      end
      def virtual_machine_scale_set_update_ipconfiguration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
      end
      def virtual_machine_scale_set_network_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
      end
      def virtual_machine_scale_set_update_network_configuration
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
      end
      def virtual_machine_scale_set_extension
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
      end
      def virtual_machine_scale_set
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
      end
      def virtual_machine_scale_set_update
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
      end
      def virtual_machine_scale_set_vm
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
      end
      def rolling_upgrade_status_info
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
      end
      def request_rate_by_interval_input
        Azure::Compute::Mgmt::V2017_12_01::Models::RequestRateByIntervalInput
      end
      def throttled_requests_input
        Azure::Compute::Mgmt::V2017_12_01::Models::ThrottledRequestsInput
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
      def status_level_types
        Azure::Compute::Mgmt::V2017_12_01::Models::StatusLevelTypes
      end
      def operating_system_types
        Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemTypes
      end
      def virtual_machine_size_types
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeTypes
      end
      def caching_types
        Azure::Compute::Mgmt::V2017_12_01::Models::CachingTypes
      end
      def disk_create_option_types
        Azure::Compute::Mgmt::V2017_12_01::Models::DiskCreateOptionTypes
      end
      def storage_account_types
        Azure::Compute::Mgmt::V2017_12_01::Models::StorageAccountTypes
      end
      def pass_names
        Azure::Compute::Mgmt::V2017_12_01::Models::PassNames
      end
      def component_names
        Azure::Compute::Mgmt::V2017_12_01::Models::ComponentNames
      end
      def setting_names
        Azure::Compute::Mgmt::V2017_12_01::Models::SettingNames
      end
      def protocol_types
        Azure::Compute::Mgmt::V2017_12_01::Models::ProtocolTypes
      end
      def resource_identity_type
        Azure::Compute::Mgmt::V2017_12_01::Models::ResourceIdentityType
      end
      def maintenance_operation_result_code_types
        Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceOperationResultCodeTypes
      end
      def upgrade_mode
        Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeMode
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
      def virtual_machine_scale_set_sku_scale_type
        Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
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
      def rolling_upgrade_action_type
        Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
      end
      def interval_in_mins
        Azure::Compute::Mgmt::V2017_12_01::Models::IntervalInMins
      end
      def instance_view_types
        Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
      end
    end
  end
end
