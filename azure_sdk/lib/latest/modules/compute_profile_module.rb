# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::Latest
  module Compute
    module Mgmt
      Disks = Azure::Compute::Mgmt::V2017_03_30::Disks
      Snapshots = Azure::Compute::Mgmt::V2017_03_30::Snapshots
      VirtualMachineRunCommands = Azure::Compute::Mgmt::V2017_03_30::VirtualMachineRunCommands
      ResourceSkus = Azure::Compute::Mgmt::V2017_09_01::ResourceSkus
      AvailabilitySets = Azure::Compute::Mgmt::V2017_12_01::AvailabilitySets
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensions
      VirtualMachineImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineImages
      UsageOperations = Azure::Compute::Mgmt::V2017_12_01::UsageOperations
      VirtualMachineSizes = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineSizes
      Images = Azure::Compute::Mgmt::V2017_12_01::Images
      VirtualMachines = Azure::Compute::Mgmt::V2017_12_01::VirtualMachines
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSets
      VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetExtensions
      VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetRollingUpgrades
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetVMs

      module Models
        RunCommandInput = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInput
        SnapshotList = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
        EncryptionSettings = Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
        AccessUri = Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
        KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
        KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
        SourceVault = Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
        CreationData = Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
        ImageDiskReference = Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
        DiskList = Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
        RunCommandDocumentBase = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocumentBase
        RunCommandParameterDefinition = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandParameterDefinition
        ResourceUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
        DiskSku = Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
        RunCommandInputParameter = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInputParameter
        RunCommandListResult = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandListResult
        GrantAccessData = Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
        Disk = Azure::Compute::Mgmt::V2017_03_30::Models::Disk
        DiskUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::DiskUpdate
        Snapshot = Azure::Compute::Mgmt::V2017_03_30::Models::Snapshot
        SnapshotUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotUpdate
        RunCommandDocument = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocument
        RunCommandResult = Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandResult
        DiskCreateOption = Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
        AccessLevel = Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
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
        ImageDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
        InstanceViewStatus = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
        ImageStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
        Sku = Azure::Compute::Mgmt::V2017_12_01::Models::Sku
        RollingUpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
        UpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
        ImageOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
        VirtualMachineListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
        RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
        VirtualMachineSize = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
        OSDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
        DataDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
        UsageName = Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
        ListUsagesResult = Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
        SubResource = Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
        Plan = Azure::Compute::Mgmt::V2017_12_01::Models::Plan
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
        ImageListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
        VirtualHardDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
        OSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
        StorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
        VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
        WinRMListener = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
        VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
        WindowsConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
        SshConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
        VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
        VaultCertificate = Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
        VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
        OSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
        NetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
        VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
        DiagnosticsProfile = Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
        ApiEntityReference = Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
        VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
        VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
        VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
        OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
        RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
        SubResourceReadOnly = Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
        VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
        UpdateResource = Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
        VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
        Resource = Azure::Compute::Mgmt::V2017_12_01::Models::Resource
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
        SshPublicKey = Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
        VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
        VaultSecretGroup = Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
        ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
        BootDiagnostics = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
        VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
        DiskInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
        Usage = Azure::Compute::Mgmt::V2017_12_01::Models::Usage
        VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
        ApiError = Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
        WinRMConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
        InnerError = Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
        ApiErrorBase = Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        HardwareProfile = Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
        LinuxConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        PurchasePlan = Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
        DataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
        AvailabilitySet = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
        VirtualMachineExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
        VirtualMachineImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
        ImageReference = Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
        ManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
        Image = Azure::Compute::Mgmt::V2017_12_01::Models::Image
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
        VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
        VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
        VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
        RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
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
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
        RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
        RollingUpgradeActionType = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
        InstanceViewTypes = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
      end

      class ComputeManagementClass
        attr_reader :disks, :snapshots, :virtual_machine_run_commands, :resource_skus, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Compute::Mgmt::V2017_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @disks = @client_0.disks
          @snapshots = @client_0.snapshots
          @virtual_machine_run_commands = @client_0.virtual_machine_run_commands

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
          @availability_sets = @client_2.availability_sets
          @virtual_machine_extension_images = @client_2.virtual_machine_extension_images
          @virtual_machine_extensions = @client_2.virtual_machine_extensions
          @virtual_machine_images = @client_2.virtual_machine_images
          @usage_operations = @client_2.usage_operations
          @virtual_machine_sizes = @client_2.virtual_machine_sizes
          @images = @client_2.images
          @virtual_machines = @client_2.virtual_machines
          @virtual_machine_scale_sets = @client_2.virtual_machine_scale_sets
          @virtual_machine_scale_set_extensions = @client_2.virtual_machine_scale_set_extensions
          @virtual_machine_scale_set_rolling_upgrades = @client_2.virtual_machine_scale_set_rolling_upgrades
          @virtual_machine_scale_set_vms = @client_2.virtual_machine_scale_set_vms

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/Latest/Compute/Mgmt'
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
          def run_command_input
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInput
          end
          def snapshot_list
            Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
          end
          def encryption_settings
            Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
          end
          def access_uri
            Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
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
          def run_command_document_base
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandDocumentBase
          end
          def run_command_parameter_definition
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandParameterDefinition
          end
          def resource_update
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
          end
          def disk_sku
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
          end
          def run_command_input_parameter
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandInputParameter
          end
          def run_command_list_result
            Azure::Compute::Mgmt::V2017_03_30::Models::RunCommandListResult
          end
          def grant_access_data
            Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
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
          def disk_create_option
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
          end
          def access_level
            Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
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
          def image_data_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
          end
          def image_storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
          end
          def sku
            Azure::Compute::Mgmt::V2017_12_01::Models::Sku
          end
          def rolling_upgrade_policy
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
          end
          def image_osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
          end
          def rolling_upgrade_progress_info
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
          end
          def usage_name
            Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
          end
          def sub_resource
            Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
          end
          def plan
            Azure::Compute::Mgmt::V2017_12_01::Models::Plan
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
          end
          def image_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
          end
          def osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
          end
          def storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
          end
          def virtual_machine_scale_set_update_osprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
          end
          def virtual_machine_scale_set_managed_disk_parameters
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
          end
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
          end
          def virtual_machine_scale_set_update_osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
          end
          def virtual_machine_scale_set_data_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
          end
          def osprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
          end
          def network_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
          end
          def virtual_machine_scale_set_update_storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
          end
          def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
          end
          def virtual_machine_scale_set_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
          end
          def maintenance_redeploy_status
            Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
          end
          def virtual_machine_scale_set_update_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
          end
          def operation_status_response
            Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
          end
          def rolling_upgrade_running_status
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
          end
          def sub_resource_read_only
            Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
          end
          def virtual_machine_scale_set_network_configuration_dns_settings
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
          end
          def update_resource
            Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
          end
          def virtual_machine_health_status
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
          end
          def resource
            Azure::Compute::Mgmt::V2017_12_01::Models::Resource
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
          end
          def virtual_machine_scale_set_update_network_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
          end
          def compute_long_running_operation_properties
            Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
          end
          def virtual_machine_scale_set_extension_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
          end
          def usage
            Azure::Compute::Mgmt::V2017_12_01::Models::Usage
          end
          def virtual_machine_scale_set_update_vmprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
          end
          def api_error
            Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
          end
          def inner_error
            Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
          end
          def api_error_base
            Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
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
          def availability_set
            Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
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
          def image
            Azure::Compute::Mgmt::V2017_12_01::Models::Image
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
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
          end
          def rolling_upgrade_status_code
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
          end
          def rolling_upgrade_action_type
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
          end
        end
      end
    end
  end
end
