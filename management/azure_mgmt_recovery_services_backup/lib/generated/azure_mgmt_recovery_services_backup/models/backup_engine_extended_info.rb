# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.22.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Additional information on backup engine.
    #
    class BackupEngineExtendedInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Database name of backup engine.
      attr_accessor :database_name

      # @return [Integer] Number of protected items in the backup engine.
      attr_accessor :protected_items_count

      # @return [Integer] Number of protected servers in the backup engine.
      attr_accessor :protected_servers_count

      # @return [Integer] Number of disks in the backup engine.
      attr_accessor :disk_count

      # @return [Float] Diskspace used in the backup engine.
      attr_accessor :used_disk_space

      # @return [Float] Diskspace currently available in the backup engine.
      attr_accessor :available_disk_space

      # @return [DateTime] Last refresh time in the backup engine.
      attr_accessor :refreshed_at

      # @return [Integer] Protected instances in the backup engine.
      attr_accessor :azure_protected_instances


      #
      # Mapper for BackupEngineExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupEngineExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'BackupEngineExtendedInfo',
            model_properties: {
              database_name: {
                required: false,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              protected_items_count: {
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              },
              protected_servers_count: {
                required: false,
                serialized_name: 'protectedServersCount',
                type: {
                  name: 'Number'
                }
              },
              disk_count: {
                required: false,
                serialized_name: 'diskCount',
                type: {
                  name: 'Number'
                }
              },
              used_disk_space: {
                required: false,
                serialized_name: 'usedDiskSpace',
                type: {
                  name: 'Double'
                }
              },
              available_disk_space: {
                required: false,
                serialized_name: 'availableDiskSpace',
                type: {
                  name: 'Double'
                }
              },
              refreshed_at: {
                required: false,
                serialized_name: 'refreshedAt',
                type: {
                  name: 'DateTime'
                }
              },
              azure_protected_instances: {
                required: false,
                serialized_name: 'azureProtectedInstances',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
