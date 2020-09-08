# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # VirtualHubRouteTableV2 route.
    #
    class VirtualHubRouteV2

      include MsRestAzure

      # @return [String] The type of destinations.
      attr_accessor :destination_type

      # @return [Array<String>] List of all destinations.
      attr_accessor :destinations

      # @return [String] The type of next hops.
      attr_accessor :next_hop_type

      # @return [Array<String>] NextHops ip address.
      attr_accessor :next_hops


      #
      # Mapper for VirtualHubRouteV2 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualHubRouteV2',
          type: {
            name: 'Composite',
            class_name: 'VirtualHubRouteV2',
            model_properties: {
              destination_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationType',
                type: {
                  name: 'String'
                }
              },
              destinations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              next_hop_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHopType',
                type: {
                  name: 'String'
                }
              },
              next_hops: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHops',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
