# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class ApiError

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApiErrorError]
      attr_accessor :error


      #
      # Mapper for ApiError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiError',
          type: {
            name: 'Composite',
            class_name: 'ApiError',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ApiErrorError'
                }
              }
            }
          }
        }
      end
    end
  end
end
