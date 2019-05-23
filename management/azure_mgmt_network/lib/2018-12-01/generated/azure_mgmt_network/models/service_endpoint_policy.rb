# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Service End point policy resource.
    #
    class ServiceEndpointPolicy < Resource

      include MsRestAzure

      # @return [Array<ServiceEndpointPolicyDefinition>] A collection of
      # service endpoint policy definitions of the service endpoint policy.
      attr_accessor :service_endpoint_policy_definitions

      # @return [Array<Subnet>] A collection of references to subnets.
      attr_accessor :subnets

      # @return [String] The resource GUID property of the service endpoint
      # policy resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the service endpoint policy.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ServiceEndpointPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceEndpointPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServiceEndpointPolicy',
            model_properties: {
              id: {
                required: false,
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
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
              service_endpoint_policy_definitions: {
                required: false,
                serialized_name: 'properties.serviceEndpointPolicyDefinitions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServiceEndpointPolicyDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceEndpointPolicyDefinition'
                      }
                  }
                }
              },
              subnets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              resource_guid: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
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
