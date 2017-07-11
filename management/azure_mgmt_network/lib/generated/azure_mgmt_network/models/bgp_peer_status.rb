# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # BGP peer status details
    #
    class BgpPeerStatus

      include MsRestAzure

      # @return [String] The virtual network gateway's local address
      attr_accessor :local_address

      # @return [String] The remote BGP peer
      attr_accessor :neighbor

      # @return [Integer] The autonomous system number of the remote BGP peer
      attr_accessor :asn

      # @return [BgpPeerState] The BGP peer state. Possible values include:
      # 'Unknown', 'Stopped', 'Idle', 'Connecting', 'Connected'
      attr_accessor :state

      # @return [String] For how long the peering has been up
      attr_accessor :connected_duration

      # @return [Integer] The number of routes learned from this peer
      attr_accessor :routes_received

      # @return [Integer] The number of BGP messages sent
      attr_accessor :messages_sent

      # @return [Integer] The number of BGP messages received
      attr_accessor :messages_received


      #
      # Mapper for BgpPeerStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BgpPeerStatus',
          type: {
            name: 'Composite',
            class_name: 'BgpPeerStatus',
            model_properties: {
              local_address: {
                required: false,
                read_only: true,
                serialized_name: 'localAddress',
                type: {
                  name: 'String'
                }
              },
              neighbor: {
                required: false,
                read_only: true,
                serialized_name: 'neighbor',
                type: {
                  name: 'String'
                }
              },
              asn: {
                required: false,
                read_only: true,
                serialized_name: 'asn',
                type: {
                  name: 'Number'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              connected_duration: {
                required: false,
                read_only: true,
                serialized_name: 'connectedDuration',
                type: {
                  name: 'String'
                }
              },
              routes_received: {
                required: false,
                read_only: true,
                serialized_name: 'routesReceived',
                type: {
                  name: 'Number'
                }
              },
              messages_sent: {
                required: false,
                read_only: true,
                serialized_name: 'messagesSent',
                type: {
                  name: 'Number'
                }
              },
              messages_received: {
                required: false,
                read_only: true,
                serialized_name: 'messagesReceived',
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
