# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Effective NetworkSecurityGroup association
    #
    class EffectiveNetworkSecurityGroupAssociation

      include MsRestAzure

      include MsRest::JSONable
      # @return [SubResource] Gets the id of subnet if assigned
      attr_accessor :subnet

      # @return [SubResource] Gets the id of network interface if assigned
      attr_accessor :network_interface


      #
      # Mapper for EffectiveNetworkSecurityGroupAssociation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EffectiveNetworkSecurityGroupAssociation',
          type: {
            name: 'Composite',
            class_name: 'EffectiveNetworkSecurityGroupAssociation',
            model_properties: {
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              network_interface: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkInterface',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              }
            }
          }
        }
      end
    end
  end
end
