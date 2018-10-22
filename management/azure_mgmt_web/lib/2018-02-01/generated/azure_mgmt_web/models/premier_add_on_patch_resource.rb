# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # ARM resource for a PremierAddOn.
    #
    class PremierAddOnPatchResource < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Premier add on SKU.
      attr_accessor :sku

      # @return [String] Premier add on Product.
      attr_accessor :product

      # @return [String] Premier add on Vendor.
      attr_accessor :vendor

      # @return [String] Premier add on Marketplace publisher.
      attr_accessor :marketplace_publisher

      # @return [String] Premier add on Marketplace offer.
      attr_accessor :marketplace_offer


      #
      # Mapper for PremierAddOnPatchResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PremierAddOnPatchResource',
          type: {
            name: 'Composite',
            class_name: 'PremierAddOnPatchResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              vendor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vendor',
                type: {
                  name: 'String'
                }
              },
              marketplace_publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.marketplacePublisher',
                type: {
                  name: 'String'
                }
              },
              marketplace_offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.marketplaceOffer',
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
