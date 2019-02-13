# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Application gateway web application firewall configuration.
    #
    class ApplicationGatewayWebApplicationFirewallConfiguration

      include MsRestAzure

      # @return [Boolean] Whether the web application firewall is enabled or
      # not.
      attr_accessor :enabled

      # @return [ApplicationGatewayFirewallMode] Web application firewall mode.
      # Possible values include: 'Detection', 'Prevention'
      attr_accessor :firewall_mode

      # @return [String] The type of the web application firewall rule set.
      # Possible values are: 'OWASP'.
      attr_accessor :rule_set_type

      # @return [String] The version of the rule set type.
      attr_accessor :rule_set_version

      # @return [Array<ApplicationGatewayFirewallDisabledRuleGroup>] The
      # disabled rule groups.
      attr_accessor :disabled_rule_groups

      # @return [Boolean] Whether allow WAF to check request Body.
      attr_accessor :request_body_check

      # @return [Integer] Maxium request body size for WAF.
      attr_accessor :max_request_body_size

      # @return [Integer] Maxium request body size in Kb for WAF.
      attr_accessor :max_request_body_size_in_kb

      # @return [Integer] Maxium file upload size in Mb for WAF.
      attr_accessor :file_upload_limit_in_mb

      # @return [Array<ApplicationGatewayFirewallExclusion>] The exclusion
      # list.
      attr_accessor :exclusions


      #
      # Mapper for ApplicationGatewayWebApplicationFirewallConfiguration class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              firewall_mode: {
                required: true,
                serialized_name: 'firewallMode',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                required: true,
                serialized_name: 'ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                required: true,
                serialized_name: 'ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              disabled_rule_groups: {
                required: false,
                serialized_name: 'disabledRuleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallDisabledRuleGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallDisabledRuleGroup'
                      }
                  }
                }
              },
              request_body_check: {
                required: false,
                serialized_name: 'requestBodyCheck',
                type: {
                  name: 'Boolean'
                }
              },
              max_request_body_size: {
                required: false,
                serialized_name: 'maxRequestBodySize',
                constraints: {
                  InclusiveMaximum: 128,
                  InclusiveMinimum: 8
                },
                type: {
                  name: 'Number'
                }
              },
              max_request_body_size_in_kb: {
                required: false,
                serialized_name: 'maxRequestBodySizeInKb',
                constraints: {
                  InclusiveMaximum: 128,
                  InclusiveMinimum: 8
                },
                type: {
                  name: 'Number'
                }
              },
              file_upload_limit_in_mb: {
                required: false,
                serialized_name: 'fileUploadLimitInMb',
                constraints: {
                  InclusiveMaximum: 500,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              exclusions: {
                required: false,
                serialized_name: 'exclusions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallExclusionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallExclusion'
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
