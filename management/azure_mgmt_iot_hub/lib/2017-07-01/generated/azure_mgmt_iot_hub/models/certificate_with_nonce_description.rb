# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2017_07_01
  module Models
    #
    # The X509 Certificate.
    #
    class CertificateWithNonceDescription

      include MsRestAzure

      # @return [CertificatePropertiesWithNonce]
      attr_accessor :properties

      # @return [String] The resource identifier.
      attr_accessor :id

      # @return [String] The name of the certificate.
      attr_accessor :name

      # @return [String] The entity tag.
      attr_accessor :etag

      # @return [String] The resource type.
      attr_accessor :type


      #
      # Mapper for CertificateWithNonceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CertificateWithNonceDescription',
          type: {
            name: 'Composite',
            class_name: 'CertificateWithNonceDescription',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CertificatePropertiesWithNonce'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
