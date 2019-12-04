# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Node Removed event.
    #
    class NodeRemovedFromClusterEvent < NodeEvent

      include MsRestAzure


      def initialize
        @Kind = "NodeRemovedFromCluster"
      end

      attr_accessor :Kind

      # @return [String] Id of Node.
      attr_accessor :node_id

      # @return [Integer] Id of Node instance.
      attr_accessor :node_instance

      # @return [String] Type of Node.
      attr_accessor :node_type

      # @return [String] Fabric version.
      attr_accessor :fabric_version

      # @return [String] IP address or FQDN.
      attr_accessor :ip_address_or_fqdn

      # @return [String] Capacities.
      attr_accessor :node_capacities


      #
      # Mapper for NodeRemovedFromClusterEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeRemovedFromCluster',
          type: {
            name: 'Composite',
            class_name: 'NodeRemovedFromClusterEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Category',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              node_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeId',
                type: {
                  name: 'String'
                }
              },
              node_instance: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeInstance',
                type: {
                  name: 'Number'
                }
              },
              node_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeType',
                type: {
                  name: 'String'
                }
              },
              fabric_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'FabricVersion',
                type: {
                  name: 'String'
                }
              },
              ip_address_or_fqdn: {
                client_side_validation: true,
                required: true,
                serialized_name: 'IpAddressOrFQDN',
                type: {
                  name: 'String'
                }
              },
              node_capacities: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeCapacities',
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
