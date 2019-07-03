# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Node Deactivate Started event.
    #
    class NodeDeactivateStartedEvent < NodeEvent

      include MsRestAzure


      def initialize
        @Kind = "NodeDeactivateStarted"
      end

      attr_accessor :Kind

      # @return [Integer] Id of Node instance.
      attr_accessor :node_instance

      # @return [String] Batch Id.
      attr_accessor :batch_id

      # @return [String] Describes deactivate intent.
      attr_accessor :deactivate_intent


      #
      # Mapper for NodeDeactivateStartedEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeDeactivateStarted',
          type: {
            name: 'Composite',
            class_name: 'NodeDeactivateStartedEvent',
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
              batch_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'BatchId',
                type: {
                  name: 'String'
                }
              },
              deactivate_intent: {
                client_side_validation: true,
                required: true,
                serialized_name: 'DeactivateIntent',
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
