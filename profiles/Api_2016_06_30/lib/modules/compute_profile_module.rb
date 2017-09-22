# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure
  module Profiles
    module Management
      module Compute
        VirtualMachines = Azure::ARM::Compute::Api_2016_03_30::VirtualMachines
        AvailabilitySets = Azure::ARM::Compute::Api_2016_03_30::AvailabilitySets

        module Models
          DiagnosticsProfile = Azure::ARM::Compute::Api_2016_03_30::Models::DiagnosticsProfile
          VirtualMachineExtensionHandlerInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineExtensionHandlerInstanceView
          VirtualMachineAgentInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineAgentInstanceView
          AvailabilitySetListResult = Azure::ARM::Compute::Api_2016_03_30::Models::AvailabilitySetListResult
          DiskInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::DiskInstanceView
          VirtualMachineSizeListResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineSizeListResult
          BootDiagnosticsInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::BootDiagnosticsInstanceView
          BootDiagnostics = Azure::ARM::Compute::Api_2016_03_30::Models::BootDiagnostics
          VirtualMachineExtensionInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineExtensionInstanceView
          InstanceViewStatus = Azure::ARM::Compute::Api_2016_03_30::Models::InstanceViewStatus
          PurchasePlan = Azure::ARM::Compute::Api_2016_03_30::Models::PurchasePlan
          OSDiskImage = Azure::ARM::Compute::Api_2016_03_30::Models::OSDiskImage
          DataDiskImage = Azure::ARM::Compute::Api_2016_03_30::Models::DataDiskImage
          VirtualMachineScaleSetSku = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetSku
          UsageName = Azure::ARM::Compute::Api_2016_03_30::Models::UsageName
          VirtualMachineSize = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineSize
          ListUsagesResult = Azure::ARM::Compute::Api_2016_03_30::Models::ListUsagesResult
          VirtualMachineScaleSetSkuCapacity = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetSkuCapacity
          ApiError = Azure::ARM::Compute::Api_2016_03_30::Models::ApiError
          HardwareProfile = Azure::ARM::Compute::Api_2016_03_30::Models::HardwareProfile
          VirtualMachineIdentity = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineIdentity
          KeyVaultSecretReference = Azure::ARM::Compute::Api_2016_03_30::Models::KeyVaultSecretReference
          VirtualMachineInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineInstanceView
          DiskEncryptionSettings = Azure::ARM::Compute::Api_2016_03_30::Models::DiskEncryptionSettings
          InnerError = Azure::ARM::Compute::Api_2016_03_30::Models::InnerError
          OSDisk = Azure::ARM::Compute::Api_2016_03_30::Models::OSDisk
          VirtualMachineListResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineListResult
          StorageProfile = Azure::ARM::Compute::Api_2016_03_30::Models::StorageProfile
          Sku = Azure::ARM::Compute::Api_2016_03_30::Models::Sku
          WinRMListener = Azure::ARM::Compute::Api_2016_03_30::Models::WinRMListener
          UpgradePolicy = Azure::ARM::Compute::Api_2016_03_30::Models::UpgradePolicy
          WindowsConfiguration = Azure::ARM::Compute::Api_2016_03_30::Models::WindowsConfiguration
          VirtualMachineScaleSetIdentity = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetIdentity
          SshConfiguration = Azure::ARM::Compute::Api_2016_03_30::Models::SshConfiguration
          VirtualMachineScaleSetOSProfile = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetOSProfile
          VaultCertificate = Azure::ARM::Compute::Api_2016_03_30::Models::VaultCertificate
          VirtualMachineScaleSetOSDisk = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetOSDisk
          OSProfile = Azure::ARM::Compute::Api_2016_03_30::Models::OSProfile
          VirtualMachineScaleSetStorageProfile = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetStorageProfile
          NetworkProfile = Azure::ARM::Compute::Api_2016_03_30::Models::NetworkProfile
          ApiEntityReference = Azure::ARM::Compute::Api_2016_03_30::Models::ApiEntityReference
          OperationStatusResponse = Azure::ARM::Compute::Api_2016_03_30::Models::OperationStatusResponse
          ApiErrorBase = Azure::ARM::Compute::Api_2016_03_30::Models::ApiErrorBase
          VirtualMachineCaptureParameters = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineCaptureParameters
          VirtualMachineScaleSetVMListResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVMListResult
          ImageReference = Azure::ARM::Compute::Api_2016_03_30::Models::ImageReference
          VirtualMachineScaleSetNetworkProfile = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetNetworkProfile
          VirtualHardDisk = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualHardDisk
          VirtualMachineScaleSetVMInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVMInstanceView
          AdditionalUnattendContent = Azure::ARM::Compute::Api_2016_03_30::Models::AdditionalUnattendContent
          VirtualMachineScaleSetExtensionProfile = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetExtensionProfile
          SshPublicKey = Azure::ARM::Compute::Api_2016_03_30::Models::SshPublicKey
          VirtualMachineScaleSetVMProfile = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVMProfile
          VaultSecretGroup = Azure::ARM::Compute::Api_2016_03_30::Models::VaultSecretGroup
          VirtualMachineScaleSetListSkusResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetListSkusResult
          VirtualMachineScaleSetVMInstanceIDs = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVMInstanceIDs
          Plan = Azure::ARM::Compute::Api_2016_03_30::Models::Plan
          VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          DataDisk = Azure::ARM::Compute::Api_2016_03_30::Models::DataDisk
          VirtualMachineStatusCodeCount = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineStatusCodeCount
          LinuxConfiguration = Azure::ARM::Compute::Api_2016_03_30::Models::LinuxConfiguration
          VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          Usage = Azure::ARM::Compute::Api_2016_03_30::Models::Usage
          VirtualMachineScaleSetVMExtensionsSummary = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVMExtensionsSummary
          WinRMConfiguration = Azure::ARM::Compute::Api_2016_03_30::Models::WinRMConfiguration
          VirtualMachineScaleSetInstanceView = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetInstanceView
          KeyVaultKeyReference = Azure::ARM::Compute::Api_2016_03_30::Models::KeyVaultKeyReference
          VirtualMachineScaleSetListResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetListResult
          ComputeLongRunningOperationProperties = Azure::ARM::Compute::Api_2016_03_30::Models::ComputeLongRunningOperationProperties
          VirtualMachineScaleSetListWithLinkResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetListWithLinkResult
          AvailabilitySet = Azure::ARM::Compute::Api_2016_03_30::Models::AvailabilitySet
          VirtualMachineExtensionImage = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineExtensionImage
          VirtualMachineImageResource = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineImageResource
          VirtualMachineExtension = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineExtension
          VirtualMachineImage = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineImage
          VirtualMachineCaptureResult = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineCaptureResult
          NetworkInterfaceReference = Azure::ARM::Compute::Api_2016_03_30::Models::NetworkInterfaceReference
          VirtualMachine = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachine
          VirtualMachineScaleSetIPConfiguration = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetIPConfiguration
          VirtualMachineScaleSetNetworkConfiguration = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetNetworkConfiguration
          VirtualMachineScaleSetExtension = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetExtension
          VirtualMachineScaleSet = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSet
          VirtualMachineScaleSetVM = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetVM
          StatusLevelTypes = Azure::ARM::Compute::Api_2016_03_30::Models::StatusLevelTypes
          OperatingSystemTypes = Azure::ARM::Compute::Api_2016_03_30::Models::OperatingSystemTypes
          VirtualMachineSizeTypes = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineSizeTypes
          CachingTypes = Azure::ARM::Compute::Api_2016_03_30::Models::CachingTypes
          DiskCreateOptionTypes = Azure::ARM::Compute::Api_2016_03_30::Models::DiskCreateOptionTypes
          PassNames = Azure::ARM::Compute::Api_2016_03_30::Models::PassNames
          ComponentNames = Azure::ARM::Compute::Api_2016_03_30::Models::ComponentNames
          SettingNames = Azure::ARM::Compute::Api_2016_03_30::Models::SettingNames
          ProtocolTypes = Azure::ARM::Compute::Api_2016_03_30::Models::ProtocolTypes
          ResourceIdentityType = Azure::ARM::Compute::Api_2016_03_30::Models::ResourceIdentityType
          UpgradeMode = Azure::ARM::Compute::Api_2016_03_30::Models::UpgradeMode
          VirtualMachineScaleSetSkuScaleType = Azure::ARM::Compute::Api_2016_03_30::Models::VirtualMachineScaleSetSkuScaleType
          InstanceViewTypes = Azure::ARM::Compute::Api_2016_03_30::Models::InstanceViewTypes
        end

        #
        # Compute
        #
        class Compute
          attr_accessor :virtual_machines, :availability_sets, :configurable, :base_url, :options

          def initialize(configurable, base_url, options)
            @configurable, @base_url, @options = configurable, base_url, options
            client = Azure::ARM::Compute::Api_2016_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
            client.subscription_id = configurable.subscription_id
            self.virtual_machines = Azure::ARM::Compute::Api_2016_03_30::VirtualMachines.new(client)
            self.availability_sets = Azure::ARM::Compute::Api_2016_03_30::AvailabilitySets.new(client)
          end

          def get_client(version)
            case version
              when '2016-03-30'
                client = Azure::ARM::Compute::Api_2016_03_30::ComputeManagementClient.new(@configurable.credentials, @base_url, @options)
                client.subscription_id = configurable.subscription_id
                return client
              else
                raise "No client of version #{version} could be found in this profile."
            end
          end

        end
      end
    end
  end
end
