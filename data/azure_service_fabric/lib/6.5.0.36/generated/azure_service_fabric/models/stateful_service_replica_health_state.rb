# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Represents the health state of the stateful service replica, which
    # contains the replica ID and the aggregated health state.
    #
    class StatefulServiceReplicaHealthState < ReplicaHealthState

      include MsRestAzure


      def initialize
        @ServiceKind = "Stateful"
      end

      attr_accessor :ServiceKind

      # @return [String] Id of a stateful service replica. ReplicaId is used by
      # Service Fabric to uniquely identify a replica of a partition. It is
      # unique within a partition and does not change for the lifetime of the
      # replica. If a replica gets dropped and another replica gets created on
      # the same node for the same partition, it will get a different value for
      # the id. Sometimes the id of a stateless service instance is also
      # referred as a replica id.
      attr_accessor :replica_id


      #
      # Mapper for StatefulServiceReplicaHealthState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateful',
          type: {
            name: 'Composite',
            class_name: 'StatefulServiceReplicaHealthState',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
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
              ServiceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceKind',
                type: {
                  name: 'String'
                }
              },
              replica_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
