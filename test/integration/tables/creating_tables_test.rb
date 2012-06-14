require "integration/test_helper"

describe "Creating tables" do
  after do
    TableNameHelper.clean
  end

  it "creates a table with a valid name" do
    table = Azure::Tables::Table.create(TableNameHelper.name)
    table.must_be :kind_of?, Azure::Tables::Table

    # FIXME: for some reason MiniTest fails if we do table.must_be :valid?, but
    # only if we run rake, not if we run this test in isolation.
    assert table.valid?
  end
end
