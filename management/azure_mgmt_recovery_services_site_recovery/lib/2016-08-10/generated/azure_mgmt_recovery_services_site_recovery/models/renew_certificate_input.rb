# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Certificate renewal input.
    #
    class RenewCertificateInput

      include MsRestAzure

      # @return [RenewCertificateInputProperties] Renew certificate input
      # properties.
      attr_accessor :properties


      #
      # Mapper for RenewCertificateInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RenewCertificateInput',
          type: {
            name: 'Composite',
            class_name: 'RenewCertificateInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RenewCertificateInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
