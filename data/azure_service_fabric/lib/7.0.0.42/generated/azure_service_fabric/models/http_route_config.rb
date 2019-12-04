# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes the hostname properties for http routing.
    #
    class HttpRouteConfig

      include MsRestAzure

      # @return [String] http route name.
      attr_accessor :name

      # @return [HttpRouteMatchRule] Describes a rule for http route matching.
      attr_accessor :match

      # @return [GatewayDestination] Describes destination endpoint for routing
      # traffic.
      attr_accessor :destination


      #
      # Mapper for HttpRouteConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpRouteConfig',
          type: {
            name: 'Composite',
            class_name: 'HttpRouteConfig',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              match: {
                client_side_validation: true,
                required: true,
                serialized_name: 'match',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'HttpRouteMatchRule'
                }
              },
              destination: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  class_name: 'GatewayDestination'
                }
              }
            }
          }
        }
      end
    end
  end
end
