# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes one input parameter of a function.
    #
    class FunctionInput

      include MsRestAzure

      # @return [String] The (Azure Stream Analytics supported) data type of
      # the function input parameter. A list of valid Azure Stream Analytics
      # data types are described at
      # https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
      attr_accessor :data_type

      # @return [Boolean] A flag indicating if the parameter is a configuration
      # parameter. True if this input parameter is expected to be a constant.
      # Default is false.
      attr_accessor :is_configuration_parameter


      #
      # Mapper for FunctionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FunctionInput',
          type: {
            name: 'Composite',
            class_name: 'FunctionInput',
            model_properties: {
              data_type: {
                required: false,
                serialized_name: 'dataType',
                type: {
                  name: 'String'
                }
              },
              is_configuration_parameter: {
                required: false,
                serialized_name: 'isConfigurationParameter',
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
