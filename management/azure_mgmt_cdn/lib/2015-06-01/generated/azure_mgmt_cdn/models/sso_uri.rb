# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2015_06_01
  module Models
    #
    # SSO URI required to login to third party web portal.
    #
    class SsoUri

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The URI used to login to third party web portal.
      attr_accessor :sso_uri_value


      #
      # Mapper for SsoUri class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SsoUri',
          type: {
            name: 'Composite',
            class_name: 'SsoUri',
            model_properties: {
              sso_uri_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ssoUriValue',
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
