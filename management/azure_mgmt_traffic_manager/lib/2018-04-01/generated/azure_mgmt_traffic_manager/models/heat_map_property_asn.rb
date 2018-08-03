# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Sub-class representing Traffic Manager HeatMap ASN location properties.
    #
    class HeatMapPropertyAsn < HeatMapPropertyBase

      include MsRestAzure


      def initialize
        @heatMapType = "asn"
      end

      attr_accessor :heatMapType

      # @return [Array<TrafficLocation>]
      attr_accessor :traffic_flows


      #
      # Mapper for HeatMapPropertyAsn class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'asn',
          type: {
            name: 'Composite',
            class_name: 'HeatMapPropertyAsn',
            model_properties: {
              heatMapType: {
                required: true,
                serialized_name: 'heatMapType',
                type: {
                  name: 'String'
                }
              },
              traffic_flows: {
                required: false,
                serialized_name: 'trafficFlows',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrafficLocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrafficLocation'
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
