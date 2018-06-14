# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory group information.
    #
    class ADGroup < DirectoryObject

      include MsRestAzure


      def initialize
        @objectType = "Group"
      end

      attr_accessor :objectType

      # @return [String] The display name of the group.
      attr_accessor :display_name

      # @return [Boolean] Whether the group is security-enable.
      attr_accessor :security_enabled

      # @return [String] The primary email address of the group.
      attr_accessor :mail


      #
      # Mapper for ADGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Group',
          type: {
            name: 'Composite',
            class_name: 'ADGroup',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              object_id: {
                required: false,
                read_only: true,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              deletion_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'deletionTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              security_enabled: {
                required: false,
                serialized_name: 'securityEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              mail: {
                required: false,
                serialized_name: 'mail',
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
