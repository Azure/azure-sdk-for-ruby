# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Provider specific input for pairing operations.
    #
    class ReplicationProviderSpecificContainerMappingInput

      include MsRestAzure

      # @return [String] The class type.
      attr_accessor :instance_type


      #
      # Mapper for ReplicationProviderSpecificContainerMappingInput class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReplicationProviderSpecificContainerMappingInput',
          type: {
            name: 'Composite',
            class_name: 'ReplicationProviderSpecificContainerMappingInput',
            model_properties: {
              instance_type: {
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
