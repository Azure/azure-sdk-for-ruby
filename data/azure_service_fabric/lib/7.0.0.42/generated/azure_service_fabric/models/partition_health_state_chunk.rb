# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Represents the health state chunk of a partition, which contains the
    # partition ID, its aggregated health state and any replicas that respect
    # the filters in the cluster health chunk query description.
    #
    class PartitionHealthStateChunk < EntityHealthStateChunk

      include MsRestAzure

      # @return The Id of the partition.
      attr_accessor :partition_id

      # @return [ReplicaHealthStateChunkList] The list of replica health state
      # chunks belonging to the partition that respect the filters in the
      # cluster health chunk query description.
      attr_accessor :replica_health_state_chunks


      #
      # Mapper for PartitionHealthStateChunk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionHealthStateChunk',
          type: {
            name: 'Composite',
            class_name: 'PartitionHealthStateChunk',
            model_properties: {
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionId',
                type: {
                  name: 'String'
                }
              },
              replica_health_state_chunks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaHealthStateChunks',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicaHealthStateChunkList'
                }
              }
            }
          }
        }
      end
    end
  end
end
