# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Common input details for network mapping operation.
    #
    class UpdateNetworkMappingInputProperties

      include MsRestAzure

      # @return [String] Recovery fabric name.
      attr_accessor :recovery_fabric_name

      # @return [String] Recovery network Id.
      attr_accessor :recovery_network_id

      # @return [FabricSpecificUpdateNetworkMappingInput] Fabrics specific
      # input network Id.
      attr_accessor :fabric_specific_details


      #
      # Mapper for UpdateNetworkMappingInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateNetworkMappingInputProperties',
          type: {
            name: 'Composite',
            class_name: 'UpdateNetworkMappingInputProperties',
            model_properties: {
              recovery_fabric_name: {
                required: false,
                serialized_name: 'recoveryFabricName',
                type: {
                  name: 'String'
                }
              },
              recovery_network_id: {
                required: false,
                serialized_name: 'recoveryNetworkId',
                type: {
                  name: 'String'
                }
              },
              fabric_specific_details: {
                required: false,
                serialized_name: 'fabricSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'FabricSpecificUpdateNetworkMappingInput',
                  class_name: 'FabricSpecificUpdateNetworkMappingInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
