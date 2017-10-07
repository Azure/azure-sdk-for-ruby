# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceFabric
  module Models
    #
    # Describes a node type in the cluster, each node type represents sub set
    # of nodes in the cluster
    #
    class NodeTypeDescription

      include MsRestAzure

      # @return [String] Name of the node type
      attr_accessor :name

      # @return [Hash{String => String}] The placement tags applied to nodes in
      # the node type, which can be used to indicate where certain services
      # (workload) should run
      attr_accessor :placement_properties

      # @return [Hash{String => String}] The capacity tags applied to the nodes
      # in the node type, the cluster resource manager uses these tags to
      # understand how much of a resource a node has
      attr_accessor :capacities

      # @return [Integer] The TCP cluster management endpoint port
      attr_accessor :client_connection_endpoint_port

      # @return [Integer] The HTTP cluster management endpoint port
      attr_accessor :http_gateway_endpoint_port

      # @return [Enum] Nodetype durability Level. Possible values include:
      # 'Bronze', 'Silver', 'Gold'
      attr_accessor :durability_level

      # @return [EndpointRangeDescription] Ports used by applications
      attr_accessor :application_ports

      # @return [EndpointRangeDescription] System assgined application ports
      attr_accessor :ephemeral_ports

      # @return [Boolean] Mark this as the primary node type
      attr_accessor :is_primary

      # @return [Integer] The number of node instances in the node type
      attr_accessor :vm_instance_count

      # @return [Integer] Endpoint used by reverse proxy
      attr_accessor :reverse_proxy_endpoint_port


      #
      # Mapper for NodeTypeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NodeTypeDescription',
          type: {
            name: 'Composite',
            class_name: 'NodeTypeDescription',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              placement_properties: {
                required: false,
                serialized_name: 'placementProperties',
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
              capacities: {
                required: false,
                serialized_name: 'capacities',
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
              client_connection_endpoint_port: {
                required: true,
                serialized_name: 'clientConnectionEndpointPort',
                type: {
                  name: 'Number'
                }
              },
              http_gateway_endpoint_port: {
                required: true,
                serialized_name: 'httpGatewayEndpointPort',
                type: {
                  name: 'Number'
                }
              },
              durability_level: {
                required: false,
                serialized_name: 'durabilityLevel',
                type: {
                  name: 'String'
                }
              },
              application_ports: {
                required: false,
                serialized_name: 'applicationPorts',
                type: {
                  name: 'Composite',
                  class_name: 'EndpointRangeDescription'
                }
              },
              ephemeral_ports: {
                required: false,
                serialized_name: 'ephemeralPorts',
                type: {
                  name: 'Composite',
                  class_name: 'EndpointRangeDescription'
                }
              },
              is_primary: {
                required: true,
                serialized_name: 'isPrimary',
                type: {
                  name: 'Boolean'
                }
              },
              vm_instance_count: {
                required: true,
                serialized_name: 'vmInstanceCount',
                constraints: {
                  InclusiveMaximum: 2147483647,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              reverse_proxy_endpoint_port: {
                required: false,
                serialized_name: 'reverseProxyEndpointPort',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
