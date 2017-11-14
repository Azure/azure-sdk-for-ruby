# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_06_15
  module Models
    #
    # VirtualNetworkGatewaySku details
    #
    class VirtualNetworkGatewaySku

      include MsRestAzure

      include MsRest::JSONable
      # @return [VirtualNetworkGatewaySkuName] Gateway sku name
      # -Basic/HighPerformance/Standard. Possible values include: 'Basic',
      # 'HighPerformance', 'Standard'
      attr_accessor :name

      # @return [VirtualNetworkGatewaySkuTier] Gateway sku tier
      # -Basic/HighPerformance/Standard. Possible values include: 'Basic',
      # 'HighPerformance', 'Standard'
      attr_accessor :tier

      # @return [Integer] The capacity
      attr_accessor :capacity


      #
      # Mapper for VirtualNetworkGatewaySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkGatewaySku',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGatewaySku',
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
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
