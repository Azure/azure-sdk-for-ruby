# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Disable protection input.
    #
    class DisableProtectionInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [DisableProtectionInputProperties] Disable protection input
      # properties.
      attr_accessor :properties


      #
      # Mapper for DisableProtectionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DisableProtectionInput',
          type: {
            name: 'Composite',
            class_name: 'DisableProtectionInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DisableProtectionInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
