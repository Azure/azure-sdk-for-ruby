require "azure/core/service"
require "azure/core/utils/queryable"
require "azure/tables/auth/shared_key"
require "azure/tables/auth/shared_key_lite"
require "azure/tables/uri"
require "azure/atom"

module Azure
  module Tables
    class Service < Core::Service
      def initialize(signer=Azure::Tables::Auth::SharedKey.new)
        super(signer)
      end
    end

    module Services
      # Public: Get a list of tables from the server.
      class QueryTables < Service
        include Core::Utils::Queryable

        # Public: Invoke the service.
        #
        # query - A hash of options.
        #         :filter - A string to filter results.
        #         :top    - Returns only the top n tables from the set.
        #
        # To read more about supported query filters check this link.
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd894031
        #
        # Returns a Response.
        def call(query)
          uri = Tables::URI.collection
          query.delete(:select)
          uri.query = build_query(query)
          super(:get, uri) do |request|
            request.headers["DataServiceVersion"] = "2.0;NetFx"
          end
        end
      end

      # Public: Find a single table by name.
      class FetchTable < Service
        # Public: Invoke the service.
        #
        # name - The name of the table.
        #
        # Returns a Response.
        def call(name)
          uri = Tables::URI.table(name)
          super(:get, uri)
        end
      end

      # Public: Create a table.
      class CreateTable < Service
        # Public: Invoke the service.
        #
        # table_name - A String with the table name.
        #
        # Returns a Response.
        def call(table_name)
          body = Atom::Entry.new do |entry|
            entry.properties["TableName"] = table_name
          end

          super(:post, Tables::URI.collection, body.to_xml)
        end
      end

      # Public: Delete a table.
      class DeleteTable < Service
        # Public: Invoke the service.
        #
        # table_name - A String with the table name.
        #
        # Returns a Response.
        def call(table_name)
          super(:delete, Tables::URI.table(table_name))
        end
      end

      # Public: Insert an entity into a table.
      class InsertEntity < Service
        # Public: Invoke the service.
        #
        # table_name - A String with the table name.
        # attributes - A Hash of entity attributes. The hash *must* contain the
        #              keys: "PartitionKey" and "RowKey".
        #
        # Returns a Response.
        def call(table_name, attributes)
          body = Atom::Entry.new do |entry|
            entry.updated = Time.now.utc
            entry.properties.merge(attributes)
          end

          super(:post, Tables::URI.entities(table_name), body.to_xml)
        end
      end

      # Public: Replace the attributes of an existing entity.
      class ReplaceEntity < Service
        # Public: Invoke the service.
        #
        # table_name - A String with the table name.
        # attributes - A Hash of entity attributes. The hash *must* contain the
        #              keys: "PartitionKey" and "RowKey".
        # etag       - The condition to perform the update. "*" will force an
        #              unconditional update.
        #
        # Returns a Response.
        def call(table_name, attributes, etag)
          uri = Tables::URI.entities(
            table_name,
            attributes.fetch("PartitionKey"),
            attributes.fetch("RowKey")
          )

          body = Atom::Entry.new do |entry|
            entry.id = uri
            entry.updated = Time.now.utc
            entry.properties.merge(attributes)
          end

          super(:put, uri, body.to_xml) do |request|
            request.headers["If-Match"] = etag
          end
        end
      end

      # Public: Update only certain properties of an entity.
      class MergeEntity < Service
        # Public: Invoke the service.
        #
        # uri        - The URI of the Entity we're updating.
        # attributes - A Hash of new entity attributes.
        # etag       - The condition to perform the update. "*" will force an
        #              unconditional update.
        #
        # Returns a Response.
        def call(uri, attributes, etag)
          body = Atom::Entry.new do |entry|
            entry.id = uri
            entry.updated = Time.now.utc
            entry.properties.merge(attributes)
          end

          super(:post, uri, body.to_xml) do |request|
            request.headers["If-Match"] = etag
            request.headers["X-HTTP-Method"] = "MERGE"
          end
        end
      end

      # Public: Delete an Entity
      class DeleteEntity < Service
        # Public: Invoke the service.
        #
        # uri  - The URI of the Entity we're deleting.
        # etag - The condition to perform the update. "*" will force an
        #        unconditional update.
        #
        # Returns a Response.
        def call(uri, etag)
          super(:delete, uri) do |request|
            request.headers["If-Match"] = etag
          end
        end
      end

      # Public: Get entities from a given table.
      class QueryEntities < Service
        include Core::Utils::Queryable

        # Public: Invoke the service.
        #
        # table_name - A String with the table name.
        # query      - A hash of options.
        #              :partition_key - Only get entities with this PartitionKey
        #                               (optional, but :row_key must also be
        #                               included).
        #              :row_key       - Only get entities with this RowKey
        #                               (optional, but :partition_key must also
        #                               be included).
        #              :select        - An array with property names. Only these
        #                               properties are provided from the
        #                               returned returned set of entities.
        #              :filter        - A string to filter results.
        #              :top           - Returns only the top n tables or entities from the set.
        #
        # To read more about supported query filters check this link.
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd894031
        #
        # Returns a Response.
        def call(table_name, query)
          uri = Tables::URI.entities(
            table_name,
            query.fetch(:partition_key, nil),
            query.fetch(:row_key, nil)
          )

          uri.query = build_query(query)

          super(:get, uri) do |request|
            request.headers["DataServiceVersion"] = "2.0;NetFx"
          end
        end
      end
    end
  end
end
