# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.ServiceBus.DeadletterMessagesAvailableWithNoListenersEvent
    # event.
    #
    class ServiceBusDeadletterMessagesAvailableWithNoListenersEventData

      include MsRestAzure

      # @return [String] The namespace name of the Microsoft.ServiceBus
      # resource.
      attr_accessor :namespace_name

      # @return [String] The endpoint of the Microsoft.ServiceBus resource.
      attr_accessor :request_uri

      # @return [String] The entity type of the Microsoft.ServiceBus resource.
      # Could be one of 'queue' or 'subscriber'.
      attr_accessor :entity_type

      # @return [String] The name of the Microsoft.ServiceBus queue. If the
      # entity type is of type 'subscriber', then this value will be null.
      attr_accessor :queue_name

      # @return [String] The name of the Microsoft.ServiceBus topic. If the
      # entity type is of type 'queue', then this value will be null.
      attr_accessor :topic_name

      # @return [String] The name of the Microsoft.ServiceBus topic's
      # subscription. If the entity type is of type 'queue', then this value
      # will be null.
      attr_accessor :subscription_name


      #
      # Mapper for
      # ServiceBusDeadletterMessagesAvailableWithNoListenersEventData class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceBusDeadletterMessagesAvailableWithNoListenersEventData',
          type: {
            name: 'Composite',
            class_name: 'ServiceBusDeadletterMessagesAvailableWithNoListenersEventData',
            model_properties: {
              namespace_name: {
                required: false,
                serialized_name: 'namespaceName',
                type: {
                  name: 'String'
                }
              },
              request_uri: {
                required: false,
                serialized_name: 'requestUri',
                type: {
                  name: 'String'
                }
              },
              entity_type: {
                required: false,
                serialized_name: 'entityType',
                type: {
                  name: 'String'
                }
              },
              queue_name: {
                required: false,
                serialized_name: 'queueName',
                type: {
                  name: 'String'
                }
              },
              topic_name: {
                required: false,
                serialized_name: 'topicName',
                type: {
                  name: 'String'
                }
              },
              subscription_name: {
                required: false,
                serialized_name: 'subscriptionName',
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
