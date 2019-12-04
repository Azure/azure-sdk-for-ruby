# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # This class returns information about the partition that the user-induced
    # operation acted upon.
    #
    class SelectedPartition

      include MsRestAzure

      # @return [String] The name of the service the partition belongs to.
      attr_accessor :service_name

      # @return An internal ID used by Service Fabric to uniquely identify a
      # partition. This is a randomly generated GUID when the service was
      # created. The partition ID is unique and does not change for the
      # lifetime of the service. If the same service was deleted and recreated
      # the IDs of its partitions would be different.
      attr_accessor :partition_id


      #
      # Mapper for SelectedPartition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SelectedPartition',
          type: {
            name: 'Composite',
            class_name: 'SelectedPartition',
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
              }
            }
          }
        }
      end
    end
  end
end
