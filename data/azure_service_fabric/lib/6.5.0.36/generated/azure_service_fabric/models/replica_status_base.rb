# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Information about the replica.
    #
    class ReplicaStatusBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["KeyValueStore"] = "KeyValueStoreReplicaStatus"

      def initialize
        @Kind = "ReplicaStatusBase"
      end

      attr_accessor :Kind


      #
      # Mapper for ReplicaStatusBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicaStatusBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'ReplicaStatusBase',
            class_name: 'ReplicaStatusBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
