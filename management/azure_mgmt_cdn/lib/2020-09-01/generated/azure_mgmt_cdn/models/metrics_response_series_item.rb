# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class MetricsResponseSeriesItem

      include MsRestAzure

      # @return [String]
      attr_accessor :metric

      # @return [Enum] Possible values include: 'count', 'bytes',
      # 'bitsPerSecond'
      attr_accessor :unit

      # @return [Array<MetricsResponseSeriesItemGroupsItem>]
      attr_accessor :groups

      # @return [Array<MetricsResponseSeriesItemDataItem>]
      attr_accessor :data


      #
      # Mapper for MetricsResponseSeriesItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricsResponse_seriesItem',
          type: {
            name: 'Composite',
            class_name: 'MetricsResponseSeriesItem',
            model_properties: {
              metric: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metric',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricsResponseSeriesItemGroupsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricsResponseSeriesItemGroupsItem'
                      }
                  }
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'data',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricsResponseSeriesItemDataItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricsResponseSeriesItemDataItem'
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
