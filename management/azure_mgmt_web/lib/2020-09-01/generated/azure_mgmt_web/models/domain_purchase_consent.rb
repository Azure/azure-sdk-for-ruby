# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Domain purchase consent object, representing acceptance of applicable
    # legal agreements.
    #
    class DomainPurchaseConsent

      include MsRestAzure

      # @return [Array<String>] List of applicable legal agreement keys. This
      # list can be retrieved using ListLegalAgreements API under
      # <code>TopLevelDomain</code> resource.
      attr_accessor :agreement_keys

      # @return [String] Client IP address.
      attr_accessor :agreed_by

      # @return [DateTime] Timestamp when the agreements were accepted.
      attr_accessor :agreed_at


      #
      # Mapper for DomainPurchaseConsent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainPurchaseConsent',
          type: {
            name: 'Composite',
            class_name: 'DomainPurchaseConsent',
            model_properties: {
              agreement_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agreementKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              agreed_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agreedBy',
                type: {
                  name: 'String'
                }
              },
              agreed_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agreedAt',
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
