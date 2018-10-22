# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # HyperV replica 2012 replication details.
    #
    class HyperVReplicaReplicationDetails < ReplicationProviderSpecificSettings

      include MsRestAzure


      def initialize
        @instanceType = "HyperVReplica2012"
      end

      attr_accessor :instanceType

      # @return [DateTime] The Last replication time.
      attr_accessor :last_replicated_time

      # @return [Array<VMNicDetails>] The PE Network details.
      attr_accessor :vm_nics

      # @return [String] The virtual machine Id.
      attr_accessor :vm_id

      # @return [String] The protection state for the vm.
      attr_accessor :vm_protection_state

      # @return [String] The protection state description for the vm.
      attr_accessor :vm_protection_state_description

      # @return [InitialReplicationDetails] Initial replication details.
      attr_accessor :initial_replication_details

      # @return [Array<DiskDetails>] VM disk details.
      attr_accessor :v_mdisk_details


      #
      # Mapper for HyperVReplicaReplicationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HyperVReplica2012',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaReplicationDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              last_replicated_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastReplicatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              vm_nics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmNics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VMNicDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VMNicDetails'
                      }
                  }
                }
              },
              vm_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmId',
                type: {
                  name: 'String'
                }
              },
              vm_protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmProtectionState',
                type: {
                  name: 'String'
                }
              },
              vm_protection_state_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmProtectionStateDescription',
                type: {
                  name: 'String'
                }
              },
              initial_replication_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialReplicationDetails',
                type: {
                  name: 'Composite',
                  class_name: 'InitialReplicationDetails'
                }
              },
              v_mdisk_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vMDiskDetails',
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
