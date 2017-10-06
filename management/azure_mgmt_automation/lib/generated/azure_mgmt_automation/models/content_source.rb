# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the content source.
    #
    class ContentSource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ContentHash] Gets or sets the hash.
      attr_accessor :hash

      # @return [ContentSourceType] Gets or sets the content source type.
      # Possible values include: 'embeddedContent', 'uri'
      attr_accessor :type

      # @return [String] Gets or sets the value of the content. This is based
      # on the content source type.
      attr_accessor :value

      # @return [String] Gets or sets the version of the content.
      attr_accessor :version


      #
      # Mapper for ContentSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContentSource',
          type: {
            name: 'Composite',
            class_name: 'ContentSource',
            model_properties: {
              hash: {
                required: false,
                serialized_name: 'hash',
                type: {
                  name: 'Composite',
                  class_name: 'ContentHash'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
