# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ManagedApplications
  module Models
    #
    # Plan for the appliance.
    #
    class Plan

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The plan name.
      attr_accessor :name

      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] The product code.
      attr_accessor :product

      # @return [String] The promotion code.
      attr_accessor :promotion_code

      # @return [String] The plan's version.
      attr_accessor :version


      #
      # Mapper for Plan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Plan',
          type: {
            name: 'Composite',
            class_name: 'Plan',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              product: {
                required: true,
                serialized_name: 'product',
                type: {
                  name: 'String'
                }
              },
              promotion_code: {
                required: false,
                serialized_name: 'promotionCode',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: true,
                serialized_name: 'version',
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
