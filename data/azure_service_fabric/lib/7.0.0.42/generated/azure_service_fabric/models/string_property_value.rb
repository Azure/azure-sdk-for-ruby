# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes a Service Fabric property value of type String.
    #
    class StringPropertyValue < PropertyValue

      include MsRestAzure


      def initialize
        @Kind = "String"
      end

      attr_accessor :Kind

      # @return [String] The data of the property value.
      attr_accessor :data


      #
      # Mapper for StringPropertyValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'String',
          type: {
            name: 'Composite',
            class_name: 'StringPropertyValue',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Data',
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
