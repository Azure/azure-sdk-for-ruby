# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # The managed identity for the disk encryption set. It should be given
    # permission on the key vault before it can be used to encrypt disks.
    #
    class EncryptionSetIdentity

      include MsRestAzure

      # @return [DiskEncryptionSetIdentityType] The type of Managed Identity
      # used by the DiskEncryptionSet. Only SystemAssigned is supported.
      # Possible values include: 'SystemAssigned'
      attr_accessor :type

      # @return [String] The object id of the Managed Identity Resource. This
      # will be sent to the RP from ARM via the x-ms-identity-principal-id
      # header in the PUT request if the resource has a
      # systemAssigned(implicit) identity
      attr_accessor :principal_id

      # @return [String] The tenant id of the Managed Identity Resource. This
      # will be sent to the RP from ARM via the x-ms-client-tenant-id header in
      # the PUT request if the resource has a systemAssigned(implicit) identity
      attr_accessor :tenant_id


      #
      # Mapper for EncryptionSetIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EncryptionSetIdentity',
          type: {
            name: 'Composite',
            class_name: 'EncryptionSetIdentity',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
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
              }
            }
          }
        }
      end
    end
  end
end
