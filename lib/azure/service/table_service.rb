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
      # continuation_token    - String. A token used to enumerate the next page of results, when the list of tables is
      #                         larger than a single operation can return at once. (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179405
      #
      # Returns a tuple of (tables, next_table_token) of the table list and possibly a continuation token
      #  tables             - Array. A list of tuples of table_name (String), url (String), and updated time (DateTime)
      #  continuation_token - String. A token used to retrieve subsequent pages, if the result set is too large for a single operation to return 
      #
      def query_tables(next_table_token=nil)
        uri = collection_uri(next_table_token ? { "NextTable" => next_table_token } : {})

        response = call(:get, uri)
        entries = Azure::Entity::Serialization.entries_from_feed_xml response.body

        results = []
        entries.each do |entry|
          puts entry
          result = [entry['content']['TableName'], entry['url'], entry['updated']]
          results.push result
        end

        return results, response.headers["x-ms-continuation-NextTableName"]
      end

      # Public: Gets the access control list (ACL) for the table.
      #
      # table_name    - String. The table name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159100
      #
      # Returns a list of Azure::Entity::SignedIdentifier instances
      def get_table_acl(table_name)
        response = call(:get, table_uri(table_name, {"comp"=>"acl"}))

        signed_identifiers = []
        signed_identifiers = Azure::Entity::Serialization.signed_identifiers_from_xml response.body unless response.body == nil or response.body.length < 1
        signed_identifiers
      end

      # Public: Sets the access control list (ACL) for the table.
      #
      # table_name          - String. The table name.
      # signed_identifiers  - Array. A list of Azure::Entity::SignedIdentifier instances 
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159102
      #
      # Returns true on success
      def set_queue_acl(table_name, signed_identifiers=[])
        uri = table_uri(table_name, {"comp"=>"acl"})
        body = nil
        body = Azure::Entity::Serialization.signed_identifiers_to_xml signed_identifiers if signed_identifiers && signed_identifiers.length > 0

        response = call(:put, uri, body, {})
        response.success?
      end

      # Public: Inserts new entity to the table.
      #
      # table_name    - String. The table name
      # partition_key - String. The partition key
      # row_key       - String. The row key
      # entity_values - Hash. A hash of the name/value pairs for the entity. 
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179433
      #
      # Returns true on success
      def insert_entity(table_name, partition_key, row_key, entity_values)
        body = Azure::Entity::Serialization.hash_to_entry_xml({ 
            "PartitionKey" => partition_key, 
            "RowKey" => row_key
          }.merge(entity_values) ).to_xml

        response = call(:post, entities_uri(table_name), body)
        response.success?
      end

      # Public: Queries entities for the given table name
      #
      # table_name    - String. The table name
      # partition_key - String. The partition key (optional)
      # row_key       - String. The row key (optional)
      # select        - Array. An array of property names to return (optional)
      # filter        - String. A filter expression (optional)
      # top           - Integer. A limit for the number of results returned (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179421
      #
      # Returns a tuple of (results, continuation_token) on success
      #   results             - List. A list of entities, where each entity is a Hash with the format { :url=>"...", :update=>"...", :properties=> { ... } }
      #   continuation_token  - Hash. A token used to retrieve subsequent pages, if the result set is too large for a single operation to return 
      def query_entities(table_name, partition_key=nil, row_key=nil, select=nil, filter=nil, top=nil, continuation_token=nil)
        query ={}
        query["$select"] = select.join ',' if select
        query["$filter"] = filter if filter
        query["$top"] = top.to_s if top unless partition_key and row_key
        query["NextPartitionKey"] = continuation_token[:next_partition_key] if continuation_token and continuation_token[:next_partition_key]
        query["NextRowKey"] = continuation_token[:next_row_key] if continuation_token and continuation_token[:next_row_key]

        uri = entities_uri(table_name, partition_key, row_key, query)

        response = call(:get, uri, nil, { "DataServiceVersion" => "2.0;NetFx"})

        if partition_key and row_key
          results = [Azure::Entity::Serialization.hash_from_entry_xml(response.body)]
        else
          results = Azure::Entity::Serialization.entries_from_feed_xml(response.body)
        end

        return results, response.headers["x-ms-continuation-NextPartitionKey"] ? { :next_partition_key=> response.headers["x-ms-continuation-NextPartitionKey"], :next_row_key => response.headers["x-ms-continuation-NextRowKey"]} : nil
      end

      # Public: Updates and existing entity in the table.
      #
      # table_name    - String. The table name
      # partition_key - String. The partition key
      # row_key       - String. The row key
      # entity_values - Hash. A hash of the name/value pairs for the entity. 
      # if_match      - String. A matching condition which is required for update (optional, Default="*")
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179427
      #
      # Returns true on success
      def update_entity(table_name, partition_key, row_key, entity_values, if_match=nil)
        body = Azure::Entity::Serialization.hash_to_entry_xml(entity_values).to_xml
        response = call(:put, entities_uri(table_name, partition_key, row_key), body, {"If-Match"=> if_match || "*"})
        response.success?
      end

      # Public: Generate the URI for the collection of tables.
      #
      # Returns a URI
      def collection_uri(query={})
        generate_uri("Tables", query)
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
      def entities_uri(table_name, partition_key=nil, row_key=nil, query={})
        return table_name if table_name.kind_of? ::URI

        path = if partition_key && row_key
          "%s(PartitionKey='%s',RowKey='%s')" % [
            table_name, partition_key, row_key
          ]
        else
          "%s()" % table_name
        end

        uri = generate_uri(path)
        qs = []
        if query
          query.each do | key, val |
            if key[0] == "$"
              qs.push "#{key}#{::URI.encode_www_form(""=>val)}"
            else
              qs.push ::URI.encode_www_form(key=>val)
            end
          end
        end
        uri.query = qs.join '&'
        uri
      end
    end
  end
end