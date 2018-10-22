# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V1_0
  module Models
    #
    # The results of a image tag operation, including any tags and image
    # metadata.
    #
    class TagResult

      include MsRestAzure

      # @return [Array<ImageTag>] A list of tags with confidence level.
      attr_accessor :tags

      # @return [String] Id of the REST API request.
      attr_accessor :request_id

      # @return [ImageMetadata]
      attr_accessor :metadata


      #
      # Mapper for TagResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagResult',
          type: {
            name: 'Composite',
            class_name: 'TagResult',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageTagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageTag'
                      }
                  }
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'ImageMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end
