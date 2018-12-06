# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisionprediction::V2_0
  module Models
    #
    # Model object.
    #
    #
    class ImagePrediction

      include MsRestAzure

      # @return
      attr_accessor :id

      # @return
      attr_accessor :project

      # @return
      attr_accessor :iteration

      # @return [DateTime]
      attr_accessor :created

      # @return [Array<Prediction>]
      attr_accessor :predictions


      #
      # Mapper for ImagePrediction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImagePrediction',
          type: {
            name: 'Composite',
            class_name: 'ImagePrediction',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              project: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'project',
                type: {
                  name: 'String'
                }
              },
              iteration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'iteration',
                type: {
                  name: 'String'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'DateTime'
                }
              },
              predictions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'predictions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PredictionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Prediction'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
