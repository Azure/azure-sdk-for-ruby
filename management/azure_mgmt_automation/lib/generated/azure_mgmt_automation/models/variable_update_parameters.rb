# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The parameters supplied to the update variable operation.
    #
    class VariableUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets or sets the name of the variable.
      attr_accessor :name

      # @return [String] Gets or sets the value of the variable.
      attr_accessor :value

      # @return [String] Gets or sets the description of the variable.
      attr_accessor :description


      #
      # Mapper for VariableUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VariableUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'VariableUpdateParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'properties.value',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
