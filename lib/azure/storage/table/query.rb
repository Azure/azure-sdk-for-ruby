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
require 'azure/storage/table/table_service'

module Azure
  module Storage
    module Table
      class Query
        def initialize(table="", partition=nil, row=nil, &block)
          @table = table
          @partition_key = partition
          @row_key = row
          @fields = []
          @filters = []
          @top_n = nil
          @table_service = Azure::Storage::Table::TableService.new
          self.instance_eval(&block) if block_given?
        end
          
        attr_reader :table
        attr_reader :partition_key
        attr_reader :row_key

        attr_reader :fields
        attr_reader :filters
        attr_reader :top_n

        attr_reader :next_partition_key
        attr_reader :next_row_key

        attr_reader :table_service

        def from(table_name)
          @table = table_name
          self
        end

        def partition(partition_key)
          @partition_key = partition_key
          self
        end

        def row(row_key)
          @row_key = row_key
          self
        end

        def select(*p)
          @fields.concat(p)
          self
        end

        def where(*p)
          @filters.push(p)
          self
        end
        
        def top(n)
          @top_n = n
          self
        end

        def next_partition(next_partition_key)
          @next_partition_key = next_partition_key
          self
        end

        def next_row(next_row_key)
          @next_row_key = next_row_key
          self
        end

        def execute
          @table_service.query_entities(@table, {
            :PartitionKey => @partition_key,
            :RowKey => @row_key, 
            :select => @fields.map{ |f| f.to_s },
            :filter => _build_filter_string,
            :top => (@top_n ? @top_n.to_i : @top_n),
            :continuation_token => { 
              :next_partition_key => @next_partition_key,
              :next_row_key => @next_row_key
            }
          })
        end

        def _build_filter_string
          result = ""
          clauses = []
          filters.each { |f|
            clauses.push "#{f[0].to_s} #{f[1].to_s} #{value_exp(f[2])}"
          }
          return nil if clauses.length == 0 
          
          result << clauses.join(" and ")
          result
        end

        def value_exp(v)
          case v
          when Float, Integer
            v.to_s
          when Date, Time, DateTime
            "datetime'#{v.iso8601}'"
          when TrueClass, FalseClass
            v ? "true" : "false"
          when GUID
            "guid'#{v.to_s}'"
          else
            v.to_s
          end
        end
      end
    end
  end
end