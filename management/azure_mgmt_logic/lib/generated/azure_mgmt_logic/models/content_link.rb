# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The content link.
    #
    class ContentLink

      include MsRestAzure

      # @return [String] The content link URI.
      attr_accessor :uri

      # @return [String] The content version.
      attr_accessor :content_version

      # @return [Integer] The content size.
      attr_accessor :content_size

      # @return [ContentHash] The content hash.
      attr_accessor :content_hash

      # @return The metadata.
      attr_accessor :metadata


      #
      # Mapper for ContentLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContentLink',
          type: {
            name: 'Composite',
            class_name: 'ContentLink',
            model_properties: {
              uri: {
                required: false,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              content_version: {
                required: false,
                serialized_name: 'contentVersion',
                type: {
                  name: 'String'
                }
              },
              content_size: {
                required: false,
                serialized_name: 'contentSize',
                type: {
                  name: 'Number'
                }
              },
              content_hash: {
                required: false,
                serialized_name: 'contentHash',
                type: {
                  name: 'Composite',
                  class_name: 'ContentHash'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'metadata',
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
