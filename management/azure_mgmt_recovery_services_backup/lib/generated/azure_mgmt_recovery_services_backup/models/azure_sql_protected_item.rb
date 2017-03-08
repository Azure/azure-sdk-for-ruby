# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # This is an Azure SQL workload-specific backup item.
    #
    class AzureSqlProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "Microsoft.Sql/servers/databases"
      end

      attr_accessor :protectedItemType

      # @return [String] The internal ID of a backup item. The internal ID is
      # used by the Azure SQL Backup engine to contact Recovery Services.
      attr_accessor :protected_item_data_id

      # @return [ProtectedItemState] The backup state of the backup item.
      # Possible values include: 'Invalid', 'IRPending', 'Protected',
      # 'ProtectionError', 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [AzureSqlProtectedItemExtendedInfo] Additional information for
      # this backup item.
      attr_accessor :extended_info


      #
      # Mapper for AzureSqlProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Sql/servers/databases',
          type: {
            name: 'Composite',
            class_name: 'AzureSqlProtectedItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'Enum',
                  module: 'DataSourceType'
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
              protectedItemType: {
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              protected_item_data_id: {
                required: false,
                serialized_name: 'protectedItemDataId',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'Enum',
                  module: 'ProtectedItemState'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureSqlProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
