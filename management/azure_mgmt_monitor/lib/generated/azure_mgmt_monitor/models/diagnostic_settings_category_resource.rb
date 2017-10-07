# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # The diagnostic settings category resource.
    #
    class DiagnosticSettingsCategoryResource < ProxyOnlyResource

      include MsRestAzure

      # @return [CategoryType] The type of the diagnostic settings category.
      # Possible values include: 'Metrics', 'Logs'
      attr_accessor :category_type


      #
      # Mapper for DiagnosticSettingsCategoryResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticSettingsCategoryResource',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticSettingsCategoryResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              category_type: {
                required: false,
                serialized_name: 'properties.categoryType',
                type: {
                  name: 'Enum',
                  module: 'CategoryType'
                }
              }
            }
          }
        }
      end
    end
  end
end
