require "integration/test_helper"

describe "Deleting a Tables" do
  table_name = TableNameHelper.name

  after do
    TableNameHelper.clean
  end

  let :table do
    Azure::Tables::Table.new(table_name)
  end

  it "should return false if the table cannot be deleted" do
    Azure::Tables.delete(table).must_equal false
  end

  it "should return true if the table were deleted" do
    table = Azure::Tables::Table.create(table_name)
    Azure::Tables.delete(table).must_equal true
  end
end
