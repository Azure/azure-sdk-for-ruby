# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Parameters supplied to update Identity Provider
    #
    class IdentityProviderUpdateParameters

      include MsRestAzure

      # @return [IdentityProviderType] Identity Provider Type identifier.
      # Possible values include: 'facebook', 'google', 'microsoft', 'twitter',
      # 'aad', 'aadB2C'
      attr_accessor :type

      # @return [Array<String>] List of Allowed Tenants when configuring Azure
      # Active Directory login.
      attr_accessor :allowed_tenants

      # @return [String] Signup Policy Name. Only applies to AAD B2C Identity
      # Provider.
      attr_accessor :signup_policy_name

      # @return [String] Signin Policy Name. Only applies to AAD B2C Identity
      # Provider.
      attr_accessor :signin_policy_name

      # @return [String] Profile Editing Policy Name. Only applies to AAD B2C
      # Identity Provider.
      attr_accessor :profile_editing_policy_name

      # @return [String] Password Reset Policy Name. Only applies to AAD B2C
      # Identity Provider.
      attr_accessor :password_reset_policy_name

      # @return [String] Client Id of the Application in the external Identity
      # Provider. It is App ID for Facebook login, Client ID for Google login,
      # App ID for Microsoft.
      attr_accessor :client_id

      # @return [String] Client secret of the Application in external Identity
      # Provider, used to authenticate login request. For example, it is App
      # Secret for Facebook login, API Key for Google login, Public Key for
      # Microsoft.
      attr_accessor :client_secret


      #
      # Mapper for IdentityProviderUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentityProviderUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'IdentityProviderUpdateParameters',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              allowed_tenants: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowedTenants',
                constraints: {
                  MaxItems: 32
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              signup_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.signupPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              signin_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.signinPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              profile_editing_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.profileEditingPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              password_reset_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.passwordResetPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientId',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientSecret',
                constraints: {
                  MinLength: 1
                },
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
