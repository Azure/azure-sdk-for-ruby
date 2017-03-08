# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Day of the week.
    #
    class Day

      include MsRestAzure

      # @return [Integer]
      attr_accessor :date

      # @return [Boolean]
      attr_accessor :is_last


      #
      # Mapper for Day class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Day',
          type: {
            name: 'Composite',
            class_name: 'Day',
            model_properties: {
              date: {
                required: false,
                serialized_name: 'date',
                type: {
                  name: 'Number'
                }
              },
              is_last: {
                required: false,
                serialized_name: 'isLast',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
