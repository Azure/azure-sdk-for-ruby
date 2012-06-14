require "integration/test_helper"

describe "Obtaining a list of tables" do
  after do
    TableNameHelper.clean
  end

  it "returns a list of tables if there are any" do
    table = Azure::Tables.create(TableNameHelper.name)

    all_tables = Azure::Tables.all

    all_tables.must_be :kind_of?, Azure::Tables::TablesCollection
    all_tables.must_include table
  end

  it "should be able to set a top of table " do
    Azure::Tables::Table.create(TableNameHelper.name)
    Azure::Tables::Table.create(TableNameHelper.name)

    Azure::Tables.all(:top => 1).size.must_equal 1
    Azure::Tables.all(:top => 2).size.must_equal 2
  end

  it "should be able to paginate result" do
    Azure::Tables::Table.create(TableNameHelper.name)
    Azure::Tables::Table.create(TableNameHelper.name)
    Azure::Tables::Table.create(TableNameHelper.name)
    Azure::Tables::Table.create(TableNameHelper.name)

    tables = Azure::Tables.all(:top => 2)
    tables.size.must_equal 2

    other_tables = tables.next
    other_tables.must_be :kind_of?, Azure::Tables::TablesCollection

    other_tables.size.must_equal 2

    tables.concat(other_tables).uniq.size.must_equal 4
  end

  it "should be able to fetch a single table by name" do
    name = TableNameHelper.name

    created_table = Azure::Tables::Table.create(name)
    fetched_table = Azure::Tables::Table.fetch(name)

    fetched_table.must_equal created_table
  end

  it "invokes the given block when a table isn't found by #fetch" do
    result = Azure::Tables::Table.fetch("doesntexist") { 42 }
    result.must_equal 42
  end

  it "fails with ArgumentError when a table isn't found by #fetch and no block is provided" do
    proc { Azure::Tables::Table.fetch("doesntexist") }.must_raise ArgumentError
  end

  it "should be able to filter tables" do
    skip
  end
end
