# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # Error details.
    #
    class ErrorDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The error code.
      attr_accessor :code

      # @return [String] The HTTP status code.
      attr_accessor :http_status_code

      # @return [String] The error message.
      attr_accessor :message

      # @return [String] The error details.
      attr_accessor :details


      #
      # Mapper for ErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetails',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'Code',
                type: {
                  name: 'String'
                }
              },
              http_status_code: {
                required: false,
                read_only: true,
                serialized_name: 'HttpStatusCode',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'Message',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                read_only: true,
                serialized_name: 'Details',
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
