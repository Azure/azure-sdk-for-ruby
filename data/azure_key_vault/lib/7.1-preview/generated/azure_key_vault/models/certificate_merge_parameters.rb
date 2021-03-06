# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_1_preview
  module Models
    #
    # The certificate merge parameters
    #
    class CertificateMergeParameters

      include MsRestAzure

      # @return [Array<Array<Integer>>] The certificate or the certificate
      # chain to merge.
      attr_accessor :x509certificates

      # @return [CertificateAttributes] The attributes of the certificate
      # (optional).
      attr_accessor :certificate_attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for CertificateMergeParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateMergeParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateMergeParameters',
            model_properties: {
              x509certificates: {
                client_side_validation: true,
                required: true,
                serialized_name: 'x5c',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'ByteArray'
                      }
                  }
                }
              },
              certificate_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateAttributes'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
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
