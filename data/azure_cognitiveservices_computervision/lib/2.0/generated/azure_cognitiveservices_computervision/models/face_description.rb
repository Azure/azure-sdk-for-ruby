# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_0
  module Models
    #
    # An object describing a face identified in the image.
    #
    class FaceDescription

      include MsRestAzure

      # @return [Integer] Possible age of the face.
      attr_accessor :age

      # @return [Gender] Possible gender of the face. Possible values include:
      # 'Male', 'Female'
      attr_accessor :gender

      # @return [FaceRectangle] Rectangle in the image containing the
      # identified face.
      attr_accessor :face_rectangle


      #
      # Mapper for FaceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FaceDescription',
          type: {
            name: 'Composite',
            class_name: 'FaceDescription',
            model_properties: {
              age: {
                required: false,
                serialized_name: 'age',
                type: {
                  name: 'Number'
                }
              },
              gender: {
                required: false,
                serialized_name: 'gender',
                type: {
                  name: 'Enum',
                  module: 'Gender'
                }
              },
              face_rectangle: {
                required: false,
                serialized_name: 'faceRectangle',
                type: {
                  name: 'Composite',
                  class_name: 'FaceRectangle'
                }
              }
            }
          }
        }
      end
    end
  end
end
