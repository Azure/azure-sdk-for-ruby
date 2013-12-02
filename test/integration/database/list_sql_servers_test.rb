#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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

describe Azure::SqlDatabaseManagementService do

  subject { Azure::SqlDatabaseManagementService.new }
  let(:login_name) {'ms_open_tech'}
  describe "#list_servers" do

    before {
      Loggerx.expects(:puts).returns(nil).at_least(0)
      Azure.config.management_endpoint = SqlServerEndpoint
      subject.create_server(login_name, 'User1@123', WindowsImageLocation)
      subject.create_server(login_name, 'User2@123', 'East US')
    }

    after {
      Azure.config.management_endpoint = ManagementServiceEndpoint
    }

    it "returns a list of SQL databse servers" do
      sql_servers = subject.list_servers
      sql_servers.wont_be_nil
      sql_servers.must_be_kind_of Array
      sql_server = sql_servers.first
      sql_server.must_be_kind_of Azure::SqlDatabaseManagement::SqlDatabase
      assert_operator sql_servers.size, :>=, 2
    end

  end

end
