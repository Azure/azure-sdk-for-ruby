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
