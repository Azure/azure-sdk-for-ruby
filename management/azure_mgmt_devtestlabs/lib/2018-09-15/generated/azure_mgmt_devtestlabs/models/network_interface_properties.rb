# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties of a network interface.
    #
    class NetworkInterfaceProperties

      include MsRestAzure

      # @return [String] The resource ID of the virtual network.
      attr_accessor :virtual_network_id

      # @return [String] The resource ID of the sub net.
      attr_accessor :subnet_id

      # @return [String] The resource ID of the public IP address.
      attr_accessor :public_ip_address_id

      # @return [String] The public IP address.
      attr_accessor :public_ip_address

      # @return [String] The private IP address.
      attr_accessor :private_ip_address

      # @return [String] The DNS name.
      attr_accessor :dns_name

      # @return [String] The RdpAuthority property is a server DNS host name or
      # IP address followed by the service port number for RDP (Remote Desktop
      # Protocol).
      attr_accessor :rdp_authority

      # @return [String] The SshAuthority property is a server DNS host name or
      # IP address followed by the service port number for SSH.
      attr_accessor :ssh_authority

      # @return [SharedPublicIpAddressConfiguration] The configuration for
      # sharing a public IP address across multiple virtual machines.
      attr_accessor :shared_public_ip_address_configuration


      #
      # Mapper for NetworkInterfaceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterfaceProperties',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceProperties',
            model_properties: {
              virtual_network_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkId',
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnetId',
                type: {
                  name: 'String'
                }
              },
              public_ip_address_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicIpAddressId',
                type: {
                  name: 'String'
                }
              },
              public_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicIpAddress',
                type: {
                  name: 'String'
                }
              },
              private_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'privateIpAddress',
                type: {
                  name: 'String'
                }
              },
              dns_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dnsName',
                type: {
                  name: 'String'
                }
              },
              rdp_authority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rdpAuthority',
                type: {
                  name: 'String'
                }
              },
              ssh_authority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sshAuthority',
                type: {
                  name: 'String'
                }
              },
              shared_public_ip_address_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sharedPublicIpAddressConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SharedPublicIpAddressConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
