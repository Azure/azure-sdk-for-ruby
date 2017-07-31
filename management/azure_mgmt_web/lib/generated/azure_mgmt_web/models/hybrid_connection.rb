# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Hybrid Connection contract. This is used to configure a Hybrid
    # Connection.
    #
    class HybridConnection < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the Service Bus namespace.
      attr_accessor :service_bus_namespace

      # @return [String] The name of the Service Bus relay.
      attr_accessor :relay_name

      # @return [String] The ARM URI to the Service Bus relay.
      attr_accessor :relay_arm_uri

      # @return [String] The hostname of the endpoint.
      attr_accessor :hostname

      # @return [Integer] The port of the endpoint.
      attr_accessor :port

      # @return [String] The name of the Service Bus key which has Send
      # permissions. This is used to authenticate to Service Bus.
      attr_accessor :send_key_name

      # @return [String] The value of the Service Bus key. This is used to
      # authenticate to Service Bus. In ARM this key will not be returned
      # normally, use the POST /listKeys API instead.
      attr_accessor :send_key_value

      # @return [String] The suffix for the service bus endpoint. By default
      # this is .servicebus.windows.net
      attr_accessor :service_bus_suffix


      #
      # Mapper for HybridConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HybridConnection',
          type: {
            name: 'Composite',
            class_name: 'HybridConnection',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              service_bus_namespace: {
                required: false,
                serialized_name: 'properties.serviceBusNamespace',
                type: {
                  name: 'String'
                }
              },
              relay_name: {
                required: false,
                serialized_name: 'properties.relayName',
                type: {
                  name: 'String'
                }
              },
              relay_arm_uri: {
                required: false,
                serialized_name: 'properties.relayArmUri',
                type: {
                  name: 'String'
                }
              },
              hostname: {
                required: false,
                serialized_name: 'properties.hostname',
                type: {
                  name: 'String'
                }
              },
              port: {
                required: false,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
                }
              },
              send_key_name: {
                required: false,
                serialized_name: 'properties.sendKeyName',
                type: {
                  name: 'String'
                }
              },
              send_key_value: {
                required: false,
                serialized_name: 'properties.sendKeyValue',
                type: {
                  name: 'String'
                }
              },
              service_bus_suffix: {
                required: false,
                serialized_name: 'properties.serviceBusSuffix',
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
