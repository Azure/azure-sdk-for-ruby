# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_10_01
  module Models
    #
    # Information about a service principal identity for the cluster to use for
    # manipulating Azure APIs.
    #
    class ManagedClusterServicePrincipalProfile

      include MsRestAzure

      # @return [String] The ID for the service principal.
      attr_accessor :client_id

      # @return [String] The secret password associated with the service
      # principal in plain text.
      attr_accessor :secret


      #
      # Mapper for ManagedClusterServicePrincipalProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterServicePrincipalProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterServicePrincipalProfile',
            model_properties: {
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secret',
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
