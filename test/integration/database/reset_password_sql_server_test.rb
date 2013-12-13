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
  let(:sql_server) { subject.create_server(login_name, 'User1@123', WindowsImageLocation) }

  describe "#reset_password" do

    before {
      Loggerx.expects(:puts).returns(nil).at_least(0)
    }

    after {
      subject.delete_server(sql_server.name)
    }

    it "should be able to reset password of sql database server." do
      subject.reset_password(sql_server.name, 'User2@123')
    end

    it "error if the sql server does not exist" do
      server_name = "unknown-server"
      exception = assert_raises(Azure::Error::Error) do
        subject.reset_password(server_name, 'User2@123')
      end
      assert_match(/does not have server #{server_name}./i, exception.message)
    end

    it "error if the sql server password is invalid" do
      password = "weak"
      exception = assert_raises(RuntimeError) do
        subject.reset_password(sql_server.name, password)
      end
      assert_match(/Password validation failed/i, exception.message)
    end

  end

end
