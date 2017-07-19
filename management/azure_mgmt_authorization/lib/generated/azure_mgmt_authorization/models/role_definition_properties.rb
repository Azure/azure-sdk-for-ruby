# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
  module Models
    #
    # Role definition properties.
    #
    class RoleDefinitionProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The role name.
      attr_accessor :role_name

      # @return [String] The role definition description.
      attr_accessor :description

      # @return [String] The role type.
      attr_accessor :type

      # @return [Array<Permission>] Role definition permissions.
      attr_accessor :permissions

      # @return [Array<String>] Role definition assignable scopes.
      attr_accessor :assignable_scopes


      #
      # Mapper for RoleDefinitionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RoleDefinitionProperties',
          type: {
            name: 'Composite',
            class_name: 'RoleDefinitionProperties',
            model_properties: {
              role_name: {
                required: false,
                serialized_name: 'roleName',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                required: false,
                serialized_name: 'permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PermissionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Permission'
                      }
                  }
                }
              },
              assignable_scopes: {
                required: false,
                serialized_name: 'assignableScopes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
