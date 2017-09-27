# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce
  module Models
    #
    # Price and Metadata information for resources
    #
    class ResourceRateCardInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The currency in which the rates are provided.
      attr_accessor :currency

      # @return [String] The culture in which the resource information is
      # localized.
      attr_accessor :locale

      # @return [Boolean] All rates are pretax, so this will always be returned
      # as 'false'.
      attr_accessor :is_tax_included

      # @return [Array<OfferTermInfo>] A list of offer terms.
      attr_accessor :offer_terms

      # @return [Array<MeterInfo>] A list of meters.
      attr_accessor :meters


      #
      # Mapper for ResourceRateCardInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceRateCardInfo',
          type: {
            name: 'Composite',
            class_name: 'ResourceRateCardInfo',
            model_properties: {
              currency: {
                required: false,
                serialized_name: 'Currency',
                type: {
                  name: 'String'
                }
              },
              locale: {
                required: false,
                serialized_name: 'Locale',
                type: {
                  name: 'String'
                }
              },
              is_tax_included: {
                required: false,
                serialized_name: 'IsTaxIncluded',
                type: {
                  name: 'Boolean'
                }
              },
              offer_terms: {
                required: false,
                serialized_name: 'OfferTerms',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OfferTermInfoElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'Name',
                        uber_parent: 'OfferTermInfo',
                        class_name: 'OfferTermInfo'
                      }
                  }
                }
              },
              meters: {
                required: false,
                serialized_name: 'Meters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MeterInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MeterInfo'
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
