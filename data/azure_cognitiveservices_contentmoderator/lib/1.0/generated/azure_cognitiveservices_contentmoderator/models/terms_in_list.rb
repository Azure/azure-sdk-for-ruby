# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Terms in list Id passed.
    #
    class TermsInList

      include MsRestAzure

      # @return [String] Added term details.
      attr_accessor :term


      #
      # Mapper for TermsInList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TermsInList',
          type: {
            name: 'Composite',
            class_name: 'TermsInList',
            model_properties: {
              term: {
                required: false,
                serialized_name: 'Term',
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
