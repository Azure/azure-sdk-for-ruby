# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # A long term retention backup.
    #
    class LongTermRetentionBackup < ProxyResource

      include MsRestAzure

      # @return [String] The server name that the backup database belong to.
      attr_accessor :server_name

      # @return [DateTime] The create time of the server.
      attr_accessor :server_create_time

      # @return [String] The name of the database the backup belong to
      attr_accessor :database_name

      # @return [DateTime] The delete time of the database
      attr_accessor :database_deletion_time

      # @return [DateTime] The time the backup was taken
      attr_accessor :backup_time

      # @return [DateTime] The time the long term retention backup will expire.
      attr_accessor :backup_expiration_time


      #
      # Mapper for LongTermRetentionBackup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LongTermRetentionBackup',
          type: {
            name: 'Composite',
            class_name: 'LongTermRetentionBackup',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serverName',
                type: {
                  name: 'String'
                }
              },
              server_create_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serverCreateTime',
                type: {
                  name: 'DateTime'
                }
              },
              database_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              database_deletion_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseDeletionTime',
                type: {
                  name: 'DateTime'
                }
              },
              backup_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.backupTime',
                type: {
                  name: 'DateTime'
                }
              },
              backup_expiration_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.backupExpirationTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
