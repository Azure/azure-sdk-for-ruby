# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2020_10_01
  module Models
    #
    # An Activity Log Alert rule condition that is met when all its member
    # conditions are met.
    #
    class AlertRuleAllOfCondition

      include MsRestAzure

      # @return [Array<AlertRuleAnyOfOrLeafCondition>] The list of Activity Log
      # Alert rule conditions.
      attr_accessor :all_of


      #
      # Mapper for AlertRuleAllOfCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertRuleAllOfCondition',
          type: {
            name: 'Composite',
            class_name: 'AlertRuleAllOfCondition',
            model_properties: {
              all_of: {
                client_side_validation: true,
                required: true,
                serialized_name: 'allOf',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AlertRuleAnyOfOrLeafConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlertRuleAnyOfOrLeafCondition'
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
