# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # The parameters specifying the resource whose effective routes are being
    # requested.
    #
    class EffectiveRoutesParameters

      include MsRestAzure

      # @return [String] The resource whose effective routes are being
      # requested.
      attr_accessor :resource_id

      # @return [String] The type of the specified resource like RouteTable,
      # ExpressRouteConnection, HubVirtualNetworkConnection, VpnConnection and
      # P2SConnection.
      attr_accessor :virtual_wan_resource_type


      #
      # Mapper for EffectiveRoutesParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EffectiveRoutesParameters',
          type: {
            name: 'Composite',
            class_name: 'EffectiveRoutesParameters',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              virtual_wan_resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualWanResourceType',
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
