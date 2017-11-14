# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # DHCPOptions contains an array of DNS servers available to VMs deployed in
    # the virtual networkStandard DHCP option for a subnet overrides VNET DHCP
    # options.
    #
    class DhcpOptions

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] Gets or sets list of DNS servers IP addresses
      attr_accessor :dns_servers


      #
      # Mapper for DhcpOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DhcpOptions',
          type: {
            name: 'Composite',
            class_name: 'DhcpOptions',
            model_properties: {
              dns_servers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dnsServers',
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
