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
    class SentimentBatchResult

      include MsRestAzure

      # @return [Array<SentimentBatchResultItem>]
      attr_accessor :documents

      # @return [Array<ErrorRecord>]
      attr_accessor :errors


      #
      # Mapper for SentimentBatchResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SentimentBatchResult',
          type: {
            name: 'Composite',
            class_name: 'SentimentBatchResult',
            model_properties: {
              documents: {
                required: false,
                read_only: true,
                serialized_name: 'documents',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SentimentBatchResultItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SentimentBatchResultItem'
                      }
                  }
                }
              },
              errors: {
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ErrorRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorRecord'
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
