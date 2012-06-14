require "azure/configuration"
require "uri"

module Azure
  module Tables
    module URI
      # Public: generate the URI for the collection of tables.
      #
      # host - The host of the API.
      #
      # Returns a URI.
      def self.collection(host=Azure.config.table_host)
        generate(host, "Tables")
      end

      # Public: generate the URI for a specific table.
      #
      # name - The table name. If this is a URI, we just return this.
      # host - The host of the API.
      #
      # Returns a URI.
      def self.table(name, host=Azure.config.table_host)
        return name if name.kind_of? ::URI
        generate(host, "Tables('#{name}')")
      end

      # Public: generate the URI for an entity or group of entities in a table.
      # If both the `partition_key` and `row_key` are specified, then the URI
      # will match the entity under those specific keys.
      #
      # table_name    - The table name.
      # partition_key - The desired partition key (optional).
      # row_key       - The desired row key (optional).
      # host          - The host of the API.
      #
      # Returns a URI.
      def self.entities(table_name, partition_key=nil, row_key=nil, host=Azure.config.table_host)
        return table_name if table_name.kind_of? ::URI

        path = if partition_key && row_key
          "%s(PartitionKey='%s',RowKey='%s')" % [
            table_name, partition_key, row_key
          ]
        else
          "%s()" % table_name
        end

        generate(host, path)
      end

      # Utility method to generate the URI.
      #
      # host - A String with the URI's host.
      # path - A String with the URI's path.
      #
      # Returns a URI.
      def self.generate(host, path)
        ::URI.parse(File.join(host, path))
      end
    end
  end
end
