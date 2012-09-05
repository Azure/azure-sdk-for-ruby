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
    stale_entity.error.status_code.must_equal 412
  end
end
