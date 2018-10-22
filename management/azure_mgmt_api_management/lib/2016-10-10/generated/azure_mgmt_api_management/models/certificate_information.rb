# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # SSL certificate information.
    #
    class CertificateInformation

      include MsRestAzure

      # @return [DateTime] Expiration date of the certificate. The date
      # conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified
      # by the ISO 8601 standard.
      attr_accessor :expiry

      # @return [String] Thumbprint of the certificate.
      attr_accessor :thumbprint

      # @return [String] Subject of the certificate.
      attr_accessor :subject


      #
      # Mapper for CertificateInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateInformation',
          type: {
            name: 'Composite',
            class_name: 'CertificateInformation',
            model_properties: {
              expiry: {
                client_side_validation: true,
                required: true,
                serialized_name: 'expiry',
                type: {
                  name: 'DateTime'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              subject: {
                client_side_validation: true,
                required: true,
                serialized_name: 'subject',
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
