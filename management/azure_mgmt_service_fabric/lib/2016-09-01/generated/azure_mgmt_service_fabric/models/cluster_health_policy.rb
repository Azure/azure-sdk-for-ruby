# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # Defines a health policy used to evaluate the health of the cluster or of
    # a cluster node.
    #
    class ClusterHealthPolicy

      include MsRestAzure

      # @return [Integer] The maximum allowed percentage of unhealthy nodes
      # before reporting an error. For example, to allow 10% of nodes to be
      # unhealthy, this value would be 10.
      attr_accessor :max_percent_unhealthy_nodes

      # @return [Integer] The maximum allowed percentage of unhealthy
      # applications before reporting an error. For example, to allow 10% of
      # applications to be unhealthy, this value would be 10.
      attr_accessor :max_percent_unhealthy_applications


      #
      # Mapper for ClusterHealthPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClusterHealthPolicy',
          type: {
            name: 'Composite',
            class_name: 'ClusterHealthPolicy',
            model_properties: {
              max_percent_unhealthy_nodes: {
                required: false,
                serialized_name: 'maxPercentUnhealthyNodes',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              max_percent_unhealthy_applications: {
                required: false,
                serialized_name: 'maxPercentUnhealthyApplications',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
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
