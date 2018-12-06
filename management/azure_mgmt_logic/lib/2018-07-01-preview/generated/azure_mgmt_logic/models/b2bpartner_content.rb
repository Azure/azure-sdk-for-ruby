# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The B2B partner content.
    #
    class B2BPartnerContent

      include MsRestAzure

      # @return [Array<BusinessIdentity>] The list of partner business
      # identities.
      attr_accessor :business_identities


      #
      # Mapper for B2BPartnerContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'B2BPartnerContent',
          type: {
            name: 'Composite',
            class_name: 'B2BPartnerContent',
            model_properties: {
              business_identities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'businessIdentities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BusinessIdentityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BusinessIdentity'
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
