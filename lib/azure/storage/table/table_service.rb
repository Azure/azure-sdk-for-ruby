#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require 'azure/storage/service/storage_service'

require 'azure/storage/table/auth/shared_key'

require 'azure/storage/table/serialization'
require 'azure/storage/table/entity'

module Azure
  module Storage
    module Table
      class TableService < Azure::Storage::Service::StorageService

        def initialize
          super(Azure::Storage::Table::Auth::SharedKey.new)
          @host = Azure.config.table_host
          @default_timeout = 30
        end

        # Public: Creates new table in the storage account
        #
        # table_name    - String. The table name
        # options       - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout      - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135729
        #
        # Returns true on success
        def create_table(table_name, options={})
          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml({"TableName" => table_name}).to_xml
          call(:post, collection_uri(query), body)
          nil
        end

        # Public: Deletes the specified table and any data it contains.
        #
        # table_name    - String. The table name
        # options       - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout      - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179387
        #
        # Returns true on success
        def delete_table(table_name, options={})
          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          call(:delete, table_uri(table_name, query))
          nil
        end

        # Public: Gets the table.
        #
        # table_name    - String. The table name
        # options       - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout      - Integer. A timeout in seconds.
        #
        # Returns the last updated time for the table
        def get_table(table_name, options={})
          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          response = call(:get, table_uri(table_name, query))
          results = Azure::Storage::Table::Serialization.hash_from_entry_xml(response.body)
          results[:updated] 
        end

        # Public: Gets a list of all tables on the account.
        #
        # options             - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :next_table_token   - String. A token used to enumerate the next page of results, when the list of tables is
        #                       larger than a single operation can return at once. (optional)
        # :timeout            - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179405
        #
        # Returns a tuple of (tables, continuation_token) of the table list and possibly a continuation token
        #  tables             - Hash. A hash of tables and the time they were last updated: 
        #                        {
        #                           "TableName"=> "2012-10-03T09:35:31Z"
        #                        }
        #  continuation_token - String. A token used to retrieve subsequent pages, if the result set is too large for a 
        #                       single operation to return 
        #
        def query_tables(options={})
          query = { }
          query["NextTable"] = options[:next_table_token] if options[:next_table_token]
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          uri = collection_uri(query)

          response = call(:get, uri)
          entries = Azure::Storage::Table::Serialization.entries_from_feed_xml(response.body) || []

          results = {}
          entries.each do |entry|
            results[entry[:properties]['TableName']] = entry[:updated]
          end

          return results, response.headers["x-ms-continuation-NextTableName"]
        end

        # Public: Gets the access control list (ACL) for the table.
        #
        # table_name    - String. The table name.
        # options       - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout      - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159100
        #
        # Returns a list of Azure::Entity::SignedIdentifier instances
        def get_table_acl(table_name, options={})
          query = { "comp" => "acl" }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          response = call(:get, table_uri(table_name, query))

          signed_identifiers = []
          signed_identifiers = Azure::Storage::Table::Serialization.signed_identifiers_from_xml response.body unless response.body == nil or response.body.length < 1
          signed_identifiers
        end

        # Public: Sets the access control list (ACL) for the table.
        #
        # table_name           - String. The table name.
        # options              - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :signed_identifiers  - Array. A list of Azure::Entity::SignedIdentifier instances
        # :timeout             - Integer. A timeout in seconds.
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159102
        #
        # Returns true on success
        def set_table_acl(table_name, options={})
          query = { "comp" => "acl" }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          uri = generate_uri(table_name, query)
          body = nil
          body = Azure::Storage::Table::Serialization.signed_identifiers_to_xml options[:signed_identifiers] if options[:signed_identifiers] && options[:signed_identifiers].length > 0

          call(:put, uri, body, {})
          nil
        end

        # Public: Inserts new entity to the table.
        #
        # table_name           - String. The table name
        # entity_values        - Hash. A hash of the name/value pairs for the entity. 
        # options              - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout             - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179433
        #
        # Returns a Azure::Entity::Table::Entity
        def insert_entity(table_name, entity_values, options={})
          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          response = call(:post, entities_uri(table_name, nil, nil, query), body)
          
          result = Azure::Storage::Table::Serialization.hash_from_entry_xml(response.body)

          Entity.new do |entity|
            entity.table = table_name
            entity.updated = result[:updated]
            entity.etag = response.headers["etag"] || result[:etag]
            entity.properties = result[:properties]
          end
        end

        # Public: Queries entities for the given table name
        #
        # table_name          - String. The table name
        # options             - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :PartitionKey       - String. The partition key (optional)
        # :RowKey             - String. The row key (optional)
        # :select             - Array. An array of property names to return (optional)
        # :filter             - String. A filter expression (optional)
        # :top                - Integer. A limit for the number of results returned (optional)
        # :continuation_token - Hash. The continuation token.
        # :timeout            - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179421
        #
        # Returns a tuple of (results, continuation_token) on success
        #   results             - List. A list of Azure::Entity::Table::Entity instances
        #   continuation_token  - Hash. A token used to retrieve subsequent pages, if the result set is too large for a single operation to return 
        def query_entities(table_name, options={})
          query ={}
          query["$select"] = encodeODataUriValues(options[:select]).join ',' if options[:select]
          query["$filter"] = options[:filter] if options[:filter]
          query["$top"] = encodeODataUriValue(options[:top].to_s) if options[:top] unless options[:PartitionKey] and options[:RowKey]
          query["NextPartitionKey"] = encodeODataUriValue(options[:continuation_token][:next_partition_key]) if options[:continuation_token] and options[:continuation_token][:next_partition_key]
          query["NextRowKey"] = encodeODataUriValue(options[:continuation_token][:next_row_key]) if options[:continuation_token] and options[:continuation_token][:next_row_key]
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          uri = entities_uri(table_name, options[:PartitionKey], options[:RowKey], query)

          response = call(:get, uri, nil, { "DataServiceVersion" => "2.0;NetFx"})

          entities = []

          results = (options[:PartitionKey] and options[:RowKey]) ? [Azure::Storage::Table::Serialization.hash_from_entry_xml(response.body)] : Azure::Storage::Table::Serialization.entries_from_feed_xml(response.body)
          
          results.each do |result|
            entity = Entity.new do |e|
              e.table = table_name
              e.updated = result[:updated]
              e.etag = response.headers["etag"] || result[:etag]
              e.properties = result[:properties]
            end
            entities.push entity
          end if results

          continuation_token = nil
          continuation_token = { 
            :next_partition_key=> response.headers["x-ms-continuation-NextPartitionKey"], 
            :next_row_key => response.headers["x-ms-continuation-NextRowKey"]
            } if response.headers["x-ms-continuation-NextPartitionKey"]

          return entities, continuation_token 
        end

        # Public: Updates an existing entity in a table. The Update Entity operation replaces 
        # the entire entity and can be used to remove properties.
        #
        # table_name             - String. The table name
        # entity_values          - Hash. A hash of the name/value pairs for the entity.
        # options                - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :if_match              - String. A matching condition which is required for update (optional, Default="*")
        # :create_if_not_exists  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
        #                          that entity will be inserted. If false, the operation will fail. (optional, Default=false)
        # :timeout               - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179427
        #
        # Returns the ETag for the entity on success 
        def update_entity(table_name, entity_values, options={})
          if_match = "*"
          if_match = options[:if_match] if options[:if_match]

          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          uri = entities_uri(table_name, entity_values["PartitionKey"], entity_values["RowKey"], query)

          headers = {}
          headers["If-Match"] = if_match || "*" unless options[:create_if_not_exists]

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

          response = call(:put, uri, body, headers)
          response.headers["etag"]
        end

        # Public: Updates an existing entity by updating the entity's properties. This operation
        # does not replace the existing entity, as the update_entity operation does.
        #
        # table_name             - String. The table name
        # entity_values          - Hash. A hash of the name/value pairs for the entity.
        # options                - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :if_match              - String. A matching condition which is required for update (optional, Default="*")
        # :create_if_not_exists  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
        #                          that entity will be inserted. If false, the operation will fail. (optional, Default=false)
        # :timeout               - Integer. A timeout in seconds.
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179392
        # 
        # Returns the ETag for the entity on success 
        def merge_entity(table_name, entity_values, options={})
          if_match = "*"
          if_match = options[:if_match] if options[:if_match]

          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          uri = entities_uri(table_name, entity_values["PartitionKey"], entity_values["RowKey"], query)

          headers = { "X-HTTP-Method"=> "MERGE" }
          headers["If-Match"] = if_match || "*" unless options[:create_if_not_exists]

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

          response = call(:post, uri, body, headers)
          response.headers["etag"]
        end

        # Public: Inserts or updates an existing entity within a table by merging new property values into the entity.
        #
        # table_name            - String. The table name
        # entity_values         - Hash. A hash of the name/value pairs for the entity.
        # options               - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout              - Integer. A timeout in seconds.
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452241
        # 
        # Returns the ETag for the entity on success 
        def insert_or_merge_entity(table_name, entity_values, options={})
          options[:create_if_not_exists] = true
          merge_entity(table_name, entity_values, options)
        end

        # Public: Inserts or updates a new entity into a table.
        #
        # table_name            - String. The table name
        # entity_values         - Hash. A hash of the name/value pairs for the entity.
        # options               - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout              - Integer. A timeout in seconds.
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452242
        #
        # Returns the ETag for the entity on success 
        def insert_or_replace_entity(table_name, entity_values, options={})
          options[:create_if_not_exists] = true
          update_entity(table_name, entity_values, options)
        end

        # Public: Deletes an existing entity in the table.
        #
        # table_name     - String. The table name
        # partition_key  - String. The partition key
        # row_key        - String. The row key
        # options        - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :if_match      - String. A matching condition which is required for update (optional, Default="*")
        # :timeout       - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135727
        #
        # Returns true on success
        def delete_entity(table_name, partition_key, row_key, options={})
          if_match = "*"
          if_match = options[:if_match] if options[:if_match]

          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          call(:delete, entities_uri(table_name, partition_key, row_key, query), nil, { "If-Match"=> if_match })
          nil
        end

        # Public: Executes a batch of operations.
        #
        # batch         - The Azure::Storage::Table::Batch instance to execute.
        # options       - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout      - Integer. A timeout in seconds.
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd894038
        #
        # Returns an array of results, one for each operation in the batch
        def execute_batch(batch, options={})
          headers = {
            "Content-Type"=> "multipart/mixed; boundary=#{batch.batch_id}",
            "Accept"=> 'application/atom+xml,application/xml',
            'Accept-Charset'=> 'UTF-8'
          }

          query = { }
          query["timeout"] = options[:timeout].to_s if options[:timeout]

          body = batch.to_body
          response = call(:post, generate_uri("/$batch", query), body, headers)
          batch.parse_response(response)
        end

        # Public: Gets an existing entity in the table.
        #
        # table_name    - String. The table name
        # partition_key - String. The partition key
        # row_key       - String. The row key
        # options       - Hash. Optional parameters. 
        #
        # Accepted key/value pairs in options parameter are:
        # :timeout      - Integer. A timeout in seconds.
        #
        # Returns an Azure::Storage::Table::Entity instance on success
        def get_entity(table_name, partition_key, row_key, options={})
          options[:PartitionKey] = partition_key
          options[:RowKey] = row_key
          results, _ = query_entities(table_name, options)
          results.length > 0 ? results[0] : nil
        end

        # Protected: Generate the URI for the collection of tables.
        #
        # Returns a URI
        protected
        def collection_uri(query={})
          generate_uri("Tables", query)
        end

        # Protected: Generate the URI for a specific table.
        #
        # name - The table name. If this is a URI, we just return this
        #
        # Returns a URI
        protected
        def table_uri(name, query={})
          return name if name.kind_of? ::URI
          generate_uri("Tables('#{name}')", query)
        end

        # Protected: Generate the URI for an entity or group of entities in a table.
        # If both the 'partition_key' and 'row_key' are specified, then the URI
        # will match the entity under those specific keys.
        #
        # table_name    - The table name
        # partition_key - The desired partition key (optional)
        # row_key       - The desired row key (optional)
        #
        # Returns a URI
        protected
        def entities_uri(table_name, partition_key=nil, row_key=nil, query={})
          return table_name if table_name.kind_of? ::URI

          path = if partition_key && row_key
            "%s(PartitionKey='%s',RowKey='%s')" % [
              table_name, encodeODataUriValue(partition_key), encodeODataUriValue(row_key)
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
          uri.query = qs.join '&' if qs.length > 0
          uri
        end

        protected
        def encodeODataUriValues(values)
          values.each{|key, value| values[key] = encodeODataUriValue(value) }
          values
        end

        protected
        def encodeODataUriValue(value)
          # Replace each single quote (') with double single quotes ('') not double
          # quotes (")
          value = value.gsub("'", "''")

          # Encode the special URL characters
          value = URI.escape(value)

          value
        end
      end
    end
  end
end