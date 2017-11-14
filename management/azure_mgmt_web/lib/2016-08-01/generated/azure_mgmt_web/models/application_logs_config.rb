# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Application logs configuration.
    #
    class ApplicationLogsConfig

      include MsRestAzure

      include MsRest::JSONable
      # @return [FileSystemApplicationLogsConfig] Application logs to file
      # system configuration.
      attr_accessor :file_system

      # @return [AzureTableStorageApplicationLogsConfig] Application logs to
      # azure table storage configuration.
      attr_accessor :azure_table_storage

      # @return [AzureBlobStorageApplicationLogsConfig] Application logs to
      # blob storage configuration.
      attr_accessor :azure_blob_storage


      #
      # Mapper for ApplicationLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'ApplicationLogsConfig',
            model_properties: {
              file_system: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileSystem',
                type: {
                  name: 'Composite',
                  class_name: 'FileSystemApplicationLogsConfig'
                }
              },
              azure_table_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureTableStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AzureTableStorageApplicationLogsConfig'
                }
              },
              azure_blob_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBlobStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AzureBlobStorageApplicationLogsConfig'
                }
              }
            }
          }
        }
      end
    end
  end
end
