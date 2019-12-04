# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Node Aborted event.
    #
    class NodeAbortedEvent < NodeEvent

      include MsRestAzure


      def initialize
        @Kind = "NodeAborted"
      end

      attr_accessor :Kind

      # @return [Integer] Id of Node instance.
      attr_accessor :node_instance

      # @return [String] Id of Node.
      attr_accessor :node_id

      # @return [String] Upgrade domain of Node.
      attr_accessor :upgrade_domain

      # @return [String] Fault domain of Node.
      attr_accessor :fault_domain

      # @return [String] IP address or FQDN.
      attr_accessor :ip_address_or_fqdn

      # @return [String] Name of Host.
      attr_accessor :hostname

      # @return [Boolean] Indicates if it is seed node.
      attr_accessor :is_seed_node

      # @return [String] Version of Node.
      attr_accessor :node_version


      #
      # Mapper for NodeAbortedEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeAborted',
          type: {
            name: 'Composite',
            class_name: 'NodeAbortedEvent',
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
              node_instance: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeInstance',
                type: {
                  name: 'Number'
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
              upgrade_domain: {
                client_side_validation: true,
                required: true,
                serialized_name: 'UpgradeDomain',
                type: {
                  name: 'String'
                }
              },
              fault_domain: {
                client_side_validation: true,
                required: true,
                serialized_name: 'FaultDomain',
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
              hostname: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Hostname',
                type: {
                  name: 'String'
                }
              },
              is_seed_node: {
                client_side_validation: true,
                required: true,
                serialized_name: 'IsSeedNode',
                type: {
                  name: 'Boolean'
                }
              },
              node_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeVersion',
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
