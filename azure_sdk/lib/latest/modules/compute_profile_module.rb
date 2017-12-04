# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::Latest
  module Compute
    module Mgmt
      AvailabilitySets = Azure::Compute::Mgmt::V2017_03_30::AvailabilitySets
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineExtensions
      VirtualMachineImages = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineImages
      UsageOperations = Azure::Compute::Mgmt::V2017_03_30::UsageOperations
      VirtualMachineSizes = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineSizes
      Images = Azure::Compute::Mgmt::V2017_03_30::Images
      ResourceSkus = Azure::Compute::Mgmt::V2017_03_30::ResourceSkus
      VirtualMachines = Azure::Compute::Mgmt::V2017_03_30::VirtualMachines
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineScaleSets
      VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineScaleSetExtensions
      VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineScaleSetRollingUpgrades
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineScaleSetVMs
      Disks = Azure::Compute::Mgmt::V2017_03_30::Disks
      Snapshots = Azure::Compute::Mgmt::V2017_03_30::Snapshots
      VirtualMachineRunCommands = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineRunCommands

      module Models
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetOSDisk
        VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateOSDisk
        SubResource = Azure::Compute::Mgmt::V2017_03_30::Models::SubResource
        VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetDataDisk
        ImageListResult = Azure::Compute::Mgmt::V2017_03_30::Models::ImageListResult
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetIdentity
        VirtualMachineSize = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineSize
        ResourceSkuCapacity = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacity
        ResourceSkuCosts = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCosts
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtensionInstanceView
        ResourceSkuCapabilities = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapabilities
        PurchasePlan = Azure::Compute::Mgmt::V2017_03_30::Models::PurchasePlan
        ResourceSkuRestrictions = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictions
        DataDiskImage = Azure::Compute::Mgmt::V2017_03_30::Models::DataDiskImage
        ResourceSku = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSku
        UsageName = Azure::Compute::Mgmt::V2017_03_30::Models::UsageName
        ResourceSkusResult = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkusResult
        ListUsagesResult = Azure::Compute::Mgmt::V2017_03_30::Models::ListUsagesResult
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetOSProfile
        RunCommandInput = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInput
        VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateOSProfile
        HardwareProfile = Azure::Compute::Mgmt::V2017_03_30::Models::HardwareProfile
        VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetManagedDiskParameters
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultSecretReference
        InstanceViewStatus = Azure::Compute::Mgmt::V2017_03_30::Models::InstanceViewStatus
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2017_03_30::Models::DiskEncryptionSettings
        Sku = Azure::Compute::Mgmt::V2017_03_30::Models::Sku
        SnapshotList = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
        EncryptionSettings = Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
        DataDisk = Azure::Compute::Mgmt::V2017_03_30::Models::DataDisk
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetStorageProfile
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2017_03_30::Models::AdditionalUnattendContent
        VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateStorageProfile
        WinRMConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::WinRMConfiguration
        ApiEntityReference = Azure::Compute::Mgmt::V2017_03_30::Models::ApiEntityReference
        SshPublicKey = Azure::Compute::Mgmt::V2017_03_30::Models::SshPublicKey
        VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        LinuxConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::LinuxConfiguration
        VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        VaultSecretGroup = Azure::Compute::Mgmt::V2017_03_30::Models::VaultSecretGroup
        VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
        AccessUri = Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
        KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
        BootDiagnostics = Azure::Compute::Mgmt::V2017_03_30::Models::BootDiagnostics
        KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtensionHandlerInstanceView
        VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        DiskInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::DiskInstanceView
        SourceVault = Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineIdentity
        CreationData = Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineInstanceView
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetNetworkProfile
        VirtualMachineListResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineListResult
        VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateNetworkProfile
        UpgradePolicy = Azure::Compute::Mgmt::V2017_03_30::Models::UpgradePolicy
        ImageDiskReference = Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
        ImageDataDisk = Azure::Compute::Mgmt::V2017_03_30::Models::ImageDataDisk
        VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetExtensionListResult
        DiskList = Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetExtensionProfile
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineSizeListResult
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMProfile
        RunCommandDocumentBase = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocumentBase
        VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateVMProfile
        RunCommandParameterDefinition = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandParameterDefinition
        ResourceUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineCaptureParameters
        DiskSku = Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
        RunCommandInputParameter = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInputParameter
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
        VirtualHardDisk = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualHardDisk
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        StorageProfile = Azure::Compute::Mgmt::V2017_03_30::Models::StorageProfile
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineStatusCodeCount
        WindowsConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::WindowsConfiguration
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        VaultCertificate = Azure::Compute::Mgmt::V2017_03_30::Models::VaultCertificate
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
        NetworkProfile = Azure::Compute::Mgmt::V2017_03_30::Models::NetworkProfile
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetInstanceView
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineAgentInstanceView
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetListResult
        MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2017_03_30::Models::MaintenanceRedeployStatus
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetListWithLinkResult
        RollingUpgradePolicy = Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradePolicy
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetSkuCapacity
        ImageStorageProfile = Azure::Compute::Mgmt::V2017_03_30::Models::ImageStorageProfile
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetSku
        RunCommandListResult = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandListResult
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetListSkusResult
        Usage = Azure::Compute::Mgmt::V2017_03_30::Models::Usage
        OperationStatusResponse = Azure::Compute::Mgmt::V2017_03_30::Models::OperationStatusResponse
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultKeyReference
        VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineHealthStatus
        WinRMListener = Azure::Compute::Mgmt::V2017_03_30::Models::WinRMListener
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMInstanceView
        OSProfile = Azure::Compute::Mgmt::V2017_03_30::Models::OSProfile
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMListResult
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2017_03_30::Models::BootDiagnosticsInstanceView
        RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeRunningStatus
        ImageOSDisk = Azure::Compute::Mgmt::V2017_03_30::Models::ImageOSDisk
        RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeProgressInfo
        OSDiskImage = Azure::Compute::Mgmt::V2017_03_30::Models::OSDiskImage
        ApiErrorBase = Azure::Compute::Mgmt::V2017_03_30::Models::ApiErrorBase
        OSDisk = Azure::Compute::Mgmt::V2017_03_30::Models::OSDisk
        InnerError = Azure::Compute::Mgmt::V2017_03_30::Models::InnerError
        DiagnosticsProfile = Azure::Compute::Mgmt::V2017_03_30::Models::DiagnosticsProfile
        ApiError = Azure::Compute::Mgmt::V2017_03_30::Models::ApiError
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2017_03_30::Models::AvailabilitySetListResult
        SubResourceReadOnly = Azure::Compute::Mgmt::V2017_03_30::Models::SubResourceReadOnly
        SshConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::SshConfiguration
        ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_03_30::Models::ComputeLongRunningOperationProperties
        Plan = Azure::Compute::Mgmt::V2017_03_30::Models::Plan
        Resource = Azure::Compute::Mgmt::V2017_03_30::Models::Resource
        GrantAccessData = Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
        UpdateResource = Azure::Compute::Mgmt::V2017_03_30::Models::UpdateResource
        AvailabilitySet = Azure::Compute::Mgmt::V2017_03_30::Models::AvailabilitySet
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineImageResource
        VirtualMachineExtension = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtension
        VirtualMachineImage = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineCaptureResult
        ImageReference = Azure::Compute::Mgmt::V2017_03_30::Models::ImageReference
        ManagedDiskParameters = Azure::Compute::Mgmt::V2017_03_30::Models::ManagedDiskParameters
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2017_03_30::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachine
        Image = Azure::Compute::Mgmt::V2017_03_30::Models::Image
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetIPConfiguration
        VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateIPConfiguration
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
        VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSet
        VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdate
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVM
        RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeStatusInfo
        Disk = Azure::Compute::Mgmt::V2017_03_30::Models::Disk
        DiskUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::DiskUpdate
        Snapshot = Azure::Compute::Mgmt::V2017_03_30::Models::Snapshot
        SnapshotUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotUpdate
        RunCommandDocument = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocument
        RunCommandResult = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandResult
        StatusLevelTypes = Azure::Compute::Mgmt::V2017_03_30::Models::StatusLevelTypes
        OperatingSystemTypes = Azure::Compute::Mgmt::V2017_03_30::Models::OperatingSystemTypes
        VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineSizeTypes
        CachingTypes = Azure::Compute::Mgmt::V2017_03_30::Models::CachingTypes
        DiskCreateOptionTypes = Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOptionTypes
        StorageAccountTypes = Azure::Compute::Mgmt::V2017_03_30::Models::StorageAccountTypes
        PassNames = Azure::Compute::Mgmt::V2017_03_30::Models::PassNames
        ComponentNames = Azure::Compute::Mgmt::V2017_03_30::Models::ComponentNames
        SettingNames = Azure::Compute::Mgmt::V2017_03_30::Models::SettingNames
        ProtocolTypes = Azure::Compute::Mgmt::V2017_03_30::Models::ProtocolTypes
        ResourceIdentityType = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceIdentityType
        MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2017_03_30::Models::MaintenanceOperationResultCodeTypes
        UpgradeMode = Azure::Compute::Mgmt::V2017_03_30::Models::UpgradeMode
        OperatingSystemStateTypes = Azure::Compute::Mgmt::V2017_03_30::Models::OperatingSystemStateTypes
        ResourceSkuCapacityScaleType = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacityScaleType
        ResourceSkuRestrictionsType = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictionsType
        ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictionsReasonCode
        IPVersion = Azure::Compute::Mgmt::V2017_03_30::Models::IPVersion
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetSkuScaleType
        RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeStatusCode
        RollingUpgradeActionType = Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeActionType
        DiskCreateOption = Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
        AccessLevel = Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
        InstanceViewTypes = Azure::Compute::Mgmt::V2017_03_30::Models::InstanceViewTypes
      end

      class ComputeManagementClass
        attr_reader :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :resource_skus, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :disks, :snapshots, :virtual_machine_run_commands, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::Compute::Mgmt::V2017_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end

          @availability_sets = client_0.availability_sets
          @virtual_machine_extension_images = client_0.virtual_machine_extension_images
          @virtual_machine_extensions = client_0.virtual_machine_extensions
          @virtual_machine_images = client_0.virtual_machine_images
          @usage_operations = client_0.usage_operations
          @virtual_machine_sizes = client_0.virtual_machine_sizes
          @images = client_0.images
          @resource_skus = client_0.resource_skus
          @virtual_machines = client_0.virtual_machines
          @virtual_machine_scale_sets = client_0.virtual_machine_scale_sets
          @virtual_machine_scale_set_extensions = client_0.virtual_machine_scale_set_extensions
          @virtual_machine_scale_set_rolling_upgrades = client_0.virtual_machine_scale_set_rolling_upgrades
          @virtual_machine_scale_set_vms = client_0.virtual_machine_scale_set_vms
          @disks = client_0.disks
          @snapshots = client_0.snapshots
          @virtual_machine_run_commands = client_0.virtual_machine_run_commands

          @model_classes = ModelClasses.new
        end

        class ModelClasses
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetOSDisk
          end
          def virtual_machine_scale_set_update_osdisk
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateOSDisk
          end
          def sub_resource
            Azure::Compute::Mgmt::V2017_03_30::Models::SubResource
          end
          def virtual_machine_scale_set_data_disk
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetDataDisk
          end
          def image_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageListResult
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetIdentity
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineSize
          end
          def resource_sku_capacity
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapacity
          end
          def resource_sku_costs
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCosts
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtensionInstanceView
          end
          def resource_sku_capabilities
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuCapabilities
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2017_03_30::Models::PurchasePlan
          end
          def resource_sku_restrictions
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkuRestrictions
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2017_03_30::Models::DataDiskImage
          end
          def resource_sku
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSku
          end
          def usage_name
            Azure::Compute::Mgmt::V2017_03_30::Models::UsageName
          end
          def resource_skus_result
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceSkusResult
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2017_03_30::Models::ListUsagesResult
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetOSProfile
          end
          def run_command_input
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInput
          end
          def virtual_machine_scale_set_update_osprofile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateOSProfile
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::HardwareProfile
          end
          def virtual_machine_scale_set_managed_disk_parameters
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetManagedDiskParameters
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultSecretReference
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2017_03_30::Models::InstanceViewStatus
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskEncryptionSettings
          end
          def sku
            Azure::Compute::Mgmt::V2017_03_30::Models::Sku
          end
          def snapshot_list
            Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
          end
          def encryption_settings
            Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
          end
          def data_disk
            Azure::Compute::Mgmt::V2017_03_30::Models::DataDisk
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetStorageProfile
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2017_03_30::Models::AdditionalUnattendContent
          end
          def virtual_machine_scale_set_update_storage_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateStorageProfile
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2017_03_30::Models::WinRMConfiguration
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::ApiEntityReference
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2017_03_30::Models::SshPublicKey
          end
          def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2017_03_30::Models::VaultSecretGroup
          end
          def virtual_machine_scale_set_update_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
          end
          def access_uri
            Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
          end
          def key_vault_and_key_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2017_03_30::Models::BootDiagnostics
          end
          def key_vault_and_secret_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtensionHandlerInstanceView
          end
          def virtual_machine_scale_set_network_configuration_dns_settings
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskInstanceView
          end
          def source_vault
            Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineIdentity
          end
          def creation_data
            Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineInstanceView
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetNetworkProfile
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineListResult
          end
          def virtual_machine_scale_set_update_network_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateNetworkProfile
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2017_03_30::Models::UpgradePolicy
          end
          def image_disk_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
          end
          def image_data_disk
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageDataDisk
          end
          def virtual_machine_scale_set_extension_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetExtensionListResult
          end
          def disk_list
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetExtensionProfile
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineSizeListResult
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMProfile
          end
          def run_command_document_base
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocumentBase
          end
          def virtual_machine_scale_set_update_vmprofile
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateVMProfile
          end
          def run_command_parameter_definition
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandParameterDefinition
          end
          def resource_update
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineCaptureParameters
          end
          def disk_sku
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
          end
          def run_command_input_parameter
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInputParameter
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualHardDisk
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def storage_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::StorageProfile
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineStatusCodeCount
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::WindowsConfiguration
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2017_03_30::Models::VaultCertificate
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def network_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::NetworkProfile
          end
          def virtual_machine_scale_set_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetInstanceView
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineAgentInstanceView
          end
          def virtual_machine_scale_set_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetListResult
          end
          def maintenance_redeploy_status
            Azure::Compute::Mgmt::V2017_03_30::Models::MaintenanceRedeployStatus
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def rolling_upgrade_policy
            Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradePolicy
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetSkuCapacity
          end
          def image_storage_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageStorageProfile
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetSku
          end
          def run_command_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandListResult
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetListSkusResult
          end
          def usage
            Azure::Compute::Mgmt::V2017_03_30::Models::Usage
          end
          def operation_status_response
            Azure::Compute::Mgmt::V2017_03_30::Models::OperationStatusResponse
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultKeyReference
          end
          def virtual_machine_health_status
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineHealthStatus
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2017_03_30::Models::WinRMListener
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMInstanceView
          end
          def osprofile
            Azure::Compute::Mgmt::V2017_03_30::Models::OSProfile
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVMListResult
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2017_03_30::Models::BootDiagnosticsInstanceView
          end
          def rolling_upgrade_running_status
            Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeRunningStatus
          end
          def image_osdisk
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageOSDisk
          end
          def rolling_upgrade_progress_info
            Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeProgressInfo
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2017_03_30::Models::OSDiskImage
          end
          def api_error_base
            Azure::Compute::Mgmt::V2017_03_30::Models::ApiErrorBase
          end
          def osdisk
            Azure::Compute::Mgmt::V2017_03_30::Models::OSDisk
          end
          def inner_error
            Azure::Compute::Mgmt::V2017_03_30::Models::InnerError
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2017_03_30::Models::DiagnosticsProfile
          end
          def api_error
            Azure::Compute::Mgmt::V2017_03_30::Models::ApiError
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::AvailabilitySetListResult
          end
          def sub_resource_read_only
            Azure::Compute::Mgmt::V2017_03_30::Models::SubResourceReadOnly
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::SshConfiguration
          end
          def compute_long_running_operation_properties
            Azure::Compute::Mgmt::V2017_03_30::Models::ComputeLongRunningOperationProperties
          end
          def plan
            Azure::Compute::Mgmt::V2017_03_30::Models::Plan
          end
          def resource
            Azure::Compute::Mgmt::V2017_03_30::Models::Resource
          end
          def grant_access_data
            Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
          end
          def update_resource
            Azure::Compute::Mgmt::V2017_03_30::Models::UpdateResource
          end
          def availability_set
            Azure::Compute::Mgmt::V2017_03_30::Models::AvailabilitySet
          end
          def virtual_machine_extension_image
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtensionImage
          end
          def virtual_machine_image_resource
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineImageResource
          end
          def virtual_machine_extension
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineExtension
          end
          def virtual_machine_image
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineImage
          end
          def virtual_machine_capture_result
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineCaptureResult
          end
          def image_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageReference
          end
          def managed_disk_parameters
            Azure::Compute::Mgmt::V2017_03_30::Models::ManagedDiskParameters
          end
          def network_interface_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::NetworkInterfaceReference
          end
          def virtual_machine
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachine
          end
          def image
            Azure::Compute::Mgmt::V2017_03_30::Models::Image
          end
          def virtual_machine_scale_set_ipconfiguration
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetIPConfiguration
          end
          def virtual_machine_scale_set_update_ipconfiguration
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateIPConfiguration
          end
          def virtual_machine_scale_set_network_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
          end
          def virtual_machine_scale_set_update_network_configuration
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
          end
          def virtual_machine_scale_set_extension
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetExtension
          end
          def virtual_machine_scale_set
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSet
          end
          def virtual_machine_scale_set_update
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetUpdate
          end
          def virtual_machine_scale_set_vm
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetVM
          end
          def rolling_upgrade_status_info
            Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeStatusInfo
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
          def run_command_document
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocument
          end
          def run_command_result
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandResult
          end
          def status_level_types
            Azure::Compute::Mgmt::V2017_03_30::Models::StatusLevelTypes
          end
          def operating_system_types
            Azure::Compute::Mgmt::V2017_03_30::Models::OperatingSystemTypes
          end
          def virtual_machine_size_types
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineSizeTypes
          end
          def caching_types
            Azure::Compute::Mgmt::V2017_03_30::Models::CachingTypes
          end
          def disk_create_option_types
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOptionTypes
          end
          def storage_account_types
            Azure::Compute::Mgmt::V2017_03_30::Models::StorageAccountTypes
          end
          def pass_names
            Azure::Compute::Mgmt::V2017_03_30::Models::PassNames
          end
          def component_names
            Azure::Compute::Mgmt::V2017_03_30::Models::ComponentNames
          end
          def setting_names
            Azure::Compute::Mgmt::V2017_03_30::Models::SettingNames
          end
          def protocol_types
            Azure::Compute::Mgmt::V2017_03_30::Models::ProtocolTypes
          end
          def resource_identity_type
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceIdentityType
          end
          def maintenance_operation_result_code_types
            Azure::Compute::Mgmt::V2017_03_30::Models::MaintenanceOperationResultCodeTypes
          end
          def upgrade_mode
            Azure::Compute::Mgmt::V2017_03_30::Models::UpgradeMode
          end
          def operating_system_state_types
            Azure::Compute::Mgmt::V2017_03_30::Models::OperatingSystemStateTypes
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
          def ipversion
            Azure::Compute::Mgmt::V2017_03_30::Models::IPVersion
          end
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2017_03_30::Models::VirtualMachineScaleSetSkuScaleType
          end
          def rolling_upgrade_status_code
            Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeStatusCode
          end
          def rolling_upgrade_action_type
            Azure::Compute::Mgmt::V2017_03_30::Models::RollingUpgradeActionType
          end
          def disk_create_option
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
          end
          def access_level
            Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2017_03_30::Models::InstanceViewTypes
          end
        end
      end
    end
  end
end
