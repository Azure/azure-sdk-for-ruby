require "test_helper"
require "azure/tables/table"

describe Azure::Tables::Table do
  def entry
    Atom::Entry.load_entry(Fixtures[:create_table_response_entry])
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
