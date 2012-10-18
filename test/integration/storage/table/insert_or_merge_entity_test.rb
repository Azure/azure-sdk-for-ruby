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
require "integration/test_helper"
require "azure/storage/table/table_service"
require "azure/core/http/http_error"

describe Azure::Storage::Table::TableService do
  describe "#insert_or_merge_entity" do
    subject { Azure::Storage::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:partition){ "testingpartition" }
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
    }

    after { TableNameHelper.clean }

    it "creates an entity if it does not already exist" do 
      row_key = "abcd1234"

      does_not_exist = true
      begin
        subject.get_entity table_name, partition, row_key
        does_not_exist = false
      rescue
      end

      assert does_not_exist

      etag = subject.insert_or_merge_entity table_name, partition, row_key, entity_properties
      etag.must_be_kind_of String

      result = subject.get_entity table_name, partition, row_key

      result.must_be_kind_of Azure::Storage::Table::Entity
      result.table.must_equal table_name
      result.partition_key.must_equal partition
      result.row_key.must_equal row_key
      result.etag.must_equal etag
      
      entity_properties.each { |k,v|
        unless entity_properties[k].class == Time
          result.properties[k].must_equal entity_properties[k]
        else
          result.properties[k].to_i.must_equal entity_properties[k].to_i
        end
      }
    end

    it "updates an existing entity, merging the properties" do 
      row_key = "abcd1234_existing"

      result = subject.insert_entity table_name, partition, row_key, entity_properties

      existing_etag = ""

      exists = false
      begin
        existing = subject.get_entity table_name, partition, row_key
        existing_etag = existing.etag
        exists = true
      rescue
      end

      assert exists, "cannot verify existing record"

      etag = subject.insert_or_merge_entity table_name, partition, row_key, { "NewCustomProperty" => "NewCustomValue" }
      etag.must_be_kind_of String
      etag.wont_equal existing_etag

      result = subject.get_entity table_name, partition, row_key
      
      result.must_be_kind_of Azure::Storage::Table::Entity
      result.table.must_equal table_name
      result.partition_key.must_equal partition
      result.row_key.must_equal row_key
      
      # retained all existing props
      entity_properties.each { |k,v|
        unless entity_properties[k].class == Time
          result.properties[k].must_equal entity_properties[k]
        else
          result.properties[k].to_i.must_equal entity_properties[k].to_i
        end
      }

      # and has the new one
      result.properties["NewCustomProperty"].must_equal "NewCustomValue"
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.insert_or_merge_entity "this_table.cannot-exist!", partition, "row_key", entity_properties
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.insert_or_merge_entity table_name, "this/partition_key#is?invalid", "row_key", entity_properties
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.insert_or_merge_entity table_name, partition, "this/partition_key#is?invalid", entity_properties
      end
    end
  end
end