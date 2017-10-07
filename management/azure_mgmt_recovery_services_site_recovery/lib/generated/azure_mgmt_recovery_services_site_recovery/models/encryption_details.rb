# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Encryption details for the fabric.
    #
    class EncryptionDetails

      include MsRestAzure

      # @return [String] The key encryption key state for the Vmm.
      attr_accessor :kek_state

      # @return [String] The key encryption key certificate thumbprint.
      attr_accessor :kek_cert_thumbprint

      # @return [DateTime] The key encryption key certificate expiry date.
      attr_accessor :kek_cert_expiry_date


      #
      # Mapper for EncryptionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EncryptionDetails',
          type: {
            name: 'Composite',
            class_name: 'EncryptionDetails',
            model_properties: {
              kek_state: {
                required: false,
                serialized_name: 'kekState',
                type: {
                  name: 'String'
                }
              },
              kek_cert_thumbprint: {
                required: false,
                serialized_name: 'kekCertThumbprint',
                type: {
                  name: 'String'
                }
              },
              kek_cert_expiry_date: {
                required: false,
                serialized_name: 'kekCertExpiryDate',
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
