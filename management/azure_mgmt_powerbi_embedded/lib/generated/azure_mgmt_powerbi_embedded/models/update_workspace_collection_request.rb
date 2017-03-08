# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  module Models
    #
    # Model object.
    #
    #
    class UpdateWorkspaceCollectionRequest

      include MsRestAzure

      # @return [Hash{String => String}]
      attr_accessor :tags

      # @return [AzureSku] . Default value: {} .
      attr_accessor :sku


      #
      # Mapper for UpdateWorkspaceCollectionRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateWorkspaceCollectionRequest',
          type: {
            name: 'Composite',
            class_name: 'UpdateWorkspaceCollectionRequest',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
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
              sku: {
                required: false,
                is_constant: true,
                serialized_name: 'sku',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'AzureSku'
                }
              }
            }
          }
        }
      end
    end
  end
end
