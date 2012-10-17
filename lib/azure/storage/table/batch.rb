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
require 'azure/storage/table/serialization'
require 'azure/storage/table/table_service'

module Azure
  module Storage
    module Table
      module BatchResponse
        def self.parse(data)
          context = { 
            :lines => data.lines.to_a,
            :index=> 0,
            :responses => []
          }

          find(context) { |c| batch_boundary c }
          find(context) { |c| batch_headers c }
          
          while(find(context){ |c| changeset_boundary_or_end c } == :boundary)
            find(context) { |c| changeset_headers c }
            find(context) { |c| response c }
            find(context) { |c| response_headers c }
            find(context) { |c| response_body c }
          end

          context[:responses]
        end

        def self.find(context, &block)
          while(context[:index] < context[:lines].length)
            result = block.call(context)
            return result if result
            context[:index] +=1
          end
        end

        def self.response_body(context)
          end_of_body = nil
          end_of_body = changeset_boundary_or_end(context.dup.merge!({:index=>context[:index] + 1})) if context[:index] < (context[:lines].length - 1)

          if end_of_body
            return context[:responses].last[:body] || ""
          else 
            context[:responses].last[:body] ||= ""
            context[:responses].last[:body] << current_line(context) + "\n"
            return nil
          end
        end

        def self.response_headers(context)
          match = /(.*): (.*)/.match(current_line(context))

          if context[:responses].last[:headers] and not match
            return context[:responses].last[:headers]
          elsif match
            context[:responses].last[:headers] ||= {}
            context[:responses].last[:headers][match[1].downcase] = match[2]
            return nil
          else
            return nil
          end
        end

        def self.response(context)
          match = /HTTP\/1.1 (\d*) (.*)/.match(current_line(context))
          return nil unless match
          response = {:status => match[1], :message => match[2] }
          context[:responses].push response
        end
        
        def self.changeset_headers(context)
          current_line(context).strip ==  ''
        end

        def self.changeset_boundary_or_end(context)
          match_boundary = /--changesetresponse_(.*)/.match(current_line(context))
          match_end = /--changesetresponse_(.*)--/.match(current_line(context))

          (match_boundary and not match_end) ? :boundary : (match_end ? :end : nil)
        end

        def self.batch_headers(context)
          match = /(.*): (.*)/.match(current_line(context))

          if context[:batch_headers] and not match
            return context[:batch_headers]
          elsif match
            context[:batch_headers] ||= {}
            context[:batch_headers][match[1].downcase] = match[2]
            return nil
          else
            return nil
          end
        end

        def self.batch_boundary(context)
          match = /--batchresponse_(.*)/.match(current_line(context))
          match ? match[1] : nil
        end
        
        def self.current_line(context)
          context[:lines][context[:index]]
        end
      end

      class Batch
        
        def initialize(table, partition, &block)
          @table = table
          @partition = partition
          @operations = []
          @entity_keys = []
          @table_service = Azure::Storage::Table::TableService.new
          @batch_id = "batch_a1e9d677-b28b-435e-a89e-87e6a768a431"
          @changeset_id = "changeset_8a28b620-b4bb-458c-a177-0959fb14c977"

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
          BatchResponse.parse response.body
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

            body.add_line "--#{changeset_id}--"

            content_id += 1
          }
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