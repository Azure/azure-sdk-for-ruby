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
