# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Azure VM managed disk input details.
    #
    class A2AVmManagedDiskInputDetails

      include MsRestAzure

      # @return [String] The disk Id.
      attr_accessor :disk_id

      # @return [String] The primary staging storage account Arm Id.
      attr_accessor :primary_staging_azure_storage_account_id

      # @return [String] The target resource group Arm Id.
      attr_accessor :recovery_resource_group_id


      #
      # Mapper for A2AVmManagedDiskInputDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'A2AVmManagedDiskInputDetails',
          type: {
            name: 'Composite',
            class_name: 'A2AVmManagedDiskInputDetails',
            model_properties: {
              disk_id: {
                required: false,
                serialized_name: 'diskId',
                type: {
                  name: 'String'
                }
              },
              primary_staging_azure_storage_account_id: {
                required: false,
                serialized_name: 'primaryStagingAzureStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              recovery_resource_group_id: {
                required: false,
                serialized_name: 'recoveryResourceGroupId',
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
