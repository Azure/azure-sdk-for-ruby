# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # settings for compression.
    #
    class CompressionSettings

      include MsRestAzure

      # @return [Array<String>] List of content types on which compression
      # applies. The value should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether content compression is enabled on
      # AzureFrontDoor. Default value is false. If compression is enabled,
      # content will be served as compressed if user requests for a compressed
      # version. Content won't be compressed on AzureFrontDoor when requested
      # content is smaller than 1 byte or larger than 1 MB.
      attr_accessor :is_compression_enabled


      #
      # Mapper for CompressionSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CompressionSettings',
          type: {
            name: 'Composite',
            class_name: 'CompressionSettings',
            model_properties: {
              content_types_to_compress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentTypesToCompress',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_compression_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
