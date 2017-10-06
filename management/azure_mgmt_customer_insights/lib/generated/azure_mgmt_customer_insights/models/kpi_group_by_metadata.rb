# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInsights
  module Models
    #
    # The KPI GroupBy field metadata.
    #
    class KpiGroupByMetadata

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] The display name.
      attr_accessor :display_name

      # @return [String] The name of the field.
      attr_accessor :field_name

      # @return [String] The type of the field.
      attr_accessor :field_type


      #
      # Mapper for KpiGroupByMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KpiGroupByMetadata',
          type: {
            name: 'Composite',
            class_name: 'KpiGroupByMetadata',
            model_properties: {
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              field_name: {
                required: false,
                serialized_name: 'fieldName',
                type: {
                  name: 'String'
                }
              },
              field_type: {
                required: false,
                serialized_name: 'fieldType',
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
