# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::SpellCheck::V1_0
  module Models
    #
    # Model object.
    #
    #
    class SpellingFlaggedToken

      include MsRestAzure

      # @return [Integer]
      attr_accessor :offset

      # @return [String]
      attr_accessor :token

      # @return [ErrorType] Possible values include: 'UnknownToken',
      # 'RepeatedToken'. Default value: 'UnknownToken' .
      attr_accessor :type

      # @return [Array<SpellingTokenSuggestion>]
      attr_accessor :suggestions

      # @return [String]
      attr_accessor :ping_url_suffix


      #
      # Mapper for SpellingFlaggedToken class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Spelling/FlaggedToken',
          type: {
            name: 'Composite',
            class_name: 'SpellingFlaggedToken',
            model_properties: {
              offset: {
                required: true,
                serialized_name: 'offset',
                type: {
                  name: 'Number'
                }
              },
              token: {
                required: true,
                serialized_name: 'token',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                default_value: 'UnknownToken',
                type: {
                  name: 'String'
                }
              },
              suggestions: {
                required: false,
                read_only: true,
                serialized_name: 'suggestions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SpellingTokenSuggestionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SpellingTokenSuggestion'
                      }
                  }
                }
              },
              ping_url_suffix: {
                required: false,
                read_only: true,
                serialized_name: 'pingUrlSuffix',
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
