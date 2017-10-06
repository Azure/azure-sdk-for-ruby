# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServerManagement
  module Models
    #
    # The public key of the gateway.
    #
    class EncryptionJwkResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String]
      attr_accessor :kty

      # @return [String]
      attr_accessor :alg

      # @return [String]
      attr_accessor :e

      # @return [String]
      attr_accessor :n


      #
      # Mapper for EncryptionJwkResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EncryptionJwkResource',
          type: {
            name: 'Composite',
            class_name: 'EncryptionJwkResource',
            model_properties: {
              kty: {
                required: false,
                serialized_name: 'kty',
                type: {
                  name: 'String'
                }
              },
              alg: {
                required: false,
                serialized_name: 'alg',
                type: {
                  name: 'String'
                }
              },
              e: {
                required: false,
                serialized_name: 'e',
                type: {
                  name: 'String'
                }
              },
              n: {
                required: false,
                serialized_name: 'n',
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
