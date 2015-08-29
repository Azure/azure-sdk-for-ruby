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
  describe "#insert_entity" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:entity_properties) {
      { 
        "PartitionKey" => "testingpartition",
        "RowKey" => "abcd123",
        "CustomDoubleProperty" => 3.141592,
        "CustomInt32Property" => 37,
        "CustomInt64Property" => 2**32,
        "CustomInt64NegProperty" => -(2**32),
        "CustomGUIDProperty" => Azure::Table::GUID.new("81425519-6394-43e4-ac6e-28d91f5c3921"),
        "CustomStringProperty" => "CustomPropertyValue",
        "CustomBinaryProperty" => "\x01\x02\x03".force_encoding("BINARY"),
        "CustomDateProperty" => Time.now,
        "CustomDatePrecisionProperty" => Time.at(946684800, 123456.7),
        "CustomIntegerProperty" => 37,
        "CustomTrueProperty" => true,
        "CustomFalseProperty" => false,
        "CustomNilProperty" => nil
      }
    }

    before { 
      subject.create_table table_name
    }
    after { TableNameHelper.clean }

    it "creates an entity" do 
      result = subject.insert_entity table_name, entity_properties
      result.must_be_kind_of Azure::Table::Entity
      result.table.must_equal table_name
      entity_properties.each { |k,v|
        if entity_properties[k].class == Time
          floor_to(result.properties[k].to_f, 6).must_equal floor_to(entity_properties[k].to_f, 6)
        else
          result.properties[k].must_equal entity_properties[k]
        end
      }
    end

    def floor_to(num, x)
      (num * 10**x).floor.to_f / 10**x
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