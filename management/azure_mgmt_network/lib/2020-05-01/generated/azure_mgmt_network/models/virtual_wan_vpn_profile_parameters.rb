# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Virtual Wan Vpn profile parameters Vpn profile generation.
    #
    class VirtualWanVpnProfileParameters

      include MsRestAzure

      # @return [String] VpnServerConfiguration partial resource uri with which
      # VirtualWan is associated to.
      attr_accessor :vpn_server_configuration_resource_id

      # @return [AuthenticationMethod] VPN client authentication method.
      # Possible values include: 'EAPTLS', 'EAPMSCHAPv2'
      attr_accessor :authentication_method


      #
      # Mapper for VirtualWanVpnProfileParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualWanVpnProfileParameters',
          type: {
            name: 'Composite',
            class_name: 'VirtualWanVpnProfileParameters',
            model_properties: {
              vpn_server_configuration_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vpnServerConfigurationResourceId',
                type: {
                  name: 'String'
                }
              },
              authentication_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authenticationMethod',
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
