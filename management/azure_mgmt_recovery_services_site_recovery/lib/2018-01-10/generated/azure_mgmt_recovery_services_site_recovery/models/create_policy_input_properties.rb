# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Policy creation properties.
    #
    class CreatePolicyInputProperties

      include MsRestAzure

      # @return [PolicyProviderSpecificInput] The ReplicationProviderSettings.
      attr_accessor :provider_specific_input


      #
      # Mapper for CreatePolicyInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreatePolicyInputProperties',
          type: {
            name: 'Composite',
            class_name: 'CreatePolicyInputProperties',
            model_properties: {
              provider_specific_input: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerSpecificInput',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'PolicyProviderSpecificInput',
                  class_name: 'PolicyProviderSpecificInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
