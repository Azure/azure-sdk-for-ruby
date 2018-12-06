# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The workflow run action repetition index.
    #
    class RepetitionIndex

      include MsRestAzure

      # @return [String] The scope.
      attr_accessor :scope_name

      # @return [Integer] The index.
      attr_accessor :item_index


      #
      # Mapper for RepetitionIndex class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RepetitionIndex',
          type: {
            name: 'Composite',
            class_name: 'RepetitionIndex',
            model_properties: {
              scope_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scopeName',
                type: {
                  name: 'String'
                }
              },
              item_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'itemIndex',
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
