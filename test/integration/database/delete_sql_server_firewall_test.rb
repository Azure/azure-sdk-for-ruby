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

  let(:login_name) {'ms_open_tech'}
  let(:sql_server) { subject.create_server(login_name, 'User1@123', WindowsImageLocation) }
  subject { Azure::SqlDatabaseManagementService.new }

  before {
    Loggerx.expects(:puts).returns(nil).at_least(0)
    subject.set_sql_server_firewall_rule(sql_server.name, "rule1")
    ip_range = {:start_ip_address => "10.20.30.0", :end_ip_address => "10.20.30.255"}
    subject.set_sql_server_firewall_rule(sql_server.name, "rule2", ip_range)
  }

  after {
    subject.delete_server(sql_server.name)
  }

  describe "#delete_sql_server_firewall_rule" do

    it "delete sql database server firewall" do
      server_name = sql_server.name
      subject.delete_sql_server_firewall_rule(server_name, 'rule1')

      sql_server_firewalls = subject.list_sql_server_firewall_rules(server_name)
      sql_server_firewalls.wont_be_nil
      sql_server_firewalls.must_be_kind_of Array
      sql_server_firewalls.first.must_be_kind_of Hash
      sql_server_firewalls.size.must_equal 1
      firewall = sql_server_firewalls.first
      firewall[:rule].must_equal 'rule2'
      firewall[:end_ip_address].must_equal "10.20.30.255"
      firewall[:start_ip_address].must_equal "10.20.30.0"
    end

    it "errors if the sql server does not exist" do
      server_name = "unknown-server"
      exception = assert_raises(Azure::Error::Error) do
        subject.delete_sql_server_firewall_rule(server_name, 'rule1')
      end
      assert_match(/does not have server #{server_name}./i, exception.message)
    end

    it "errors if the sql server firewall rule does not exist" do
      rule_name = 'rule10'
      exception = assert_raises(RuntimeError) do
        subject.delete_sql_server_firewall_rule(sql_server.name, rule_name)
      end
      assert_match(/The specified firewall rule #{rule_name} does not exist./i, exception.message)
    end

  end

end

