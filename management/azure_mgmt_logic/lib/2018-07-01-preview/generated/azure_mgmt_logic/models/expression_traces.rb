# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # Model object.
    #
    #
    class ExpressionTraces

      include MsRestAzure

      # @return [Array<ExpressionRoot>]
      attr_accessor :inputs


      #
      # Mapper for ExpressionTraces class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressionTraces',
          type: {
            name: 'Composite',
            class_name: 'ExpressionTraces',
            model_properties: {
              inputs: {
                required: false,
                serialized_name: 'inputs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressionRootElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressionRoot'
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
