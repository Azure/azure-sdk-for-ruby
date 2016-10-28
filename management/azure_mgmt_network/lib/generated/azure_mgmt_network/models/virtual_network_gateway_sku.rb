# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # VirtualNetworkGatewaySku details
    #
    class VirtualNetworkGatewaySku

      include MsRestAzure

      # @return [VirtualNetworkGatewaySkuName] Gateway sku name
      # -Basic/HighPerformance/Standard/UltraPerformance. Possible values
      # include: 'Basic', 'HighPerformance', 'Standard', 'UltraPerformance'
      attr_accessor :name

      # @return [VirtualNetworkGatewaySkuTier] Gateway sku tier
      # -Basic/HighPerformance/Standard/UltraPerformance. Possible values
      # include: 'Basic', 'HighPerformance', 'Standard', 'UltraPerformance'
      attr_accessor :tier

      # @return [Integer] The capacity
      attr_accessor :capacity


      #
      # Mapper for VirtualNetworkGatewaySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkGatewaySku',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGatewaySku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: true,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
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
