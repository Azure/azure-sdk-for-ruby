# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # An Azure SQL job agent.
    #
    class JobAgent < TrackedResource

      include MsRestAzure

      # @return [Sku] The name and tier of the SKU.
      attr_accessor :sku

      # @return [String] Resource ID of the database to store job metadata in.
      attr_accessor :database_id

      # @return [JobAgentState] The state of the job agent. Possible values
      # include: 'Creating', 'Ready', 'Updating', 'Deleting', 'Disabled'
      attr_accessor :state


      #
      # Mapper for JobAgent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobAgent',
          type: {
            name: 'Composite',
            class_name: 'JobAgent',
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
                required: true,
                serialized_name: 'location',
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              database_id: {
                required: true,
                serialized_name: 'properties.databaseId',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
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