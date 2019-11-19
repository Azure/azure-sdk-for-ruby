# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Maintenance::Mgmt::V2018_06_01_preview
  module Models
    #
    # An error response details received from the Azure Maintenance service.
    #
    class ErrorDetails

      include MsRestAzure

      # @return [String] Service-defined error code. This code serves as a
      # sub-status for the HTTP error code specified in the response.
      attr_accessor :code

      # @return [String] Human-readable representation of the error.
      attr_accessor :message


      #
      # Mapper for ErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetails',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
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
