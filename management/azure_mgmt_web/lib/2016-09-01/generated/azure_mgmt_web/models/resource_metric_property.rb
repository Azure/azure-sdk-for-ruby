# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Resource metric property.
    #
    class ResourceMetricProperty

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Key for resource metric property.
      attr_accessor :key

      # @return [String] Value of pair.
      attr_accessor :value


      #
      # Mapper for ResourceMetricProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceMetricProperty',
          type: {
            name: 'Composite',
            class_name: 'ResourceMetricProperty',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
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
