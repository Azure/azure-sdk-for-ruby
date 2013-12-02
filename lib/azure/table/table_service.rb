#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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

require 'azure/table/auth/shared_key'

require 'azure/table/serialization'
require 'azure/table/entity'

module Azure
  module Table
    class TableService < Azure::Service::StorageService

      def initialize
        super(Azure::Table::Auth::SharedKey.new)
        @host = Azure.config.storage_table_host
      end

      # Public: Creates new table in the storage account
      #
      # ==== Attributes
      #
      # * +table_name+ - String. The table name
      # * +options+    - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      #
      # * +:timeout+   - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135729
      #
      # Returns nil on success
      def create_table(table_name, options={})
        query = { }
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        body = Azure::Table::Serialization.hash_to_entry_xml({"TableName" => table_name}).to_xml
        call(:post, collection_uri(query), body)
        nil
      end

      # Public: Deletes the specified table and any data it contains.
      #
      # ==== Attributes
      #
      # * +table_name+ - String. The table name
      # * +options+    - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+   - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179387
      #
      # Returns nil on success
      def delete_table(table_name, options={})
        query = { }
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        call(:delete, table_uri(table_name, query))
        nil
      end

      # Public: Gets the table.
      #
      # ==== Attributes
      #
      # * +table_name+ - String. The table name
      # * +options+    - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+   - Integer. A timeout in seconds.
      #
      # Returns the last updated time for the table
      def get_table(table_name, options={})
        query = { }
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        response = call(:get, table_uri(table_name, query))
        results = Azure::Table::Serialization.hash_from_entry_xml(response.body)
        results[:updated]
      end

      # Public: Gets a list of all tables on the account.
      #
      # ==== Attributes
      #
      # * +options+    - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:next_table_token+   - String. A token used to enumerate the next page of results, when the list of tables is
      #   larger than a single operation can return at once. (optional)
      # * +:timeout+            - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179405
      #
      # Returns an array with an extra continuation_token property on success
      def query_tables(options={})
        query = { }
        query["NextTable"] = options[:next_table_token] if options[:next_table_token]
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        uri = collection_uri(query)

        response = call(:get, uri)
        entries = Azure::Table::Serialization.entries_from_feed_xml(response.body) || []

        values = Azure::Service::EnumerationResults.new(entries)
        values.continuation_token = response.headers["x-ms-continuation-NextTableName"]
        values
      end

      # Public: Gets the access control list (ACL) for the table.
      #
      # ==== Attributes
      #
      # * +table_name+ - String. The table name
      # * +options+    - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+   - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159100
      #
      # Returns a list of Azure::Entity::SignedIdentifier instances
      def get_table_acl(table_name, options={})
        query = { "comp" => "acl" }
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        response = call(:get, generate_uri(table_name, query))

        signed_identifiers = []
        signed_identifiers = Azure::Table::Serialization.signed_identifiers_from_xml response.body unless response.body == nil or response.body.length < 1
        signed_identifiers
      end

      # Public: Sets the access control list (ACL) for the table.
      #
      # ==== Attributes
      #
      # * +table_name+ - String. The table name
      # * +options+    - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:signed_identifiers+  - Array. A list of Azure::Entity::SignedIdentifier instances
      # * +:timeout+             - Integer. A timeout in seconds.
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159102
      #
      # Returns nil on success
      def set_table_acl(table_name, options={})
        query = { "comp" => "acl" }
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        uri = generate_uri(table_name, query)
        body = nil
        body = Azure::Table::Serialization.signed_identifiers_to_xml options[:signed_identifiers] if options[:signed_identifiers] && options[:signed_identifiers].length > 0

        call(:put, uri, body, {})
        nil
      end

      # Public: Inserts new entity to the table.
      #
      #
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity. 
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+      - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179433
      #
      # Returns a Azure::Entity::Table::Entity
      def insert_entity(table_name, entity_values, options={})
        body = Azure::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

        query = { }
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        response = call(:post, entities_uri(table_name, nil, nil, query), body)
        
        result = Azure::Table::Serialization.hash_from_entry_xml(response.body)

        Entity.new do |entity|
          entity.table = table_name
          entity.updated = result[:updated]
          entity.etag = response.headers["etag"] || result[:etag]
          entity.properties = result[:properties]
        end
      end

      # Public: Queries entities for the given table name
      #
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:partition_key+      - String. The partition key (optional)
      # * +:row_key+            - String. The row key (optional)
      # * +:select+             - Array. An array of property names to return (optional)
      # * +:filter+             - String. A filter expression (optional)
      # * +:top+                - Integer. A limit for the number of results returned (optional)
      # * +:continuation_token+ - Hash. The continuation token.
      # * +:timeout+            - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179421
      #
      # Returns an array with an extra continuation_token property on success
      def query_entities(table_name, options={})
        query ={}
        query["$select"] = options[:select].join ',' if options[:select]
        query["$filter"] = options[:filter] if options[:filter]
        query["$top"] = options[:top].to_s if options[:top] unless options[:partition_key] and options[:row_key]
        query["NextPartitionKey"] = options[:continuation_token][:next_partition_key] if options[:continuation_token] and options[:continuation_token][:next_partition_key]
        query["NextRowKey"] = options[:continuation_token][:next_row_key] if options[:continuation_token] and options[:continuation_token][:next_row_key]
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        uri = entities_uri(table_name, options[:partition_key], options[:row_key], query)
        response = call(:get, uri, nil, { "DataServiceVersion" => "2.0;NetFx"})

        entities = Azure::Service::EnumerationResults.new

        results = (options[:partition_key] and options[:row_key]) ? [Azure::Table::Serialization.hash_from_entry_xml(response.body)] : Azure::Table::Serialization.entries_from_feed_xml(response.body)
        
        results.each do |result|
          entity = Entity.new do |e|
            e.table = table_name
            e.updated = result[:updated]
            e.etag = response.headers["etag"] || result[:etag]
            e.properties = result[:properties]
          end
          entities.push entity
        end if results

        entities.continuation_token = nil
        entities.continuation_token = { 
          :next_partition_key=> response.headers["x-ms-continuation-NextPartitionKey"], 
          :next_row_key => response.headers["x-ms-continuation-NextRowKey"]
          } if response.headers["x-ms-continuation-NextPartitionKey"]

        entities
      end

      # Public: Updates an existing entity in a table. The Update Entity operation replaces 
      # the entire entity and can be used to remove properties.
      #
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity.
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:if_match+              - String. A matching condition which is required for update (optional, Default="*")
      # * +:create_if_not_exists+  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
      #   that entity will be inserted. If false, the operation will fail. (optional, Default=false)
      # * +:timeout+               - Integer. A timeout in seconds.
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

        body = Azure::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

        response = call(:put, uri, body, headers)
        response.headers["etag"]
      end

      # Public: Updates an existing entity by updating the entity's properties. This operation
      # does not replace the existing entity, as the update_entity operation does.
      #
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity.
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:if_match+              - String. A matching condition which is required for update (optional, Default="*")
      # * +:create_if_not_exists+  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
      #   that entity will be inserted. If false, the operation will fail. (optional, Default=false)
      # * +:timeout+               - Integer. A timeout in seconds.
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

        body = Azure::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

        response = call(:post, uri, body, headers)
        response.headers["etag"]
      end

      # Public: Inserts or updates an existing entity within a table by merging new property values into the entity.
      #
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity.
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+      - Integer. A timeout in seconds.
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
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity.
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+      - Integer. A timeout in seconds.
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
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +partition_key+ - String. The partition key
      # * +row_key+       - String. The row key
      # * +options+       - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:if_match+     - String. A matching condition which is required for update (optional, Default="*")
      # * +:timeout+      - Integer. A timeout in seconds.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135727
      #
      # Returns nil on success
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
      # ==== Attributes
      #
      # * +batch+         - The Azure::Table::Batch instance to execute.
      # * +options+       - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+      - Integer. A timeout in seconds.
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
      # ==== Attributes
      #
      # * +table_name+    - String. The table name
      # * +partition_key+ - String. The partition key
      # * +row_key+       - String. The row key
      # * +options+       - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:timeout+      - Integer. A timeout in seconds.
      #
      # Returns an Azure::Table::Entity instance on success
      def get_entity(table_name, partition_key, row_key, options={})
        options[:partition_key] = partition_key
        options[:row_key] = row_key
        results = query_entities(table_name, options)
        results.length > 0 ? results[0] : nil
      end

      # Protected: Generate the URI for the collection of tables.
      #
      # Returns a URI
      protected
      def collection_uri(query={})
        generate_uri("Tables", query)
      end

      # Public: Generate the URI for a specific table.
      #
      # ==== Attributes
      #
      # * +name+ - The table name. If this is a URI, we just return this
      #
      # Returns a URI
      public
      def table_uri(name, query={})
        return name if name.kind_of? ::URI
        generate_uri("Tables('#{name}')", query)
      end

      # Public: Generate the URI for an entity or group of entities in a table.
      # If both the 'partition_key' and 'row_key' are specified, then the URI
      # will match the entity under those specific keys.
      #
      # ==== Attributes
      #
      # * +table_name+    - The table name
      # * +partition_key+ - The desired partition key (optional)
      # * +row_key+       - The desired row key (optional)
      #
      # Returns a URI
      public
      def entities_uri(table_name, partition_key=nil, row_key=nil, query={})
        return table_name if table_name.kind_of? ::URI

        path = if partition_key && row_key
          "%s(PartitionKey='%s',RowKey='%s')" % [
            table_name.encode("UTF-8"), encodeODataUriValue(partition_key.encode("UTF-8")), encodeODataUriValue(row_key.encode("UTF-8"))
          ]
        else
          "%s()" % table_name.encode("UTF-8")
        end

        uri = generate_uri(path)
        qs = []
        if query
          query.each do | key, val |
            key = key.encode("UTF-8")
            val = val.encode("UTF-8")

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
        new_values = []
        values.each do |value|
          new_values.push encodeODataUriValue(value)
        end
        new_values
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