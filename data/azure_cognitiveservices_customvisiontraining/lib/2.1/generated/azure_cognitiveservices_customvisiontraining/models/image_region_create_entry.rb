# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V2_1
  module Models
    #
    # Model object.
    #
    #
    class ImageRegionCreateEntry

      include MsRestAzure

      # @return
      attr_accessor :image_id

      # @return
      attr_accessor :tag_id

      # @return [Float]
      attr_accessor :left

      # @return [Float]
      attr_accessor :top

      # @return [Float]
      attr_accessor :width

      # @return [Float]
      attr_accessor :height


      #
      # Mapper for ImageRegionCreateEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageRegionCreateEntry',
          type: {
            name: 'Composite',
            class_name: 'ImageRegionCreateEntry',
            model_properties: {
              image_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageId',
                type: {
                  name: 'String'
                }
              },
              tag_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tagId',
                type: {
                  name: 'String'
                }
              },
              left: {
                client_side_validation: true,
                required: false,
                serialized_name: 'left',
                type: {
                  name: 'Double'
                }
              },
              top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'top',
                type: {
                  name: 'Double'
                }
              },
              width: {
                client_side_validation: true,
                required: false,
                serialized_name: 'width',
                type: {
                  name: 'Double'
                }
              },
              height: {
                client_side_validation: true,
                required: false,
                serialized_name: 'height',
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
