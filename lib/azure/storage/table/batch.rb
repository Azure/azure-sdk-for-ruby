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
require 'uuid'

require 'azure/storage/table/serialization'
require 'azure/storage/table/table_service'
require 'azure/storage/table/batch_response'
require 'azure/core/http/http_error'

module Azure
  module Storage
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
          @table_service = Azure::Storage::Table::TableService.new
          @batch_id = "batch_" + uuid.generate
          @changeset_id = "changeset_" + uuid.generate

          self.instance_eval(&block) if block_given?
        end

        attr_reader :table
        attr_reader :partition
        attr_reader :table_service

        attr_accessor :operations
        attr_accessor :entity_keys

        attr_accessor :batch_id
        attr_accessor :changeset_id

        def execute
          @table_service.execute_batch(self)
        end
        
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
                result = Azure::Storage::Table::Serialization.hash_from_entry_xml(response[:body])

                entity = Azure::Storage::Table::Entity.new
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

        def add_operation(method, uri, body=nil, headers=nil)
          op = {
            :method => method, 
            :uri => uri, 
            :body => body, 
            :headers => headers
          }
          operations.push op
        end

        def check_entity_key(key)
          raise ArgumentError, "Only allowed to perform a single operation per entity, and there is already a operation registered in this batch for the key: #{key}." if entity_keys.include? key
          entity_keys.push key
        end

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
        # row_key       - String. The row key
        # entity_values - Hash. A hash of the name/value pairs for the entity. 
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179433
        def insert(row_key, entity_values)
          check_entity_key(row_key)

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml({ 
              "PartitionKey" => partition, 
              "RowKey" => row_key
            }.merge(entity_values) ).to_xml

          add_operation(:post, @table_service.entities_uri(table), body)
          self
        end

        # Public: Updates an existing entity in a table. The Update Entity operation replaces 
        # the entire entity and can be used to remove properties.
        #
        # row_key               - String. The row key
        # entity_values         - Hash. A hash of the name/value pairs for the entity. 
        # if_match              - String. A matching condition which is required for update (optional, Default="*")
        # create_if_not_exists  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
        #                         that entity will be inserted. If false, the operation will fail. (optional, Default=false)
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179427
        def update(row_key, entity_values, if_match="*", create_if_not_exists=false)
          check_entity_key(row_key)

          uri = @table_service.entities_uri(table, partition, row_key)

          headers = {}
          headers["If-Match"] = if_match || "*" unless create_if_not_exists

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

          add_operation(:put, uri, body, headers)
          self
        end
        
        # Public: Updates an existing entity by updating the entity's properties. This operation
        # does not replace the existing entity, as the update_entity operation does.
        #
        # row_key               - String. The row key
        # entity_values         - Hash. A hash of the name/value pairs for the entity. 
        # if_match              - String. A matching condition which is required for update (optional, Default="*")
        # create_if_not_exists  - Boolean. If true, and partition_key and row_key do not reference and existing entity, 
        #                         that entity will be inserted. If false, the operation will fail. (optional, Default=false)
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179392
        def merge(row_key, entity_values, if_match="*", create_if_not_exists=false)
          check_entity_key(row_key)

          uri = @table_service.entities_uri(table, partition, row_key)

          headers = {}
          headers["If-Match"] = if_match || "*" unless create_if_not_exists

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

          add_operation(:merge, uri, body, headers)
          self
        end

        # Public: Inserts or updates an existing entity within a table by merging new property values into the entity.
        #
        # row_key               - String. The row key
        # entity_values         - Hash. A hash of the name/value pairs for the entity. 
        # if_match              - String. A matching condition which is required for update (optional, Default="*")
        # create_if_not_exists  - Boolean. A matching condition which is required for update (optional, Default=false)
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452241
        def insert_or_merge(row_key, entity_values)
          merge(row_key, entity_values, nil, true)
          self
        end

        # Public: Inserts or updates a new entity into a table.
        #
        # row_key               - String. The row key
        # entity_values         - Hash. A hash of the name/value pairs for the entity. 
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452242
        def insert_or_replace(row_key, entity_values)
          update(row_key, entity_values, nil, true)
          self
        end

        # Public: Deletes an existing entity in the table.
        #
        # row_key       - String. The row key
        # if_match      - String. A matching condition which is required for update (optional, Default="*")
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135727
        def delete(row_key, if_match=nil)
          add_operation(:delete, @table_service.entities_uri(table, partition, row_key), nil, {"If-Match"=> if_match || "*"})
          self
        end
      end
    end
  end
end