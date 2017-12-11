# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_02_01
  module Models
    #
    # Model object.
    #
    #
    class DeploymentExportResult

      include MsRestAzure

      # @return The template content.
      attr_accessor :template


      #
      # Mapper for DeploymentExportResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeploymentExportResult',
          type: {
            name: 'Composite',
            class_name: 'DeploymentExportResult',
            model_properties: {
              template: {
                required: false,
                serialized_name: 'template',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
