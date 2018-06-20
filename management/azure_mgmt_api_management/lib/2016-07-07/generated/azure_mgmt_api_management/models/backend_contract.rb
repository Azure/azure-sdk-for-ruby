# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the Create Backend operation.
    #
    class BackendContract

      include MsRestAzure

      # @return [String] Host attribute of the backend. Host is a pure hostname
      # without a port or suffix, for example backend.contoso.com. Must not be
      # empty.
      attr_accessor :host

      # @return [Boolean] Flag indicating whether SSL certificate chain
      # validation should be skipped when using self-signed certificates for
      # this backend host. Default value: false .
      attr_accessor :skip_certificate_chain_validation


      #
      # Mapper for BackendContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackendContract',
          type: {
            name: 'Composite',
            class_name: 'BackendContract',
            model_properties: {
              host: {
                required: true,
                serialized_name: 'host',
                constraints: {
                  MaxLength: 255,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              skip_certificate_chain_validation: {
                required: false,
                serialized_name: 'skipCertificateChainValidation',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
