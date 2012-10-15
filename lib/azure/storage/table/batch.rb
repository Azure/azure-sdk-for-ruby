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
			class Batch
				
				def initialize(table_name, partition_key)
					@table_name = table_name
					@partition_key = partition_key
					@operations = []
					@entity_keys = []
					@table_service = Azure::Storage::Table::TableService.new
				end

				attr_reader :table_name
				attr_reader :partition_key
				attr_accessor :operations
				attr_accessor :entity_keys
				attr_reader :table_service

				def execute
					@table_service.execute_batch(self)
				end
        
        def parse_response(response)
          response.body
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
					content_id = 0
					
					body = ""
					body << "--batch_a1e9d677-b28b-435e-a89e-87e6a768a431\n"
					body << "Content-Type: multipart/mixed; boundary=changeset_8a28b620-b4bb-458c-a177-0959fb14c977\n"
          body << "\n"
					operations.each { |op|
						content_id += 1

						body << "--changeset_8a28b620-b4bb-458c-a177-0959fb14c977\n"
						body << "Content-Type: application/http\n"
						body << "Content-Transfer-Encoding: binary\n"
						body << "\n"
  					body << "#{op[:method].to_s.upcase} #{op[:uri]} HTTP/1.1\n"
						body << "Content-ID: #{content_id}\n"
						if op[:headers]
							op[:headers].each { |k,v|
								body << "#{k}: #{v}\n"
							}
						end
						if op[:body]
							body << "Content-Type: application/atom+xml;type=entry\n"
							body << "Content-Length: #{op[:body].bytesize.to_s}\n"
							body << "\n"
							body << op[:body]
              body << "\n"
						end 
					}
					body << "--changeset_8a28b620-b4bb-458c-a177-0959fb14c977--\n"
					body << "--batch_a1e9d677-b28b-435e-a89e-87e6a768a431--\n"
				end

        # Public: Inserts new entity to the table.
        #
        # row_key       - String. The row key
        # entity_values - Hash. A hash of the name/value pairs for the entity. 
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179433
        def insert_entity(row_key, entity_values)
        	check_entity_key(row_key)

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml({ 
              "PartitionKey" => partition_key, 
              "RowKey" => row_key
            }.merge(entity_values) ).to_xml

          add_operation(:post, @table_service.entities_uri(table_name), body)
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
        def update_entity(row_key, entity_values, if_match="*", create_if_not_exists=false)
        	check_entity_key(row_key)

          uri = @table_service.entities_uri(table_name, partition_key, row_key)

          headers = {}
          headers["If-Match"] = if_match || "*" unless create_if_not_exists

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

          add_operation(:put, uri, body, headers)
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
        def merge_entity(row_key, entity_values, if_match="*", create_if_not_exists=false)
        	check_entity_key(row_key)

          uri = @table_service.entities_uri(table_name, partition_key, row_key)

          headers = { "X-HTTP-Method"=> "MERGE" }
          headers["If-Match"] = if_match || "*" unless create_if_not_exists

          body = Azure::Storage::Table::Serialization.hash_to_entry_xml(entity_values).to_xml

					add_operation(:post, uri, body, headers)
        end

        # Public: Inserts or updates an existing entity within a table by merging new property values into the entity.
        #
        # row_key               - String. The row key
        # entity_values         - Hash. A hash of the name/value pairs for the entity. 
        # if_match              - String. A matching condition which is required for update (optional, Default="*")
        # create_if_not_exists  - Boolean. A matching condition which is required for update (optional, Default=false)
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452241
        def insert_or_merge_entity(row_key, entity_values)
          merge_entity(row_key, entity_values, nil, true)
        end

        # Public: Inserts or updates a new entity into a table.
        #
        # row_key               - String. The row key
        # entity_values         - Hash. A hash of the name/value pairs for the entity. 
        # 
        # See http://msdn.microsoft.com/en-us/library/windowsazure/hh452242
        def insert_or_replace_entity(row_key, entity_values)
          update_entity(row_key, entity_values, nil, true)
        end

        # Public: Deletes an existing entity in the table.
        #
        # row_key       - String. The row key
        # if_match      - String. A matching condition which is required for update (optional, Default="*")
        #
        # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135727
        def delete_entity(row_key, if_match=nil)
          add_operation(:delete, @table_service.entities_uri(table_name, partition_key, row_key), nil, {"If-Match"=> if_match || "*"})
        end
			end
		end
	end
end