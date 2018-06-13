# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NotificationHubs::Mgmt::V2017_04_01
  module Models
    #
    # Description of a NotificationHub MpnsCredential.
    #
    class MpnsCredential

      include MsRestAzure

      # @return [String] The MPNS certificate.
      attr_accessor :mpns_certificate

      # @return [String] The certificate key for this credential.
      attr_accessor :certificate_key

      # @return [String] The Mpns certificate Thumbprint
      attr_accessor :thumbprint


      #
      # Mapper for MpnsCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MpnsCredential',
          type: {
            name: 'Composite',
            class_name: 'MpnsCredential',
            model_properties: {
              mpns_certificate: {
                required: false,
                serialized_name: 'properties.mpnsCertificate',
                type: {
                  name: 'String'
                }
              },
              certificate_key: {
                required: false,
                serialized_name: 'properties.certificateKey',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'properties.thumbprint',
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
