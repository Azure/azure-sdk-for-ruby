# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_05_01_preview
  module Models
    #
    # Represents a metric value.
    #
    class MetricValue

      include MsRestAzure

      # @return [DateTime] the timestamp for the metric value in ISO 8601
      # format.
      attr_accessor :time_stamp

      # @return [Float] the average value in the time range.
      attr_accessor :average

      # @return [Float] the least value in the time range.
      attr_accessor :minimum

      # @return [Float] the greatest value in the time range.
      attr_accessor :maximum

      # @return [Float] the sum of all of the values in the time range.
      attr_accessor :total

      # @return [Integer] the number of samples in the time range. Can be used
      # to determine the number of values that contributed to the average
      # value.
      attr_accessor :count


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
              time_stamp: {
                required: true,
                serialized_name: 'timeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              average: {
                required: false,
                serialized_name: 'average',
                type: {
                  name: 'Double'
                }
              },
              minimum: {
                required: false,
                serialized_name: 'minimum',
                type: {
                  name: 'Double'
                }
              },
              maximum: {
                required: false,
                serialized_name: 'maximum',
                type: {
                  name: 'Double'
                }
              },
              total: {
                required: false,
                serialized_name: 'total',
                type: {
                  name: 'Double'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
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
