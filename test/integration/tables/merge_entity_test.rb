require "integration/test_helper"

describe "Meging Entities" do
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

  it "should be able to merge the entity directly against Table Service and preserve old not updated fields" do
    result = @entity.merge("Address" => "New York")

    result.must_equal true

    @entity["Address"].must_equal "New York"
    @entity["FirstName"].wont_be_nil
  end
end
