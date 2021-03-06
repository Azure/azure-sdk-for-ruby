# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes a service fabric volume resource.
    #
    class VolumeResourceDescription

      include MsRestAzure

      # @return [String] User readable description of the volume.
      attr_accessor :description

      # @return [String] Provider of the volume. Default value: 'SFAzureFile' .
      attr_accessor :provider

      # @return [VolumeProviderParametersAzureFile] This type describes a
      # volume provided by an Azure Files file share.
      attr_accessor :azure_file_parameters

      # @return [String] Volume resource name.
      attr_accessor :name


      #
      # Mapper for VolumeResourceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VolumeResourceDescription',
          type: {
            name: 'Composite',
            class_name: 'VolumeResourceDescription',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'properties.provider',
                default_value: 'SFAzureFile',
                type: {
                  name: 'String'
                }
              },
              azure_file_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureFileParameters',
                type: {
                  name: 'Composite',
                  class_name: 'VolumeProviderParametersAzureFile'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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
