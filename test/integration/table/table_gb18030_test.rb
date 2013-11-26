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
require "azure/blob/blob_service"

describe 'Table GB-18030' do
  subject { Azure::Table::TableService.new }

  let(:table_name){ TableNameHelper.name }

  before {
    subject.create_table table_name
  }
  after { TableNameHelper.clean }

  it 'Read/Write Table Name UTF-8' do
    # Expected results: Failure, because the Table
    # name can only contain ASCII characters, per
    # the Table Service spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_table table_name + v.encode("UTF-8")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write Table Name GB-18030' do
    # Expected results: Failure, because the Table
    # name can only contain ASCII characters, per
    # the Table Service spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_table table_name + v.encode("GB18030")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read, Write, and Query Property Names UTF-8' do
    counter = 1
    GB18030TestStrings.get_xml_10_fourth_ed_identifiers.each { |k,v|
      prop = "prop" + v.encode("UTF-8")
      counter = counter + 1;
      entity_properties = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s,
        prop => "value",
      }
      entity_properties2 = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s + "2",
        prop => "value2",
      }
      result = subject.insert_entity table_name, entity_properties
      subject.insert_entity table_name, entity_properties2
      result.properties[prop].must_equal "value"
      if (k != "Chinese_2B5" && k != "Tibetan") then
        filter = prop + " eq 'value'"
        result = subject.query_entities table_name, { :filter => filter }
        result.length.must_equal 1
        result.first.properties[prop].must_equal "value"
      end
    }
  end

  it 'Read, Write, and Query Property Names GB18030' do
    counter = 1
    GB18030TestStrings.get_xml_10_fourth_ed_identifiers.each { |k,v|
      prop = ("prop" + v).encode("GB18030")
      counter = counter + 1;
      entity_properties = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s
      }
      entity_properties[prop] = "value"
      entity_properties2 = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s + "2"
      }
      entity_properties2[prop] = "value2"

      result = subject.insert_entity table_name, entity_properties
      subject.insert_entity table_name, entity_properties2
      result.properties[prop.encode("UTF-8")].must_equal "value"
      if (k != "Chinese_2B5" && k != "Tibetan") then
        filter = prop + " eq 'value'"
        result = subject.query_entities table_name, { :filter => filter }
        result.length.must_equal 1
        result.first.properties[prop.encode("UTF-8")].must_equal "value"
      end
    }
  end

  it 'Read, Write, and Query Property Values UTF-8' do
    counter = 1
    GB18030TestStrings.get.each { |k,v|
      value = "value" + v.encode("UTF-8")
      counter = counter + 1;
      entity_properties = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s,
        "Value" => value,
      }
      entity_properties2 = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s + "2",
        "Value" => value + "2"
      }
      result = subject.insert_entity table_name, entity_properties
      subject.insert_entity table_name, entity_properties2
      result.properties["Value"].must_equal value
      filter = "Value eq '" + value + "'"
      result = subject.query_entities table_name, { :filter => filter }
      result.length.must_equal 1
      result.first.properties["Value"].must_equal value
    }
  end

  it 'Read, Write, and Query Property Values GB18030' do
    counter = 1
    GB18030TestStrings.get.each { |k,v|
      value = "value" + v.encode("GB18030")
      counter = counter + 1;
      entity_properties = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s,
        "Value" => value,
      }
      entity_properties2 = {
        "PartitionKey" => "x",
        "RowKey" => k + counter.to_s + "2",
        "Value" => value + "2"
      }
      result = subject.insert_entity table_name, entity_properties
      subject.insert_entity table_name, entity_properties2
      result.properties["Value"].encode("UTF-8").must_equal value.encode("UTF-8")
      filter = "Value eq '" + value + "'"
      result = subject.query_entities table_name, { :filter => filter }
      result.length.must_equal 1
      result.first.properties["Value"].encode("UTF-8").must_equal value.encode("UTF-8")
    }
  end

  it 'Read, Write, and Query Key Values UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      value = "value" + v.encode("UTF-8")
      entity_properties = {
        "PartitionKey" => value,
        "RowKey" => value,
      }
      result = subject.insert_entity table_name, entity_properties
      result.properties["PartitionKey"].must_equal value
      result.properties["RowKey"].must_equal value
      if k != 'ChineseExtB' then
        # Service does not support surrogates in key in URL
        result = subject.get_entity(table_name, value, value)
        result.properties["PartitionKey"].must_equal value
        result.properties["RowKey"].must_equal value
        subject.delete_entity(table_name, value, value)
        begin
          # Expect error because the entity should be gone
          result = subject.get_entity(table_name, value, value)
          flunk "No exception"
        rescue Azure::Core::Http::HTTPError => error
          error.status_code.must_equal 404
        end
      end
    }
  end

  it 'Read, Write, and Query Key Values GB18030' do
    GB18030TestStrings.get.each { |k,v|
      value = ("value" + v).encode("GB18030")
      entity_properties = {
        "PartitionKey" => value.encode("UTF-8"),
        "RowKey" => value.encode("UTF-8")
      }
      result = subject.insert_entity table_name, entity_properties
      result.properties["PartitionKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      result.properties["RowKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      if k != 'ChineseExtB' then
        result = subject.get_entity(table_name, value, value)
        result.properties["PartitionKey"].encode("UTF-8").must_equal value.encode("UTF-8")
        result.properties["RowKey"].encode("UTF-8").must_equal value.encode("UTF-8")
        subject.delete_entity(table_name, value, value)
        begin
          # Expect error because the entity should be gone
          result = subject.get_entity(table_name, value, value)
          flunk "No exception"
        rescue Azure::Core::Http::HTTPError => error
          error.status_code.must_equal 404
        end
      end
    }
  end

  # Batch

  it 'Batch Property Names UTF-8' do
    counter = 1
    GB18030TestStrings.get_xml_10_fourth_ed_identifiers.each { |k,v|
      counter = counter + 1;
      prop = "prop" + v.encode("UTF-8")
      batch = Azure::Table::Batch.new table_name, "x"
      batch.insert k + counter.to_s,       { prop => "value" }
      batch.insert k + counter.to_s + "2", { prop => "value2" }
      results = subject.execute_batch batch
      results[0].properties[prop].must_equal "value"
      if (k != "Chinese_2B5" && k != "Tibetan") then
        filter = prop + " eq 'value'"
        result = subject.query_entities table_name, { :filter => filter }
        result.length.must_equal 1
        result.first.properties[prop.encode("UTF-8")].must_equal "value"
      end
    }
  end

  it 'Batch Property Names GB18030' do
    counter = 1
    GB18030TestStrings.get_xml_10_fourth_ed_identifiers.each { |k,v|
      counter = counter + 1;
      prop = "prop" + v.encode("GB18030")
      batch = Azure::Table::Batch.new table_name, "x"
      batch.insert k + counter.to_s,       { prop => "value" }
      batch.insert k + counter.to_s + "2", { prop => "value2" }
      results = subject.execute_batch batch
      results[0].properties[prop.encode("UTF-8")].must_equal "value"
      if (k != "Chinese_2B5" && k != "Tibetan") then
        filter = prop + " eq 'value'"
        result = subject.query_entities table_name, { :filter => filter }
        result.length.must_equal 1
        result.first.properties[prop.encode("UTF-8")].must_equal "value"
      end
    }
  end

  it 'Batch Property Values UTF-8' do
    counter = 1
    GB18030TestStrings.get.each { |k,v|
      value = "value" + v.encode("UTF-8")
      counter = counter + 1;
      batch = Azure::Table::Batch.new table_name, "x"
      batch.insert k + counter.to_s,       { "key" => value }
      batch.insert k + counter.to_s + "2", { "key" => value + "2" }
      results = subject.execute_batch batch
      results[0].properties["key"].must_equal value
      filter = "key eq '" + value + "'"
      result = subject.query_entities table_name, { :filter => filter }
      result.length.must_equal 1
      result.first.properties["key"].encode("UTF-8").must_equal value.encode("UTF-8")
    }
  end

  it 'Batch Property Values GB18030' do
    counter = 1
    GB18030TestStrings.get.each { |k,v|
      value = "value" + v.encode("GB18030")
      counter = counter + 1;
      batch = Azure::Table::Batch.new table_name, "x"
      batch.insert k + counter.to_s,       { "key" => value }
      batch.insert k + counter.to_s + "2", { "key" => value + "2" }
      results = subject.execute_batch batch
      results[0].properties["key"].encode("UTF-8").must_equal value.encode("UTF-8")
      filter = "key eq '" + value + "'"
      result = subject.query_entities table_name, { :filter => filter }
      result.length.must_equal 1
      result.first.properties["key"].encode("UTF-8").must_equal value.encode("UTF-8")
    }
  end

  it 'Batch Key Values UTF-8' do
    counter = 1
    GB18030TestStrings.get.each { |k,v|
      value = "value" + v.encode("UTF-8")
      counter = counter + 1;
      batch = Azure::Table::Batch.new table_name, value
      batch.insert value, { }
      batch.insert value + "2", { }
      results = subject.execute_batch batch
      results[0].properties["PartitionKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      results[0].properties["RowKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      if k != 'ChineseExtB' then
        # Service does not support surrogates in key in URL
        result = subject.get_entity(table_name, value, value)
        result.properties["PartitionKey"].encode("UTF-8").must_equal value.encode("UTF-8")
        result.properties["RowKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      end
      batch = Azure::Table::Batch.new table_name, value
      batch.delete value
      batch.delete value + "2"
      results = subject.execute_batch batch
      if k != 'ChineseExtB' then
        # Service does not support surrogates in key in URL
        begin
          # Expect error because the entity should be gone
          result = subject.get_entity(table_name, value, value)
          flunk "No exception"
        rescue Azure::Core::Http::HTTPError => error
          error.status_code.must_equal 404
        end
      end
    }
  end

  it 'Batch Key Values GB18030' do
    counter = 1
    GB18030TestStrings.get.each { |k,v|
      value = ("value" + v).encode("GB18030")
      counter = counter + 1;
      batch = Azure::Table::Batch.new table_name, value
      batch.insert value, { }
      batch.insert value + "2", { }
      results = subject.execute_batch batch
      results[0].properties["PartitionKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      results[0].properties["RowKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      if k != 'ChineseExtB' then
        # Service does not support surrogates in key in URL
        result = subject.get_entity(table_name, value, value)
        result.properties["PartitionKey"].encode("UTF-8").must_equal value.encode("UTF-8")
        result.properties["RowKey"].encode("UTF-8").must_equal value.encode("UTF-8")
      end
      batch = Azure::Table::Batch.new table_name, value
      batch.delete value
      batch.delete value + "2"
      results = subject.execute_batch batch
      if k != 'ChineseExtB' then
        # Service does not support surrogates in key in URL
        begin
          # Expect error because the entity should be gone
          result = subject.get_entity(table_name, value, value)
          flunk "No exception"
        rescue Azure::Core::Http::HTTPError => error
          error.status_code.must_equal 404
        end
      end
    }
  end
end
