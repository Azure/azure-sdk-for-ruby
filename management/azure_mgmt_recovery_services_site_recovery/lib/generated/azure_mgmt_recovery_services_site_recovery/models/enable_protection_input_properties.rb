# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Enable protection input properties.
    #
    class EnableProtectionInputProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The Policy Id.
      attr_accessor :policy_id

      # @return [String] The protectable item Id.
      attr_accessor :protectable_item_id

      # @return [EnableProtectionProviderSpecificInput] The
      # ReplicationProviderInput. For HyperVReplicaAzure provider, it will be
      # AzureEnableProtectionInput object. For San provider, it will be
      # SanEnableProtectionInput object. For HyperVReplicaAzure provider, it
      # can be null.
      attr_accessor :provider_specific_details


      #
      # Mapper for EnableProtectionInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EnableProtectionInputProperties',
          type: {
            name: 'Composite',
            class_name: 'EnableProtectionInputProperties',
            model_properties: {
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              protectable_item_id: {
                required: false,
                serialized_name: 'protectableItemId',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'EnableProtectionProviderSpecificInput',
                  class_name: 'EnableProtectionProviderSpecificInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
