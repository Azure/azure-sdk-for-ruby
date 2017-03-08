# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # SKU discovery information.
    #
    class SkuInfo

      include MsRestAzure

      # @return [String] Resource type that this SKU applies to.
      attr_accessor :resource_type

      # @return [SkuDescription] Name and tier of the SKU.
      attr_accessor :sku

      # @return [SkuCapacity] Min, max, and default scale values of the SKU.
      attr_accessor :capacity


      #
      # Mapper for SkuInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SkuInfo',
          type: {
            name: 'Composite',
            class_name: 'SkuInfo',
            model_properties: {
              resource_type: {
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SkuDescription'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'SkuCapacity'
                }
              }
            }
          }
        }
      end
    end
  end
end
