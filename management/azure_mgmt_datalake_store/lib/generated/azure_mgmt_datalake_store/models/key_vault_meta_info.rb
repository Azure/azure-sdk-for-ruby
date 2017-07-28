# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeStore
  module Models
    #
    # Metadata information used by account encryption.
    #
    class KeyVaultMetaInfo
      # @return [String] The resource identifier for the user managed Key Vault
      # being used to encrypt.
      attr_accessor :key_vault_resource_id

      # @return [String] The name of the user managed encryption key.
      attr_accessor :encryption_key_name

      # @return [String] The version of the user managed encryption key.
      attr_accessor :encryption_key_version


      #
      # Mapper for KeyVaultMetaInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyVaultMetaInfo',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultMetaInfo',
            model_properties: {
              key_vault_resource_id: {
                required: true,
                serialized_name: 'keyVaultResourceId',
                type: {
                  name: 'String'
                }
              },
              encryption_key_name: {
                required: true,
                serialized_name: 'encryptionKeyName',
                type: {
                  name: 'String'
                }
              },
              encryption_key_version: {
                required: true,
                serialized_name: 'encryptionKeyVersion',
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
