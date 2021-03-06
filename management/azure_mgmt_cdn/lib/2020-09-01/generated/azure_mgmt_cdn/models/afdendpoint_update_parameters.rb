# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Properties required to create or update an endpoint.
    #
    class AFDEndpointUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] Endpoint tags.
      attr_accessor :tags

      # @return [Integer] Send and receive timeout on forwarding request to the
      # origin. When timeout is reached, the request fails and returns.
      attr_accessor :origin_response_timeout_seconds

      # @return [EnabledState] Whether to enable use of this rule. Permitted
      # values are 'Enabled' or 'Disabled'. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :enabled_state


      #
      # Mapper for AFDEndpointUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AFDEndpointUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'AFDEndpointUpdateParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              origin_response_timeout_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originResponseTimeoutSeconds',
                constraints: {
                  InclusiveMinimum: 16
                },
                type: {
                  name: 'Number'
                }
              },
              enabled_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabledState',
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
