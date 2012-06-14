require "integration/test_helper"

describe "Inserting Entities" do
  after do
    TableNameHelper.clean
  end

  it "should be able to insert an entity" do
    table = Azure::Tables::Table.create(TableNameHelper.name)
    entity = Azure::Tables::Entity.new(
      "PartitionKey" => "part1",
      "RowKey"       => "row1",
      "Address"      => "Mountain View",
      "FirstName"    => "John",
      "Email"        => "john@example.com"
    )

    table.insert(entity)

    assert entity.valid?
    entity.url.wont_be_nil
  end
end
