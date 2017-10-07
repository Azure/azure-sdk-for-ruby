# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Configure pairing input.
    #
    class CreateProtectionContainerMappingInput

      include MsRestAzure

      # @return [CreateProtectionContainerMappingInputProperties] Configure
      # protection input properties.
      attr_accessor :properties


      #
      # Mapper for CreateProtectionContainerMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CreateProtectionContainerMappingInput',
          type: {
            name: 'Composite',
            class_name: 'CreateProtectionContainerMappingInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CreateProtectionContainerMappingInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
