# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Credential information to connect to container registry.
    #
    class RegistryCredential

      include MsRestAzure

      # @return [String] The user name to connect to container registry.
      attr_accessor :registry_user_name

      # @return [String] The password for supplied username to connect to
      # container registry.
      attr_accessor :registry_password

      # @return [Boolean] Indicates that supplied container registry password
      # is encrypted.
      attr_accessor :password_encrypted


      #
      # Mapper for RegistryCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegistryCredential',
          type: {
            name: 'Composite',
            class_name: 'RegistryCredential',
            model_properties: {
              registry_user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RegistryUserName',
                type: {
                  name: 'String'
                }
              },
              registry_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RegistryPassword',
                type: {
                  name: 'String'
                }
              },
              password_encrypted: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PasswordEncrypted',
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
