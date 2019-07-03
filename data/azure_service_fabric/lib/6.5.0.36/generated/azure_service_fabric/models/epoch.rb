# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # An Epoch is a configuration number for the partition as a whole. When the
    # configuration of the replica set changes, for example when the Primary
    # replica changes, the operations that are replicated from the new Primary
    # replica are said to be a new Epoch from the ones which were sent by the
    # old Primary replica.
    #
    class Epoch

      include MsRestAzure

      # @return [String] The current configuration number of this Epoch. The
      # configuration number is an increasing value that is updated whenever
      # the configuration of this replica set changes.
      attr_accessor :configuration_version

      # @return [String] The current data loss number of this Epoch. The data
      # loss number property is an increasing value which is updated whenever
      # data loss is suspected, as when loss of a quorum of replicas in the
      # replica set that includes the Primary replica.
      attr_accessor :data_loss_version


      #
      # Mapper for Epoch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Epoch',
          type: {
            name: 'Composite',
            class_name: 'Epoch',
            model_properties: {
              configuration_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigurationVersion',
                type: {
                  name: 'String'
                }
              },
              data_loss_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DataLossVersion',
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
