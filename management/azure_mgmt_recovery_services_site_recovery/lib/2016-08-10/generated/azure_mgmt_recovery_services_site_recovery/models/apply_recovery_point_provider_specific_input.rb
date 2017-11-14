# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Provider specific input for apply recovery point.
    #
    class ApplyRecoveryPointProviderSpecificInput

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzureApplyRecoveryPointInput"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2ApplyRecoveryPointInput"
      @@discriminatorMap["A2A"] = "A2AApplyRecoveryPointInput"

      def initialize
        @instanceType = "ApplyRecoveryPointProviderSpecificInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for ApplyRecoveryPointProviderSpecificInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplyRecoveryPointProviderSpecificInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'ApplyRecoveryPointProviderSpecificInput',
            class_name: 'ApplyRecoveryPointProviderSpecificInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
