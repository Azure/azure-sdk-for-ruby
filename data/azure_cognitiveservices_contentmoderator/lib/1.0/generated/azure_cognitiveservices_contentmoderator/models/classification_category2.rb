# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # The category2 score details of the text. <a
    # href="https://aka.ms/textClassifyCategories">Click here</a> for more
    # details on category classification.
    #
    class ClassificationCategory2

      include MsRestAzure

      # @return [Float] The category2 score.
      attr_accessor :score


      #
      # Mapper for ClassificationCategory2 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Classification_Category2',
          type: {
            name: 'Composite',
            class_name: 'ClassificationCategory2',
            model_properties: {
              score: {
                required: false,
                serialized_name: 'Score',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
