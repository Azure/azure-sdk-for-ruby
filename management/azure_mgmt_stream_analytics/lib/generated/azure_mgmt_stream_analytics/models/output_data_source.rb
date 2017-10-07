# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes the data source that output will be written to.
    #
    class OutputDataSource

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.DataLake/Accounts"] = "AzureDataLakeStoreOutputDataSource"
      @@discriminatorMap["PowerBI"] = "PowerBIOutputDataSource"
      @@discriminatorMap["Microsoft.ServiceBus/Topic"] = "ServiceBusTopicOutputDataSource"
      @@discriminatorMap["Microsoft.ServiceBus/Queue"] = "ServiceBusQueueOutputDataSource"
      @@discriminatorMap["Microsoft.Storage/DocumentDB"] = "DocumentDbOutputDataSource"
      @@discriminatorMap["Microsoft.Sql/Server/Database"] = "AzureSqlDatabaseOutputDataSource"
      @@discriminatorMap["Microsoft.ServiceBus/EventHub"] = "EventHubOutputDataSource"
      @@discriminatorMap["Microsoft.Storage/Table"] = "AzureTableOutputDataSource"
      @@discriminatorMap["Microsoft.Storage/Blob"] = "BlobOutputDataSource"

      def initialize
        @type = "OutputDataSource"
      end

      attr_accessor :type


      #
      # Mapper for OutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OutputDataSource',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'OutputDataSource',
            class_name: 'OutputDataSource',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
