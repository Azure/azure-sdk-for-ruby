# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # A backup long term retention policy
    #
    class BackupLongTermRetentionPolicy < ProxyResource

      include MsRestAzure

      # @return [String] The geo-location where the resource lives
      attr_accessor :location

      # @return [BackupLongTermRetentionPolicyState] The status of the backup
      # long term retention policy. Possible values include: 'Disabled',
      # 'Enabled'
      attr_accessor :state

      # @return [String] The azure recovery services backup protection policy
      # resource id
      attr_accessor :recovery_services_backup_policy_resource_id


      #
      # Mapper for BackupLongTermRetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupLongTermRetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'BackupLongTermRetentionPolicy',
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
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'BackupLongTermRetentionPolicyState'
                }
              },
              recovery_services_backup_policy_resource_id: {
                required: true,
                serialized_name: 'properties.recoveryServicesBackupPolicyResourceId',
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
