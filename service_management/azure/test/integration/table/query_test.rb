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
require "integration/test_helper"
require "azure/table/table_service"
require "azure/table/query"
require "azure/core/http/http_error"

describe Azure::Table::TableService do 
  describe "#query_entities" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }
    let(:entities_per_partition){3}
    let(:partitions){ ["part1", "part2", "part3"]}
    let(:entities){ 
      entities = {}
      index = 0
      partitions.each { |p|
        entities[p] = []
        (0..entities_per_partition).each { |i|
          entities[p].push "entity-#{index}"
          index+=1
        }
      }
      entities
    }
    let(:entity_properties){ 
      { 
        "CustomStringProperty" => "CustomPropertyValue",
        "CustomIntegerProperty" => 37,
        "CustomBooleanProperty" => true,
        "CustomDateProperty" => Time.now
      }
    }
    before { 
      subject.create_table table_name
      partitions.each { |p|
        entities[p].each { |e| 
          entity = entity_properties.dup
          entity[:PartitionKey] = p
          entity[:RowKey] = e
          subject.insert_entity table_name, entity
        }
      }
    }

    after { TableNameHelper.clean }

    it "Queries a table for list of entities" do
      q = Azure::Table::Query.new.from table_name

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal ((partitions.length + 1) * entities_per_partition)

      result.each { |e|
        entities[e.properties["PartitionKey"]].must_include e.properties["RowKey"]
        entity_properties.each { |k,v|
          unless v.class == Time
            e.properties[k].must_equal v
          else
            e.properties[k].to_i.must_equal v.to_i
          end
        }
      }
    end

    it "can constrain by partition and row key, returning zero or one entity" do
      partition = partitions[0]
      row_key = entities[partition][0]

      q = Azure::Table::Query.new
        .from(table_name)
        .partition(partition)
        .row(row_key)

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal 1

      result.each { |e|
        e.properties["RowKey"].must_equal row_key
        entity_properties.each { |k,v|
          unless v.class == Time
            e.properties[k].must_equal v
          else
            e.properties[k].to_i.must_equal v.to_i
          end
        }
      }
    end

    it "can project a subset of properties, populating sparse properties with nil" do
      projection = ['CustomIntegerProperty', 'ThisPropertyDoesNotExist']

      q = Azure::Table::Query.new
        .from(table_name)
        .select(projection[0])
        .select(projection[1])

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal ((partitions.length + 1) * entities_per_partition)

      result.each { |e|
        e.properties.length.must_equal projection.length
        e.properties["CustomIntegerProperty"].must_equal entity_properties["CustomIntegerProperty"]
        e.properties.must_include "ThisPropertyDoesNotExist"
        e.properties["ThisPropertyDoesNotExist"].must_equal ""
      }
    end

    it "can filter by one or more properties, returning a matching set of entities" do
      subject.insert_entity table_name, entity_properties.merge({ 
        "PartitionKey" => "filter-test-partition",
        "RowKey" => "filter-test-key",
        "CustomIntegerProperty" => entity_properties["CustomIntegerProperty"] + 1,
        "CustomBooleanProperty"=> false
      })

      q = Azure::Table::Query.new
        .from(table_name)
        .where("CustomIntegerProperty gt #{entity_properties['CustomIntegerProperty']}")
        .where("CustomBooleanProperty eq false")

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal 1
      result.first.properties["PartitionKey"].must_equal "filter-test-partition"

      q = Azure::Table::Query.new
        .from(table_name)
        .where("CustomIntegerProperty gt #{entity_properties['CustomIntegerProperty']}")
        .where("CustomBooleanProperty eq true")
      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal 0
    end

    it "can limit the result set using the top parameter" do
      q = Azure::Table::Query.new
        .from(table_name)
        .top(3)

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal 3
      result.continuation_token.wont_be_nil
    end

    it "can page results using the top parameter and continuation_token" do
      q = Azure::Table::Query.new
        .from(table_name)
        .top(3)

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal 3
      result.continuation_token.wont_be_nil

      q = Azure::Table::Query.new
        .from(table_name)
        .top(3)
        .next_row(result.continuation_token[:next_row_key])
        .next_partition(result.continuation_token[:next_partition_key])

      result2 = q.execute
      result2.must_be_kind_of Array 
      result2.length.must_equal 3
      result2.continuation_token.wont_be_nil

      q = Azure::Table::Query.new
        .from(table_name)
        .top(3)
        .next_row(result2.continuation_token[:next_row_key])
        .next_partition(result2.continuation_token[:next_partition_key])

      result3 = q.execute
      result3.must_be_kind_of Array 
      result3.length.must_equal 3
      result3.continuation_token.wont_be_nil

      q = Azure::Table::Query.new
        .from(table_name)
        .top(3)
        .next_row(result3.continuation_token[:next_row_key])
        .next_partition(result3.continuation_token[:next_partition_key])

      result4 = q.execute
      result4.must_be_kind_of Array 
      result4.length.must_equal 3
      result4.continuation_token.must_be_nil
    end

    it "can combine projection, filtering, and paging in the same query" do
      subject.insert_entity table_name, entity_properties.merge({
        "PartitionKey" => "filter-test-partition",
        "RowKey" => "filter-test-key",
        "CustomIntegerProperty" => entity_properties["CustomIntegerProperty"] + 1,
        "CustomBooleanProperty"=> false
      })


      q = Azure::Table::Query.new
        .from(table_name)
        .select("PartitionKey")
        .select("CustomIntegerProperty")
        .where("CustomIntegerProperty eq #{entity_properties['CustomIntegerProperty']}")
        .top(3)

      result = q.execute
      result.must_be_kind_of Array 
      result.length.must_equal 3
      result.continuation_token.wont_be_nil

      result.first.properties["CustomIntegerProperty"].must_equal entity_properties["CustomIntegerProperty"]
      result.first.properties["PartitionKey"].wont_be_nil
      result.first.properties.length.must_equal 2

      q.next_row(result.continuation_token[:next_row_key]).next_partition(result.continuation_token[:next_partition_key])

      result2 = q.execute
      result2.must_be_kind_of Array 
      result2.length.must_equal 3
      result2.continuation_token.wont_be_nil

      q.next_row(result2.continuation_token[:next_row_key]).next_partition(result2.continuation_token[:next_partition_key])
      result3 = q.execute
      result3.must_be_kind_of Array 
      result3.length.must_equal 3
      result3.continuation_token.wont_be_nil

      q.next_row(result3.continuation_token[:next_row_key]).next_partition(result3.continuation_token[:next_partition_key])
      result4 = q.execute
      result4.must_be_kind_of Array 
      result4.length.must_equal 3
      result4.continuation_token.must_be_nil
    end
  end
end