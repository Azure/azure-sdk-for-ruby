# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the configuration parameter type.
    #
    class DscConfigurationParameter

      include MsRestAzure

      # @return [String] Gets or sets the type of the parameter.
      attr_accessor :type

      # @return [Boolean] Gets or sets a Boolean value to indicate whether the
      # parameter is madatory or not.
      attr_accessor :is_mandatory

      # @return [Integer] Get or sets the position of the parameter.
      attr_accessor :position

      # @return [String] Gets or sets the default value of parameter.
      attr_accessor :default_value


      #
      # Mapper for DscConfigurationParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscConfigurationParameter',
          type: {
            name: 'Composite',
            class_name: 'DscConfigurationParameter',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              is_mandatory: {
                required: false,
                serialized_name: 'isMandatory',
                type: {
                  name: 'Boolean'
                }
              },
              position: {
                required: false,
                serialized_name: 'position',
                type: {
                  name: 'Number'
                }
              },
              default_value: {
                required: false,
                serialized_name: 'defaultValue',
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
