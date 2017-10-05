# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_compute'


module Azure::Profiles::ComputeModule::Management::Profile_2015_06_15
  module Compute
    AvailabilitySets = Azure::ARM::Compute::Api_2015_06_15::AvailabilitySets
    VirtualMachineExtensionImages = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineExtensionImages
    VirtualMachineExtensions = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineExtensions
    VirtualMachineImages = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineImages
    UsageOperations = Azure::ARM::Compute::Api_2015_06_15::UsageOperations
    VirtualMachineSizes = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineSizes
    VirtualMachines = Azure::ARM::Compute::Api_2015_06_15::VirtualMachines
    VirtualMachineScaleSets = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineScaleSets
    VirtualMachineScaleSetVMs = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineScaleSetVMs

    module Models
      BootDiagnostics = Azure::ARM::Compute::Api_2015_06_15::Models::BootDiagnostics
      DiagnosticsProfile = Azure::ARM::Compute::Api_2015_06_15::Models::DiagnosticsProfile
      VirtualMachineExtensionHandlerInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtensionHandlerInstanceView
      AvailabilitySetListResult = Azure::ARM::Compute::Api_2015_06_15::Models::AvailabilitySetListResult
      VirtualMachineAgentInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineAgentInstanceView
      VirtualMachineSizeListResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineSizeListResult
      DiskInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::DiskInstanceView
      NetworkProfile = Azure::ARM::Compute::Api_2015_06_15::Models::NetworkProfile
      VirtualMachineExtensionInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtensionInstanceView
      InstanceViewStatus = Azure::ARM::Compute::Api_2015_06_15::Models::InstanceViewStatus
      PurchasePlan = Azure::ARM::Compute::Api_2015_06_15::Models::PurchasePlan
      OSDiskImage = Azure::ARM::Compute::Api_2015_06_15::Models::OSDiskImage
      DataDiskImage = Azure::ARM::Compute::Api_2015_06_15::Models::DataDiskImage
      VirtualMachineScaleSetSku = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetSku
      UsageName = Azure::ARM::Compute::Api_2015_06_15::Models::UsageName
      VirtualMachineSize = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineSize
      ListUsagesResult = Azure::ARM::Compute::Api_2015_06_15::Models::ListUsagesResult
      VirtualMachineScaleSetSkuCapacity = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetSkuCapacity
      ApiError = Azure::ARM::Compute::Api_2015_06_15::Models::ApiError
      HardwareProfile = Azure::ARM::Compute::Api_2015_06_15::Models::HardwareProfile
      BootDiagnosticsInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::BootDiagnosticsInstanceView
      KeyVaultSecretReference = Azure::ARM::Compute::Api_2015_06_15::Models::KeyVaultSecretReference
      VirtualMachineInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineInstanceView
      DiskEncryptionSettings = Azure::ARM::Compute::Api_2015_06_15::Models::DiskEncryptionSettings
      InnerError = Azure::ARM::Compute::Api_2015_06_15::Models::InnerError
      OSDisk = Azure::ARM::Compute::Api_2015_06_15::Models::OSDisk
      VirtualMachineListResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineListResult
      StorageProfile = Azure::ARM::Compute::Api_2015_06_15::Models::StorageProfile
      Sku = Azure::ARM::Compute::Api_2015_06_15::Models::Sku
      WinRMListener = Azure::ARM::Compute::Api_2015_06_15::Models::WinRMListener
      UpgradePolicy = Azure::ARM::Compute::Api_2015_06_15::Models::UpgradePolicy
      WindowsConfiguration = Azure::ARM::Compute::Api_2015_06_15::Models::WindowsConfiguration
      VirtualMachineScaleSetOSProfile = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetOSProfile
      SshConfiguration = Azure::ARM::Compute::Api_2015_06_15::Models::SshConfiguration
      VirtualMachineScaleSetOSDisk = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetOSDisk
      VaultCertificate = Azure::ARM::Compute::Api_2015_06_15::Models::VaultCertificate
      VirtualMachineScaleSetStorageProfile = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetStorageProfile
      OSProfile = Azure::ARM::Compute::Api_2015_06_15::Models::OSProfile
      ApiEntityReference = Azure::ARM::Compute::Api_2015_06_15::Models::ApiEntityReference
      ApiErrorBase = Azure::ARM::Compute::Api_2015_06_15::Models::ApiErrorBase
      Usage = Azure::ARM::Compute::Api_2015_06_15::Models::Usage
      VirtualMachineScaleSetVMListResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMListResult
      Plan = Azure::ARM::Compute::Api_2015_06_15::Models::Plan
      VirtualMachineScaleSetNetworkProfile = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetNetworkProfile
      KeyVaultKeyReference = Azure::ARM::Compute::Api_2015_06_15::Models::KeyVaultKeyReference
      VirtualMachineScaleSetVMInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMInstanceView
      DataDisk = Azure::ARM::Compute::Api_2015_06_15::Models::DataDisk
      VirtualMachineScaleSetExtensionProfile = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetExtensionProfile
      WinRMConfiguration = Azure::ARM::Compute::Api_2015_06_15::Models::WinRMConfiguration
      VirtualMachineScaleSetVMProfile = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMProfile
      LinuxConfiguration = Azure::ARM::Compute::Api_2015_06_15::Models::LinuxConfiguration
      VirtualMachineScaleSetListSkusResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetListSkusResult
      ComputeLongRunningOperationProperties = Azure::ARM::Compute::Api_2015_06_15::Models::ComputeLongRunningOperationProperties
      VirtualMachineScaleSetVMInstanceIDs = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMInstanceIDs
      VirtualMachineCaptureParameters = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineCaptureParameters
      VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
      VirtualHardDisk = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualHardDisk
      VirtualMachineStatusCodeCount = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineStatusCodeCount
      SshPublicKey = Azure::ARM::Compute::Api_2015_06_15::Models::SshPublicKey
      VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
      OperationStatusResponse = Azure::ARM::Compute::Api_2015_06_15::Models::OperationStatusResponse
      VirtualMachineScaleSetVMExtensionsSummary = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMExtensionsSummary
      AdditionalUnattendContent = Azure::ARM::Compute::Api_2015_06_15::Models::AdditionalUnattendContent
      VirtualMachineScaleSetInstanceView = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetInstanceView
      ImageReference = Azure::ARM::Compute::Api_2015_06_15::Models::ImageReference
      VirtualMachineScaleSetListResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetListResult
      VaultSecretGroup = Azure::ARM::Compute::Api_2015_06_15::Models::VaultSecretGroup
      VirtualMachineScaleSetListWithLinkResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetListWithLinkResult
      AvailabilitySet = Azure::ARM::Compute::Api_2015_06_15::Models::AvailabilitySet
      VirtualMachineExtensionImage = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtensionImage
      VirtualMachineImageResource = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineImageResource
      VirtualMachineExtension = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtension
      VirtualMachineImage = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineImage
      VirtualMachineCaptureResult = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineCaptureResult
      NetworkInterfaceReference = Azure::ARM::Compute::Api_2015_06_15::Models::NetworkInterfaceReference
      VirtualMachine = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachine
      VirtualMachineScaleSetIPConfiguration = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetIPConfiguration
      VirtualMachineScaleSetNetworkConfiguration = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetNetworkConfiguration
      VirtualMachineScaleSetExtension = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetExtension
      VirtualMachineScaleSet = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSet
      VirtualMachineScaleSetVM = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVM
      StatusLevelTypes = Azure::ARM::Compute::Api_2015_06_15::Models::StatusLevelTypes
      OperatingSystemTypes = Azure::ARM::Compute::Api_2015_06_15::Models::OperatingSystemTypes
      VirtualMachineSizeTypes = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineSizeTypes
      CachingTypes = Azure::ARM::Compute::Api_2015_06_15::Models::CachingTypes
      DiskCreateOptionTypes = Azure::ARM::Compute::Api_2015_06_15::Models::DiskCreateOptionTypes
      PassNames = Azure::ARM::Compute::Api_2015_06_15::Models::PassNames
      ComponentNames = Azure::ARM::Compute::Api_2015_06_15::Models::ComponentNames
      SettingNames = Azure::ARM::Compute::Api_2015_06_15::Models::SettingNames
      ProtocolTypes = Azure::ARM::Compute::Api_2015_06_15::Models::ProtocolTypes
      UpgradeMode = Azure::ARM::Compute::Api_2015_06_15::Models::UpgradeMode
      VirtualMachineScaleSetSkuScaleType = Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetSkuScaleType
      InstanceViewTypes = Azure::ARM::Compute::Api_2015_06_15::Models::InstanceViewTypes
    end

    #
    # Compute
    #
    class ComputeClass
      attr_accessor :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_vms, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Compute::Api_2015_06_15::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.availability_sets = Azure::ARM::Compute::Api_2015_06_15::AvailabilitySets.new(client)
        self.virtual_machine_extension_images = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineExtensionImages.new(client)
        self.virtual_machine_extensions = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineExtensions.new(client)
        self.virtual_machine_images = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineImages.new(client)
        self.usage_operations = Azure::ARM::Compute::Api_2015_06_15::UsageOperations.new(client)
        self.virtual_machine_sizes = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineSizes.new(client)
        self.virtual_machines = Azure::ARM::Compute::Api_2015_06_15::VirtualMachines.new(client)
        self.virtual_machine_scale_sets = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineScaleSets.new(client)
        self.virtual_machine_scale_set_vms = Azure::ARM::Compute::Api_2015_06_15::VirtualMachineScaleSetVMs.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-06-15'
            client = Azure::ARM::Compute::Api_2015_06_15::ComputeManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def boot_diagnostics
          Azure::ARM::Compute::Api_2015_06_15::Models::BootDiagnostics
        end
        def diagnostics_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::DiagnosticsProfile
        end
        def virtual_machine_extension_handler_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtensionHandlerInstanceView
        end
        def availability_set_list_result
          Azure::ARM::Compute::Api_2015_06_15::Models::AvailabilitySetListResult
        end
        def virtual_machine_agent_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineAgentInstanceView
        end
        def virtual_machine_size_list_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineSizeListResult
        end
        def disk_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::DiskInstanceView
        end
        def network_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::NetworkProfile
        end
        def virtual_machine_extension_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtensionInstanceView
        end
        def instance_view_status
          Azure::ARM::Compute::Api_2015_06_15::Models::InstanceViewStatus
        end
        def purchase_plan
          Azure::ARM::Compute::Api_2015_06_15::Models::PurchasePlan
        end
        def osdisk_image
          Azure::ARM::Compute::Api_2015_06_15::Models::OSDiskImage
        end
        def data_disk_image
          Azure::ARM::Compute::Api_2015_06_15::Models::DataDiskImage
        end
        def virtual_machine_scale_set_sku
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetSku
        end
        def usage_name
          Azure::ARM::Compute::Api_2015_06_15::Models::UsageName
        end
        def virtual_machine_size
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineSize
        end
        def list_usages_result
          Azure::ARM::Compute::Api_2015_06_15::Models::ListUsagesResult
        end
        def virtual_machine_scale_set_sku_capacity
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetSkuCapacity
        end
        def api_error
          Azure::ARM::Compute::Api_2015_06_15::Models::ApiError
        end
        def hardware_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::HardwareProfile
        end
        def boot_diagnostics_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::BootDiagnosticsInstanceView
        end
        def key_vault_secret_reference
          Azure::ARM::Compute::Api_2015_06_15::Models::KeyVaultSecretReference
        end
        def virtual_machine_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineInstanceView
        end
        def disk_encryption_settings
          Azure::ARM::Compute::Api_2015_06_15::Models::DiskEncryptionSettings
        end
        def inner_error
          Azure::ARM::Compute::Api_2015_06_15::Models::InnerError
        end
        def osdisk
          Azure::ARM::Compute::Api_2015_06_15::Models::OSDisk
        end
        def virtual_machine_list_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineListResult
        end
        def storage_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::StorageProfile
        end
        def sku
          Azure::ARM::Compute::Api_2015_06_15::Models::Sku
        end
        def win_rmlistener
          Azure::ARM::Compute::Api_2015_06_15::Models::WinRMListener
        end
        def upgrade_policy
          Azure::ARM::Compute::Api_2015_06_15::Models::UpgradePolicy
        end
        def windows_configuration
          Azure::ARM::Compute::Api_2015_06_15::Models::WindowsConfiguration
        end
        def virtual_machine_scale_set_osprofile
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetOSProfile
        end
        def ssh_configuration
          Azure::ARM::Compute::Api_2015_06_15::Models::SshConfiguration
        end
        def virtual_machine_scale_set_osdisk
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetOSDisk
        end
        def vault_certificate
          Azure::ARM::Compute::Api_2015_06_15::Models::VaultCertificate
        end
        def virtual_machine_scale_set_storage_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetStorageProfile
        end
        def osprofile
          Azure::ARM::Compute::Api_2015_06_15::Models::OSProfile
        end
        def api_entity_reference
          Azure::ARM::Compute::Api_2015_06_15::Models::ApiEntityReference
        end
        def api_error_base
          Azure::ARM::Compute::Api_2015_06_15::Models::ApiErrorBase
        end
        def usage
          Azure::ARM::Compute::Api_2015_06_15::Models::Usage
        end
        def virtual_machine_scale_set_vmlist_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMListResult
        end
        def plan
          Azure::ARM::Compute::Api_2015_06_15::Models::Plan
        end
        def virtual_machine_scale_set_network_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetNetworkProfile
        end
        def key_vault_key_reference
          Azure::ARM::Compute::Api_2015_06_15::Models::KeyVaultKeyReference
        end
        def virtual_machine_scale_set_vminstance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMInstanceView
        end
        def data_disk
          Azure::ARM::Compute::Api_2015_06_15::Models::DataDisk
        end
        def virtual_machine_scale_set_extension_profile
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetExtensionProfile
        end
        def win_rmconfiguration
          Azure::ARM::Compute::Api_2015_06_15::Models::WinRMConfiguration
        end
        def virtual_machine_scale_set_vmprofile
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMProfile
        end
        def linux_configuration
          Azure::ARM::Compute::Api_2015_06_15::Models::LinuxConfiguration
        end
        def virtual_machine_scale_set_list_skus_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetListSkusResult
        end
        def compute_long_running_operation_properties
          Azure::ARM::Compute::Api_2015_06_15::Models::ComputeLongRunningOperationProperties
        end
        def virtual_machine_scale_set_vminstance_ids
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMInstanceIDs
        end
        def virtual_machine_capture_parameters
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineCaptureParameters
        end
        def virtual_machine_scale_set_vminstance_required_ids
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        end
        def virtual_hard_disk
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualHardDisk
        end
        def virtual_machine_status_code_count
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineStatusCodeCount
        end
        def ssh_public_key
          Azure::ARM::Compute::Api_2015_06_15::Models::SshPublicKey
        end
        def virtual_machine_scale_set_instance_view_statuses_summary
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        end
        def operation_status_response
          Azure::ARM::Compute::Api_2015_06_15::Models::OperationStatusResponse
        end
        def virtual_machine_scale_set_vmextensions_summary
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVMExtensionsSummary
        end
        def additional_unattend_content
          Azure::ARM::Compute::Api_2015_06_15::Models::AdditionalUnattendContent
        end
        def virtual_machine_scale_set_instance_view
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetInstanceView
        end
        def image_reference
          Azure::ARM::Compute::Api_2015_06_15::Models::ImageReference
        end
        def virtual_machine_scale_set_list_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetListResult
        end
        def vault_secret_group
          Azure::ARM::Compute::Api_2015_06_15::Models::VaultSecretGroup
        end
        def virtual_machine_scale_set_list_with_link_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetListWithLinkResult
        end
        def availability_set
          Azure::ARM::Compute::Api_2015_06_15::Models::AvailabilitySet
        end
        def virtual_machine_extension_image
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtensionImage
        end
        def virtual_machine_image_resource
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineImageResource
        end
        def virtual_machine_extension
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineExtension
        end
        def virtual_machine_image
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineImage
        end
        def virtual_machine_capture_result
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineCaptureResult
        end
        def network_interface_reference
          Azure::ARM::Compute::Api_2015_06_15::Models::NetworkInterfaceReference
        end
        def virtual_machine
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachine
        end
        def virtual_machine_scale_set_ipconfiguration
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetIPConfiguration
        end
        def virtual_machine_scale_set_network_configuration
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetNetworkConfiguration
        end
        def virtual_machine_scale_set_extension
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetExtension
        end
        def virtual_machine_scale_set
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSet
        end
        def virtual_machine_scale_set_vm
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetVM
        end
        def status_level_types
          Azure::ARM::Compute::Api_2015_06_15::Models::StatusLevelTypes
        end
        def operating_system_types
          Azure::ARM::Compute::Api_2015_06_15::Models::OperatingSystemTypes
        end
        def virtual_machine_size_types
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineSizeTypes
        end
        def caching_types
          Azure::ARM::Compute::Api_2015_06_15::Models::CachingTypes
        end
        def disk_create_option_types
          Azure::ARM::Compute::Api_2015_06_15::Models::DiskCreateOptionTypes
        end
        def pass_names
          Azure::ARM::Compute::Api_2015_06_15::Models::PassNames
        end
        def component_names
          Azure::ARM::Compute::Api_2015_06_15::Models::ComponentNames
        end
        def setting_names
          Azure::ARM::Compute::Api_2015_06_15::Models::SettingNames
        end
        def protocol_types
          Azure::ARM::Compute::Api_2015_06_15::Models::ProtocolTypes
        end
        def upgrade_mode
          Azure::ARM::Compute::Api_2015_06_15::Models::UpgradeMode
        end
        def virtual_machine_scale_set_sku_scale_type
          Azure::ARM::Compute::Api_2015_06_15::Models::VirtualMachineScaleSetSkuScaleType
        end
        def instance_view_types
          Azure::ARM::Compute::Api_2015_06_15::Models::InstanceViewTypes
        end
      end
    end
  end
end
