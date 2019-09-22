# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_07_01
  module Models
    #
    # Defines contents of a web application rule.
    #
    class WebApplicationFirewallCustomRule

      include MsRestAzure

      # @return [String] The name of the resource that is unique within a
      # policy. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [Integer] Describes priority of the rule. Rules with a lower
      # value will be evaluated before rules with a higher value.
      attr_accessor :priority

      # @return [WebApplicationFirewallRuleType] Describes type of rule.
      # Possible values include: 'MatchRule', 'Invalid'
      attr_accessor :rule_type

      # @return [Array<MatchCondition>] List of match conditions.
      attr_accessor :match_conditions

      # @return [WebApplicationFirewallAction] Type of Actions. Possible values
      # include: 'Allow', 'Block', 'Log'
      attr_accessor :action


      #
      # Mapper for WebApplicationFirewallCustomRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebApplicationFirewallCustomRule',
          type: {
            name: 'Composite',
            class_name: 'WebApplicationFirewallCustomRule',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: true,
                serialized_name: 'priority',
                type: {
                  name: 'Number'
                }
              },
              rule_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleType',
                type: {
                  name: 'String'
                }
              },
              match_conditions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'matchConditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MatchConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MatchCondition'
                      }
                  }
                }
              },
              action: {
                client_side_validation: true,
                required: true,
                serialized_name: 'action',
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
