# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # List of virtual network gateway routes
    #
    class GatewayRouteListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<GatewayRoute>] List of gateway routes
      attr_accessor :value


      #
      # Mapper for GatewayRouteListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GatewayRouteListResult',
          type: {
            name: 'Composite',
            class_name: 'GatewayRouteListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'GatewayRouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GatewayRoute'
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
