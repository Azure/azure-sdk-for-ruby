# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # Definition of the statistic.
    #
    class Statistics

      include MsRestAzure

      # @return [String] Gets the property value of the statistic.
      attr_accessor :counter_property

      # @return [Integer] Gets the value of the statistic.
      attr_accessor :counter_value

      # @return [DateTime] Gets the startTime of the statistic.
      attr_accessor :start_time

      # @return [DateTime] Gets the endTime of the statistic.
      attr_accessor :end_time

      # @return [String] Gets the id.
      attr_accessor :id


      #
      # Mapper for Statistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Statistics',
          type: {
            name: 'Composite',
            class_name: 'Statistics',
            model_properties: {
              counter_property: {
                required: false,
                read_only: true,
                serialized_name: 'counterProperty',
                type: {
                  name: 'String'
                }
              },
              counter_value: {
                required: false,
                read_only: true,
                serialized_name: 'counterValue',
                type: {
                  name: 'Number'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
