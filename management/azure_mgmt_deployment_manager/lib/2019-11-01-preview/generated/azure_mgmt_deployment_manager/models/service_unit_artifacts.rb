# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # Defines the artifacts of a service unit.
    #
    class ServiceUnitArtifacts

      include MsRestAzure

      # @return [String] The full URI of the ARM template file with the SAS
      # token.
      attr_accessor :template_uri

      # @return [String] The full URI of the ARM parameters file with the SAS
      # token.
      attr_accessor :parameters_uri

      # @return [String] The path to the ARM template file relative to the
      # artifact source.
      attr_accessor :template_artifact_source_relative_path

      # @return [String] The path to the ARM parameters file relative to the
      # artifact source.
      attr_accessor :parameters_artifact_source_relative_path


      #
      # Mapper for ServiceUnitArtifacts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceUnitArtifacts',
          type: {
            name: 'Composite',
            class_name: 'ServiceUnitArtifacts',
            model_properties: {
              template_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'templateUri',
                type: {
                  name: 'String'
                }
              },
              parameters_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parametersUri',
                type: {
                  name: 'String'
                }
              },
              template_artifact_source_relative_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'templateArtifactSourceRelativePath',
                type: {
                  name: 'String'
                }
              },
              parameters_artifact_source_relative_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parametersArtifactSourceRelativePath',
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
