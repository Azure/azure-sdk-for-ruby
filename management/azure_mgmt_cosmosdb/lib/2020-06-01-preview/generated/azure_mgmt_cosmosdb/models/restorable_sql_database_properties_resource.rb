# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class RestorableSqlDatabasePropertiesResource

      include MsRestAzure

      # @return [String] A system generated property. A unique identifier.
      attr_accessor :_rid

      # @return [OperationType] The operation type of this database event.
      # Possible values include: 'Create', 'Replace', 'Delete',
      # 'SystemOperation'
      attr_accessor :operation_type

      # @return [String] The timestamp of this database event.
      attr_accessor :event_timestamp

      # @return [String] The name of this restorable SQL database.
      attr_accessor :owner_id

      # @return [String] The resource Id of this restorable SQL database.
      attr_accessor :owner_resource_id

      # @return [RestorableSqlDatabasePropertiesResourceDatabase]
      attr_accessor :database


      #
      # Mapper for RestorableSqlDatabasePropertiesResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorableSqlDatabaseProperties_resource',
          type: {
            name: 'Composite',
            class_name: 'RestorableSqlDatabasePropertiesResource',
            model_properties: {
              _rid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_rid',
                type: {
                  name: 'String'
                }
              },
              operation_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'operationType',
                type: {
                  name: 'String'
                }
              },
              event_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'eventTimestamp',
                type: {
                  name: 'String'
                }
              },
              owner_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ownerId',
                type: {
                  name: 'String'
                }
              },
              owner_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ownerResourceId',
                type: {
                  name: 'String'
                }
              },
              database: {
                client_side_validation: true,
                required: false,
                serialized_name: 'database',
                type: {
                  name: 'Composite',
                  class_name: 'RestorableSqlDatabasePropertiesResourceDatabase'
                }
              }
            }
          }
        }
      end
    end
  end
end
