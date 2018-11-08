# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Describes an available Cognitive Services SKU.
    #
    class ResourceSku

      include MsRestAzure

      # @return [String] The type of resource the SKU applies to.
      attr_accessor :resource_type

      # @return [String] The name of SKU.
      attr_accessor :name

      # @return [String] Specifies the tier of Cognitive Services account.
      attr_accessor :tier

      # @return [String] The Kind of resources that are supported in this SKU.
      attr_accessor :kind

      # @return [Array<String>] The set of locations that the SKU is available.
      attr_accessor :locations

      # @return [Array<ResourceSkuRestrictions>] The restrictions because of
      # which SKU cannot be used. This is empty if there are no restrictions.
      attr_accessor :restrictions


      #
      # Mapper for ResourceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSku',
          type: {
            name: 'Composite',
            class_name: 'ResourceSku',
            model_properties: {
              resource_type: {
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                read_only: true,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              locations: {
                required: false,
                read_only: true,
                serialized_name: 'locations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              restrictions: {
                required: false,
                read_only: true,
                serialized_name: 'restrictions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceSkuRestrictionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceSkuRestrictions'
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
