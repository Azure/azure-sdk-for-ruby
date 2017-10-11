# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ResourcesManagement::Api_2017_08_31_preview
  module Models
    #
    # The error object.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [ErrorDetails] Error.
      attr_accessor :error


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
