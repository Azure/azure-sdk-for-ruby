# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::FormRecognizer::V1_0_preview
  module Models
    #
    # Model object.
    #
    #
    class FormDocumentReport

      include MsRestAzure

      # @return [String] Reference to the data that the report is for.
      attr_accessor :document_name

      # @return [Integer] Total number of pages trained on.
      attr_accessor :pages

      # @return [Array<String>] List of errors per page.
      attr_accessor :errors

      # @return [Enum] Status of the training operation. Possible values
      # include: 'success', 'partialSuccess', 'failure'
      attr_accessor :status


      #
      # Mapper for FormDocumentReport class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FormDocumentReport',
          type: {
            name: 'Composite',
            class_name: 'FormDocumentReport',
            model_properties: {
              document_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'documentName',
                type: {
                  name: 'String'
                }
              },
              pages: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pages',
                type: {
                  name: 'Number'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errors',
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
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
