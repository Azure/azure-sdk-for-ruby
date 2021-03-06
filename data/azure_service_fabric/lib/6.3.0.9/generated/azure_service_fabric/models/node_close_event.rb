# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Node Close event.
    #
    class NodeCloseEvent < NodeEvent

      include MsRestAzure


      def initialize
        @Kind = "NodeClose"
      end

      attr_accessor :Kind

      # @return [String] Id of Node.
      attr_accessor :node_id

      # @return [String] Id of Node instance.
      attr_accessor :node_instance

      # @return [String] Describes error.
      attr_accessor :error


      #
      # Mapper for NodeCloseEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeClose',
          type: {
            name: 'Composite',
            class_name: 'NodeCloseEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
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
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              node_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeId',
                type: {
                  name: 'String'
                }
              },
              node_instance: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeInstance',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Error',
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
