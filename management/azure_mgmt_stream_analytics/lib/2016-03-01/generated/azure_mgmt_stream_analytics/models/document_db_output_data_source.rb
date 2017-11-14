# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes a DocumentDB output data source.
    #
    class DocumentDbOutputDataSource < OutputDataSource

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Microsoft.Storage/DocumentDB"
      end

      attr_accessor :type

      # @return [String] The DocumentDB account name or ID. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :account_id

      # @return [String] The account key for the DocumentDB account. Required
      # on PUT (CreateOrReplace) requests.
      attr_accessor :account_key

      # @return [String] The name of the DocumentDB database. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :database

      # @return [String] The collection name pattern for the collections to be
      # used. The collection name format can be constructed using the optional
      # {partition} token, where partitions start from 0. See the DocumentDB
      # section of
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output
      # for more information. Required on PUT (CreateOrReplace) requests.
      attr_accessor :collection_name_pattern

      # @return [String] The name of the field in output events used to specify
      # the key for partitioning output across collections. If
      # 'collectionNamePattern' contains the {partition} token, this property
      # is required to be specified.
      attr_accessor :partition_key

      # @return [String] The name of the field in output events used to specify
      # the primary key which insert or update operations are based on.
      attr_accessor :document_id


      #
      # Mapper for DocumentDbOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Storage/DocumentDB',
          type: {
            name: 'Composite',
            class_name: 'DocumentDbOutputDataSource',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accountId',
                type: {
                  name: 'String'
                }
              },
              account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accountKey',
                type: {
                  name: 'String'
                }
              },
              database: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.database',
                type: {
                  name: 'String'
                }
              },
              collection_name_pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.collectionNamePattern',
                type: {
                  name: 'String'
                }
              },
              partition_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partitionKey',
                type: {
                  name: 'String'
                }
              },
              document_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.documentId',
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
