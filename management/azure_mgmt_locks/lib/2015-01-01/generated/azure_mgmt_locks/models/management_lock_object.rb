# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Locks::Mgmt::V2015_01_01
  module Models
    #
    # Management lock information.
    #
    class ManagementLockObject

      include MsRestAzure

      # @return [LockLevel] The lock level of the management lock. Possible
      # values include: 'NotSpecified', 'CanNotDelete', 'ReadOnly'
      attr_accessor :level

      # @return [String] The notes of the management lock.
      attr_accessor :notes

      # @return [String] The Id of the lock.
      attr_accessor :id

      # @return [String] The type of the lock.
      attr_accessor :type

      # @return [String] The name of the lock.
      attr_accessor :name


      #
      # Mapper for ManagementLockObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementLockObject',
          type: {
            name: 'Composite',
            class_name: 'ManagementLockObject',
            model_properties: {
              level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.level',
                type: {
                  name: 'String'
                }
              },
              notes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.notes',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
