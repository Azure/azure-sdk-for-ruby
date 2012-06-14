require "integration/test_helper"

describe "Updating Entities" do
  after do
    TableNameHelper.clean
  end

  before do
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

  it "should be able to update the entity from the entity itself" do
    result = @entity.update(
      "PartitionKey" => "part1",
      "RowKey"       => "row1",
      "Address"      => "New York"
    )

    result.must_equal true

    @entity["Address"].must_equal "New York"
    @entity["FirstName"].must_equal nil

    # TODO: Load the Entity to check if the properties were updated.
  end

  it "fails when it tries to update a stale entity" do
    stale_entity = @entity.dup

    @entity.update(
      "PartitionKey" => "part1",
      "RowKey"       => "row1",
      "Address"      => "New York"
    )

    result = stale_entity.update(
      "PartitionKey" => "part1",
      "RowKey"       => "row1",
      "Address"      => "Chicago"
    )
    result.must_equal false

    refute stale_entity.valid?
    stale_entity.error.code.must_equal 412
  end
end
