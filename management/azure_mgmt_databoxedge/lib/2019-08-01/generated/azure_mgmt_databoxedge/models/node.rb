# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # Represents a single node in a Data box Edge/Gateway device
    # Gateway devices, standalone Edge devices and a single node cluster Edge
    # device will all have 1 node
    # Multi-node Edge devices will have more than 1 nodes
    #
    class Node < ARMBaseModel

      include MsRestAzure

      # @return [NodeStatus] The current status of the individual node.
      # Possible values include: 'Unknown', 'Up', 'Down', 'Rebooting',
      # 'ShuttingDown'
      attr_accessor :node_status

      # @return [String] Serial number of the Chassis
      attr_accessor :node_chassis_serial_number

      # @return [String] Serial number of the individual node
      attr_accessor :node_serial_number

      # @return [String] Display Name of the individual node
      attr_accessor :node_display_name

      # @return [String] Friendly software version name that is currently
      # installed on the node
      attr_accessor :node_friendly_software_version

      # @return [String] HCS version that is currently installed on the node
      attr_accessor :node_hcs_version

      # @return [String] Guid instance id of the node
      attr_accessor :node_instance_id


      #
      # Mapper for Node class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Node',
          type: {
            name: 'Composite',
            class_name: 'Node',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              node_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeStatus',
                type: {
                  name: 'String'
                }
              },
              node_chassis_serial_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeChassisSerialNumber',
                type: {
                  name: 'String'
                }
              },
              node_serial_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeSerialNumber',
                type: {
                  name: 'String'
                }
              },
              node_display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeDisplayName',
                type: {
                  name: 'String'
                }
              },
              node_friendly_software_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeFriendlySoftwareVersion',
                type: {
                  name: 'String'
                }
              },
              node_hcs_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeHcsVersion',
                type: {
                  name: 'String'
                }
              },
              node_instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeInstanceId',
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
