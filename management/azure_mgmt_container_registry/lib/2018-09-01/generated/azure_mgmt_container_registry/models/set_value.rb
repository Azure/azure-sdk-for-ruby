# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The properties of a overridable value that can be passed to a task
    # template.
    #
    class SetValue

      include MsRestAzure

      # @return [String] The name of the overridable value.
      attr_accessor :name

      # @return [String] The overridable value.
      attr_accessor :value

      # @return [Boolean] Flag to indicate whether the value represents a
      # secret or not. Default value: false .
      attr_accessor :is_secret


      #
      # Mapper for SetValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SetValue',
          type: {
            name: 'Composite',
            class_name: 'SetValue',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              is_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isSecret',
                default_value: false,
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
