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
    # The backup engine type when Azure Backup Server is used to manage the
    # backups.
    #
    class AzureBackupServerEngine < BackupEngineBase

      include MsRestAzure


      def initialize
        @backupEngineType = "AzureBackupServerEngine"
      end

      attr_accessor :backupEngineType


      #
      # Mapper for AzureBackupServerEngine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureBackupServerEngine',
          type: {
            name: 'Composite',
            class_name: 'AzureBackupServerEngine',
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
              can_re_register: {
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              backup_engine_id: {
                required: false,
                serialized_name: 'backupEngineId',
                type: {
                  name: 'String'
                }
              },
              backupEngineType: {
                required: true,
                serialized_name: 'backupEngineType',
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
