# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MarketplaceOrdering
  module Models
    #
    # The details of the error.
    #
    class ErrorResponseError

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message indicating why the operation failed.
      attr_accessor :message


      #
      # Mapper for ErrorResponseError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorResponse_error',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponseError',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
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
