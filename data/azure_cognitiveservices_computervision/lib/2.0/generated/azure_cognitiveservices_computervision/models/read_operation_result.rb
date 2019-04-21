# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_0
  module Models
    #
    # OCR result of the read operation.
    #
    class ReadOperationResult

      include MsRestAzure

      # @return [TextOperationStatusCodes] Status of the read operation.
      # Possible values include: 'Not Started', 'Running', 'Failed',
      # 'Succeeded'
      attr_accessor :status

      # @return [Array<TextRecognitionResult>] An array of text recognition
      # result of the read operation.
      attr_accessor :recognition_results


      #
      # Mapper for ReadOperationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReadOperationResult',
          type: {
            name: 'Composite',
            class_name: 'ReadOperationResult',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'TextOperationStatusCodes'
                }
              },
              recognition_results: {
                required: false,
                serialized_name: 'recognitionResults',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TextRecognitionResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TextRecognitionResult'
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
