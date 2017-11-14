# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_09_01
  module Models
    #
    # ExpressRouteCircuit resource
    #
    class ExpressRouteCircuit < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ExpressRouteCircuitSku] The SKU.
      attr_accessor :sku

      # @return [Boolean] Allow classic operations
      attr_accessor :allow_classic_operations

      # @return [String] The CircuitProvisioningState state of the resource.
      attr_accessor :circuit_provisioning_state

      # @return [ServiceProviderProvisioningState] The
      # ServiceProviderProvisioningState state of the resource. Possible values
      # are 'NotProvisioned', 'Provisioning', 'Provisioned', and
      # 'Deprovisioning'. Possible values include: 'NotProvisioned',
      # 'Provisioning', 'Provisioned', 'Deprovisioning'
      attr_accessor :service_provider_provisioning_state

      # @return [Array<ExpressRouteCircuitAuthorization>] The list of
      # authorizations.
      attr_accessor :authorizations

      # @return [Array<ExpressRouteCircuitPeering>] The list of peerings.
      attr_accessor :peerings

      # @return [String] The ServiceKey.
      attr_accessor :service_key

      # @return [String] The ServiceProviderNotes.
      attr_accessor :service_provider_notes

      # @return [ExpressRouteCircuitServiceProviderProperties] The
      # ServiceProviderProperties.
      attr_accessor :service_provider_properties

      # @return [String] Gets the provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The GatewayManager Etag.
      attr_accessor :gateway_manager_etag

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCircuit class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuit',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuit',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitSku'
                }
              },
              allow_classic_operations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowClassicOperations',
                type: {
                  name: 'Boolean'
                }
              },
              circuit_provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.circuitProvisioningState',
                type: {
                  name: 'String'
                }
              },
              service_provider_provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderProvisioningState',
                type: {
                  name: 'String'
                }
              },
              authorizations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteCircuitAuthorizationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitAuthorization'
                      }
                  }
                }
              },
              peerings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteCircuitPeeringElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitPeering'
                      }
                  }
                }
              },
              service_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceKey',
                type: {
                  name: 'String'
                }
              },
              service_provider_notes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderNotes',
                type: {
                  name: 'String'
                }
              },
              service_provider_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitServiceProviderProperties'
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
              gateway_manager_etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayManagerEtag',
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
