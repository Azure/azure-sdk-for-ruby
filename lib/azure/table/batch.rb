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
require 'uuid'

require 'azure/table/serialization'
require 'azure/table/table_service'
require 'azure/table/batch_response'
require 'azure/core/http/http_error'

module Azure
  module Table
    # Represents a batch of table operations.
    # 
    # Example usage (block syntax):
    #
    # results = Batch.new "table", "partition" do
    #      insert "row1", {"meta"=>"data"}
    #      insert "row2", {"meta"=>"data"}
    #    end.execute
    #
    # which is equivalent to (fluent syntax):
    #
    # results = Batch.new("table", "partition")
    #           .insert("row1", {"meta"=>"data"})
    #           .insert("row2", {"meta"=>"data"})
    #           .execute
    #
    # which is equivalent to (as class): 
    # 
    # svc = TableSerice.new 
    #
    # batch = Batch.new "table", "partition"
    # batch.insert "row1", {"meta"=>"data"}
    # batch.insert "row2", {"meta"=>"data"}
    #
    # results = svc.execute_batch batch
    #
    class Batch
      def initialize(table, partition, &block)
        @table = table
        @partition = partition
        @operations = []
        @entity_keys = []
        @table_service = Azure::Table::TableService.new
        uuid = UUID.new
        @batch_id = "batch_" + uuid.generate
        @changeset_id = "changeset_" + uuid.generate

        self.instance_eval(&block) if block_given?
      end

      private
      attr_reader :table
      attr_reader :partition
      attr_reader :table_service

      attr_accessor :operations
      attr_accessor :entity_keys
      attr_accessor :changeset_id

      public
      attr_accessor :batch_id

      protected
      def execute
        @table_service.execute_batch(self)
      end

      protected
      class ResponseWrapper
        def initialize(hash)
          @hash = hash
        end

        def uri 
          @hash[:uri]
        end
        
        def status_code
          @hash[:status_code].to_i
        end

        def body
          @hash[:body]
        end
      end

      protected
      def add_operation(method, uri, body=nil, headers=nil)
        op = {
          :method => method, 
          :uri => uri, 
          :body => body, 
          :headers => headers
        }
        operations.push op
      end

      protected
      def check_entity_key(key)
        raise ArgumentError, "Only allowed to perform a single operation per entity, and there is already a operation registered in this batch for the key: #{key}." if entity_keys.include? key
        entity_keys.push key
      end

      public
      def parse_response(response)
        responses = BatchResponse.parse response.body
        new_responses = []

        (0..responses.length-1).each { |index|
          operation = operations[index]
          response = responses[index]

          if response[:status_code].to_i > 299
            # failed
            error = Azure::Core::Http::HTTPError.new(ResponseWrapper.new(response.merge({:uri=>operation[:uri]})))
            error.description = response[:message] if (error.description || '').strip == ''
            raise error
          else
            # success
            case operation[:method]
            when :post
              # entity from body
              result = Azure::Table::Serialization.hash_from_entry_xml(response[:body])

              entity = Azure::Table::Entity.new
              entity.table = table
              entity.updated = result[:updated]
              entity.etag = response[:headers]["etag"] || result[:etag]
              entity.properties = result[:properties]

              new_responses.push entity
            when :put, :merge
             # etag from headers
              new_responses.push response[:headers]["etag"]
            when :delete
              # true 
              new_responses.push nil
            end
          end
        }

        new_responses
      end

      public
      def to_body
        body = ""
        body.define_singleton_method(:add_line) do |a| self << (a||nil) + "\n" end

        body.add_line "--#{batch_id}"
        body.add_line "Content-Type: multipart/mixed; boundary=#{changeset_id}"
        body.add_line ""

        content_id = 1
        operations.each { |op|
          body.add_line "--#{changeset_id}"
          body.add_line "Content-Type: application/http"
          body.add_line "Content-Transfer-Encoding: binary"
          body.add_line ""
          body.add_line "#{op[:method].to_s.upcase} #{op[:uri]} HTTP/1.1"
          body.add_line "Content-ID: #{content_id}"

          if op[:headers]
            op[:headers].each { |k,v|
                body.add_line "#{k}: #{v}"
              }
          end
          
          if op[:body]
            body.add_line "Content-Type: application/atom+xml;type=entry"
            body.add_line "Content-Length: #{op[:body].bytesize.to_s}"
            body.add_line ""
            body.add_line op[:body]
          else
            body.add_line ""
          end 

          content_id += 1
        }
        body.add_line "--#{changeset_id}--"
        body.add_line "--#{batch_id}--"
      end

      # Public: Inserts new entity to the table.
      #
      # ==== Attributes
      #
      # * +row_key+       - String. The row key
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity. 
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179433
      public
      def insert(row_key, entity_values)
        check_entity_key(row_key)

        body = Azure::Table::Serialization.hash_to_entry_xml({ 
            "PartitionKey" => partition, 
            "RowKey" => row_key
          }.merge(entity_values) ).to_xml

        add_operation(:post, @table_service.entities_uri(table), body)
        self
      end

      # Public: Updates an existing entity in a table. The Update Entity operation replaces 
      # the entire entity and can be used to remove properties.
      #
      # ==== Attributes
      #
      # * +row_key+       - String. The row key
      # * +entity_values+ - Hash. A hash of the name/value pairs for the entity. 
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * :if_match              - String. A matching condition which is required for update (optional, Default="*")
      # * :create_if_not_exists  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
      #   that entity will be inserted. If false, the operation will fail. (optional, Default=false)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179427
      public
      def update(row_key, entity_values, options={})
        check_entity_key(row_key)

        uri = @table_service.entities_uri(table, partition, row_key)

        headers = {}
        headers["If-Match"] = options[:if_match] || "*" unless options[:create_if_not_exists]

        body = Azure::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

        add_operation(:put, uri, body, headers)
        self
      end
      
      # Public: Updates an existing entity by updating the entity's properties. This operation
      # does not replace the existing entity, as the update_entity operation does.
      #
      # ==== Attributes
      #
      # * +row_key+         - String. The row key
      # * +entity_values+   - Hash. A hash of the name/value pairs for the entity. 
      # * +options+         - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +if_match+              - String. A matching condition which is required for update (optional, Default="*")
      # * +create_if_not_exists+  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
      #   that entity will be inserted. If false, the operation will fail. (optional, Default=false)
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179392
      public
      def merge(row_key, entity_values, options={})
        check_entity_key(row_key)

        uri = @table_service.entities_uri(table, partition, row_key)

        headers = {}
        headers["If-Match"] = options[:if_match] || "*" unless options[:create_if_not_exists]

        body = Azure::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

        add_operation(:merge, uri, body, headers)
        self
      end

      # Public: Inserts or updates an existing entity within a table by merging new property values into the entity.
      #
      # ==== Attributes
      #
      # * +row_key+               - String. The row key
      # * +entity_values+         - Hash. A hash of the name/value pairs for the entity.
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452241
      public
      def insert_or_merge(row_key, entity_values)
        merge(row_key, entity_values, { :create_if_not_exists => true })
        self
      end

      # Public: Inserts or updates a new entity into a table.
      #
      # ==== Attributes
      #
      # * +row_key+               - String. The row key
      # * +entity_values+         - Hash. A hash of the name/value pairs for the entity. 
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452242
      public
      def insert_or_replace(row_key, entity_values)
        update(row_key, entity_values, { :create_if_not_exists => true })
        self
      end

      # Public: Deletes an existing entity in the table.
      #
      # ==== Attributes
      #
      # * +row_key+       - String. The row key
      # * +options+       - Hash. Optional parameters. 
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +if_match+      - String. A matching condition which is required for update (optional, Default="*")
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135727
      public
      def delete(row_key, options={})
        add_operation(:delete, @table_service.entities_uri(table, partition, row_key), nil, {"If-Match"=> options[:if_match] || "*"})
        self
      end
    end
  end
end