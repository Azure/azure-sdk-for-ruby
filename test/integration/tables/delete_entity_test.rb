require "integration/test_helper"

describe "Deleting Entities" do
  after do
    TableNameHelper.clean
  end

  before do
    @table_name = TableNameHelper.name
    @table = Azure::Tables::Table.create(TableNameHelper.name)
    @entity = Azure::Tables::Entity.new(
      "PartitionKey" => "part1",
      "RowKey"       => "row1",
      "Address"      => "Mountain View",
      "FirstName"    => "John",
      "Email"        => "john@example.com"
    )
    @table.insert(@entity)
  end

  it "should return false if the entity doesn't exists" do
    entity = Azure::Tables::Entity.new do |e|
      e.reset(@entity)
      e["PartitionKey"] = "Foo"
      e.url = URI(e.url.to_s.gsub("part1", "Foo"))
    end

    result = entity.delete
    result.must_equal false
  end

  it "should be able to delete the entity" do
    result = @entity.delete
    result.must_equal true

    entity = Azure::Tables.query_entity(@table, "part1", "row1")
    entity.must_be_nil
  end
end
