# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines the metrics that indicate how well an item was rated by others.
    #
    class AggregateRating < Rating

      include MsRestAzure


      def initialize
        @_type = "AggregateRating"
      end

      attr_accessor :_type

      # @return [Integer] The number of times the recipe has been rated or
      # reviewed.
      attr_accessor :review_count


      #
      # Mapper for AggregateRating class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AggregateRating',
          type: {
            name: 'Composite',
            class_name: 'AggregateRating',
            model_properties: {
              text: {
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              _type: {
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              rating_value: {
                required: true,
                serialized_name: 'ratingValue',
                type: {
                  name: 'Double'
                }
              },
              best_rating: {
                required: false,
                read_only: true,
                serialized_name: 'bestRating',
                type: {
                  name: 'Double'
                }
              },
              review_count: {
                required: false,
                read_only: true,
                serialized_name: 'reviewCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
