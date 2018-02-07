# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedApplications::Mgmt::V2016_09_01_preview
  module Models
    #
    # Appliance artifact.
    #
    class ApplianceArtifact

      include MsRestAzure

      # @return [String] The appliance artifact name.
      attr_accessor :name

      # @return [String] The appliance artifact blob uri.
      attr_accessor :uri

      # @return [ApplianceArtifactType] The the appliance artifact type.
      # Possible values include: 'Template', 'Custom'
      attr_accessor :type


      #
      # Mapper for ApplianceArtifact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplianceArtifact',
          type: {
            name: 'Composite',
            class_name: 'ApplianceArtifact',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              uri: {
                required: false,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ApplianceArtifactType'
                }
              }
            }
          }
        }
      end
    end
  end
end
