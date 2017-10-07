# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Common input details for network mapping operation.
    #
    class CreateNetworkMappingInputProperties

      include MsRestAzure

      # @return [String] Recovery fabric Name.
      attr_accessor :recovery_fabric_name

      # @return [String] Recovery network Id.
      attr_accessor :recovery_network_id

      # @return [FabricSpecificCreateNetworkMappingInput] Fabric specific input
      # properties.
      attr_accessor :fabric_specific_details


      #
      # Mapper for CreateNetworkMappingInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CreateNetworkMappingInputProperties',
          type: {
            name: 'Composite',
            class_name: 'CreateNetworkMappingInputProperties',
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
                  uber_parent: 'FabricSpecificCreateNetworkMappingInput',
                  class_name: 'FabricSpecificCreateNetworkMappingInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
