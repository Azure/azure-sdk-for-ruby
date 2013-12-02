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
require "azure/table/batch"
require "azure/table/table_service"
require "azure/core/http/http_error"

describe Azure::Table::TableService do
  describe "#insert_or_replace_entity_batch" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:entity_properties) {
      { 
        "PartitionKey" => "testingpartition",
        "CustomStringProperty" => "CustomPropertyValue",
        "CustomIntegerProperty" => 37,
        "CustomBooleanProperty" => true,
        "CustomDateProperty" => Time.now
      }
    }

    before { 
      subject.create_table table_name
    }

    after { TableNameHelper.clean }

    it "creates an entity if it does not already exist" do 
      entity = entity_properties.dup
      entity["RowKey"] = "abcd1234"

      does_not_exist = true
      begin
        subject.get_entity table_name, entity["PartitionKey"], entity["RowKey"]
        does_not_exist = false
      rescue
      end

      assert does_not_exist

      batch = Azure::Table::Batch.new table_name, entity["PartitionKey"]
      batch.insert_or_replace entity["RowKey"], entity
      etags = subject.execute_batch batch

      etags[0].must_be_kind_of String

      result = subject.get_entity table_name, entity["PartitionKey"], entity["RowKey"]

      result.must_be_kind_of Azure::Table::Entity
      result.table.must_equal table_name
      result.etag.must_equal etags[0]
      
      entity.each { |k,v|
        unless entity[k].class == Time
          result.properties[k].must_equal entity[k]
        else
          result.properties[k].to_i.must_equal entity[k].to_i
        end
      }
    end

    it "updates an existing entity, removing any properties not included in the update operation" do 
      entity = entity_properties.dup
      entity["RowKey"] = "abcd1234_existing"

      result = subject.insert_entity table_name, entity

      existing_etag = ""

      exists = false
      begin
        existing = subject.get_entity table_name, entity["PartitionKey"], entity["RowKey"]
        existing_etag = existing.etag
        exists = true
      rescue
      end

      assert exists, "cannot verify existing record"

      batch = Azure::Table::Batch.new table_name, entity["PartitionKey"]
      batch.insert_or_replace entity["RowKey"], { 
        "PartitionKey" => entity["PartitionKey"],
        "RowKey" => entity["RowKey"],
        "NewCustomProperty" => "NewCustomValue"
      }
      etags = subject.execute_batch batch

      etags[0].must_be_kind_of String
      etags[0].wont_equal existing_etag

      result = subject.get_entity table_name, entity["PartitionKey"], entity["RowKey"]
      
      result.must_be_kind_of Azure::Table::Entity
      result.table.must_equal table_name

      # removed all existing props
      entity.each { |k,v|
        result.properties.wont_include k unless k == "PartitionKey" || k == "RowKey"
      }

      # and has the new one
      result.properties["NewCustomProperty"].must_equal "NewCustomValue"
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["RowKey"] = "row_key"

        batch = Azure::Table::Batch.new "this_table.cannot-exist!", entity["PartitionKey"]
        batch.insert_or_replace entity["RowKey"], entity
        etags = subject.execute_batch batch
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["PartitionKey"] = "this/partition_key#is?invalid"
        entity["RowKey"] = "row_key"

        batch = Azure::Table::Batch.new table_name, entity["PartitionKey"]
        batch.insert_or_replace entity["RowKey"], entity
        etags = subject.execute_batch batch
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["RowKey"] = "this/partition_key#is?invalid"

        batch = Azure::Table::Batch.new table_name, entity["PartitionKey"]
        batch.insert_or_replace entity["RowKey"], entity
        etags = subject.execute_batch batch
      end
    end
  end
end