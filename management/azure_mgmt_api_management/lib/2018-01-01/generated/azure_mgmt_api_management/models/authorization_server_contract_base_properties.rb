# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # External OAuth authorization server Update settings contract.
    #
    class AuthorizationServerContractBaseProperties

      include MsRestAzure

      # @return [String] Description of the authorization server. Can contain
      # HTML formatting tags.
      attr_accessor :description

      # @return [Array<AuthorizationMethod>] HTTP verbs supported by the
      # authorization endpoint. GET must be always present. POST is optional.
      attr_accessor :authorization_methods

      # @return [Array<ClientAuthenticationMethod>] Method of authentication
      # supported by the token endpoint of this authorization server. Possible
      # values are Basic and/or Body. When Body is specified, client
      # credentials and other parameters are passed within the request body in
      # the application/x-www-form-urlencoded format.
      attr_accessor :client_authentication_method

      # @return [Array<TokenBodyParameterContract>] Additional parameters
      # required by the token endpoint of this authorization server represented
      # as an array of JSON objects with name and value string properties, i.e.
      # {"name" : "name value", "value": "a value"}.
      attr_accessor :token_body_parameters

      # @return [String] OAuth token endpoint. Contains absolute URI to entity
      # being referenced.
      attr_accessor :token_endpoint

      # @return [Boolean] If true, authorization server will include state
      # parameter from the authorization request to its response. Client may
      # use state parameter to raise protocol security.
      attr_accessor :support_state

      # @return [String] Access token scope that is going to be requested by
      # default. Can be overridden at the API level. Should be provided in the
      # form of a string containing space-delimited values.
      attr_accessor :default_scope

      # @return [Array<BearerTokenSendingMethod>] Specifies the mechanism by
      # which access token is passed to the API.
      attr_accessor :bearer_token_sending_methods

      # @return [String] Client or app secret registered with this
      # authorization server.
      attr_accessor :client_secret

      # @return [String] Can be optionally specified when resource owner
      # password grant type is supported by this authorization server. Default
      # resource owner username.
      attr_accessor :resource_owner_username

      # @return [String] Can be optionally specified when resource owner
      # password grant type is supported by this authorization server. Default
      # resource owner password.
      attr_accessor :resource_owner_password


      #
      # Mapper for AuthorizationServerContractBaseProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AuthorizationServerContractBaseProperties',
          type: {
            name: 'Composite',
            class_name: 'AuthorizationServerContractBaseProperties',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              authorization_methods: {
                required: false,
                serialized_name: 'authorizationMethods',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AuthorizationMethodElementType',
                      type: {
                        name: 'Enum',
                        module: 'AuthorizationMethod'
                      }
                  }
                }
              },
              client_authentication_method: {
                required: false,
                serialized_name: 'clientAuthenticationMethod',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ClientAuthenticationMethodElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              token_body_parameters: {
                required: false,
                serialized_name: 'tokenBodyParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TokenBodyParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TokenBodyParameterContract'
                      }
                  }
                }
              },
              token_endpoint: {
                required: false,
                serialized_name: 'tokenEndpoint',
                type: {
                  name: 'String'
                }
              },
              support_state: {
                required: false,
                serialized_name: 'supportState',
                type: {
                  name: 'Boolean'
                }
              },
              default_scope: {
                required: false,
                serialized_name: 'defaultScope',
                type: {
                  name: 'String'
                }
              },
              bearer_token_sending_methods: {
                required: false,
                serialized_name: 'bearerTokenSendingMethods',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'BearerTokenSendingMethodElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              client_secret: {
                required: false,
                serialized_name: 'clientSecret',
                type: {
                  name: 'String'
                }
              },
              resource_owner_username: {
                required: false,
                serialized_name: 'resourceOwnerUsername',
                type: {
                  name: 'String'
                }
              },
              resource_owner_password: {
                required: false,
                serialized_name: 'resourceOwnerPassword',
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
