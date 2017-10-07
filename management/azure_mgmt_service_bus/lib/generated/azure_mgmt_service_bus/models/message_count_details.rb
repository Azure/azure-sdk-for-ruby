# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Message Count Details.
    #
    class MessageCountDetails

      include MsRestAzure

      # @return [Integer] Number of active messages in the queue, topic, or
      # subscription.
      attr_accessor :active_message_count

      # @return [Integer] Number of messages that are dead lettered.
      attr_accessor :dead_letter_message_count

      # @return [Integer] Number of scheduled messages.
      attr_accessor :scheduled_message_count

      # @return [Integer] Number of messages transferred to another queue,
      # topic, or subscription.
      attr_accessor :transfer_message_count

      # @return [Integer] Number of messages transferred into dead letters.
      attr_accessor :transfer_dead_letter_message_count


      #
      # Mapper for MessageCountDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MessageCountDetails',
          type: {
            name: 'Composite',
            class_name: 'MessageCountDetails',
            model_properties: {
              active_message_count: {
                required: false,
                read_only: true,
                serialized_name: 'activeMessageCount',
                type: {
                  name: 'Number'
                }
              },
              dead_letter_message_count: {
                required: false,
                read_only: true,
                serialized_name: 'deadLetterMessageCount',
                type: {
                  name: 'Number'
                }
              },
              scheduled_message_count: {
                required: false,
                read_only: true,
                serialized_name: 'scheduledMessageCount',
                type: {
                  name: 'Number'
                }
              },
              transfer_message_count: {
                required: false,
                read_only: true,
                serialized_name: 'transferMessageCount',
                type: {
                  name: 'Number'
                }
              },
              transfer_dead_letter_message_count: {
                required: false,
                read_only: true,
                serialized_name: 'transferDeadLetterMessageCount',
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
