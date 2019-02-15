# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisRuntime::V2_0
  module Models
    #
    # Model object.
    #
    #
    class EntityWithResolution < EntityModel

      include MsRestAzure

      # @return Resolution values for pre-built LUIS entities.
      attr_accessor :resolution


      #
      # Mapper for EntityWithResolution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityWithResolution',
          type: {
            name: 'Composite',
            class_name: 'EntityWithResolution',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              entity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entity',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              start_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startIndex',
                type: {
                  name: 'Number'
                }
              },
              end_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endIndex',
                type: {
                  name: 'Number'
                }
              },
              resolution: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resolution',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
