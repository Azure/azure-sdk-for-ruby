# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Represents set of actions written in SQL language-based syntax that is
    # performed against a ServiceBus.Messaging.BrokeredMessage
    #
    class SqlRuleAction < Action

      include MsRestAzure


      #
      # Mapper for SqlRuleAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SqlRuleAction',
          type: {
            name: 'Composite',
            class_name: 'SqlRuleAction',
            model_properties: {
              sql_expression: {
                required: false,
                serialized_name: 'sqlExpression',
                type: {
                  name: 'String'
                }
              },
              compatibility_level: {
                required: false,
                serialized_name: 'compatibilityLevel',
                type: {
                  name: 'Number'
                }
              },
              requires_preprocessing: {
                required: false,
                serialized_name: 'requiresPreprocessing',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
