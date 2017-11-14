# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServerManagement::Mgmt::V2016_07_01_preview
  module Models
    #
    # The response to a prompt message.
    #
    class PromptMessageResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] The list of responses a cmdlet expects.
      attr_accessor :response


      #
      # Mapper for PromptMessageResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PromptMessageResponse',
          type: {
            name: 'Composite',
            class_name: 'PromptMessageResponse',
            model_properties: {
              response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'response',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
