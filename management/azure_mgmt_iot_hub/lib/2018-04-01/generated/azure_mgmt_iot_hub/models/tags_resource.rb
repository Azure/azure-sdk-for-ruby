# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_04_01
  module Models
    #
    # A container holding only the Tags for a resource, allowing the user to
    # update the tags on an IoT Hub instance.
    #
    class TagsResource

      include MsRestAzure

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags


      #
      # Mapper for TagsResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagsResource',
          type: {
            name: 'Composite',
            class_name: 'TagsResource',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
