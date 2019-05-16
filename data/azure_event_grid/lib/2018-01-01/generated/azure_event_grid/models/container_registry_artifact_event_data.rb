# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # The content of the event request message.
    #
    class ContainerRegistryArtifactEventData

      include MsRestAzure

      # @return [String] The event ID.
      attr_accessor :id

      # @return [DateTime] The time at which the event occurred.
      attr_accessor :timestamp

      # @return [String] The action that encompasses the provided event.
      attr_accessor :action

      # @return [ContainerRegistryArtifactEventTarget] The target of the event.
      attr_accessor :target


      #
      # Mapper for ContainerRegistryArtifactEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerRegistryArtifactEventData',
          type: {
            name: 'Composite',
            class_name: 'ContainerRegistryArtifactEventData',
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
                  class_name: 'ContainerRegistryArtifactEventTarget'
                }
              }
            }
          }
        }
      end
    end
  end
end