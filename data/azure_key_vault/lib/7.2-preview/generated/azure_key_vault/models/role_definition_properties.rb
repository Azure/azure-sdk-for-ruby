# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Role definition properties.
    #
    class RoleDefinitionProperties

      include MsRestAzure

      # @return [String] The role name.
      attr_accessor :role_name

      # @return [String] The role definition description.
      attr_accessor :description

      # @return [RoleType] The role type. Possible values include:
      # 'BuiltInRole', 'CustomRole'
      attr_accessor :role_type

      # @return [Array<Permission>] Role definition permissions.
      attr_accessor :permissions

      # @return [Array<RoleScope>] Role definition assignable scopes.
      attr_accessor :assignable_scopes


      #
      # Mapper for RoleDefinitionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleDefinitionProperties',
          type: {
            name: 'Composite',
            class_name: 'RoleDefinitionProperties',
            model_properties: {
              role_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roleName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              role_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
                client_side_validation: true,
                required: false,
                serialized_name: 'assignableScopes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RoleScopeElementType',
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
