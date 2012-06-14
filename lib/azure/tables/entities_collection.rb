require "azure/tables"

module Azure
  module Tables

    class EntitiesCollection < Array

      # Public: Create a EntitiesCollection instance.
      #
      # table - Azure::Tables::Table instace where entities in this class belongs to.
      # query - A Hash with the query options passed to the server to get the feed.
      #
      # Returns the instance.
      def initialize(table, query = {}, service = Azure::Tables)
        @service = service
        @query = query
        @table = table
      end

      # Public: Creates an Azure::Tables::EntitiesCollection from entries feed.
      #
      # table   - An Azure::Tables::Table instance.
      # entries - An array of xml entries.
      # query   - A Hash with the query options passed to the server to get the feed.
      #
      # Returns an instance of Azure::Tables::EntitiesCollection.
      def self.from_entries(table, entries, query = {}, service = Azure::Tables)
        collection = self.new(table, query, service)

        entries.each do |entry|
          collection << Entity.from_entry(entry)
        end

        collection
      end

      # Public: Set continuation tokens for this collection
      def continuation_token(next_partition_key, next_row_key)
        @next_partition_key = next_partition_key
        @next_row_key = next_row_key
      end

      # Public: Indicates if the collection is a paginated result.
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd135718
      #
      # Returs boolean.
      def paginated?
        @next_partition_key ? true : false
      end

      # Public: Returns continuation results if exists.
      #
      # Returns an instance of Azure::Tables::EntitiesCollection
      def next
        return nil if !paginated?

        query = @query.merge({
          "NextPartitionKey" => @next_partition_key,
          "NextRowKey" => @next_row_key
        })

        @service.query_entities(@table, query)
      end
    end
  end
end
