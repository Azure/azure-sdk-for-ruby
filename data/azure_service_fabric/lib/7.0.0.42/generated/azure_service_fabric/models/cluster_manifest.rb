# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about the cluster manifest.
    #
    class ClusterManifest

      include MsRestAzure

      # @return [String] The contents of the cluster manifest file.
      attr_accessor :manifest


      #
      # Mapper for ClusterManifest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterManifest',
          type: {
            name: 'Composite',
            class_name: 'ClusterManifest',
            model_properties: {
              manifest: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Manifest',
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
