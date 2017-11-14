# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Provider specific input for unpairing operations.
    #
    class ReplicationProviderContainerUnmappingInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The class type.
      attr_accessor :instance_type


      #
      # Mapper for ReplicationProviderContainerUnmappingInput class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicationProviderContainerUnmappingInput',
          type: {
            name: 'Composite',
            class_name: 'ReplicationProviderContainerUnmappingInput',
            model_properties: {
              instance_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceType',
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
