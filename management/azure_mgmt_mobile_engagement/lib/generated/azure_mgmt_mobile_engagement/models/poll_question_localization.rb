# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class PollQuestionLocalization

      include MsRestAzure

      # @return [String] Title of the question.
      attr_accessor :title


      #
      # Mapper for PollQuestionLocalization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PollQuestionLocalization',
          type: {
            name: 'Composite',
            class_name: 'PollQuestionLocalization',
            model_properties: {
              title: {
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 256
                },
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
