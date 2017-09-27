# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The Resource model definition.
    #
    class ResourceUpdate

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [DiskSku]
      attr_accessor :sku


      #
      # Mapper for ResourceUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceUpdate',
          type: {
            name: 'Composite',
            class_name: 'ResourceUpdate',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'DiskSku'
                }
              }
            }
          }
        }
      end
    end
  end
end
