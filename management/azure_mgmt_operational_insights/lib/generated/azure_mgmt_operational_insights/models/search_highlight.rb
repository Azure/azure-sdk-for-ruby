# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::OperationalInsights
  module Models
    #
    # Highlight details.
    #
    class SearchHighlight

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The string that is put before a matched result.
      attr_accessor :pre

      # @return [String] The string that is put after a matched result.
      attr_accessor :post


      #
      # Mapper for SearchHighlight class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SearchHighlight',
          type: {
            name: 'Composite',
            class_name: 'SearchHighlight',
            model_properties: {
              pre: {
                required: false,
                serialized_name: 'pre',
                type: {
                  name: 'String'
                }
              },
              post: {
                required: false,
                serialized_name: 'post',
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
