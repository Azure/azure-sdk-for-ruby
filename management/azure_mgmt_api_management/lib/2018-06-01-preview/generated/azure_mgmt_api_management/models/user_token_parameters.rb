# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Parameters supplied to the Get User Token operation.
    #
    class UserTokenParameters

      include MsRestAzure

      # @return [KeyType] The Key to be used to generate token for user.
      # Possible values include: 'primary', 'secondary'. Default value:
      # 'primary' .
      attr_accessor :key_type

      # @return [DateTime] The Expiry time of the Token. Maximum token expiry
      # time is set to 30 days. The date conforms to the following format:
      # `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
      #
      attr_accessor :expiry


      #
      # Mapper for UserTokenParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserTokenParameters',
          type: {
            name: 'Composite',
            class_name: 'UserTokenParameters',
            model_properties: {
              key_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyType',
                default_value: 'primary',
                type: {
                  name: 'Enum',
                  module: 'KeyType'
                }
              },
              expiry: {
                client_side_validation: true,
                required: true,
                serialized_name: 'expiry',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
