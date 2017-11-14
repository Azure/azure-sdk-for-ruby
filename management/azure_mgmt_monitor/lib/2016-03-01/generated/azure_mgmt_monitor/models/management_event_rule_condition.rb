# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2016_03_01
  module Models
    #
    # A management event rule condition.
    #
    class ManagementEventRuleCondition < RuleCondition

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @odatatype = "Microsoft.Azure.Management.Insights.Models.ManagementEventRuleCondition"
      end

      attr_accessor :odatatype

      # @return [ManagementEventAggregationCondition] How the data that is
      # collected should be combined over time and when the alert is activated.
      # Note that for management event alerts aggregation is optional – if it
      # is not provided then any event will cause the alert to activate.
      attr_accessor :aggregation


      #
      # Mapper for ManagementEventRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.ManagementEventRuleCondition',
          type: {
            name: 'Composite',
            class_name: 'ManagementEventRuleCondition',
            model_properties: {
              data_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataSource',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'odata.type',
                  uber_parent: 'RuleDataSource',
                  class_name: 'RuleDataSource'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              aggregation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aggregation',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementEventAggregationCondition'
                }
              }
            }
          }
        }
      end
    end
  end
end
