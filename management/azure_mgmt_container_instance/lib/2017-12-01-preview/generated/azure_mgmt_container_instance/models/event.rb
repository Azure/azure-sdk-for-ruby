# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2017_12_01_preview
  module Models
    #
    # A container group or container instance event.
    #
    class Event

      include MsRestAzure

      # @return [Integer] The count of the event.
      attr_accessor :count

      # @return [DateTime] The date-time of the earliest logged event.
      attr_accessor :first_timestamp

      # @return [DateTime] The date-time of the latest logged event.
      attr_accessor :last_timestamp

      # @return [String] The event name.
      attr_accessor :name

      # @return [String] The event message.
      attr_accessor :message

      # @return [String] The event type.
      attr_accessor :type


      #
      # Mapper for Event class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Event',
          type: {
            name: 'Composite',
            class_name: 'Event',
            model_properties: {
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              first_timestamp: {
                required: false,
                serialized_name: 'firstTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              last_timestamp: {
                required: false,
                serialized_name: 'lastTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
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
