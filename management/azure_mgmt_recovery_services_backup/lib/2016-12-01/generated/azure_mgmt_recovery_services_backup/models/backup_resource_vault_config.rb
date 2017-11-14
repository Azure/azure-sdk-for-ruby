# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Backup resource vault config details.
    #
    class BackupResourceVaultConfig

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
      # Mapper for BackupResourceVaultConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupResourceVaultConfig',
          type: {
            name: 'Composite',
            class_name: 'BackupResourceVaultConfig',
            model_properties: {
              storage_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageType',
                type: {
                  name: 'String'
                }
              },
              storage_type_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageTypeState',
                type: {
                  name: 'String'
                }
              },
              enhanced_security_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enhancedSecurityState',
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
