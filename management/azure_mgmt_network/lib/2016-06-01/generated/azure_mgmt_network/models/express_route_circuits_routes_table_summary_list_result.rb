# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Response for ListRoutesTable associated with the Express Route Circuits
    # Api
    #
    class ExpressRouteCircuitsRoutesTableSummaryListResult

      include MsRestAzure

      # @return [Array<ExpressRouteCircuitRoutesTableSummary>] Gets List of
      # RoutesTable
      attr_accessor :value

      # @return [String] Gets the URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ExpressRouteCircuitsRoutesTableSummaryListResult class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitsRoutesTableSummaryListResult',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitsRoutesTableSummaryListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressRouteCircuitRoutesTableSummaryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitRoutesTableSummary'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
