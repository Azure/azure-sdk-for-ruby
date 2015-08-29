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
require "azure/core/http/http_error"

describe Azure::Table::TableService do
  describe "#insert_or_merge_entity" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:entity_properties){ 
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

      etag = subject.insert_or_merge_entity table_name, entity
      etag.must_be_kind_of String

      result = subject.get_entity table_name, entity["PartitionKey"], entity["RowKey"]

      result.must_be_kind_of Azure::Table::Entity
      result.table.must_equal table_name
      result.etag.must_equal etag
      
      entity.each { |k,v|
        unless entity[k].class == Time
          result.properties[k].must_equal entity[k]
        else
          result.properties[k].to_i.must_equal entity[k].to_i
        end
      }
    end

    it "updates an existing entity, merging the properties" do 
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

      etag = subject.insert_or_merge_entity table_name, {
        "PartitionKey" => entity["PartitionKey"],
        "RowKey" => entity["RowKey"],
        "NewCustomProperty" => "NewCustomValue",
        "NewNilProperty" => nil
      }

      etag.must_be_kind_of String
      etag.wont_equal existing_etag

      result = subject.get_entity table_name, entity["PartitionKey"], entity["RowKey"]
      
      result.must_be_kind_of Azure::Table::Entity
      result.table.must_equal table_name
      
      # retained all existing props
      entity.each { |k,v|
        if entity[k].class == Time
          result.properties[k].to_i.must_equal entity[k].to_i
        else
          result.properties[k].must_equal entity[k]
        end
      }

      # and has the new one
      result.properties["NewCustomProperty"].must_equal "NewCustomValue"
      result.properties["NewNilProperty"].must_equal nil
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["RowKey"] = "row_key"
        subject.insert_or_merge_entity "this_table.cannot-exist!", entity
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["PartitionKey"] = "this/partition_key#is?invalid"
        entity["RowKey"] = "row_key"
        subject.insert_or_merge_entity table_name, entity
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["RowKey"] = "this/partition_key#is?invalid"
        subject.insert_or_merge_entity table_name, entity
      end
    end
  end
end