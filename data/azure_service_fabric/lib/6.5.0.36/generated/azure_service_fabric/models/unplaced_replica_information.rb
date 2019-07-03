# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Contains information for an unplaced replica.
    #
    class UnplacedReplicaInformation

      include MsRestAzure

      # @return [String] The name of the service.
      attr_accessor :service_name

      # @return The ID of the partition.
      attr_accessor :partition_id

      # @return [Array<String>] List of reasons due to which a replica cannot
      # be placed.
      attr_accessor :unplaced_replica_details


      #
      # Mapper for UnplacedReplicaInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UnplacedReplicaInformation',
          type: {
            name: 'Composite',
            class_name: 'UnplacedReplicaInformation',
            model_properties: {
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceName',
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
              unplaced_replica_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnplacedReplicaDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
