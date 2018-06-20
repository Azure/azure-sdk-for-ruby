# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Additional information on Backup engine specific backup item.
    #
    class DPMProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "DPMProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [String] Friendly name of the managed item
      attr_accessor :friendly_name

      # @return [String] Backup Management server protecting this backup item
      attr_accessor :backup_engine_name

      # @return [ProtectedItemState] Protection state of the backupengine.
      # Possible values include: 'Invalid', 'IRPending', 'Protected',
      # 'ProtectionError', 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [Boolean] To check if backup item is scheduled for deferred
      # delete
      attr_accessor :is_scheduled_for_deferred_delete

      # @return [DPMProtectedItemExtendedInfo] Extended info of the backup
      # item.
      attr_accessor :extended_info


      #
      # Mapper for DPMProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DPMProtectedItem',
          type: {
            name: 'Composite',
            class_name: 'DPMProtectedItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              backup_set_name: {
                required: false,
                serialized_name: 'backupSetName',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                required: false,
                serialized_name: 'createMode',
                type: {
                  name: 'String'
                }
              },
              protectedItemType: {
                required: true,
                serialized_name: 'protectedItemType',
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
              backup_engine_name: {
                required: false,
                serialized_name: 'backupEngineName',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              is_scheduled_for_deferred_delete: {
                required: false,
                serialized_name: 'isScheduledForDeferredDelete',
                type: {
                  name: 'Boolean'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'DPMProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
