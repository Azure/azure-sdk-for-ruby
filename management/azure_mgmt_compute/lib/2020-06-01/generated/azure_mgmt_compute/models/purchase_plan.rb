# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # Used for establishing the purchase context of any 3rd Party artifact
    # through MarketPlace.
    #
    class PurchasePlan

      include MsRestAzure

      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] The plan ID.
      attr_accessor :name

      # @return [String] Specifies the product of the image from the
      # marketplace. This is the same value as Offer under the imageReference
      # element.
      attr_accessor :product


      #
      # Mapper for PurchasePlan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PurchasePlan',
          type: {
            name: 'Composite',
            class_name: 'PurchasePlan',
            model_properties: {
              publisher: {
                client_side_validation: true,
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: true,
                serialized_name: 'product',
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
