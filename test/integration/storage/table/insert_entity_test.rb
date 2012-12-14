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
  describe "#insert_entity" do
    subject { Azure::Storage::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:entity_properties) {
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
    }
    after { TableNameHelper.clean }

    it "creates an entity" do 
      result = subject.insert_entity table_name, entity_properties
      result.must_be_kind_of Azure::Storage::Table::Entity
      result.table.must_equal table_name
      entity_properties.each { |k,v|
        unless entity_properties[k].class == Time
          result.properties[k].must_equal entity_properties[k]
        else
          result.properties[k].to_i.must_equal entity_properties[k].to_i
        end
      }
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.insert_entity "this_table.cannot-exist!", entity_properties
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["PartitionKey"] = "this/partition\\key#is?invalid"
        subject.insert_entity table_name, entity
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        entity = entity_properties.dup
        entity["RowKey"] = "this/row\\key#is?invalid"
        subject.insert_entity table_name, entity
      end
    end
  end
end