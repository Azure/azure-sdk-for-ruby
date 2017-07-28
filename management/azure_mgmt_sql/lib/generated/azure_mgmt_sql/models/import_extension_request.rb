# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Import database parameters.
    #
    class ImportExtensionRequest
      # @return [String] The name of the extension.
      attr_accessor :name

      # @return [String] The type of the extension.
      attr_accessor :type

      # @return [StorageKeyType] The type of the storage key to use. Possible
      # values include: 'StorageAccessKey', 'SharedAccessKey'
      attr_accessor :storage_key_type

      # @return [String] The storage key to use.  If storage key type is
      # SharedAccessKey, it must be preceded with a "?."
      attr_accessor :storage_key

      # @return [String] The storage uri to use.
      attr_accessor :storage_uri

      # @return [String] The name of the SQL administrator.
      attr_accessor :administrator_login

      # @return [String] The password of the SQL administrator.
      attr_accessor :administrator_login_password

      # @return [AuthenticationType] The authentication type. Possible values
      # include: 'SQL', 'ADPassword'. Default value: 'SQL' .
      attr_accessor :authentication_type

      # @return [String] The type of import operation being performed. This is
      # always Import. Default value: 'Import' .
      attr_accessor :operation_mode


      #
      # Mapper for ImportExtensionRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportExtensionRequest',
          type: {
            name: 'Composite',
            class_name: 'ImportExtensionRequest',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              storage_key_type: {
                required: true,
                serialized_name: 'properties.storageKeyType',
                type: {
                  name: 'Enum',
                  module: 'StorageKeyType'
                }
              },
              storage_key: {
                required: true,
                serialized_name: 'properties.storageKey',
                type: {
                  name: 'String'
                }
              },
              storage_uri: {
                required: true,
                serialized_name: 'properties.storageUri',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                required: true,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                required: true,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              authentication_type: {
                required: false,
                serialized_name: 'properties.authenticationType',
                default_value: 'SQL',
                type: {
                  name: 'Enum',
                  module: 'AuthenticationType'
                }
              },
              operation_mode: {
                required: true,
                is_constant: true,
                serialized_name: 'properties.operationMode',
                default_value: 'Import',
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
