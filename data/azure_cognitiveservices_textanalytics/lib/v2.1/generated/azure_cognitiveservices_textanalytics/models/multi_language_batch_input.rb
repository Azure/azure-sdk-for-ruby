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
    class MultiLanguageBatchInput

      include MsRestAzure

      # @return [Array<MultiLanguageInput>]
      attr_accessor :documents


      #
      # Mapper for MultiLanguageBatchInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MultiLanguageBatchInput',
          type: {
            name: 'Composite',
            class_name: 'MultiLanguageBatchInput',
            model_properties: {
              documents: {
                required: false,
                serialized_name: 'documents',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MultiLanguageInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MultiLanguageInput'
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
