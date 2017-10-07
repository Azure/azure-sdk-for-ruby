# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The OData filters to be used for metrics.
    #
    class MetricFilter

      include MsRestAzure

      # @return [MetricNameFilter] Specifies the metric name filter specifying
      # the name of the metric to be filtered on. Only 'Equality' operator is
      # supported for this property.
      attr_accessor :name

      # @return [DateTime] Specifies the start time of the time range to be
      # queried. Only 'Greater Than Or Equal To' operator is supported for this
      # property.
      attr_accessor :start_time

      # @return [DateTime] Specifies the end time of the time range to be
      # queried. Only 'Less Than Or Equal To' operator is supported for this
      # property.
      attr_accessor :end_time

      # @return [String] Specifies the time granularity of the metrics to be
      # returned. E.g., "P1D". Valid values are the ones returned as the field
      # "timeGrain" in the ListMetricDefinitions call. Only 'Equality' operator
      # is supported for this property.
      attr_accessor :time_grain

      # @return [String] Specifies the category of the metrics to be filtered.
      # E.g., "CapacityUtilization". Valid values are the ones returned as the
      # field "category" in the ListMetricDefinitions call. Only 'Equality'
      # operator is supported for this property.
      attr_accessor :category

      # @return [DimensionFilter] Specifies the source(the dimension) of the
      # metrics to be filtered. Only 'Equality' operator is supported for this
      # property.
      attr_accessor :dimensions


      #
      # Mapper for MetricFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricFilter',
          type: {
            name: 'Composite',
            class_name: 'MetricFilter',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'MetricNameFilter'
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
              category: {
                required: true,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Composite',
                  class_name: 'DimensionFilter'
                }
              }
            }
          }
        }
      end
    end
  end
end
