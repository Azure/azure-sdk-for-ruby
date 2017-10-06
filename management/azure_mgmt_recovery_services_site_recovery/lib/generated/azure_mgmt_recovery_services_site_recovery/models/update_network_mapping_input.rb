# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Update network mapping input.
    #
    class UpdateNetworkMappingInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [UpdateNetworkMappingInputProperties] The input properties
      # needed to update network mapping.
      attr_accessor :properties


      #
      # Mapper for UpdateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateNetworkMappingInput',
          type: {
            name: 'Composite',
            class_name: 'UpdateNetworkMappingInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateNetworkMappingInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
