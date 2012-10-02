#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'azure/service/storage_service'
require 'azure/tables/auth/shared_key'
require 'azure/tables/atom'

module Azure
  module Service
    class TableService < StorageService
      def initialize
        super(Azure::Tables::Auth::SharedKey.new)
        @host = Azure.config.table_host
        @default_timeout = 30
      end

      # Public: Creates new table in the storage account
      #
      # table_name    - String. The table name
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135729
      #
      # Returns true on success
      def create_table(table_name)
        body = Azure::Entity::Serialization.hash_to_entry_xml({"TableName" => table_name}).to_xml
        response = call(:post, collection_uri, body)
        response.success?
      end

      # Public: Deletes the specified table and any data it contains.
      #
      # table_name    - String. The table name
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179387
      #
      # Returns true on success
      def delete_table(table_name)
        response = call(:delete, table_uri(table_name))
        response.success?
      end

      # Public: Gets the table.
      #
      # table_name    - String. The table name
      #
      # Returns a tuple of (url, updated) on success:
      #  url      - Uri. The url of the table resource
      #  updated  - DateTime. The last time the table was updated.
      #
      def get_table(table_name)
        response = call(:get, table_uri(table_name))
        results = Azure::Entity::Serialization.hash_from_entry_xml(response.body)

        return results['url'], results['updated']
      end

      # Public: Gets a list of all tables on the account.
      #
      # next_table_token      - String. A token used to enumerate the next page of results, when the list of tables is
      #                         larger than a single operation can return at once. (optional)
      #
      # See 
      #
      # Returns a tuple of (tables, next_table_token) of the table list and possibly a continuation token
      #  tables             - Array. A list of tuples of table_name (String), url (String), and updated time (DateTime)
      #  next_table_token   - DateTime. A 
      #
      def query_tables(next_table_token=nil)
        uri = collection_uri
        uri.query = ::URI.encode_www_form( { "NextTable" => next_table_token }) if next_table_token

        response = call(:get, uri)
        entries = Azure::Entity::Serialization.entries_from_feed_xml(response.body)

        results = []
        entries.each do |entry|
          result = [entry['content']['TableName'], entry['url'], entry['updated']]
          results.push result
        end

        return results, response.headers["x-ms-continuation-NextTableName"]
      end

      # Public: Generate the URI for the collection of tables.
      #
      # Returns a URI
      def collection_uri()
        generate_uri("Tables")
      end

      # Public: Generate the URI for a specific table.
      #
      # name - The table name. If this is a URI, we just return this
      #
      # Returns a URI
      def table_uri(name)
        return name if name.kind_of? ::URI
        generate_uri("Tables('#{name}')")
      end

      # Public: Generate the URI for an entity or group of entities in a table.
      # If both the 'partition_key' and 'row_key' are specified, then the URI
      # will match the entity under those specific keys.
      #
      # table_name    - The table name
      # partition_key - The desired partition key (optional)
      # row_key       - The desired row key (optional)
      #
      # Returns a URI
      def entities_uri(table_name, partition_key=nil, row_key=nil)
        return table_name if table_name.kind_of? ::URI

        path = if partition_key && row_key
          "%s(PartitionKey='%s',RowKey='%s')" % [
            table_name, partition_key, row_key
          ]
        else
          "%s()" % table_name
        end

        generate_uri(path)
      end
    end
  end
end