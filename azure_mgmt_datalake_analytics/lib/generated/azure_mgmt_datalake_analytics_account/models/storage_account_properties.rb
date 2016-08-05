# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Account
  module Models
    #
    # Azure Storage account properties information.
    #
    class StorageAccountProperties

      include MsRestAzure

      # @return [String] the access key associated with this Azure Storage
      # account that will be used to connect to it.
      attr_accessor :access_key

      # @return [String] the optional suffix for the Data Lake account.
      attr_accessor :suffix


      #
      # Mapper for StorageAccountProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountProperties',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountProperties',
            model_properties: {
              access_key: {
                required: true,
                serialized_name: 'accessKey',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                required: false,
                serialized_name: 'suffix',
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
