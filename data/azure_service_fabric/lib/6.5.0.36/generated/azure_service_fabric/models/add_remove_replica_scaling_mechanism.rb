# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the horizontal auto scaling mechanism that adds or removes
    # replicas (containers or container groups).
    #
    class AddRemoveReplicaScalingMechanism < AutoScalingMechanism

      include MsRestAzure


      def initialize
        @kind = "AddRemoveReplica"
      end

      attr_accessor :kind

      # @return [Integer] Minimum number of containers (scale down won't be
      # performed below this number).
      attr_accessor :min_count

      # @return [Integer] Maximum number of containers (scale up won't be
      # performed above this number).
      attr_accessor :max_count

      # @return [Integer] Each time auto scaling is performed, this number of
      # containers will be added or removed.
      attr_accessor :scale_increment


      #
      # Mapper for AddRemoveReplicaScalingMechanism class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddRemoveReplica',
          type: {
            name: 'Composite',
            class_name: 'AddRemoveReplicaScalingMechanism',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              min_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'minCount',
                type: {
                  name: 'Number'
                }
              },
              max_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxCount',
                type: {
                  name: 'Number'
                }
              },
              scale_increment: {
                client_side_validation: true,
                required: true,
                serialized_name: 'scaleIncrement',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
