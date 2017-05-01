# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # The properties of the EventHubConsumerGroupInfo object.
    #
    class EventHubConsumerGroupInfo

      include MsRestAzure

      # @return [Hash{String => String}] The tags.
      attr_accessor :tags

      # @return [String] The Event Hub-compatible consumer group identifier.
      attr_accessor :id

      # @return [String] The Event Hub-compatible consumer group name.
      attr_accessor :name


      #
      # Mapper for EventHubConsumerGroupInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventHubConsumerGroupInfo',
          type: {
            name: 'Composite',
            class_name: 'EventHubConsumerGroupInfo',
            model_properties: {
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
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
