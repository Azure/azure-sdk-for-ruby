# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Identity for the resource.
    #
    class Identity

      include MsRestAzure

      # @return [String] The principal ID of resource identity.
      attr_accessor :principal_id

      # @return [String] The tenant ID of resource.
      attr_accessor :tenant_id

      # @return [IdentityType] The identity type. Possible values include:
      # 'None', 'SystemAssigned', 'UserAssigned', 'SystemAssigned,UserAssigned'
      attr_accessor :type

      # @return [Hash{String => UserAssignedIdentity}] Gets or sets a list of
      # key value pairs that describe the set of User Assigned identities that
      # will be used with this storage account. The key is the ARM resource
      # identifier of the identity. Only 1 User Assigned identity is permitted
      # here.
      attr_accessor :user_assigned_identities


      #
      # Mapper for Identity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Identity',
          type: {
            name: 'Composite',
            class_name: 'Identity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              user_assigned_identities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userAssignedIdentities',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserAssignedIdentityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserAssignedIdentity'
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
