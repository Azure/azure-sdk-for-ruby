# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1
  module Models
    #
    # Model object.
    #
    #
    class ErrorRecord

      include MsRestAzure

      # @return [String] Input document unique identifier the error refers to.
      attr_accessor :id

      # @return [String] Error message.
      attr_accessor :message


      #
      # Mapper for ErrorRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorRecord',
          type: {
            name: 'Composite',
            class_name: 'ErrorRecord',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              message: {
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
