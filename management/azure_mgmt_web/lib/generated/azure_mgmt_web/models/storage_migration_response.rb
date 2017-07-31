# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Response for a migration of app content request.
    #
    class StorageMigrationResponse < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] When server starts the migration process, it will
      # return an operation ID identifying that particular migration operation.
      attr_accessor :operation_id


      #
      # Mapper for StorageMigrationResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageMigrationResponse',
          type: {
            name: 'Composite',
            class_name: 'StorageMigrationResponse',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              operation_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operationId',
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
