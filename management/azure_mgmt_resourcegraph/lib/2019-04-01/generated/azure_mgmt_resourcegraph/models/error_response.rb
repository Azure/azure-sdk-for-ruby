# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceGraph::Mgmt::V2019_04_01
  module Models
    #
    # Error response.

    # An error response from the API.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [Error] Error information.
      attr_accessor :error


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              error: {
                client_side_validation: true,
                required: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'Error'
                }
              }
            }
          }
        }
      end
    end
  end
end
