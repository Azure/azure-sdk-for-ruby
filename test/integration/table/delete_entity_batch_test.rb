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
  describe "#delete_entity_batch" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:entity_properties){ 
      {
        "PartitionKey" => "testingpartition",
        "RowKey" => "abcd123",
        "CustomStringProperty" => "CustomPropertyValue",
        "CustomIntegerProperty" => 37,
        "CustomBooleanProperty" => true,
        "CustomDateProperty" => Time.now
      }
    }

    before { 
      subject.create_table table_name
      subject.insert_entity table_name, entity_properties
    }
    after { TableNameHelper.clean }

    it "deletes an entity" do 
      batch = Azure::Table::Batch.new table_name, entity_properties["PartitionKey"]
      batch.delete entity_properties["RowKey"]
      results = subject.execute_batch batch
      results[0].must_be_nil

      # query entity to make sure it was deleted
      assert_raises(Azure::Core::Http::HTTPError, "ResourceNotFound (404): The specified resource does not exist.") do
        subject.get_entity table_name, entity_properties["PartitionKey"], entity_properties["RowKey"]
      end
    end

    it "deletes complex keys" do
      entity = entity_properties.dup

      batch = Azure::Table::Batch.new table_name, entity["PartitionKey"]

      entity["RowKey"] = "key with spaces"
      subject.insert_entity table_name, entity
      batch.delete entity["RowKey"]

      entity["RowKey"] = "key'with'quotes"
      subject.insert_entity table_name, entity
      batch.delete entity["RowKey"]

      # Uncomment when issue 145 (Cannot use GB-18030 characters in strings) is fixed
      #entity["RowKey"] = "keyWithUnicode" + 0xE.chr + 0x8B.chr + 0xA4.chr
      #subject.insert_entity table_name, entity
      #batch.delete entity["RowKey"]

      entity["RowKey"] = "Qbert_Says=.!@%^&"
      subject.insert_entity table_name, entity
      batch.delete entity["RowKey"]

      results = subject.execute_batch batch

      results[0].must_be_nil
      results[1].must_be_nil
      results[2].must_be_nil
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        batch = Azure::Table::Batch.new "this_table.cannot-exist!", entity_properties["PartitionKey"]
        batch.delete entity_properties["RowKey"]
        subject.execute_batch batch
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        batch = Azure::Table::Batch.new table_name, "this_partition/key#is_invalid"
        batch.delete entity_properties["RowKey"]
        subject.execute_batch batch
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        batch = Azure::Table::Batch.new table_name, entity_properties["PartitionKey"]
        batch.delete "thisrow/key#is_invalid"
        subject.execute_batch batch
      end
    end
  end
end