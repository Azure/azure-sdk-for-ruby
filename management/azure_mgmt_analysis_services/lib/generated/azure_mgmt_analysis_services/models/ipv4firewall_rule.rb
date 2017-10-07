# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::AnalysisServices
  module Models
    #
    # The detail of firewall rule.
    #
    class IPv4FirewallRule

      include MsRestAzure

      # @return [String] The rule name.
      attr_accessor :firewall_rule_name

      # @return [String] The start range of IPv4.
      attr_accessor :range_start

      # @return [String] The end range of IPv4.
      attr_accessor :range_end


      #
      # Mapper for IPv4FirewallRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IPv4FirewallRule',
          type: {
            name: 'Composite',
            class_name: 'IPv4FirewallRule',
            model_properties: {
              firewall_rule_name: {
                required: false,
                serialized_name: 'firewallRuleName',
                type: {
                  name: 'String'
                }
              },
              range_start: {
                required: false,
                serialized_name: 'rangeStart',
                type: {
                  name: 'String'
                }
              },
              range_end: {
                required: false,
                serialized_name: 'rangeEnd',
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
