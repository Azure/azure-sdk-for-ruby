# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_03_01_preview
  module Models
    #
    # Specifications of the Metrics for Azure Monitoring.
    #
    class MetricSpecification

      include MsRestAzure

      # @return [String] Name of the metric.
      attr_accessor :name

      # @return [String] Localized friendly display name of the metric.
      attr_accessor :display_name

      # @return [String] Localized friendly description of the metric.
      attr_accessor :display_description

      # @return [String] The unit that makes sense for the metric.
      attr_accessor :unit

      # @return [String] Only provide one value for this field. Valid values:
      # Average, Minimum, Maximum, Total, Count.
      attr_accessor :aggregation_type

      # @return [String] Optional. If set to true, then zero will be returned
      # for time duration where no metric is emitted/published.
      # Ex. a metric that returns the number of times a particular error code
      # was emitted. The error code may not appear
      # often, instead of the RP publishing 0, Shoebox can auto fill in 0s for
      # time periods where nothing was emitted.
      attr_accessor :fill_gap_with_zero

      # @return [String] The name of the metric category that the metric
      # belongs to. A metric can only belong to a single category.
      attr_accessor :category

      # @return [Array<Dimension>] The dimensions of the metrics.
      attr_accessor :dimensions


      #
      # Mapper for MetricSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricSpecification',
          type: {
            name: 'Composite',
            class_name: 'MetricSpecification',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              display_description: {
                required: false,
                serialized_name: 'displayDescription',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              aggregation_type: {
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              fill_gap_with_zero: {
                required: false,
                serialized_name: 'fillGapWithZero',
                type: {
                  name: 'String'
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Dimension'
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
