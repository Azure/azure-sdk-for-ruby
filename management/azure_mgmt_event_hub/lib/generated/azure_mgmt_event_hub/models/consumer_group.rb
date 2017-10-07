# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # Single item in List or Get Consumer group operation
    #
    class ConsumerGroup < Resource

      include MsRestAzure

      # @return [DateTime] Exact time the message was created.
      attr_accessor :created_at

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at

      # @return [String] Usermetadata is a placeholder to store user-defined
      # string data with maximum length 1024. e.g. it can be used to store
      # descriptive data, such as list of teams and their contact information
      # also user-defined configuration settings can be stored.
      attr_accessor :user_metadata


      #
      # Mapper for ConsumerGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConsumerGroup',
          type: {
            name: 'Composite',
            class_name: 'ConsumerGroup',
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
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              user_metadata: {
                required: false,
                serialized_name: 'properties.userMetadata',
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
