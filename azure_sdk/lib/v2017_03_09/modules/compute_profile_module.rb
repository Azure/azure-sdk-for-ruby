# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::V2017_03_09
  module Compute
    module Mgmt
      VirtualMachines = Azure::Compute::Mgmt::V2016_03_30::VirtualMachines
      VirtualMachineImages = Azure::Compute::Mgmt::V2016_03_30::VirtualMachineImages
      VirtualMachineSizes = Azure::Compute::Mgmt::V2016_03_30::VirtualMachineSizes
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2016_03_30::VirtualMachineScaleSets
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2016_03_30::VirtualMachineScaleSetVMs
      UsageOperations = Azure::Compute::Mgmt::V2016_03_30::UsageOperations
      AvailabilitySets = Azure::Compute::Mgmt::V2016_03_30::AvailabilitySets
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2016_03_30::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2016_03_30::VirtualMachineExtensions

      module Models
        Sku = Azure::Compute::Mgmt::V2016_03_30::Models::Sku
        SubResource = Azure::Compute::Mgmt::V2016_03_30::Models::SubResource
        UsageName = Azure::Compute::Mgmt::V2016_03_30::Models::UsageName
        Usage = Azure::Compute::Mgmt::V2016_03_30::Models::Usage
        Resource = Azure::Compute::Mgmt::V2016_03_30::Models::Resource
        DiagnosticsProfile = Azure::Compute::Mgmt::V2016_03_30::Models::DiagnosticsProfile
        InstanceViewStatus = Azure::Compute::Mgmt::V2016_03_30::Models::InstanceViewStatus
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionHandlerInstanceView
        VaultCertificate = Azure::Compute::Mgmt::V2016_03_30::Models::VaultCertificate
        VaultSecretGroup = Azure::Compute::Mgmt::V2016_03_30::Models::VaultSecretGroup
        VirtualMachineSize = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineSize
        OSProfile = Azure::Compute::Mgmt::V2016_03_30::Models::OSProfile
        InnerError = Azure::Compute::Mgmt::V2016_03_30::Models::InnerError
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionInstanceView
        NetworkProfile = Azure::Compute::Mgmt::V2016_03_30::Models::NetworkProfile
        BootDiagnostics = Azure::Compute::Mgmt::V2016_03_30::Models::BootDiagnostics
        PurchasePlan = Azure::Compute::Mgmt::V2016_03_30::Models::PurchasePlan
        DataDiskImage = Azure::Compute::Mgmt::V2016_03_30::Models::DataDiskImage
        ApiErrorBase = Azure::Compute::Mgmt::V2016_03_30::Models::ApiErrorBase
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineAgentInstanceView
        ListUsagesResult = Azure::Compute::Mgmt::V2016_03_30::Models::ListUsagesResult
        DiskInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::DiskInstanceView
        ApiError = Azure::Compute::Mgmt::V2016_03_30::Models::ApiError
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::BootDiagnosticsInstanceView
        HardwareProfile = Azure::Compute::Mgmt::V2016_03_30::Models::HardwareProfile
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineIdentity
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2016_03_30::Models::KeyVaultSecretReference
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineInstanceView
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2016_03_30::Models::DiskEncryptionSettings
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMListResult
        OSDisk = Azure::Compute::Mgmt::V2016_03_30::Models::OSDisk
        VirtualMachineListResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineListResult
        StorageProfile = Azure::Compute::Mgmt::V2016_03_30::Models::StorageProfile
        WinRMListener = Azure::Compute::Mgmt::V2016_03_30::Models::WinRMListener
        UpgradePolicy = Azure::Compute::Mgmt::V2016_03_30::Models::UpgradePolicy
        WindowsConfiguration = Azure::Compute::Mgmt::V2016_03_30::Models::WindowsConfiguration
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetIdentity
        SshConfiguration = Azure::Compute::Mgmt::V2016_03_30::Models::SshConfiguration
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetOSProfile
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2016_03_30::Models::AvailabilitySetListResult
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetOSDisk
        OperationStatusResponse = Azure::Compute::Mgmt::V2016_03_30::Models::OperationStatusResponse
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetStorageProfile
        VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionsListResult
        ApiEntityReference = Azure::Compute::Mgmt::V2016_03_30::Models::ApiEntityReference
        ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2016_03_30::Models::ComputeLongRunningOperationProperties
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMInstanceView
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineCaptureParameters
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetListSkusResult
        ImageReference = Azure::Compute::Mgmt::V2016_03_30::Models::ImageReference
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetNetworkProfile
        VirtualHardDisk = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualHardDisk
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetSku
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2016_03_30::Models::AdditionalUnattendContent
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetExtensionProfile
        SshPublicKey = Azure::Compute::Mgmt::V2016_03_30::Models::SshPublicKey
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMProfile
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineSizeListResult
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetSkuCapacity
        OSDiskImage = Azure::Compute::Mgmt::V2016_03_30::Models::OSDiskImage
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
        Plan = Azure::Compute::Mgmt::V2016_03_30::Models::Plan
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        DataDisk = Azure::Compute::Mgmt::V2016_03_30::Models::DataDisk
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineStatusCodeCount
        LinuxConfiguration = Azure::Compute::Mgmt::V2016_03_30::Models::LinuxConfiguration
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
        WinRMConfiguration = Azure::Compute::Mgmt::V2016_03_30::Models::WinRMConfiguration
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetInstanceView
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2016_03_30::Models::KeyVaultKeyReference
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetListResult
        UpdateResource = Azure::Compute::Mgmt::V2016_03_30::Models::UpdateResource
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetListWithLinkResult
        AvailabilitySet = Azure::Compute::Mgmt::V2016_03_30::Models::AvailabilitySet
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineImageResource
        VirtualMachineExtension = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtension
        VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionUpdate
        VirtualMachineImage = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineCaptureResult
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2016_03_30::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachine
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetIPConfiguration
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSet
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVM
        StatusLevelTypes = Azure::Compute::Mgmt::V2016_03_30::Models::StatusLevelTypes
        OperatingSystemTypes = Azure::Compute::Mgmt::V2016_03_30::Models::OperatingSystemTypes
        VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineSizeTypes
        CachingTypes = Azure::Compute::Mgmt::V2016_03_30::Models::CachingTypes
        DiskCreateOptionTypes = Azure::Compute::Mgmt::V2016_03_30::Models::DiskCreateOptionTypes
        PassNames = Azure::Compute::Mgmt::V2016_03_30::Models::PassNames
        ComponentNames = Azure::Compute::Mgmt::V2016_03_30::Models::ComponentNames
        SettingNames = Azure::Compute::Mgmt::V2016_03_30::Models::SettingNames
        ProtocolTypes = Azure::Compute::Mgmt::V2016_03_30::Models::ProtocolTypes
        ResourceIdentityType = Azure::Compute::Mgmt::V2016_03_30::Models::ResourceIdentityType
        UpgradeMode = Azure::Compute::Mgmt::V2016_03_30::Models::UpgradeMode
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetSkuScaleType
        InstanceViewTypes = Azure::Compute::Mgmt::V2016_03_30::Models::InstanceViewTypes
      end

      class ComputeManagementClass
        attr_reader :virtual_machines, :virtual_machine_images, :virtual_machine_sizes, :virtual_machine_scale_sets, :virtual_machine_scale_set_vms, :usage_operations, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Compute::Mgmt::V2016_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @virtual_machines = @client_0.virtual_machines
          @virtual_machine_images = @client_0.virtual_machine_images
          @virtual_machine_sizes = @client_0.virtual_machine_sizes
          @virtual_machine_scale_sets = @client_0.virtual_machine_scale_sets
          @virtual_machine_scale_set_vms = @client_0.virtual_machine_scale_set_vms
          @usage_operations = @client_0.usage_operations
          @availability_sets = @client_0.availability_sets
          @virtual_machine_extension_images = @client_0.virtual_machine_extension_images
          @virtual_machine_extensions = @client_0.virtual_machine_extensions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2017_03_09/Compute/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def sku
            Azure::Compute::Mgmt::V2016_03_30::Models::Sku
          end
          def sub_resource
            Azure::Compute::Mgmt::V2016_03_30::Models::SubResource
          end
          def usage_name
            Azure::Compute::Mgmt::V2016_03_30::Models::UsageName
          end
          def usage
            Azure::Compute::Mgmt::V2016_03_30::Models::Usage
          end
          def resource
            Azure::Compute::Mgmt::V2016_03_30::Models::Resource
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::DiagnosticsProfile
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2016_03_30::Models::InstanceViewStatus
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionHandlerInstanceView
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2016_03_30::Models::VaultCertificate
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2016_03_30::Models::VaultSecretGroup
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineSize
          end
          def osprofile
            Azure::Compute::Mgmt::V2016_03_30::Models::OSProfile
          end
          def inner_error
            Azure::Compute::Mgmt::V2016_03_30::Models::InnerError
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionInstanceView
          end
          def network_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::NetworkProfile
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2016_03_30::Models::BootDiagnostics
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2016_03_30::Models::PurchasePlan
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2016_03_30::Models::DataDiskImage
          end
          def api_error_base
            Azure::Compute::Mgmt::V2016_03_30::Models::ApiErrorBase
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineAgentInstanceView
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2016_03_30::Models::ListUsagesResult
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::DiskInstanceView
          end
          def api_error
            Azure::Compute::Mgmt::V2016_03_30::Models::ApiError
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::BootDiagnosticsInstanceView
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::HardwareProfile
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineIdentity
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2016_03_30::Models::KeyVaultSecretReference
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineInstanceView
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2016_03_30::Models::DiskEncryptionSettings
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMListResult
          end
          def osdisk
            Azure::Compute::Mgmt::V2016_03_30::Models::OSDisk
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineListResult
          end
          def storage_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::StorageProfile
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2016_03_30::Models::WinRMListener
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2016_03_30::Models::UpgradePolicy
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2016_03_30::Models::WindowsConfiguration
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetIdentity
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2016_03_30::Models::SshConfiguration
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetOSProfile
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2016_03_30::Models::AvailabilitySetListResult
          end
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetOSDisk
          end
          def operation_status_response
            Azure::Compute::Mgmt::V2016_03_30::Models::OperationStatusResponse
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetStorageProfile
          end
          def virtual_machine_extensions_list_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionsListResult
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2016_03_30::Models::ApiEntityReference
          end
          def compute_long_running_operation_properties
            Azure::Compute::Mgmt::V2016_03_30::Models::ComputeLongRunningOperationProperties
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMInstanceView
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineCaptureParameters
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetListSkusResult
          end
          def image_reference
            Azure::Compute::Mgmt::V2016_03_30::Models::ImageReference
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetNetworkProfile
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualHardDisk
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetSku
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2016_03_30::Models::AdditionalUnattendContent
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetExtensionProfile
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2016_03_30::Models::SshPublicKey
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMProfile
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineSizeListResult
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetSkuCapacity
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2016_03_30::Models::OSDiskImage
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def plan
            Azure::Compute::Mgmt::V2016_03_30::Models::Plan
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def data_disk
            Azure::Compute::Mgmt::V2016_03_30::Models::DataDisk
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineStatusCodeCount
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2016_03_30::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2016_03_30::Models::WinRMConfiguration
          end
          def virtual_machine_scale_set_instance_view
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetInstanceView
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2016_03_30::Models::KeyVaultKeyReference
          end
          def virtual_machine_scale_set_list_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetListResult
          end
          def update_resource
            Azure::Compute::Mgmt::V2016_03_30::Models::UpdateResource
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def availability_set
            Azure::Compute::Mgmt::V2016_03_30::Models::AvailabilitySet
          end
          def virtual_machine_extension_image
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionImage
          end
          def virtual_machine_image_resource
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineImageResource
          end
          def virtual_machine_extension
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtension
          end
          def virtual_machine_extension_update
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineExtensionUpdate
          end
          def virtual_machine_image
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineImage
          end
          def virtual_machine_capture_result
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineCaptureResult
          end
          def network_interface_reference
            Azure::Compute::Mgmt::V2016_03_30::Models::NetworkInterfaceReference
          end
          def virtual_machine
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachine
          end
          def virtual_machine_scale_set_ipconfiguration
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetIPConfiguration
          end
          def virtual_machine_scale_set_network_configuration
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
          end
          def virtual_machine_scale_set_extension
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetExtension
          end
          def virtual_machine_scale_set
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSet
          end
          def virtual_machine_scale_set_vm
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetVM
          end
          def status_level_types
            Azure::Compute::Mgmt::V2016_03_30::Models::StatusLevelTypes
          end
          def operating_system_types
            Azure::Compute::Mgmt::V2016_03_30::Models::OperatingSystemTypes
          end
          def virtual_machine_size_types
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineSizeTypes
          end
          def caching_types
            Azure::Compute::Mgmt::V2016_03_30::Models::CachingTypes
          end
          def disk_create_option_types
            Azure::Compute::Mgmt::V2016_03_30::Models::DiskCreateOptionTypes
          end
          def pass_names
            Azure::Compute::Mgmt::V2016_03_30::Models::PassNames
          end
          def component_names
            Azure::Compute::Mgmt::V2016_03_30::Models::ComponentNames
          end
          def setting_names
            Azure::Compute::Mgmt::V2016_03_30::Models::SettingNames
          end
          def protocol_types
            Azure::Compute::Mgmt::V2016_03_30::Models::ProtocolTypes
          end
          def resource_identity_type
            Azure::Compute::Mgmt::V2016_03_30::Models::ResourceIdentityType
          end
          def upgrade_mode
            Azure::Compute::Mgmt::V2016_03_30::Models::UpgradeMode
          end
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2016_03_30::Models::VirtualMachineScaleSetSkuScaleType
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2016_03_30::Models::InstanceViewTypes
          end
        end
      end
    end
  end
end
