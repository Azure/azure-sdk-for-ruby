# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_compute'


module Azure::Profiles::ComputeModule::Management::Profile_2016_04_30_Preview
  module Compute
    AvailabilitySets = Azure::ARM::Compute::Api_2016_04_30_preview::AvailabilitySets
    VirtualMachineExtensionImages = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineExtensions
    VirtualMachineImages = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineImages
    UsageOperations = Azure::ARM::Compute::Api_2016_04_30_preview::UsageOperations
    VirtualMachineSizes = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineSizes
    Images = Azure::ARM::Compute::Api_2016_04_30_preview::Images
    VirtualMachines = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachines
    VirtualMachineScaleSets = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineScaleSets
    VirtualMachineScaleSetVMs = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineScaleSetVMs
    Disks = Azure::ARM::Compute::Api_2016_04_30_preview::Disks
    Snapshots = Azure::ARM::Compute::Api_2016_04_30_preview::Snapshots

    module Models
      ImageOSDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageOSDisk
      ImageDataDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageDataDisk
      ImageStorageProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageStorageProfile
      VirtualMachineAgentInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineAgentInstanceView
      DiskInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskInstanceView
      VirtualMachineSize = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineSize
      BootDiagnosticsInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::BootDiagnosticsInstanceView
      VirtualMachineIdentity = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineIdentity
      VirtualMachineExtensionInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtensionInstanceView
      VirtualMachineInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineInstanceView
      PurchasePlan = Azure::ARM::Compute::Api_2016_04_30_preview::Models::PurchasePlan
      SourceVault = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SourceVault
      DataDiskImage = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DataDiskImage
      VirtualMachineListResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineListResult
      UsageName = Azure::ARM::Compute::Api_2016_04_30_preview::Models::UsageName
      UpgradePolicy = Azure::ARM::Compute::Api_2016_04_30_preview::Models::UpgradePolicy
      ListUsagesResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ListUsagesResult
      InstanceViewStatus = Azure::ARM::Compute::Api_2016_04_30_preview::Models::InstanceViewStatus
      DiskList = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskList
      Sku = Azure::ARM::Compute::Api_2016_04_30_preview::Models::Sku
      HardwareProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::HardwareProfile
      CreationData = Azure::ARM::Compute::Api_2016_04_30_preview::Models::CreationData
      KeyVaultSecretReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultSecretReference
      ImageDiskReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageDiskReference
      DiskEncryptionSettings = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskEncryptionSettings
      ImageListResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageListResult
      KeyVaultAndKeyReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultAndKeyReference
      VirtualMachineScaleSetIdentity = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetIdentity
      DataDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DataDisk
      VirtualMachineScaleSetOSProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetOSProfile
      AdditionalUnattendContent = Azure::ARM::Compute::Api_2016_04_30_preview::Models::AdditionalUnattendContent
      VirtualMachineScaleSetManagedDiskParameters = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetManagedDiskParameters
      WinRMConfiguration = Azure::ARM::Compute::Api_2016_04_30_preview::Models::WinRMConfiguration
      VirtualMachineScaleSetOSDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetOSDisk
      SshPublicKey = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SshPublicKey
      VirtualMachineScaleSetDataDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetDataDisk
      LinuxConfiguration = Azure::ARM::Compute::Api_2016_04_30_preview::Models::LinuxConfiguration
      VirtualMachineScaleSetStorageProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetStorageProfile
      VaultSecretGroup = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VaultSecretGroup
      ApiEntityReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ApiEntityReference
      KeyVaultAndSecretReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultAndSecretReference
      ResourceUpdate = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ResourceUpdate
      BootDiagnostics = Azure::ARM::Compute::Api_2016_04_30_preview::Models::BootDiagnostics
      OperationStatusResponse = Azure::ARM::Compute::Api_2016_04_30_preview::Models::OperationStatusResponse
      VirtualMachineExtensionHandlerInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtensionHandlerInstanceView
      VirtualMachineScaleSetNetworkProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetNetworkProfile
      VirtualMachineSizeListResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineSizeListResult
      SubResourceReadOnly = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SubResourceReadOnly
      AccessUri = Azure::ARM::Compute::Api_2016_04_30_preview::Models::AccessUri
      VirtualMachineScaleSetExtensionProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetExtensionProfile
      GrantAccessData = Azure::ARM::Compute::Api_2016_04_30_preview::Models::GrantAccessData
      VirtualMachineScaleSetVMProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMProfile
      VirtualMachineCaptureParameters = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineCaptureParameters
      EncryptionSettings = Azure::ARM::Compute::Api_2016_04_30_preview::Models::EncryptionSettings
      VirtualMachineScaleSetVMInstanceIDs = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMInstanceIDs
      VirtualHardDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualHardDisk
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      StorageProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::StorageProfile
      VirtualMachineStatusCodeCount = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineStatusCodeCount
      WindowsConfiguration = Azure::ARM::Compute::Api_2016_04_30_preview::Models::WindowsConfiguration
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      VaultCertificate = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VaultCertificate
      VirtualMachineScaleSetVMExtensionsSummary = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMExtensionsSummary
      NetworkProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::NetworkProfile
      VirtualMachineScaleSetInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetInstanceView
      AvailabilitySetListResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::AvailabilitySetListResult
      VirtualMachineScaleSetListResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetListResult
      OSDiskImage = Azure::ARM::Compute::Api_2016_04_30_preview::Models::OSDiskImage
      VirtualMachineScaleSetListWithLinkResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetListWithLinkResult
      Plan = Azure::ARM::Compute::Api_2016_04_30_preview::Models::Plan
      VirtualMachineScaleSetSkuCapacity = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetSkuCapacity
      OSDisk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::OSDisk
      VirtualMachineScaleSetSku = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetSku
      SshConfiguration = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SshConfiguration
      VirtualMachineScaleSetListSkusResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetListSkusResult
      DiagnosticsProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiagnosticsProfile
      ComputeLongRunningOperationProperties = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ComputeLongRunningOperationProperties
      Usage = Azure::ARM::Compute::Api_2016_04_30_preview::Models::Usage
      VirtualMachineScaleSetVMInstanceView = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMInstanceView
      WinRMListener = Azure::ARM::Compute::Api_2016_04_30_preview::Models::WinRMListener
      VirtualMachineScaleSetVMListResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMListResult
      SnapshotList = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SnapshotList
      ApiErrorBase = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ApiErrorBase
      OSProfile = Azure::ARM::Compute::Api_2016_04_30_preview::Models::OSProfile
      InnerError = Azure::ARM::Compute::Api_2016_04_30_preview::Models::InnerError
      KeyVaultKeyReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultKeyReference
      ApiError = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ApiError
      AvailabilitySet = Azure::ARM::Compute::Api_2016_04_30_preview::Models::AvailabilitySet
      VirtualMachineExtensionImage = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtension
      VirtualMachineImage = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineCaptureResult
      ImageReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageReference
      ManagedDiskParameters = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ManagedDiskParameters
      NetworkInterfaceReference = Azure::ARM::Compute::Api_2016_04_30_preview::Models::NetworkInterfaceReference
      VirtualMachine = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachine
      Image = Azure::ARM::Compute::Api_2016_04_30_preview::Models::Image
      VirtualMachineScaleSetIPConfiguration = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetVM = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVM
      Disk = Azure::ARM::Compute::Api_2016_04_30_preview::Models::Disk
      DiskUpdate = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskUpdate
      Snapshot = Azure::ARM::Compute::Api_2016_04_30_preview::Models::Snapshot
      SnapshotUpdate = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SnapshotUpdate
      StatusLevelTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::StatusLevelTypes
      OperatingSystemTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::CachingTypes
      DiskCreateOptionTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskCreateOptionTypes
      StorageAccountTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::StorageAccountTypes
      PassNames = Azure::ARM::Compute::Api_2016_04_30_preview::Models::PassNames
      ComponentNames = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ComponentNames
      SettingNames = Azure::ARM::Compute::Api_2016_04_30_preview::Models::SettingNames
      ProtocolTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ProtocolTypes
      ResourceIdentityType = Azure::ARM::Compute::Api_2016_04_30_preview::Models::ResourceIdentityType
      UpgradeMode = Azure::ARM::Compute::Api_2016_04_30_preview::Models::UpgradeMode
      OperatingSystemStateTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::OperatingSystemStateTypes
      VirtualMachineScaleSetSkuScaleType = Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetSkuScaleType
      DiskCreateOption = Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskCreateOption
      AccessLevel = Azure::ARM::Compute::Api_2016_04_30_preview::Models::AccessLevel
      InstanceViewTypes = Azure::ARM::Compute::Api_2016_04_30_preview::Models::InstanceViewTypes
    end

    #
    # Compute
    #
    class ComputeClass
      attr_accessor :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_vms, :disks, :snapshots, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Compute::Api_2016_04_30_preview::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.availability_sets = Azure::ARM::Compute::Api_2016_04_30_preview::AvailabilitySets.new(client)
        self.virtual_machine_extension_images = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineExtensionImages.new(client)
        self.virtual_machine_extensions = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineExtensions.new(client)
        self.virtual_machine_images = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineImages.new(client)
        self.usage_operations = Azure::ARM::Compute::Api_2016_04_30_preview::UsageOperations.new(client)
        self.virtual_machine_sizes = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineSizes.new(client)
        self.images = Azure::ARM::Compute::Api_2016_04_30_preview::Images.new(client)
        self.virtual_machines = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachines.new(client)
        self.virtual_machine_scale_sets = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineScaleSets.new(client)
        self.virtual_machine_scale_set_vms = Azure::ARM::Compute::Api_2016_04_30_preview::VirtualMachineScaleSetVMs.new(client)
        self.disks = Azure::ARM::Compute::Api_2016_04_30_preview::Disks.new(client)
        self.snapshots = Azure::ARM::Compute::Api_2016_04_30_preview::Snapshots.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-04-30-preview'
            client = Azure::ARM::Compute::Api_2016_04_30_preview::ComputeManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def image_osdisk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageOSDisk
        end
        def image_data_disk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageDataDisk
        end
        def image_storage_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageStorageProfile
        end
        def virtual_machine_agent_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineAgentInstanceView
        end
        def disk_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskInstanceView
        end
        def virtual_machine_size
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineSize
        end
        def boot_diagnostics_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::BootDiagnosticsInstanceView
        end
        def virtual_machine_identity
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineIdentity
        end
        def virtual_machine_extension_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtensionInstanceView
        end
        def virtual_machine_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineInstanceView
        end
        def purchase_plan
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::PurchasePlan
        end
        def source_vault
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SourceVault
        end
        def data_disk_image
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DataDiskImage
        end
        def virtual_machine_list_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineListResult
        end
        def usage_name
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::UsageName
        end
        def upgrade_policy
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::UpgradePolicy
        end
        def list_usages_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ListUsagesResult
        end
        def instance_view_status
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::InstanceViewStatus
        end
        def disk_list
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskList
        end
        def sku
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::Sku
        end
        def hardware_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::HardwareProfile
        end
        def creation_data
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::CreationData
        end
        def key_vault_secret_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultSecretReference
        end
        def image_disk_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageDiskReference
        end
        def disk_encryption_settings
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskEncryptionSettings
        end
        def image_list_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageListResult
        end
        def key_vault_and_key_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultAndKeyReference
        end
        def virtual_machine_scale_set_identity
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetIdentity
        end
        def data_disk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DataDisk
        end
        def virtual_machine_scale_set_osprofile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetOSProfile
        end
        def additional_unattend_content
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::AdditionalUnattendContent
        end
        def virtual_machine_scale_set_managed_disk_parameters
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetManagedDiskParameters
        end
        def win_rmconfiguration
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::WinRMConfiguration
        end
        def virtual_machine_scale_set_osdisk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetOSDisk
        end
        def ssh_public_key
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SshPublicKey
        end
        def virtual_machine_scale_set_data_disk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetDataDisk
        end
        def linux_configuration
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::LinuxConfiguration
        end
        def virtual_machine_scale_set_storage_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetStorageProfile
        end
        def vault_secret_group
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VaultSecretGroup
        end
        def api_entity_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ApiEntityReference
        end
        def key_vault_and_secret_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultAndSecretReference
        end
        def resource_update
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ResourceUpdate
        end
        def boot_diagnostics
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::BootDiagnostics
        end
        def operation_status_response
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::OperationStatusResponse
        end
        def virtual_machine_extension_handler_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtensionHandlerInstanceView
        end
        def virtual_machine_scale_set_network_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetNetworkProfile
        end
        def virtual_machine_size_list_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineSizeListResult
        end
        def sub_resource_read_only
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SubResourceReadOnly
        end
        def access_uri
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::AccessUri
        end
        def virtual_machine_scale_set_extension_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetExtensionProfile
        end
        def grant_access_data
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::GrantAccessData
        end
        def virtual_machine_scale_set_vmprofile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMProfile
        end
        def virtual_machine_capture_parameters
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineCaptureParameters
        end
        def encryption_settings
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::EncryptionSettings
        end
        def virtual_machine_scale_set_vminstance_ids
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMInstanceIDs
        end
        def virtual_hard_disk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualHardDisk
        end
        def virtual_machine_scale_set_vminstance_required_ids
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        end
        def storage_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::StorageProfile
        end
        def virtual_machine_status_code_count
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineStatusCodeCount
        end
        def windows_configuration
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::WindowsConfiguration
        end
        def virtual_machine_scale_set_instance_view_statuses_summary
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        end
        def vault_certificate
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VaultCertificate
        end
        def virtual_machine_scale_set_vmextensions_summary
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMExtensionsSummary
        end
        def network_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::NetworkProfile
        end
        def virtual_machine_scale_set_instance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetInstanceView
        end
        def availability_set_list_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::AvailabilitySetListResult
        end
        def virtual_machine_scale_set_list_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetListResult
        end
        def osdisk_image
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::OSDiskImage
        end
        def virtual_machine_scale_set_list_with_link_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetListWithLinkResult
        end
        def plan
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::Plan
        end
        def virtual_machine_scale_set_sku_capacity
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetSkuCapacity
        end
        def osdisk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::OSDisk
        end
        def virtual_machine_scale_set_sku
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetSku
        end
        def ssh_configuration
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SshConfiguration
        end
        def virtual_machine_scale_set_list_skus_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetListSkusResult
        end
        def diagnostics_profile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiagnosticsProfile
        end
        def compute_long_running_operation_properties
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ComputeLongRunningOperationProperties
        end
        def usage
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::Usage
        end
        def virtual_machine_scale_set_vminstance_view
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMInstanceView
        end
        def win_rmlistener
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::WinRMListener
        end
        def virtual_machine_scale_set_vmlist_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVMListResult
        end
        def snapshot_list
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SnapshotList
        end
        def api_error_base
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ApiErrorBase
        end
        def osprofile
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::OSProfile
        end
        def inner_error
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::InnerError
        end
        def key_vault_key_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::KeyVaultKeyReference
        end
        def api_error
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ApiError
        end
        def availability_set
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::AvailabilitySet
        end
        def virtual_machine_extension_image
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtensionImage
        end
        def virtual_machine_image_resource
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineImageResource
        end
        def virtual_machine_extension
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineExtension
        end
        def virtual_machine_image
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineImage
        end
        def virtual_machine_capture_result
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineCaptureResult
        end
        def image_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ImageReference
        end
        def managed_disk_parameters
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ManagedDiskParameters
        end
        def network_interface_reference
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::NetworkInterfaceReference
        end
        def virtual_machine
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachine
        end
        def image
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::Image
        end
        def virtual_machine_scale_set_ipconfiguration
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetIPConfiguration
        end
        def virtual_machine_scale_set_network_configuration
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetNetworkConfiguration
        end
        def virtual_machine_scale_set_extension
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetExtension
        end
        def virtual_machine_scale_set
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSet
        end
        def virtual_machine_scale_set_vm
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetVM
        end
        def disk
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::Disk
        end
        def disk_update
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskUpdate
        end
        def snapshot
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::Snapshot
        end
        def snapshot_update
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SnapshotUpdate
        end
        def status_level_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::StatusLevelTypes
        end
        def operating_system_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::OperatingSystemTypes
        end
        def virtual_machine_size_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineSizeTypes
        end
        def caching_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::CachingTypes
        end
        def disk_create_option_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskCreateOptionTypes
        end
        def storage_account_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::StorageAccountTypes
        end
        def pass_names
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::PassNames
        end
        def component_names
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ComponentNames
        end
        def setting_names
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::SettingNames
        end
        def protocol_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ProtocolTypes
        end
        def resource_identity_type
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::ResourceIdentityType
        end
        def upgrade_mode
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::UpgradeMode
        end
        def operating_system_state_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::OperatingSystemStateTypes
        end
        def virtual_machine_scale_set_sku_scale_type
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::VirtualMachineScaleSetSkuScaleType
        end
        def disk_create_option
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::DiskCreateOption
        end
        def access_level
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::AccessLevel
        end
        def instance_view_types
          Azure::ARM::Compute::Api_2016_04_30_preview::Models::InstanceViewTypes
        end
      end
    end
  end
end
