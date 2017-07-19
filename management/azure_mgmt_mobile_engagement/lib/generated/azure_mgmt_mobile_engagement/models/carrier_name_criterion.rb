# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices based on their carrier name.
    #
    class CarrierNameCriterion < Criterion

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "carrier-name"
      end

      attr_accessor :type

      # @return [String] Carrier name value.
      attr_accessor :name


      #
      # Mapper for CarrierNameCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'carrier-name',
          type: {
            name: 'Composite',
            class_name: 'CarrierNameCriterion',
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
