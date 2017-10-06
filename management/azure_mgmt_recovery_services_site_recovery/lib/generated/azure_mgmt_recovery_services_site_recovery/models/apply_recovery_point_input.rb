# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Input to apply recovery point.
    #
    class ApplyRecoveryPointInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApplyRecoveryPointInputProperties] The input properties to
      # apply recovery point.
      attr_accessor :properties


      #
      # Mapper for ApplyRecoveryPointInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplyRecoveryPointInput',
          type: {
            name: 'Composite',
            class_name: 'ApplyRecoveryPointInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ApplyRecoveryPointInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
