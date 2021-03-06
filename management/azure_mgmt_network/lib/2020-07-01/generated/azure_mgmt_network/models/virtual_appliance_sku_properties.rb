# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # Network Virtual Appliance Sku Properties.
    #
    class VirtualApplianceSkuProperties

      include MsRestAzure

      # @return [String] Virtual Appliance Vendor.
      attr_accessor :vendor

      # @return [String] Virtual Appliance Scale Unit.
      attr_accessor :bundled_scale_unit

      # @return [String] Virtual Appliance Version.
      attr_accessor :market_place_version


      #
      # Mapper for VirtualApplianceSkuProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualApplianceSkuProperties',
          type: {
            name: 'Composite',
            class_name: 'VirtualApplianceSkuProperties',
            model_properties: {
              vendor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vendor',
                type: {
                  name: 'String'
                }
              },
              bundled_scale_unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bundledScaleUnit',
                type: {
                  name: 'String'
                }
              },
              market_place_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'marketPlaceVersion',
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
