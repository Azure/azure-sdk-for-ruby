# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2017_10_01_preview
  module Models
    #
    # Role assignment create parameters.
    #
    class RoleAssignmentCreateParameters

      include MsRestAzure

      # @return [String] The role definition ID used in the role assignment.
      attr_accessor :role_definition_id

      # @return [String] The principal ID assigned to the role. This maps to
      # the ID inside the Active Directory. It can point to a user, service
      # principal, or security group.
      attr_accessor :principal_id

      # @return [Boolean] The delgation flag used for creating a role
      # assignment
      attr_accessor :can_delegate


      #
      # Mapper for RoleAssignmentCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RoleAssignmentCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignmentCreateParameters',
            model_properties: {
              role_definition_id: {
                required: false,
                serialized_name: 'properties.roleDefinitionId',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                required: false,
                serialized_name: 'properties.principalId',
                type: {
                  name: 'String'
                }
              },
              can_delegate: {
                required: false,
                serialized_name: 'properties.canDelegate',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
