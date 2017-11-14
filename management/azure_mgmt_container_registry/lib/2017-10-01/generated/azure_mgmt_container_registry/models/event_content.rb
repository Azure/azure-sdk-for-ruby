# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # The content of the event request message.
    #
    class EventContent

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The event ID.
      attr_accessor :id

      # @return [DateTime] The time at which the event occurred.
      attr_accessor :timestamp

      # @return [String] The action that encompasses the provided event.
      attr_accessor :action

      # @return [Target] The target of the event.
      attr_accessor :target

      # @return [Request] The request that generated the event.
      attr_accessor :request

      # @return [Actor] The agent that initiated the event. For most
      # situations, this could be from the authorization context of the
      # request.
      attr_accessor :actor

      # @return [Source] The registry node that generated the event. Put
      # differently, while the actor initiates the event, the source generates
      # it.
      attr_accessor :source


      #
      # Mapper for EventContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventContent',
          type: {
            name: 'Composite',
            class_name: 'EventContent',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'Composite',
                  class_name: 'Target'
                }
              },
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'Request'
                }
              },
              actor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actor',
                type: {
                  name: 'Composite',
                  class_name: 'Actor'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'Source'
                }
              }
            }
          }
        }
      end
    end
  end
end
