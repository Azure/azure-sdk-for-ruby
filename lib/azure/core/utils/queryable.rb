require "uri"

module Azure
  module Core
    module Utils
      # Convenience module to build query strings.
      module Queryable
        # Public: Build a query from a options hash.
        #
        # options - A hash of options.
        #           :partition_key - Only get entities with this PartitionKey
        #                            (optional, but :row_key must also be
        #                            included).
        #           :row_key       - Only get entities with this RowKey
        #                            (optional, but :partition_key must also
        #                            be included).
        #           :select        - An array with property names. Only these
        #                            properties are provided from the
        #                            returned returned set of entities.
        #           :filter        - A string to filter results.
        #           :top           - Returns only the top n results from the set.
        #           :skip          - Skips the first n results from the set.
        #
        # Returns a query string
        def build_query(options)
          select = options.fetch(:select, nil)
          select = "$select=#{select.join(",")}" if select

          filter = options.fetch(:filter, nil)
          filter = "$filter=#{filter}" if filter

          top = options.fetch(:top, nil)
          top = "$top=#{top}" if top

          skip = options.fetch(:skip, nil)
          skip = "$skip=#{skip}" if skip

          next_partition_key = options.fetch("NextPartitionKey", nil)
          next_partition_key = "NextPartitionKey=#{next_partition_key}" if next_partition_key

          next_row_key = options.fetch("NextRowKey", nil)
          next_row_key = "NextRowKey=#{next_row_key}" if next_row_key

          next_table_name = options.fetch("NextTableName", nil)
          next_table_name = "NextTableName=#{next_table_name}" if next_table_name

          query = [next_table_name, next_partition_key, next_row_key,
              select, filter, top, skip].compact.join("&")

          query != "" ? ::URI.encode(query) : nil
        end

        # Public: Build a Hash with translated keys from a options hash.
        #
        # options - A hash of options.
        #           :top    - Returns only the top n results from the set.
        #           :skip   - Skips the first n results from the set.
        #
        # Returns a query string
        def translate_options_hash(options)
          hash = {}

          skip = options.fetch(:skip, nil)
          hash["$skip"] = skip if skip

          top = options.fetch(:top, nil)
          hash["$top"] = top if top

          hash
        end
      end
    end
  end
end
