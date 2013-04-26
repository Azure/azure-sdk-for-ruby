#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "azure/table/table_service"
require "azure/core/http/http_error"

describe Azure::Table::TableService do
  describe "#create_table" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }
    after { TableNameHelper.clean }

    it "creates a table with a valid name" do
      result = subject.create_table(table_name)
      result.must_be_nil
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_table "this_table.cannot-exist!"
      end
    end
  end
end