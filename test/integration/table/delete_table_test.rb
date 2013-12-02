#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
  describe "#delete_table" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }
    before { subject.create_table table_name }
    after { TableNameHelper.clean }

    it "deletes a table and returns nil on success" do
      result = subject.delete_table(table_name)
      result.must_be_nil
      
      tables = subject.query_tables
      tables.wont_include table_name
    end

    it "errors on an invalid table" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_table "this_table.cannot-exist!"
      end
    end
  end
end