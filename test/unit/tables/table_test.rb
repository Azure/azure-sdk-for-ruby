#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require "test_helper"
require "azure/tables/table"

describe Azure::Tables::Table do
  def entry
    Azure::Tables::Atom::Entry.parse(Fixtures[:create_table_response_entry])
  end

  it "can be instantiated from an entry" do
    table = Azure::Tables::Table.from_entry(entry)
    table.name.must_equal "mytable"
    table.url.must_equal URI("http://myaccount.table.core.windows.net/Tables('mytable')")
  end

  it "is equal to another table if they share the same name" do
    table_1 = Azure::Tables::Table.new("mytable", URI("http://myaccount.table.core.windows.net/Tables('mytable')"))
    table_2 = Azure::Tables::Table.new("mytable", URI("http://localhost/foo"))

    table_1.must_equal table_2
  end

  it "can delete itself" do
    table, service = table("mytable")
    service.expect(:delete, true, [table])
    table.delete.must_equal true
    service.verify
  end

  it "can insert an entity" do
    table, service = table("mytable")
    entity = Azure::Tables::Entity.new
    service.expect(:insert_entity, entity, [table, entity])
    table.insert(entity)
    service.verify
  end

  it "can query for a list of entities by not specifying the partition/row keys" do
    table, service = table("mytable")
    service.expect(:query_entities, [], [table, {}])
    table.entities.must_be_empty
    service.verify
  end

  it "can query for a specific entity" do
    table, service = table("mytable")
    service.expect(:query_entity, nil, [table, "Foo", "Bar", {}])
    table.entities(partition_key: "Foo", row_key: "Bar").must_be_nil
    service.verify
  end

  def table(name)
    service = MiniTest::Mock.new
    uri = URI("http://localhost/foo")
    table = Azure::Tables::Table.new(name, uri, service)
    [table, service]
  end
end
