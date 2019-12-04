# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about load in a Service Fabric cluster. It holds a summary of
    # all metrics and their load in a cluster.
    #
    class ClusterLoadInfo

      include MsRestAzure

      # @return [DateTime] The starting time of last resource balancing run.
      attr_accessor :last_balancing_start_time_utc

      # @return [DateTime] The end time of last resource balancing run.
      attr_accessor :last_balancing_end_time_utc

      # @return [Array<LoadMetricInformation>] List that contains metrics and
      # their load information in this cluster.
      attr_accessor :load_metric_information


      #
      # Mapper for ClusterLoadInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterLoadInfo',
          type: {
            name: 'Composite',
            class_name: 'ClusterLoadInfo',
            model_properties: {
              last_balancing_start_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastBalancingStartTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              last_balancing_end_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastBalancingEndTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              load_metric_information: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LoadMetricInformation',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadMetricInformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadMetricInformation'
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
