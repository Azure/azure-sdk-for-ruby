# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Abstract model class for event details of a HyperVReplica E2E event.
    #
    class HyperVReplicaBaseEventDetails < EventProviderSpecificDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "HyperVReplicaBaseEventDetails"
      end

      attr_accessor :instanceType

      # @return [String] The container friendly name.
      attr_accessor :container_name

      # @return [String] The fabric friendly name.
      attr_accessor :fabric_name

      # @return [String] The remote container name.
      attr_accessor :remote_container_name

      # @return [String] The remote fabric name.
      attr_accessor :remote_fabric_name


      #
      # Mapper for HyperVReplicaBaseEventDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HyperVReplicaBaseEventDetails',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaBaseEventDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
                type: {
                  name: 'String'
                }
              },
              remote_container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteContainerName',
                type: {
                  name: 'String'
                }
              },
              remote_fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteFabricName',
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
