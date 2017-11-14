# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Description of a SKU for a scalable resource.
    #
    class SkuDescription

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the resource SKU.
      attr_accessor :name

      # @return [String] Service tier of the resource SKU.
      attr_accessor :tier

      # @return [String] Size specifier of the resource SKU.
      attr_accessor :size

      # @return [String] Family code of the resource SKU.
      attr_accessor :family

      # @return [Integer] Current number of instances assigned to the resource.
      attr_accessor :capacity

      # @return [SkuCapacity] Min, max, and default scale values of the SKU.
      attr_accessor :sku_capacity

      # @return [Array<String>] Locations of the SKU.
      attr_accessor :locations

      # @return [Array<Capability>] Capabilities of the SKU, e.g., is traffic
      # manager enabled?
      attr_accessor :capabilities


      #
      # Mapper for SkuDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuDescription',
          type: {
            name: 'Composite',
            class_name: 'SkuDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                client_side_validation: true,
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              },
              sku_capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skuCapacity',
                type: {
                  name: 'Composite',
                  class_name: 'SkuCapacity'
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locations',
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
              capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Capability'
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
