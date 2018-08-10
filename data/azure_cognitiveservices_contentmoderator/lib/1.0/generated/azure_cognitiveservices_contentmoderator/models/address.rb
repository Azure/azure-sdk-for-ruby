# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Address details.
    #
    class Address

      include MsRestAzure

      # @return [String] Detected Address.
      attr_accessor :text

      # @return [Integer] Index(Location) of the Address in the input text
      # content.
      attr_accessor :index


      #
      # Mapper for Address class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Address',
          type: {
            name: 'Composite',
            class_name: 'Address',
            model_properties: {
              text: {
                required: false,
                serialized_name: 'Text',
                type: {
                  name: 'String'
                }
              },
              index: {
                required: false,
                serialized_name: 'Index',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
