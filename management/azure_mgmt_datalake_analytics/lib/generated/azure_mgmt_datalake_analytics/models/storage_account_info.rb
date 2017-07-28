# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # Azure Storage account information.
    #
    class StorageAccountInfo < SubResource
      # @return [String] the access key associated with this Azure Storage
      # account that will be used to connect to it.
      attr_accessor :access_key

      # @return [String] the optional suffix for the storage account.
      attr_accessor :suffix


      #
      # Mapper for StorageAccountInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountInfo',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountInfo',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              access_key: {
                required: true,
                serialized_name: 'properties.accessKey',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                required: false,
                serialized_name: 'properties.suffix',
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
