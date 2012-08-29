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
require "test_helper"
require "azure/core/atom"
require "azure/tables"
require "azure/tables/entities_collection"

describe Azure::Tables::EntitiesCollection do

  let :service do
    MiniTest::Mock.new
  end

  before do
    @table = Azure::Tables::Table.new("table_name")
    entries = Azure::Tables::Atom::Feed.parse(Fixtures[:query_entities_response]).entries
    @collection = Azure::Tables::EntitiesCollection.from_entries(@table, entries, {}, service)
  end

  it "return an instance from entries feed" do
    @collection.must_be :kind_of?, Azure::Tables::EntitiesCollection
    @collection.size.must_equal 2
  end

  it "should indicate if the result is a paginated result" do
    @collection.paginated?.must_equal false
    @collection.continuation_token("part1", "row2")
    @collection.paginated?.must_equal true
  end

  it "should be able to set continuation tokens" do
    @collection.continuation_token("part1", "row2")

    service.expect(:query_entities, nil, [@table, {
      "NextPartitionKey" => "part1",
      "NextRowKey" => "row2"
    }])

    @collection.next
  end
end
