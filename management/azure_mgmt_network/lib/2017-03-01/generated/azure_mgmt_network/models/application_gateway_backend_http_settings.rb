# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_03_01
  module Models
    #
    # Backend address pool settings of an application gateway.
    #
    class ApplicationGatewayBackendHttpSettings < SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Port
      attr_accessor :port

      # @return [ApplicationGatewayProtocol] Protocol. Possible values include:
      # 'Http', 'Https'
      attr_accessor :protocol

      # @return [ApplicationGatewayCookieBasedAffinity] Cookie based affinity.
      # Possible values include: 'Enabled', 'Disabled'
      attr_accessor :cookie_based_affinity

      # @return [Integer] Request timeout in seconds. Application Gateway will
      # fail the request if response is not received within RequestTimeout.
      # Acceptable values are from 1 second to 86400 seconds.
      attr_accessor :request_timeout

      # @return [SubResource] Probe resource of an application gateway.
      attr_accessor :probe

      # @return [Array<SubResource>] Array of references to application gateway
      # authentication certificates.
      attr_accessor :authentication_certificates

      # @return [String] Provisioning state of the backend http settings
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [ApplicationGatewayConnectionDraining] Connection draining of
      # the backend http settings resource.
      attr_accessor :connection_draining

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayBackendHttpSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayBackendHttpSettings',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHttpSettings',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              cookie_based_affinity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cookieBasedAffinity',
                type: {
                  name: 'String'
                }
              },
              request_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestTimeout',
                type: {
                  name: 'Number'
                }
              },
              probe: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.probe',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              authentication_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authenticationCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              connection_draining: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectionDraining',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayConnectionDraining'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
