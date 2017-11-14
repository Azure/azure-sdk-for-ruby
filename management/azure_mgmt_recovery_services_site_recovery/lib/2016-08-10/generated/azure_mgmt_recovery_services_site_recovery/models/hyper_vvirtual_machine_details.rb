# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Hyper V replica provider specific settings
    #
    class HyperVVirtualMachineDetails < ConfigurationSettings

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "HyperVVirtualMachine"
      end

      attr_accessor :instanceType

      # @return [String] The source id of the object.
      attr_accessor :source_item_id

      # @return [String] The id of the object in fabric.
      attr_accessor :generation

      # @return [OSDetails] The Last replication time.
      attr_accessor :os_details

      # @return [Array<DiskDetails>] The Last successful failover time.
      attr_accessor :disk_details


      #
      # Mapper for HyperVVirtualMachineDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HyperVVirtualMachine',
          type: {
            name: 'Composite',
            class_name: 'HyperVVirtualMachineDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              source_item_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceItemId',
                type: {
                  name: 'String'
                }
              },
              generation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'generation',
                type: {
                  name: 'String'
                }
              },
              os_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDetails',
                type: {
                  name: 'Composite',
                  class_name: 'OSDetails'
                }
              },
              disk_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskDetails'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
