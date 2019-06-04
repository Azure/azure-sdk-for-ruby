# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EngagementFabric::Mgmt::V2018_09_01_preview
  module Models
    #
    # The list of the EngagementFabric SKU descriptions
    #
    class SkuDescriptionList

      include MsRestAzure

      # @return [Array<SkuDescription>] SKU descriptions
      attr_accessor :value


      #
      # Mapper for SkuDescriptionList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SkuDescriptionList',
          type: {
            name: 'Composite',
            class_name: 'SkuDescriptionList',
            model_properties: {
              value: {
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SkuDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuDescription'
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
