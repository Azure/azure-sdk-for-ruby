# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V2_2
  module Models
    #
    # Model object.
    #
    #
    class RegionProposal

      include MsRestAzure

      # @return [Float]
      attr_accessor :confidence

      # @return [BoundingBox]
      attr_accessor :bounding_box


      #
      # Mapper for RegionProposal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegionProposal',
          type: {
            name: 'Composite',
            class_name: 'RegionProposal',
            model_properties: {
              confidence: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'confidence',
                type: {
                  name: 'Double'
                }
              },
              bounding_box: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'boundingBox',
                type: {
                  name: 'Composite',
                  class_name: 'BoundingBox'
                }
              }
            }
          }
        }
      end
    end
  end
end
