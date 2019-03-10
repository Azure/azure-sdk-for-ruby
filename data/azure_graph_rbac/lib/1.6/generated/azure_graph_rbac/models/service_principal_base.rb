# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory service principal common perperties shared among GET,
    # POST and PATCH
    #
    class ServicePrincipalBase

      include MsRestAzure

      # @return [Array<KeyCredential>] The collection of key credentials
      # associated with the service principal.
      attr_accessor :key_credentials

      # @return [Array<PasswordCredential>] The collection of password
      # credentials associated with the service principal.
      attr_accessor :password_credentials

      # @return [String] the type of the servie principal
      attr_accessor :service_principal_type

      # @return [String] whether or not the service principal account is
      # enabled
      attr_accessor :account_enabled

      # @return [Array<String>] Optional list of tags that you can apply to
      # your service principals. Not nullable.
      attr_accessor :tags


      #
      # Mapper for ServicePrincipalBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServicePrincipalBase',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipalBase',
            model_properties: {
              key_credentials: {
                required: false,
                serialized_name: 'keyCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KeyCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyCredential'
                      }
                  }
                }
              },
              password_credentials: {
                required: false,
                serialized_name: 'passwordCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PasswordCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PasswordCredential'
                      }
                  }
                }
              },
              service_principal_type: {
                required: false,
                serialized_name: 'servicePrincipalType',
                type: {
                  name: 'String'
                }
              },
              account_enabled: {
                required: false,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
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