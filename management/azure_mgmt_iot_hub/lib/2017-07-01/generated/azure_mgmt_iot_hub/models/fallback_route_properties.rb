# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2017_07_01
  module Models
    #
    # The properties of the fallback route. IoT Hub uses these properties when
    # it routes messages to the fallback endpoint.
    #
    class FallbackRouteProperties

      include MsRestAzure

      # @return [String] The source to which the routing rule is to be applied
      # to. For example, DeviceMessages. Default value: 'DeviceMessages' .
      attr_accessor :source

      # @return [String] The condition which is evaluated in order to apply the
      # fallback route. If the condition is not provided it will evaluate to
      # true by default. For grammar, See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
      attr_accessor :condition

      # @return [Array<String>] The list of endpoints to which the messages
      # that satisfy the condition are routed to. Currently only 1 endpoint is
      # allowed.
      attr_accessor :endpoint_names

      # @return [Boolean] Used to specify whether the fallback route is
      # enabled.
      attr_accessor :is_enabled


      #
      # Mapper for FallbackRouteProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FallbackRouteProperties',
          type: {
            name: 'Composite',
            class_name: 'FallbackRouteProperties',
            model_properties: {
              source: {
                required: true,
                is_constant: true,
                serialized_name: 'source',
                default_value: 'DeviceMessages',
                type: {
                  name: 'String'
                }
              },
              condition: {
                required: false,
                serialized_name: 'condition',
                type: {
                  name: 'String'
                }
              },
              endpoint_names: {
                required: true,
                serialized_name: 'endpointNames',
                constraints: {
                  MaxItems: 1,
                  MinItems: 1
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_enabled: {
                required: true,
                serialized_name: 'isEnabled',
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
