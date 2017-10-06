# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Switch protection input properties.
    #
    class SwitchProtectionInputProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The unique replication protected item name.
      attr_accessor :replication_protected_item_name

      # @return [SwitchProtectionProviderSpecificInput] Provider specific
      # switch protection input.
      attr_accessor :provider_specific_details


      #
      # Mapper for SwitchProtectionInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SwitchProtectionInputProperties',
          type: {
            name: 'Composite',
            class_name: 'SwitchProtectionInputProperties',
            model_properties: {
              replication_protected_item_name: {
                required: false,
                serialized_name: 'replicationProtectedItemName',
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
                  uber_parent: 'SwitchProtectionProviderSpecificInput',
                  class_name: 'SwitchProtectionProviderSpecificInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
