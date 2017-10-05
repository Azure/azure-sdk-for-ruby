# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::TrafficManager
  module Models
    #
    # Class representing a Traffic Manager HeatMap query experience properties.
    #
    class QueryExperience

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The id of the endpoint from the 'endpoints' array
      # which these queries were routed to.
      attr_accessor :endpoint_id

      # @return [Integer] The number of queries originating from this location.
      attr_accessor :query_count

      # @return [Float] The latency experienced by queries originating from
      # this location.
      attr_accessor :latency


      #
      # Mapper for QueryExperience class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'QueryExperience',
          type: {
            name: 'Composite',
            class_name: 'QueryExperience',
            model_properties: {
              endpoint_id: {
                required: true,
                serialized_name: 'endpointId',
                type: {
                  name: 'Number'
                }
              },
              query_count: {
                required: true,
                serialized_name: 'queryCount',
                type: {
                  name: 'Number'
                }
              },
              latency: {
                required: false,
                serialized_name: 'latency',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
