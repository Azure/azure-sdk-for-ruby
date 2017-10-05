# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_compute'


module Azure::Profiles::ComputeModule::Management::Profile_Latest
  module Compute
    AvailabilitySets = Azure::ARM::Compute::Api_2017_03_30::AvailabilitySets
    VirtualMachineExtensionImages = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineExtensions
    VirtualMachineImages = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineImages
    UsageOperations = Azure::ARM::Compute::Api_2017_03_30::UsageOperations
    VirtualMachineSizes = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineSizes
    Images = Azure::ARM::Compute::Api_2017_03_30::Images
    ResourceSkus = Azure::ARM::Compute::Api_2017_03_30::ResourceSkus
    VirtualMachines = Azure::ARM::Compute::Api_2017_03_30::VirtualMachines
    VirtualMachineScaleSets = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineScaleSets
    VirtualMachineScaleSetExtensions = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineScaleSetExtensions
    VirtualMachineScaleSetVMs = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineScaleSetVMs
    Disks = Azure::ARM::Compute::Api_2017_03_30::Disks
    Snapshots = Azure::ARM::Compute::Api_2017_03_30::Snapshots
    VirtualMachineRunCommands = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineRunCommands

    module Models
      ResourceSkuRestrictions = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuRestrictions
      InstanceViewStatus = Azure::ARM::Compute::Api_2017_03_30::Models::InstanceViewStatus
      ResourceSku = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSku
      Sku = Azure::ARM::Compute::Api_2017_03_30::Models::Sku
      ResourceSkusResult = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkusResult
      AvailabilitySetListResult = Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySetListResult
      VirtualMachineScaleSetOSProfile = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetOSProfile
      VirtualMachineSizeListResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSizeListResult
      VirtualMachineScaleSetManagedDiskParameters = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetManagedDiskParameters
      AccessUri = Azure::ARM::Compute::Api_2017_03_30::Models::AccessUri
      ImageListResult = Azure::ARM::Compute::Api_2017_03_30::Models::ImageListResult
      VirtualMachineScaleSetIdentity = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetIdentity
      OSDiskImage = Azure::ARM::Compute::Api_2017_03_30::Models::OSDiskImage
      ResourceSkuCapacity = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCapacity
      RunCommandListResult = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandListResult
      ResourceSkuCosts = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCosts
      Usage = Azure::ARM::Compute::Api_2017_03_30::Models::Usage
      ResourceSkuCapabilities = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCapabilities
      VirtualMachineCaptureParameters = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineCaptureParameters
      Plan = Azure::ARM::Compute::Api_2017_03_30::Models::Plan
      HardwareProfile = Azure::ARM::Compute::Api_2017_03_30::Models::HardwareProfile
      RunCommandParameterDefinition = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandParameterDefinition
      CreationData = Azure::ARM::Compute::Api_2017_03_30::Models::CreationData
      KeyVaultKeyReference = Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultKeyReference
      VirtualMachineSize = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSize
      VirtualHardDisk = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualHardDisk
      ImageDiskReference = Azure::ARM::Compute::Api_2017_03_30::Models::ImageDiskReference
      OSDisk = Azure::ARM::Compute::Api_2017_03_30::Models::OSDisk
      GrantAccessData = Azure::ARM::Compute::Api_2017_03_30::Models::GrantAccessData
      StorageProfile = Azure::ARM::Compute::Api_2017_03_30::Models::StorageProfile
      VirtualMachineScaleSetOSDisk = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetOSDisk
      WinRMListener = Azure::ARM::Compute::Api_2017_03_30::Models::WinRMListener
      VirtualMachineScaleSetDataDisk = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetDataDisk
      WindowsConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::WindowsConfiguration
      VirtualMachineScaleSetStorageProfile = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetStorageProfile
      SshConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::SshConfiguration
      ApiEntityReference = Azure::ARM::Compute::Api_2017_03_30::Models::ApiEntityReference
      VaultCertificate = Azure::ARM::Compute::Api_2017_03_30::Models::VaultCertificate
      VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
      OSProfile = Azure::ARM::Compute::Api_2017_03_30::Models::OSProfile
      VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
      NetworkProfile = Azure::ARM::Compute::Api_2017_03_30::Models::NetworkProfile
      DiskList = Azure::ARM::Compute::Api_2017_03_30::Models::DiskList
      DiagnosticsProfile = Azure::ARM::Compute::Api_2017_03_30::Models::DiagnosticsProfile
      VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
      VirtualMachineAgentInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineAgentInstanceView
      EncryptionSettings = Azure::ARM::Compute::Api_2017_03_30::Models::EncryptionSettings
      BootDiagnosticsInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::BootDiagnosticsInstanceView
      VirtualMachineScaleSetNetworkProfile = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetNetworkProfile
      MaintenanceRedeployStatus = Azure::ARM::Compute::Api_2017_03_30::Models::MaintenanceRedeployStatus
      KeyVaultAndKeyReference = Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultAndKeyReference
      SnapshotList = Azure::ARM::Compute::Api_2017_03_30::Models::SnapshotList
      VirtualMachineScaleSetExtensionListResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetExtensionListResult
      UpgradePolicy = Azure::ARM::Compute::Api_2017_03_30::Models::UpgradePolicy
      VirtualMachineScaleSetExtensionProfile = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetExtensionProfile
      ImageDataDisk = Azure::ARM::Compute::Api_2017_03_30::Models::ImageDataDisk
      VirtualMachineScaleSetVMProfile = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMProfile
      VirtualMachineExtensionInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionInstanceView
      KeyVaultAndSecretReference = Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultAndSecretReference
      DataDiskImage = Azure::ARM::Compute::Api_2017_03_30::Models::DataDiskImage
      VirtualMachineScaleSetVMInstanceIDs = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
      ListUsagesResult = Azure::ARM::Compute::Api_2017_03_30::Models::ListUsagesResult
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      KeyVaultSecretReference = Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultSecretReference
      VirtualMachineStatusCodeCount = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineStatusCodeCount
      RunCommandInput = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandInput
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      AdditionalUnattendContent = Azure::ARM::Compute::Api_2017_03_30::Models::AdditionalUnattendContent
      VirtualMachineScaleSetVMExtensionsSummary = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
      SshPublicKey = Azure::ARM::Compute::Api_2017_03_30::Models::SshPublicKey
      VirtualMachineScaleSetInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetInstanceView
      VaultSecretGroup = Azure::ARM::Compute::Api_2017_03_30::Models::VaultSecretGroup
      VirtualMachineScaleSetListResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetListResult
      BootDiagnostics = Azure::ARM::Compute::Api_2017_03_30::Models::BootDiagnostics
      VirtualMachineScaleSetListWithLinkResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetListWithLinkResult
      DiskInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::DiskInstanceView
      VirtualMachineScaleSetSkuCapacity = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetSkuCapacity
      VirtualMachineInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineInstanceView
      VirtualMachineScaleSetSku = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetSku
      ImageOSDisk = Azure::ARM::Compute::Api_2017_03_30::Models::ImageOSDisk
      VirtualMachineScaleSetListSkusResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetListSkusResult
      PurchasePlan = Azure::ARM::Compute::Api_2017_03_30::Models::PurchasePlan
      SourceVault = Azure::ARM::Compute::Api_2017_03_30::Models::SourceVault
      RunCommandDocumentBase = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandDocumentBase
      VirtualMachineScaleSetVMInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMInstanceView
      DataDisk = Azure::ARM::Compute::Api_2017_03_30::Models::DataDisk
      VirtualMachineScaleSetVMListResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMListResult
      LinuxConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::LinuxConfiguration
      ApiErrorBase = Azure::ARM::Compute::Api_2017_03_30::Models::ApiErrorBase
      VirtualMachineExtensionHandlerInstanceView = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionHandlerInstanceView
      InnerError = Azure::ARM::Compute::Api_2017_03_30::Models::InnerError
      VirtualMachineListResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineListResult
      ApiError = Azure::ARM::Compute::Api_2017_03_30::Models::ApiError
      UsageName = Azure::ARM::Compute::Api_2017_03_30::Models::UsageName
      ComputeLongRunningOperationProperties = Azure::ARM::Compute::Api_2017_03_30::Models::ComputeLongRunningOperationProperties
      WinRMConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::WinRMConfiguration
      VirtualMachineIdentity = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineIdentity
      SubResourceReadOnly = Azure::ARM::Compute::Api_2017_03_30::Models::SubResourceReadOnly
      DiskEncryptionSettings = Azure::ARM::Compute::Api_2017_03_30::Models::DiskEncryptionSettings
      OperationStatusResponse = Azure::ARM::Compute::Api_2017_03_30::Models::OperationStatusResponse
      ImageStorageProfile = Azure::ARM::Compute::Api_2017_03_30::Models::ImageStorageProfile
      DiskSku = Azure::ARM::Compute::Api_2017_03_30::Models::DiskSku
      RunCommandInputParameter = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandInputParameter
      ResourceUpdate = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceUpdate
      AvailabilitySet = Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySet
      VirtualMachineExtensionImage = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtension
      VirtualMachineImage = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineCaptureResult
      ImageReference = Azure::ARM::Compute::Api_2017_03_30::Models::ImageReference
      ManagedDiskParameters = Azure::ARM::Compute::Api_2017_03_30::Models::ManagedDiskParameters
      NetworkInterfaceReference = Azure::ARM::Compute::Api_2017_03_30::Models::NetworkInterfaceReference
      VirtualMachine = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachine
      Image = Azure::ARM::Compute::Api_2017_03_30::Models::Image
      VirtualMachineScaleSetIPConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetVM = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVM
      Disk = Azure::ARM::Compute::Api_2017_03_30::Models::Disk
      DiskUpdate = Azure::ARM::Compute::Api_2017_03_30::Models::DiskUpdate
      Snapshot = Azure::ARM::Compute::Api_2017_03_30::Models::Snapshot
      SnapshotUpdate = Azure::ARM::Compute::Api_2017_03_30::Models::SnapshotUpdate
      RunCommandDocument = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandDocument
      RunCommandResult = Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandResult
      StatusLevelTypes = Azure::ARM::Compute::Api_2017_03_30::Models::StatusLevelTypes
      OperatingSystemTypes = Azure::ARM::Compute::Api_2017_03_30::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::ARM::Compute::Api_2017_03_30::Models::CachingTypes
      DiskCreateOptionTypes = Azure::ARM::Compute::Api_2017_03_30::Models::DiskCreateOptionTypes
      StorageAccountTypes = Azure::ARM::Compute::Api_2017_03_30::Models::StorageAccountTypes
      PassNames = Azure::ARM::Compute::Api_2017_03_30::Models::PassNames
      ComponentNames = Azure::ARM::Compute::Api_2017_03_30::Models::ComponentNames
      SettingNames = Azure::ARM::Compute::Api_2017_03_30::Models::SettingNames
      ProtocolTypes = Azure::ARM::Compute::Api_2017_03_30::Models::ProtocolTypes
      ResourceIdentityType = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceIdentityType
      MaintenanceOperationResultCodeTypes = Azure::ARM::Compute::Api_2017_03_30::Models::MaintenanceOperationResultCodeTypes
      UpgradeMode = Azure::ARM::Compute::Api_2017_03_30::Models::UpgradeMode
      OperatingSystemStateTypes = Azure::ARM::Compute::Api_2017_03_30::Models::OperatingSystemStateTypes
      ResourceSkuCapacityScaleType = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCapacityScaleType
      ResourceSkuRestrictionsType = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuRestrictionsType
      ResourceSkuRestrictionsReasonCode = Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuRestrictionsReasonCode
      IPVersion = Azure::ARM::Compute::Api_2017_03_30::Models::IPVersion
      VirtualMachineScaleSetSkuScaleType = Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetSkuScaleType
      DiskCreateOption = Azure::ARM::Compute::Api_2017_03_30::Models::DiskCreateOption
      AccessLevel = Azure::ARM::Compute::Api_2017_03_30::Models::AccessLevel
      InstanceViewTypes = Azure::ARM::Compute::Api_2017_03_30::Models::InstanceViewTypes
    end

    #
    # Compute
    #
    class ComputeClass
      attr_accessor :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :resource_skus, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_vms, :disks, :snapshots, :virtual_machine_run_commands, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Compute::Api_2017_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.availability_sets = Azure::ARM::Compute::Api_2017_03_30::AvailabilitySets.new(client)
        self.virtual_machine_extension_images = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineExtensionImages.new(client)
        self.virtual_machine_extensions = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineExtensions.new(client)
        self.virtual_machine_images = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineImages.new(client)
        self.usage_operations = Azure::ARM::Compute::Api_2017_03_30::UsageOperations.new(client)
        self.virtual_machine_sizes = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineSizes.new(client)
        self.images = Azure::ARM::Compute::Api_2017_03_30::Images.new(client)
        self.resource_skus = Azure::ARM::Compute::Api_2017_03_30::ResourceSkus.new(client)
        self.virtual_machines = Azure::ARM::Compute::Api_2017_03_30::VirtualMachines.new(client)
        self.virtual_machine_scale_sets = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineScaleSets.new(client)
        self.virtual_machine_scale_set_extensions = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineScaleSetExtensions.new(client)
        self.virtual_machine_scale_set_vms = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineScaleSetVMs.new(client)
        self.disks = Azure::ARM::Compute::Api_2017_03_30::Disks.new(client)
        self.snapshots = Azure::ARM::Compute::Api_2017_03_30::Snapshots.new(client)
        self.virtual_machine_run_commands = Azure::ARM::Compute::Api_2017_03_30::VirtualMachineRunCommands.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-03-30'
            client = Azure::ARM::Compute::Api_2017_03_30::ComputeManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def resource_sku_restrictions
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuRestrictions
        end
        def instance_view_status
          Azure::ARM::Compute::Api_2017_03_30::Models::InstanceViewStatus
        end
        def resource_sku
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSku
        end
        def sku
          Azure::ARM::Compute::Api_2017_03_30::Models::Sku
        end
        def resource_skus_result
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkusResult
        end
        def availability_set_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySetListResult
        end
        def virtual_machine_scale_set_osprofile
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetOSProfile
        end
        def virtual_machine_size_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSizeListResult
        end
        def virtual_machine_scale_set_managed_disk_parameters
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetManagedDiskParameters
        end
        def access_uri
          Azure::ARM::Compute::Api_2017_03_30::Models::AccessUri
        end
        def image_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::ImageListResult
        end
        def virtual_machine_scale_set_identity
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetIdentity
        end
        def osdisk_image
          Azure::ARM::Compute::Api_2017_03_30::Models::OSDiskImage
        end
        def resource_sku_capacity
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCapacity
        end
        def run_command_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandListResult
        end
        def resource_sku_costs
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCosts
        end
        def usage
          Azure::ARM::Compute::Api_2017_03_30::Models::Usage
        end
        def resource_sku_capabilities
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCapabilities
        end
        def virtual_machine_capture_parameters
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineCaptureParameters
        end
        def plan
          Azure::ARM::Compute::Api_2017_03_30::Models::Plan
        end
        def hardware_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::HardwareProfile
        end
        def run_command_parameter_definition
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandParameterDefinition
        end
        def creation_data
          Azure::ARM::Compute::Api_2017_03_30::Models::CreationData
        end
        def key_vault_key_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultKeyReference
        end
        def virtual_machine_size
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSize
        end
        def virtual_hard_disk
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualHardDisk
        end
        def image_disk_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::ImageDiskReference
        end
        def osdisk
          Azure::ARM::Compute::Api_2017_03_30::Models::OSDisk
        end
        def grant_access_data
          Azure::ARM::Compute::Api_2017_03_30::Models::GrantAccessData
        end
        def storage_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::StorageProfile
        end
        def virtual_machine_scale_set_osdisk
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetOSDisk
        end
        def win_rmlistener
          Azure::ARM::Compute::Api_2017_03_30::Models::WinRMListener
        end
        def virtual_machine_scale_set_data_disk
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetDataDisk
        end
        def windows_configuration
          Azure::ARM::Compute::Api_2017_03_30::Models::WindowsConfiguration
        end
        def virtual_machine_scale_set_storage_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetStorageProfile
        end
        def ssh_configuration
          Azure::ARM::Compute::Api_2017_03_30::Models::SshConfiguration
        end
        def api_entity_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::ApiEntityReference
        end
        def vault_certificate
          Azure::ARM::Compute::Api_2017_03_30::Models::VaultCertificate
        end
        def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        end
        def osprofile
          Azure::ARM::Compute::Api_2017_03_30::Models::OSProfile
        end
        def virtual_machine_scale_set_public_ipaddress_configuration
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        end
        def network_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::NetworkProfile
        end
        def disk_list
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskList
        end
        def diagnostics_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::DiagnosticsProfile
        end
        def virtual_machine_scale_set_network_configuration_dns_settings
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        end
        def virtual_machine_agent_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineAgentInstanceView
        end
        def encryption_settings
          Azure::ARM::Compute::Api_2017_03_30::Models::EncryptionSettings
        end
        def boot_diagnostics_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::BootDiagnosticsInstanceView
        end
        def virtual_machine_scale_set_network_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetNetworkProfile
        end
        def maintenance_redeploy_status
          Azure::ARM::Compute::Api_2017_03_30::Models::MaintenanceRedeployStatus
        end
        def key_vault_and_key_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultAndKeyReference
        end
        def snapshot_list
          Azure::ARM::Compute::Api_2017_03_30::Models::SnapshotList
        end
        def virtual_machine_scale_set_extension_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetExtensionListResult
        end
        def upgrade_policy
          Azure::ARM::Compute::Api_2017_03_30::Models::UpgradePolicy
        end
        def virtual_machine_scale_set_extension_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetExtensionProfile
        end
        def image_data_disk
          Azure::ARM::Compute::Api_2017_03_30::Models::ImageDataDisk
        end
        def virtual_machine_scale_set_vmprofile
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMProfile
        end
        def virtual_machine_extension_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionInstanceView
        end
        def key_vault_and_secret_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultAndSecretReference
        end
        def data_disk_image
          Azure::ARM::Compute::Api_2017_03_30::Models::DataDiskImage
        end
        def virtual_machine_scale_set_vminstance_ids
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
        end
        def list_usages_result
          Azure::ARM::Compute::Api_2017_03_30::Models::ListUsagesResult
        end
        def virtual_machine_scale_set_vminstance_required_ids
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        end
        def key_vault_secret_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::KeyVaultSecretReference
        end
        def virtual_machine_status_code_count
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineStatusCodeCount
        end
        def run_command_input
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandInput
        end
        def virtual_machine_scale_set_instance_view_statuses_summary
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        end
        def additional_unattend_content
          Azure::ARM::Compute::Api_2017_03_30::Models::AdditionalUnattendContent
        end
        def virtual_machine_scale_set_vmextensions_summary
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
        end
        def ssh_public_key
          Azure::ARM::Compute::Api_2017_03_30::Models::SshPublicKey
        end
        def virtual_machine_scale_set_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetInstanceView
        end
        def vault_secret_group
          Azure::ARM::Compute::Api_2017_03_30::Models::VaultSecretGroup
        end
        def virtual_machine_scale_set_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetListResult
        end
        def boot_diagnostics
          Azure::ARM::Compute::Api_2017_03_30::Models::BootDiagnostics
        end
        def virtual_machine_scale_set_list_with_link_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetListWithLinkResult
        end
        def disk_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskInstanceView
        end
        def virtual_machine_scale_set_sku_capacity
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetSkuCapacity
        end
        def virtual_machine_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineInstanceView
        end
        def virtual_machine_scale_set_sku
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetSku
        end
        def image_osdisk
          Azure::ARM::Compute::Api_2017_03_30::Models::ImageOSDisk
        end
        def virtual_machine_scale_set_list_skus_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetListSkusResult
        end
        def purchase_plan
          Azure::ARM::Compute::Api_2017_03_30::Models::PurchasePlan
        end
        def source_vault
          Azure::ARM::Compute::Api_2017_03_30::Models::SourceVault
        end
        def run_command_document_base
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandDocumentBase
        end
        def virtual_machine_scale_set_vminstance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMInstanceView
        end
        def data_disk
          Azure::ARM::Compute::Api_2017_03_30::Models::DataDisk
        end
        def virtual_machine_scale_set_vmlist_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVMListResult
        end
        def linux_configuration
          Azure::ARM::Compute::Api_2017_03_30::Models::LinuxConfiguration
        end
        def api_error_base
          Azure::ARM::Compute::Api_2017_03_30::Models::ApiErrorBase
        end
        def virtual_machine_extension_handler_instance_view
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionHandlerInstanceView
        end
        def inner_error
          Azure::ARM::Compute::Api_2017_03_30::Models::InnerError
        end
        def virtual_machine_list_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineListResult
        end
        def api_error
          Azure::ARM::Compute::Api_2017_03_30::Models::ApiError
        end
        def usage_name
          Azure::ARM::Compute::Api_2017_03_30::Models::UsageName
        end
        def compute_long_running_operation_properties
          Azure::ARM::Compute::Api_2017_03_30::Models::ComputeLongRunningOperationProperties
        end
        def win_rmconfiguration
          Azure::ARM::Compute::Api_2017_03_30::Models::WinRMConfiguration
        end
        def virtual_machine_identity
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineIdentity
        end
        def sub_resource_read_only
          Azure::ARM::Compute::Api_2017_03_30::Models::SubResourceReadOnly
        end
        def disk_encryption_settings
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskEncryptionSettings
        end
        def operation_status_response
          Azure::ARM::Compute::Api_2017_03_30::Models::OperationStatusResponse
        end
        def image_storage_profile
          Azure::ARM::Compute::Api_2017_03_30::Models::ImageStorageProfile
        end
        def disk_sku
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskSku
        end
        def run_command_input_parameter
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandInputParameter
        end
        def resource_update
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceUpdate
        end
        def availability_set
          Azure::ARM::Compute::Api_2017_03_30::Models::AvailabilitySet
        end
        def virtual_machine_extension_image
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtensionImage
        end
        def virtual_machine_image_resource
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineImageResource
        end
        def virtual_machine_extension
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineExtension
        end
        def virtual_machine_image
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineImage
        end
        def virtual_machine_capture_result
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineCaptureResult
        end
        def image_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::ImageReference
        end
        def managed_disk_parameters
          Azure::ARM::Compute::Api_2017_03_30::Models::ManagedDiskParameters
        end
        def network_interface_reference
          Azure::ARM::Compute::Api_2017_03_30::Models::NetworkInterfaceReference
        end
        def virtual_machine
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachine
        end
        def image
          Azure::ARM::Compute::Api_2017_03_30::Models::Image
        end
        def virtual_machine_scale_set_ipconfiguration
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetIPConfiguration
        end
        def virtual_machine_scale_set_network_configuration
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
        end
        def virtual_machine_scale_set_extension
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetExtension
        end
        def virtual_machine_scale_set
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSet
        end
        def virtual_machine_scale_set_vm
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetVM
        end
        def disk
          Azure::ARM::Compute::Api_2017_03_30::Models::Disk
        end
        def disk_update
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskUpdate
        end
        def snapshot
          Azure::ARM::Compute::Api_2017_03_30::Models::Snapshot
        end
        def snapshot_update
          Azure::ARM::Compute::Api_2017_03_30::Models::SnapshotUpdate
        end
        def run_command_document
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandDocument
        end
        def run_command_result
          Azure::ARM::Compute::Api_2017_03_30::Models::RunCommandResult
        end
        def status_level_types
          Azure::ARM::Compute::Api_2017_03_30::Models::StatusLevelTypes
        end
        def operating_system_types
          Azure::ARM::Compute::Api_2017_03_30::Models::OperatingSystemTypes
        end
        def virtual_machine_size_types
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineSizeTypes
        end
        def caching_types
          Azure::ARM::Compute::Api_2017_03_30::Models::CachingTypes
        end
        def disk_create_option_types
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskCreateOptionTypes
        end
        def storage_account_types
          Azure::ARM::Compute::Api_2017_03_30::Models::StorageAccountTypes
        end
        def pass_names
          Azure::ARM::Compute::Api_2017_03_30::Models::PassNames
        end
        def component_names
          Azure::ARM::Compute::Api_2017_03_30::Models::ComponentNames
        end
        def setting_names
          Azure::ARM::Compute::Api_2017_03_30::Models::SettingNames
        end
        def protocol_types
          Azure::ARM::Compute::Api_2017_03_30::Models::ProtocolTypes
        end
        def resource_identity_type
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceIdentityType
        end
        def maintenance_operation_result_code_types
          Azure::ARM::Compute::Api_2017_03_30::Models::MaintenanceOperationResultCodeTypes
        end
        def upgrade_mode
          Azure::ARM::Compute::Api_2017_03_30::Models::UpgradeMode
        end
        def operating_system_state_types
          Azure::ARM::Compute::Api_2017_03_30::Models::OperatingSystemStateTypes
        end
        def resource_sku_capacity_scale_type
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuCapacityScaleType
        end
        def resource_sku_restrictions_type
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuRestrictionsType
        end
        def resource_sku_restrictions_reason_code
          Azure::ARM::Compute::Api_2017_03_30::Models::ResourceSkuRestrictionsReasonCode
        end
        def ipversion
          Azure::ARM::Compute::Api_2017_03_30::Models::IPVersion
        end
        def virtual_machine_scale_set_sku_scale_type
          Azure::ARM::Compute::Api_2017_03_30::Models::VirtualMachineScaleSetSkuScaleType
        end
        def disk_create_option
          Azure::ARM::Compute::Api_2017_03_30::Models::DiskCreateOption
        end
        def access_level
          Azure::ARM::Compute::Api_2017_03_30::Models::AccessLevel
        end
        def instance_view_types
          Azure::ARM::Compute::Api_2017_03_30::Models::InstanceViewTypes
        end
      end
    end
  end
end
