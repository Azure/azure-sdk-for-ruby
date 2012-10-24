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
require "azure/storage/table/table_service"
require "azure/core/http/http_error"

describe Azure::Storage::Table::TableService do 
  describe "#query_tables" do
    subject { Azure::Storage::Table::TableService.new }
    let(:tables){ [TableNameHelper.name, TableNameHelper.name] }
    before { tables.each { |t| subject.create_table t } }
    after { TableNameHelper.clean }

    it "gets a list of tables for the account" do
      result, token = subject.query_tables
      result.must_be_kind_of Hash

      tables.each { |t| 
        result.must_include t
        updated = subject.get_table(t)

        # this is a weird, but sometimes it's off by a second or two
        assert ((result[t] - updated).abs < 3), "time stamps don't match"
      }
    end
  end
end