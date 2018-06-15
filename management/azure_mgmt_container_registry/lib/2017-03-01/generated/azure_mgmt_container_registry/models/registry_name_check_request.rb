# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_03_01
  module Models
    #
    # A request to check whether a container registry name is available.
    #
    class RegistryNameCheckRequest

      include MsRestAzure

      # @return [String] The name of the container registry.
      attr_accessor :name

      # @return [String] The resource type of the container registry. This
      # field must be set to 'Microsoft.ContainerRegistry/registries'. Default
      # value: 'Microsoft.ContainerRegistry/registries' .
      attr_accessor :type


      #
      # Mapper for RegistryNameCheckRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegistryNameCheckRequest',
          type: {
            name: 'Composite',
            class_name: 'RegistryNameCheckRequest',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 50,
                  MinLength: 5,
                  Pattern: '^[a-zA-Z0-9]*$'
                },
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.ContainerRegistry/registries',
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
