# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_09_01
  module Models
    #
    # Volumes associated with snapshot policy
    #
    class SnapshotPolicyVolumeList

      include MsRestAzure

      # @return List of volumes
      attr_accessor :value


      #
      # Mapper for SnapshotPolicyVolumeList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'snapshotPolicyVolumeList',
          type: {
            name: 'Composite',
            class_name: 'SnapshotPolicyVolumeList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
