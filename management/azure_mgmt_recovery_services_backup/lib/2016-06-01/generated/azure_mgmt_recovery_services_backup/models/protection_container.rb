# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # The base class for a container with backup items. Containers with
    # specific workloads are derived from this class.
    #
    class ProtectionContainer

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureSqlContainer"] = "AzureSqlContainer"
      @@discriminatorMap["IaaSVMContainer"] = "IaaSVMContainer"
      @@discriminatorMap["MABWindowsContainer"] = "MabContainer"
      @@discriminatorMap["Microsoft.Compute/virtualMachines"] = "AzureIaaSComputeVMContainer"
      @@discriminatorMap["Microsoft.ClassicCompute/virtualMachines"] = "AzureIaaSClassicComputeVMContainer"

      def initialize
        @protectableObjectType = "ProtectionContainer"
      end

      attr_accessor :protectableObjectType

      # @return [String] Friendly name of the container.
      attr_accessor :friendly_name

      # @return [BackupManagementType] The backup managemenent type for the
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] The container's registration status with the Recovery
      # Services vault.
      attr_accessor :registration_status

      # @return [String] The status of the container's health.
      attr_accessor :health_status

      # @return [String] The type assigned to the container. The values to use
      # for each of these propertes are:<br/> 1. Compute Azure VM is
      # Microsoft.Compute/virtualMachines<br/> 2. Classic Compute Azure VM is
      # Microsoft.ClassicCompute/virtualMachines<br/> 3. Windows machines (like
      # Azure Backup Server and DPM) is Windows<br/> 4. Azure SQL instance is
      # AzureSqlContainer.
      attr_accessor :container_type


      #
      # Mapper for ProtectionContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionContainer',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'protectableObjectType',
            uber_parent: 'ProtectionContainer',
            class_name: 'ProtectionContainer',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                required: false,
                read_only: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
