# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_06_01_preview
  module Models
    #
    # The definition of a container registry operation.
    #
    class OperationDefinition

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}.
      attr_accessor :name

      # @return [OperationDisplayDefinition] The display information for the
      # container registry operation.
      attr_accessor :display


      #
      # Mapper for OperationDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationDefinition',
          type: {
            name: 'Composite',
            class_name: 'OperationDefinition',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplayDefinition'
                }
              }
            }
          }
        }
      end
    end
  end
end
