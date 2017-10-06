# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Model class for provider specific details for an event.
    #
    class EventProviderSpecificDetails

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["HyperVReplicaBaseEventDetails"] = "HyperVReplicaBaseEventDetails"
      @@discriminatorMap["HyperVReplica2012"] = "HyperVReplica2012EventDetails"
      @@discriminatorMap["HyperVReplica2012R2"] = "HyperVReplica2012R2EventDetails"
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzureEventDetails"
      @@discriminatorMap["A2A"] = "A2AEventDetails"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2EventDetails"

      def initialize
        @instanceType = "EventProviderSpecificDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for EventProviderSpecificDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventProviderSpecificDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'EventProviderSpecificDetails',
            class_name: 'EventProviderSpecificDetails',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
