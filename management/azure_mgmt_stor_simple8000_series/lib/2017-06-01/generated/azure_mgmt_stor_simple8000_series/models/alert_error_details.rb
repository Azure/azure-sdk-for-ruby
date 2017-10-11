# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The details of the error for which the alert was raised
    #
    class AlertErrorDetails

      include MsRestAzure

      # @return [String] The error code
      attr_accessor :error_code

      # @return [String] The error message
      attr_accessor :error_message

      # @return [Integer] The number of occurences
      attr_accessor :occurences


      #
      # Mapper for AlertErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AlertErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'AlertErrorDetails',
            model_properties: {
              error_code: {
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                required: false,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              },
              occurences: {
                required: false,
                serialized_name: 'occurences',
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
