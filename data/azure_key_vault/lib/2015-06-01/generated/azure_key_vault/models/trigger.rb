# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2015_06_01
  module Models
    #
    # A condition to be satisfied for an action to be executed.
    #
    class Trigger

      include MsRestAzure

      # @return [Integer] Percentage of lifetime as which to trigger. Value
      # should be between 1 and 99.
      attr_accessor :lifetime_percentage

      # @return [Integer] Days before expiry.
      attr_accessor :days_before_expiry


      #
      # Mapper for Trigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Trigger',
          type: {
            name: 'Composite',
            class_name: 'Trigger',
            model_properties: {
              lifetime_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lifetime_percentage',
                constraints: {
                  InclusiveMaximum: 99,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              days_before_expiry: {
                client_side_validation: true,
                required: false,
                serialized_name: 'days_before_expiry',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
