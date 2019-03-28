# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2018_09_30_preview
  module Models
    #
    # Represents the OpenShift networking configuration
    #
    class NetworkProfile

      include MsRestAzure

      # @return [String] CIDR for the OpenShift Vnet. Default value:
      # '10.0.0.0/8' .
      attr_accessor :vnet_cidr

      # @return [String] CIDR of the Vnet to peer.
      attr_accessor :peer_vnet_id


      #
      # Mapper for NetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'NetworkProfile',
            model_properties: {
              vnet_cidr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vnetCidr',
                default_value: '10.0.0.0/8',
                type: {
                  name: 'String'
                }
              },
              peer_vnet_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peerVnetId',
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
