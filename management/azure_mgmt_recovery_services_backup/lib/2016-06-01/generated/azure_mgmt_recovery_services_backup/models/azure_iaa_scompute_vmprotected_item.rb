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
    # IaaS VM workload-specific backup item representing the Resource Manager
    # VM.
    #
    class AzureIaaSComputeVMProtectedItem < AzureIaaSVMProtectedItem

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @protectedItemType = "Microsoft.Compute/virtualMachines"
      end

      attr_accessor :protectedItemType


      #
      # Mapper for AzureIaaSComputeVMProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Compute/virtualMachines',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSComputeVMProtectedItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'Enum',
                  module: 'DataSourceType'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              protectedItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineId',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'Enum',
                  module: 'ProtectionState'
                }
              },
              last_backup_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              last_backup_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureIaaSVMProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
