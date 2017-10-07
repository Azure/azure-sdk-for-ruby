# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Model class for event details of a HyperVReplica E2E event.
    #
    class HyperVReplica2012EventDetails < EventProviderSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "HyperVReplica2012"
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
      # Mapper for HyperVReplica2012EventDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HyperVReplica2012',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplica2012EventDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                required: false,
                serialized_name: 'fabricName',
                type: {
                  name: 'String'
                }
              },
              remote_container_name: {
                required: false,
                serialized_name: 'remoteContainerName',
                type: {
                  name: 'String'
                }
              },
              remote_fabric_name: {
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
