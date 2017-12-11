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
    # The base class for backup item. Workload-specific backup items are
    # derived from this class.
    #
    class WorkloadProtectableItem

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["IaaSVMProtectableItem"] = "IaaSVMProtectableItem"
      @@discriminatorMap["Microsoft.Compute/virtualMachines"] = "AzureIaaSComputeVMProtectableItem"
      @@discriminatorMap["Microsoft.ClassicCompute/virtualMachines"] = "AzureIaaSClassicComputeVMProtectableItem"

      def initialize
        @protectableItemType = "WorkloadProtectableItem"
      end

      attr_accessor :protectableItemType

      # @return [String] The backup managemenent type.
      attr_accessor :backup_management_type

      # @return [String] The friendly name of the backup item.
      attr_accessor :friendly_name

      # @return [ProtectionStatus] The state of the back up item. Possible
      # values include: 'Invalid', 'NotProtected', 'Protecting', 'Protected'
      attr_accessor :protection_state


      #
      # Mapper for WorkloadProtectableItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkloadProtectableItem',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'protectableItemType',
            uber_parent: 'WorkloadProtectableItem',
            class_name: 'WorkloadProtectableItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'Enum',
                  module: 'ProtectionStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
