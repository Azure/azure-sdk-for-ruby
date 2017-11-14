# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Properties of an Azure Resource Manager template parameter.
    #
    class ArmTemplateParameterProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the template parameter.
      attr_accessor :name

      # @return [String] The value of the template parameter.
      attr_accessor :value


      #
      # Mapper for ArmTemplateParameterProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ArmTemplateParameterProperties',
          type: {
            name: 'Composite',
            class_name: 'ArmTemplateParameterProperties',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
