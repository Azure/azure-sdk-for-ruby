# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The integration account agreement filter for odata query.
    #
    class IntegrationAccountAgreementFilter

      include MsRestAzure

      # @return [AgreementType] The agreement type of integration account
      # agreement. Possible values include: 'NotSpecified', 'AS2', 'X12',
      # 'Edifact'
      attr_accessor :agreement_type


      #
      # Mapper for IntegrationAccountAgreementFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IntegrationAccountAgreementFilter',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountAgreementFilter',
            model_properties: {
              agreement_type: {
                required: true,
                serialized_name: 'agreementType',
                type: {
                  name: 'Enum',
                  module: 'AgreementType'
                }
              }
            }
          }
        }
      end
    end
  end
end
