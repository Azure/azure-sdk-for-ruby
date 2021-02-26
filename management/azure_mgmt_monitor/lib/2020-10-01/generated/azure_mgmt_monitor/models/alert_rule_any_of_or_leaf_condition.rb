# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2020_10_01
  module Models
    #
    # An Activity Log Alert rule condition that is met when all its member
    # conditions are met.
    # Each condition can be of one of the following types:
    # __Important__: Each type has its unique subset of properties. Properties
    # from different types CANNOT exist in one condition.
    # * __Leaf Condition -__ must contain 'field' and either 'equals' or
    # 'containsAny'.
    # _Please note, 'anyOf' should __not__ be set in a Leaf Condition._
    # * __AnyOf Condition -__ must contain __only__ 'anyOf' (which is an array
    # of Leaf Conditions).
    # _Please note, 'field', 'equals' and 'containsAny' should __not__ be set
    # in an AnyOf Condition._
    #
    #
    class AlertRuleAnyOfOrLeafCondition < AlertRuleLeafCondition

      include MsRestAzure

      # @return [Array<AlertRuleLeafCondition>] An Activity Log Alert rule
      # 'anyOf' condition. An Activity Log Alert rule condition that is met
      # when at least one of its member leaf conditions are met.
      attr_accessor :any_of


      #
      # Mapper for AlertRuleAnyOfOrLeafCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertRuleAnyOfOrLeafCondition',
          type: {
            name: 'Composite',
            class_name: 'AlertRuleAnyOfOrLeafCondition',
            model_properties: {
              field: {
                client_side_validation: true,
                required: false,
                serialized_name: 'field',
                type: {
                  name: 'String'
                }
              },
              equals: {
                client_side_validation: true,
                required: false,
                serialized_name: 'equals',
                type: {
                  name: 'String'
                }
              },
              contains_any: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containsAny',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              any_of: {
                client_side_validation: true,
                required: false,
                serialized_name: 'anyOf',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AlertRuleLeafConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlertRuleLeafCondition'
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
