# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents database metrics.
    #
    class MetricValue
      # @return [Float] The number of values for the metric.
      attr_accessor :count

      # @return [Float] The average value of the metric.
      attr_accessor :average

      # @return [Float] The max value of the metric.
      attr_accessor :maximum

      # @return [Float] The min value of the metric.
      attr_accessor :minimum

      # @return [DateTime] The metric timestamp (ISO-8601 format).
      attr_accessor :timestamp

      # @return [Float] The total value of the metric.
      attr_accessor :total


      #
      # Mapper for MetricValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricValue',
          type: {
            name: 'Composite',
            class_name: 'MetricValue',
            model_properties: {
              count: {
                required: false,
                read_only: true,
                serialized_name: 'count',
                type: {
                  name: 'Double'
                }
              },
              average: {
                required: false,
                read_only: true,
                serialized_name: 'average',
                type: {
                  name: 'Double'
                }
              },
              maximum: {
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Double'
                }
              },
              minimum: {
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Double'
                }
              },
              timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              total: {
                required: false,
                read_only: true,
                serialized_name: 'total',
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
