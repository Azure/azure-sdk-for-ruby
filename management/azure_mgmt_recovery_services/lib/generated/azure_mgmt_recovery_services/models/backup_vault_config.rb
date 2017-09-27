# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Backup vault config details.
    #
    class BackupVaultConfig < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [StorageType] Storage type. Possible values include: 'Invalid',
      # 'GeoRedundant', 'LocallyRedundant'
      attr_accessor :storage_type

      # @return [StorageTypeState] Locked or Unlocked. Once a machine is
      # registered against a resource, the storageTypeState is always Locked.
      # Possible values include: 'Invalid', 'Locked', 'Unlocked'
      attr_accessor :storage_type_state

      # @return [EnhancedSecurityState] Enabled or Disabled. Possible values
      # include: 'Invalid', 'Enabled', 'Disabled'
      attr_accessor :enhanced_security_state


      #
      # Mapper for BackupVaultConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupVaultConfig',
          type: {
            name: 'Composite',
            class_name: 'BackupVaultConfig',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              storage_type: {
                required: false,
                serialized_name: 'properties.storageType',
                type: {
                  name: 'String'
                }
              },
              storage_type_state: {
                required: false,
                serialized_name: 'properties.storageTypeState',
                type: {
                  name: 'String'
                }
              },
              enhanced_security_state: {
                required: false,
                serialized_name: 'properties.enhancedSecurityState',
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
