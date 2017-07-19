# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Effective Route
    #
    class EffectiveRoute

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the user defined route. This is optional.
      attr_accessor :name

      # @return [EffectiveRouteSource] Who created the route. Possible values
      # are: 'Unknown', 'User', 'VirtualNetworkGateway', and 'Default'.
      # Possible values include: 'Unknown', 'User', 'VirtualNetworkGateway',
      # 'Default'
      attr_accessor :source

      # @return [EffectiveRouteState] The value of effective route. Possible
      # values are: 'Active' and 'Invalid'. Possible values include: 'Active',
      # 'Invalid'
      attr_accessor :state

      # @return [Array<String>] The address prefixes of the effective routes in
      # CIDR notation.
      attr_accessor :address_prefix

      # @return [Array<String>] The IP address of the next hop of the effective
      # route.
      attr_accessor :next_hop_ip_address

      # @return [RouteNextHopType] The type of Azure hop the packet should be
      # sent to. Possible values are: 'VirtualNetworkGateway', 'VnetLocal',
      # 'Internet', 'VirtualAppliance', and 'None'. Possible values include:
      # 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance',
      # 'None'
      attr_accessor :next_hop_type


      #
      # Mapper for EffectiveRoute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EffectiveRoute',
          type: {
            name: 'Composite',
            class_name: 'EffectiveRoute',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              source: {
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              address_prefix: {
                required: false,
                serialized_name: 'addressPrefix',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              next_hop_ip_address: {
                required: false,
                serialized_name: 'nextHopIpAddress',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              next_hop_type: {
                required: false,
                serialized_name: 'nextHopType',
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
