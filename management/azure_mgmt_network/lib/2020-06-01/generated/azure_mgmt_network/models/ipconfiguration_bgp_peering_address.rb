# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # Properties of IPConfigurationBgpPeeringAddress.
    #
    class IPConfigurationBgpPeeringAddress

      include MsRestAzure

      # @return [String] The ID of IP configuration which belongs to gateway.
      attr_accessor :ipconfiguration_id

      # @return [Array<String>] The list of default BGP peering addresses which
      # belong to IP configuration.
      attr_accessor :default_bgp_ip_addresses

      # @return [Array<String>] The list of custom BGP peering addresses which
      # belong to IP configuration.
      attr_accessor :custom_bgp_ip_addresses

      # @return [Array<String>] The list of tunnel public IP addresses which
      # belong to IP configuration.
      attr_accessor :tunnel_ip_addresses


      #
      # Mapper for IPConfigurationBgpPeeringAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IPConfigurationBgpPeeringAddress',
          type: {
            name: 'Composite',
            class_name: 'IPConfigurationBgpPeeringAddress',
            model_properties: {
              ipconfiguration_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipconfigurationId',
                type: {
                  name: 'String'
                }
              },
              default_bgp_ip_addresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'defaultBgpIpAddresses',
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
              custom_bgp_ip_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customBgpIpAddresses',
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
              tunnel_ip_addresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tunnelIpAddresses',
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
