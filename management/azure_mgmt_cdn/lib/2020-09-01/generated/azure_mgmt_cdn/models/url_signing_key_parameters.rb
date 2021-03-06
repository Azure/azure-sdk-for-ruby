# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Url signing key parameters
    #
    class UrlSigningKeyParameters < SecretParameters

      include MsRestAzure


      def initialize
        @type = "UrlSigningKey"
      end

      attr_accessor :type

      # @return [String] Defines the customer defined key Id. This id will
      # exist in the incoming request to indicate the key used to form the
      # hash.
      attr_accessor :key_id

      # @return [ResourceReference] Resource reference to the KV secret
      attr_accessor :secret_source

      # @return [String] Version of the secret to be used
      attr_accessor :secret_version


      #
      # Mapper for UrlSigningKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UrlSigningKey',
          type: {
            name: 'Composite',
            class_name: 'UrlSigningKeyParameters',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              key_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyId',
                type: {
                  name: 'String'
                }
              },
              secret_source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretSource',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              secret_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secretVersion',
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
