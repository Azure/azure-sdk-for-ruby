# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The monitoring metric.
    #
    class Metrics

      include MsRestAzure

      # @return [String] The ID of metric source.
      attr_accessor :resource_id

      # @return [DateTime] The start time of the metric data.
      attr_accessor :start_time

      # @return [DateTime] The end time of the metric data.
      attr_accessor :end_time

      # @return [String] The time granularity of the metric data.
      attr_accessor :time_grain

      # @return [MetricAggregationType] The metric aggregation type. Possible
      # values include: 'Average', 'Last', 'Maximum', 'Minimum', 'None',
      # 'Total'
      attr_accessor :primary_aggregation

      # @return [MetricName] The name of the metric.
      attr_accessor :name

      # @return [Array<MetricDimension>] The metric dimensions.
      attr_accessor :dimensions

      # @return [MetricUnit] The unit of the metric data. Possible values
      # include: 'Bytes', 'BytesPerSecond', 'Count', 'CountPerSecond',
      # 'Percent', 'Seconds'
      attr_accessor :unit

      # @return [String] The type of the metric data.
      attr_accessor :type

      # @return [Array<MetricData>] The list of the metric data.
      attr_accessor :values


      #
      # Mapper for Metrics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Metrics',
          type: {
            name: 'Composite',
            class_name: 'Metrics',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              time_grain: {
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              primary_aggregation: {
                required: false,
                serialized_name: 'primaryAggregation',
                type: {
                  name: 'Enum',
                  module: 'MetricAggregationType'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricDimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDimension'
                      }
                  }
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'Enum',
                  module: 'MetricUnit'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              values: {
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricDataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricData'
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
