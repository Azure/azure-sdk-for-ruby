# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices based on their carrier country.
    #
    class CarrierCountryCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "carrier-country"
      end

      attr_accessor :type

      # @return [String] Two-characters country code (ISO 3166-1).
      attr_accessor :name


      #
      # Mapper for CarrierCountryCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'carrier-country',
          type: {
            name: 'Composite',
            class_name: 'CarrierCountryCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
