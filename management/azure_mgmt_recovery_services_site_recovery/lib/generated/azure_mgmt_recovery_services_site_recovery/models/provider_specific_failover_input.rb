# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Provider specific failover input.
    #
    class ProviderSpecificFailoverInput

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzureFailoverProviderInput"
      @@discriminatorMap["HyperVReplicaAzureFailback"] = "HyperVReplicaAzureFailbackProviderInput"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2FailoverProviderInput"
      @@discriminatorMap["InMage"] = "InMageFailoverProviderInput"
      @@discriminatorMap["A2A"] = "A2AFailoverProviderInput"

      def initialize
        @instanceType = "ProviderSpecificFailoverInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for ProviderSpecificFailoverInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProviderSpecificFailoverInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'ProviderSpecificFailoverInput',
            class_name: 'ProviderSpecificFailoverInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
