# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Azure VM input endpoint details.
    #
    class InputEndpoint

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The input endpoint name.
      attr_accessor :endpoint_name

      # @return [Integer] The input endpoint private port.
      attr_accessor :private_port

      # @return [Integer] The input endpoint public port.
      attr_accessor :public_port

      # @return [String] The input endpoint protocol.
      attr_accessor :protocol


      #
      # Mapper for InputEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InputEndpoint',
          type: {
            name: 'Composite',
            class_name: 'InputEndpoint',
            model_properties: {
              endpoint_name: {
                required: false,
                serialized_name: 'endpointName',
                type: {
                  name: 'String'
                }
              },
              private_port: {
                required: false,
                serialized_name: 'privatePort',
                type: {
                  name: 'Number'
                }
              },
              public_port: {
                required: false,
                serialized_name: 'publicPort',
                type: {
                  name: 'Number'
                }
              },
              protocol: {
                required: false,
                serialized_name: 'protocol',
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
