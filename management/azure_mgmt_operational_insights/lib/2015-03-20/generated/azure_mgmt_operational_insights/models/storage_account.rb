# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # Describes a storage account connection.
    #
    class StorageAccount

      include MsRestAzure

      # @return [String] The Azure Resource Manager ID of the storage account
      # resource.
      attr_accessor :id

      # @return [String] The storage account key.
      attr_accessor :key


      #
      # Mapper for StorageAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccount',
          type: {
            name: 'Composite',
            class_name: 'StorageAccount',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              key: {
                required: true,
                serialized_name: 'key',
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
