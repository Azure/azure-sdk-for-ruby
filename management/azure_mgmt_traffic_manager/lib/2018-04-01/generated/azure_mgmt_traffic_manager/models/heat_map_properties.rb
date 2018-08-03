# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Sub-class representing default Traffic Manager HeatMap properties.
    #
    class HeatMapProperties < HeatMapPropertyBase

      include MsRestAzure


      def initialize
        @heatMapType = "default"
      end

      attr_accessor :heatMapType

      # @return [DateTime] The beginning of the time window for this HeatMap,
      # inclusive.
      attr_accessor :start_time

      # @return [DateTime] The ending of the time window for this HeatMap,
      # exclusive.
      attr_accessor :end_time

      # @return [Array<HeatMapEndpoint>] The endpoints used in this HeatMap
      # calculation.
      attr_accessor :endpoints

      # @return [Array<TrafficFlow>] The traffic flows produced in this HeatMap
      # calculation.
      attr_accessor :traffic_flows


      #
      # Mapper for HeatMapProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'default',
          type: {
            name: 'Composite',
            class_name: 'HeatMapProperties',
            model_properties: {
              heatMapType: {
                required: true,
                serialized_name: 'heatMapType',
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
              endpoints: {
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HeatMapEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HeatMapEndpoint'
                      }
                  }
                }
              },
              traffic_flows: {
                required: false,
                serialized_name: 'trafficFlows',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrafficFlowElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrafficFlow'
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
