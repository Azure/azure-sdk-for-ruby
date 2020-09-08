# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # Routing Configuration indicating the associated and propagated route
    # tables for this connection.
    #
    class RoutingConfiguration

      include MsRestAzure

      # @return [SubResource] The resource id RouteTable associated with this
      # RoutingConfiguration.
      attr_accessor :associated_route_table

      # @return [PropagatedRouteTable] The list of RouteTables to advertise the
      # routes to.
      attr_accessor :propagated_route_tables

      # @return [VnetRoute] List of routes that control routing from VirtualHub
      # into a virtual network connection.
      attr_accessor :vnet_routes


      #
      # Mapper for RoutingConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoutingConfiguration',
          type: {
            name: 'Composite',
            class_name: 'RoutingConfiguration',
            model_properties: {
              associated_route_table: {
                client_side_validation: true,
                required: false,
                serialized_name: 'associatedRouteTable',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              propagated_route_tables: {
                client_side_validation: true,
                required: false,
                serialized_name: 'propagatedRouteTables',
                type: {
                  name: 'Composite',
                  class_name: 'PropagatedRouteTable'
                }
              },
              vnet_routes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vnetRoutes',
                type: {
                  name: 'Composite',
                  class_name: 'VnetRoute'
                }
              }
            }
          }
        }
      end
    end
  end
end
