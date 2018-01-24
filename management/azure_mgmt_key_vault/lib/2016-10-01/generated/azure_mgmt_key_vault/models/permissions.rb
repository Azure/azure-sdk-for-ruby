# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2016_10_01
  module Models
    #
    # Permissions the identity has for keys, secrets, certificates and storage.
    #
    class Permissions

      include MsRestAzure

      # @return [Array<KeyPermissions>] Permissions to keys
      attr_accessor :keys

      # @return [Array<SecretPermissions>] Permissions to secrets
      attr_accessor :secrets

      # @return [Array<CertificatePermissions>] Permissions to certificates
      attr_accessor :certificates

      # @return [Array<StoragePermissions>] Permissions to storage accounts
      attr_accessor :storage


      #
      # Mapper for Permissions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Permissions',
          type: {
            name: 'Composite',
            class_name: 'Permissions',
            model_properties: {
              keys: {
                required: false,
                serialized_name: 'keys',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KeyPermissionsElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              secrets: {
                required: false,
                serialized_name: 'secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SecretPermissionsElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              certificates: {
                required: false,
                serialized_name: 'certificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CertificatePermissionsElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              storage: {
                required: false,
                serialized_name: 'storage',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StoragePermissionsElementType',
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
