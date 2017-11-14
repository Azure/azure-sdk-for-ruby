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
    # Additional information for the container.
    #
    class MabContainerExtendedInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The time stamp when this container was refreshed.
      attr_accessor :last_refreshed_at

      # @return [BackupItemType] The type of backup items associated with this
      # container. Possible values include: 'Invalid', 'VM', 'FileFolder',
      # 'AzureSqlDb', 'SQLDB', 'Exchange', 'Sharepoint', 'DPMUnknown'
      attr_accessor :backup_item_type

      # @return [Array<String>] The list of backup items associated with this
      # container.
      attr_accessor :backup_items

      # @return [String] The backup policy associated with this container.
      attr_accessor :policy_name

      # @return [String] The latest backup status of this container.
      attr_accessor :last_backup_status


      #
      # Mapper for MabContainerExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MabContainerExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'MabContainerExtendedInfo',
            model_properties: {
              last_refreshed_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRefreshedAt',
                type: {
                  name: 'DateTime'
                }
              },
              backup_item_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupItemType',
                type: {
                  name: 'Enum',
                  module: 'BackupItemType'
                }
              },
              backup_items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupItems',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyName',
                type: {
                  name: 'String'
                }
              },
              last_backup_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupStatus',
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
