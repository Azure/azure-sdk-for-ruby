# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Azure role assignment details.
    #
    class RoleAssignment

      include MsRestAzure

      # @return [String] The ARM Id of the role assignment.
      attr_accessor :id

      # @return [String] The name of the role assignment.
      attr_accessor :name

      # @return [String] Role assignment scope.
      attr_accessor :scope

      # @return [String] Principal Id.
      attr_accessor :principal_id

      # @return [String] Role definition id.
      attr_accessor :role_definition_id


      #
      # Mapper for RoleAssignment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RoleAssignment',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignment',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              scope: {
                required: false,
                serialized_name: 'scope',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                required: false,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              role_definition_id: {
                required: false,
                serialized_name: 'roleDefinitionId',
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
