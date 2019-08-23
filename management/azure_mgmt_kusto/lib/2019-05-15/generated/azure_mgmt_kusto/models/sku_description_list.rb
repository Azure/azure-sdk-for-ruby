# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_05_15
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
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuDescriptionList',
          type: {
            name: 'Composite',
            class_name: 'SkuDescriptionList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
