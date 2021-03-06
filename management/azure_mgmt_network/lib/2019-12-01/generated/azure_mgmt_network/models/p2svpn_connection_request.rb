# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_12_01
  module Models
    #
    # List of p2s vpn connections to be disconnected.
    #
    class P2SVpnConnectionRequest

      include MsRestAzure

      # @return [Array<String>] List of p2s vpn connection Ids.
      attr_accessor :vpn_connection_ids


      #
      # Mapper for P2SVpnConnectionRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'P2SVpnConnectionRequest',
          type: {
            name: 'Composite',
            class_name: 'P2SVpnConnectionRequest',
            model_properties: {
              vpn_connection_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnConnectionIds',
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
