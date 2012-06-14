require "integration/test_helper"

describe "Query Entities" do
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
  end

  it "returns an empty list of entities if the table is empty" do
    entities = @table.entities
    entities.must_be :kind_of?, Azure::Tables::EntitiesCollection
    entities.must_be_empty
  end

  it "lists all entities in a table" do
    @table.insert(@entity)

    entities = @table.entities
    entities.must_include @entity
  end

  it "can find a specific entity in a table" do
    @table.insert(@entity)

    entity = @table.entities(
      partition_key: @entity["PartitionKey"],
      row_key:       @entity["RowKey"]
    )

    entity.must_equal @entity
  end

  it "returns nil if a specific entity is not in the table" do
    entity = @table.entities(
      partition_key: "not_there",
      row_key:       "not_there"
    )

    entity.must_be_nil
  end

  it "should be able to select which fields should be returned" do
    skip_if_emulator

    @table.insert(@entity)

    entity = @table.entities(
      partition_key: "part1",
      row_key:       "row1",
      select:        ["FirstName", "Email"]
    )

    entity.wont_be_nil
    entity["Address"].must_be_nil
  end

  it "should be able to filter queries" do
    @table.insert(@entity)

    entity_b = Azure::Tables::Entity.new(
      "PartitionKey" => "part1",
      "RowKey"       => "row2",
      "Address"      => "New York",
      "FirstName"    => "John",
      "Email"        => "john@example.com"
    )

    @table.insert(entity_b)

    entities = @table.entities(
      :filter => "Address eq 'New York'"
    )

    entities.size.must_equal 1
    entities.first["Address"].to_s.must_equal "New York"
  end

  it "should be able to set top of results" do
    @table.insert(@entity)

    entity_b = Azure::Tables::Entity.new(
      "PartitionKey" => "part1",
      "RowKey"       => "row2",
      "Address"      => "New York",
      "FirstName"    => "John",
      "Email"        => "john@example.com"
    )

    @table.insert(entity_b)

    entities = @table.entities(:top => 1)
    entities.size.must_equal 1

    entities = @table.entities(:top => 2)
    entities.size.must_equal 2
  end

  it "should be able to paginate" do
    ["New York", "Alabama", "Miami"].each_with_index do |city, i|
      entity = Azure::Tables::Entity.new(
        "PartitionKey" => "part1",
        "RowKey"       => "row#{i}",
        "Address"      => city
      )

      @table.insert(entity)
    end

    entities = @table.entities(:top => 2)

    entities.size.must_equal 2
    entities.first["Address"].to_s.must_equal "New York"
    entities.last["Address"].to_s.must_equal "Alabama"

    other_entities = entities.next
    other_entities.must_be :kind_of?, Azure::Tables::EntitiesCollection

    other_entities.size.must_equal 1
    other_entities.first["Address"].to_s.must_equal "Miami"
  end
end
