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
  describe "#update_entity" do
    subject { Azure::Storage::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:partition){ "testingpartition" }
    let(:row_key){ "abcd1234_existing" }
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
      subject.insert_entity table_name, partition, row_key, entity_properties
      @existing_etag = ""

      exists = false
      begin
        existing = subject.get_entity table_name, partition, row_key
        @existing_etag = existing.etag
        exists = true
      rescue
      end

      assert exists, "cannot verify existing record"
    }

    after { TableNameHelper.clean }

    it "updates an existing entity, removing any properties not included in the update operation" do 
      etag = subject.update_entity table_name, partition, row_key, { "NewCustomProperty" => "NewCustomValue" }
      etag.must_be_kind_of String
      etag.wont_equal @existing_etag

      result = subject.get_entity table_name, partition, row_key
      
      result.must_be_kind_of Azure::Storage::Table::Entity
      result.table.must_equal table_name
      result.partition_key.must_equal partition
      result.row_key.must_equal row_key

      # removed all existing props
      entity_properties.each { |k,v|
        result.properties.wont_include k
      }

      # and has the new one
      result.properties["NewCustomProperty"].must_equal "NewCustomValue"
    end

    it "errors on a non-existing row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.update_entity table_name, partition, "this-row-key-does-not-exist", entity_properties
      end
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.update_entity "this_table.cannot-exist!", partition, row_key, entity_properties
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.update_entity table_name, "this/partition_key#is?invalid", row_key, entity_properties
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.update_entity table_name, partition, "this/row_key#is?invalid", entity_properties
      end
    end
  end
end