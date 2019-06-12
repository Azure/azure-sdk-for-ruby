# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Set of actions in the Rewrite Rule in Application Gateway.
    #
    class ApplicationGatewayRewriteRuleActionSet

      include MsRestAzure

      # @return [Array<ApplicationGatewayHeaderConfiguration>] Request Header
      # Actions in the Action Set
      attr_accessor :request_header_configurations

      # @return [Array<ApplicationGatewayHeaderConfiguration>] Response Header
      # Actions in the Action Set
      attr_accessor :response_header_configurations


      #
      # Mapper for ApplicationGatewayRewriteRuleActionSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayRewriteRuleActionSet',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayRewriteRuleActionSet',
            model_properties: {
              request_header_configurations: {
                required: false,
                serialized_name: 'requestHeaderConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayHeaderConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayHeaderConfiguration'
                      }
                  }
                }
              },
              response_header_configurations: {
                required: false,
                serialized_name: 'responseHeaderConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayHeaderConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayHeaderConfiguration'
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
