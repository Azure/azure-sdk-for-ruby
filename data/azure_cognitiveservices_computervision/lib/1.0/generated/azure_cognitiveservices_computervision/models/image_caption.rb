# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V1_0
  module Models
    #
    # An image caption, i.e. a brief description of what the image depicts.
    #
    class ImageCaption

      include MsRestAzure

      # @return [String] The text of the caption
      attr_accessor :text

      # @return [Float] The level of confidence the service has in the caption
      attr_accessor :confidence


      #
      # Mapper for ImageCaption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageCaption',
          type: {
            name: 'Composite',
            class_name: 'ImageCaption',
            model_properties: {
              text: {
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              confidence: {
                required: false,
                serialized_name: 'confidence',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
