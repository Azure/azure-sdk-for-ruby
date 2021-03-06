# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Endpoints accessed for a common purpose that the App Service Environment
    # requires outbound network access to.
    #
    class OutboundEnvironmentEndpoint

      include MsRestAzure

      # @return [String] The type of service accessed by the App Service
      # Environment, e.g., Azure Storage, Azure SQL Database, and Azure Active
      # Directory.
      attr_accessor :category

      # @return [Array<EndpointDependency>] The endpoints that the App Service
      # Environment reaches the service at.
      attr_accessor :endpoints


      #
      # Mapper for OutboundEnvironmentEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OutboundEnvironmentEndpoint',
          type: {
            name: 'Composite',
            class_name: 'OutboundEnvironmentEndpoint',
            model_properties: {
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EndpointDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EndpointDependency'
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
