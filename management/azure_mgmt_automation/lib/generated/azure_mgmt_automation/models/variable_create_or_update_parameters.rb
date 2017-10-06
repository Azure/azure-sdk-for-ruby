# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The parameters supplied to the create or update variable operation.
    #
    class VariableCreateOrUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets or sets the name of the variable.
      attr_accessor :name

      # @return [String] Gets or sets the value of the variable.
      attr_accessor :value

      # @return [String] Gets or sets the description of the variable.
      attr_accessor :description

      # @return [Boolean] Gets or sets the encrypted flag of the variable.
      attr_accessor :is_encrypted


      #
      # Mapper for VariableCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VariableCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'VariableCreateOrUpdateParameters',
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
              },
              is_encrypted: {
                required: false,
                serialized_name: 'properties.isEncrypted',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
