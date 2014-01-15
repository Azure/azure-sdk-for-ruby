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

  before {
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }

  subject { Azure::SqlDatabaseManagementService.new }
  let(:login_name) {'ms_open_tech'}
  let(:sql_server) { subject.create_server(login_name, 'User1@123', WindowsImageLocation) }

  describe "#delete_sql_server" do

    it "delete sql database server" do
      server_name = sql_server.name
      subject.delete_server(server_name)
      sql_server = subject.list_servers.select{|x| x.name == server_name}.first
      sql_server.must_be_nil
    end

    it "errors if the sql server does not exist" do
      server_name = "unknown-server"
      exception = assert_raises(Azure::Error::Error) do
        subject.delete_server(server_name)
      end
      assert_match(/does not have server #{server_name}./i, exception.message)
    end

    it "exception message should be valid" do
      server_name = "unknown-server"
      begin
        subject.delete_server(server_name)
      rescue Azure::Error::Error => error
        error.status_code.must_equal 40647
        error.type.must_equal "DatabaseServerNotFound"
        error.description.end_with?("does not have server #{server_name}.").must_equal true
      end
    end

  end

end

