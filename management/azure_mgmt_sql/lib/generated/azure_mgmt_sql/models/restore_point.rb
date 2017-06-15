# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents a database restore point.
    #
    class RestorePoint < ProxyResource

      include MsRestAzure

      # @return [RestorePointTypes] The restore point type of the database
      # restore point. Possible values include: 'DISCRETE', 'CONTINUOUS'
      attr_accessor :restore_point_type

      # @return [DateTime] Restore point creation time (ISO8601 format).
      # Populated when restorePointType = CONTINUOUS. Null otherwise.
      attr_accessor :restore_point_creation_date

      # @return [DateTime] Earliest restore time (ISO8601 format). Populated
      # when restorePointType = DISCRETE. Null otherwise.
      attr_accessor :earliest_restore_date


      #
      # Mapper for RestorePoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RestorePoint',
          type: {
            name: 'Composite',
            class_name: 'RestorePoint',
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
              restore_point_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.restorePointType',
                type: {
                  name: 'Enum',
                  module: 'RestorePointTypes'
                }
              },
              restore_point_creation_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.restorePointCreationDate',
                type: {
                  name: 'DateTime'
                }
              },
              earliest_restore_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.earliestRestoreDate',
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
