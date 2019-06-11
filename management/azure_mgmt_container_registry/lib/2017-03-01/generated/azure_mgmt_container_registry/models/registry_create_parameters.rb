# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_03_01
  module Models
    #
    # The parameters for creating a container registry.
    #
    class RegistryCreateParameters

      include MsRestAzure

      # @return [Hash{String => String}] The tags for the container registry.
      attr_accessor :tags

      # @return [String] The location of the container registry. This cannot be
      # changed after the resource is created.
      attr_accessor :location

      # @return [Sku] The SKU of the container registry.
      attr_accessor :sku

      # @return [Boolean] The value that indicates whether the admin user is
      # enabled. Default value: false .
      attr_accessor :admin_user_enabled

      # @return [StorageAccountParameters] The parameters of a storage account
      # for the container registry. If specified, the storage account must be
      # in the same physical location as the container registry.
      attr_accessor :storage_account


      #
      # Mapper for RegistryCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegistryCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'RegistryCreateParameters',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              admin_user_enabled: {
                required: false,
                serialized_name: 'properties.adminUserEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              storage_account: {
                required: true,
                serialized_name: 'properties.storageAccount',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
