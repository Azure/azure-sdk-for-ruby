# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  module Models
    #
    # The gallery artifact version source.
    #
    class GalleryArtifactVersionSource

      include MsRestAzure

      # @return [String] The id of the gallery artifact version source. Can
      # specify a disk uri, snapshot uri, user image or storage account
      # resource.
      attr_accessor :id

      # @return [String] The uri of the gallery artifact version source.
      # Currently used to specify vhd/blob source.
      attr_accessor :uri


      #
      # Mapper for GalleryArtifactVersionSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryArtifactVersionSource',
          type: {
            name: 'Composite',
            class_name: 'GalleryArtifactVersionSource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uri',
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
