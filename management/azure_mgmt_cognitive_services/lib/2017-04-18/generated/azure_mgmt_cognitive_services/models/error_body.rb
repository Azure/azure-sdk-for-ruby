# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CognitiveServices::Api_2017_04_18
  module Models
    #
    # Cognitive Services error body.
    #
    class ErrorBody

      include MsRestAzure

      # @return [String] error code
      attr_accessor :code

      # @return [String] error message
      attr_accessor :message


      #
      # Mapper for ErrorBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorBody',
          type: {
            name: 'Composite',
            class_name: 'ErrorBody',
            model_properties: {
              code: {
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: true,
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
