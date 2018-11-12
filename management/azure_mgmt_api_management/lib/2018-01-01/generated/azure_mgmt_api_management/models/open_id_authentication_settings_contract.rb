# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # API OAuth2 Authentication settings details.
    #
    class OpenIdAuthenticationSettingsContract

      include MsRestAzure

      # @return [String] OAuth authorization server identifier.
      attr_accessor :openid_provider_id

      # @return [Array<BearerTokenSendingMethods>] How to send token to the
      # server.
      attr_accessor :bearer_token_sending_methods


      #
      # Mapper for OpenIdAuthenticationSettingsContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OpenIdAuthenticationSettingsContract',
          type: {
            name: 'Composite',
            class_name: 'OpenIdAuthenticationSettingsContract',
            model_properties: {
              openid_provider_id: {
                required: false,
                serialized_name: 'openidProviderId',
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
                      serialized_name: 'BearerTokenSendingMethodsElementType',
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
