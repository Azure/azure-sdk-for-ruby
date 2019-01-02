# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_07_01
  module Models
    #
    # The share mount point.
    #
    class MountPointMap

      include MsRestAzure

      # @return [String] ID of the share which is mounted to role VM.
      attr_accessor :share_id

      # @return [String] ID of the role to which share is mounted.
      attr_accessor :role_id

      # @return [String] Mount point for the share.
      attr_accessor :mount_point

      # @return [RoleTypes] Role type. Possible values include: 'IOT', 'ASA',
      # 'Functions', 'Cognitive'
      attr_accessor :role_type


      #
      # Mapper for MountPointMap class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MountPointMap',
          type: {
            name: 'Composite',
            class_name: 'MountPointMap',
            model_properties: {
              share_id: {
                required: true,
                serialized_name: 'shareId',
                type: {
                  name: 'String'
                }
              },
              role_id: {
                required: false,
                read_only: true,
                serialized_name: 'roleId',
                type: {
                  name: 'String'
                }
              },
              mount_point: {
                required: false,
                read_only: true,
                serialized_name: 'mountPoint',
                type: {
                  name: 'String'
                }
              },
              role_type: {
                required: false,
                read_only: true,
                serialized_name: 'roleType',
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
