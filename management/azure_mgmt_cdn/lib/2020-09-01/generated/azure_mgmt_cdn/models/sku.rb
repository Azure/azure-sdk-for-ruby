# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # The pricing tier (defines a CDN provider, feature list and rate) of the
    # CDN profile.
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] Name of the pricing tier. Possible values include:
      # 'Standard_Verizon', 'Premium_Verizon', 'Custom_Verizon',
      # 'Standard_Akamai', 'Standard_ChinaCdn', 'Standard_Microsoft',
      # 'Premium_ChinaCdn', 'Standard_AzureFrontDoor',
      # 'Premium_AzureFrontDoor', 'Standard_955BandWidth_ChinaCdn',
      # 'Standard_AvgBandWidth_ChinaCdn', 'StandardPlus_ChinaCdn',
      # 'StandardPlus_955BandWidth_ChinaCdn',
      # 'StandardPlus_AvgBandWidth_ChinaCdn'
      attr_accessor :name


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
