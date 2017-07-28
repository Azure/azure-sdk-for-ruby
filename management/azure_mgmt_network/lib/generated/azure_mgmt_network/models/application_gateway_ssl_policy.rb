# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Application Gateway Ssl policy.
    #
    class ApplicationGatewaySslPolicy
      # @return [Array<ApplicationGatewaySslProtocol>] Ssl protocols to be
      # disabled on application gateway.
      attr_accessor :disabled_ssl_protocols

      # @return [ApplicationGatewaySslPolicyType] Type of Ssl Policy. Possible
      # values include: 'Predefined', 'Custom'
      attr_accessor :policy_type

      # @return [ApplicationGatewaySslPolicyName] Name of Ssl predefined
      # policy. Possible values include: 'AppGwSslPolicy20150501',
      # 'AppGwSslPolicy20170401', 'AppGwSslPolicy20170401S'
      attr_accessor :policy_name

      # @return [Array<ApplicationGatewaySslCipherSuite>] Ssl cipher suites to
      # be enabled in the specified order to application gateway.
      attr_accessor :cipher_suites

      # @return [ApplicationGatewaySslProtocol] Minimum version of Ssl protocol
      # to be supported on application gateway. Possible values include:
      # 'TLSv1_0', 'TLSv1_1', 'TLSv1_2'
      attr_accessor :min_protocol_version


      #
      # Mapper for ApplicationGatewaySslPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewaySslPolicy',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewaySslPolicy',
            model_properties: {
              disabled_ssl_protocols: {
                required: false,
                serialized_name: 'disabledSslProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewaySslProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              policy_type: {
                required: false,
                serialized_name: 'policyType',
                type: {
                  name: 'String'
                }
              },
              policy_name: {
                required: false,
                serialized_name: 'policyName',
                type: {
                  name: 'String'
                }
              },
              cipher_suites: {
                required: false,
                serialized_name: 'cipherSuites',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewaySslCipherSuiteElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              min_protocol_version: {
                required: false,
                serialized_name: 'minProtocolVersion',
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
