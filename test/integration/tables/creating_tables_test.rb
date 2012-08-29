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
