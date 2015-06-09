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
require 'integration/test_helper'

describe Azure::SqlDatabaseManagementService do

  let(:login_name) { 'test_login' }
  let(:sql_server) { subject.create_server(login_name, 'User1@123', WindowsImageLocation) }
  subject { Azure::SqlDatabaseManagementService.new }

  before {
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
    subject.set_sql_server_firewall_rule(sql_server.name, 'rule1', '0.0.0.0', '255.255.255.255')
    subject.set_sql_server_firewall_rule(sql_server.name, 'rule2', '10.20.30.0', '10.20.30.255')
  }

  after {
    subject.delete_server(sql_server.name)
  }

  describe '#delete_sql_server_firewall_rule' do

    it 'delete sql database server firewall' do
      server_name = sql_server.name
      subject.delete_sql_server_firewall_rule(server_name, 'rule1')

      sql_server_firewalls = subject.list_sql_server_firewall_rules(server_name)
      sql_server_firewalls.must_be_kind_of Array
      sql_server_firewalls.first.must_be_kind_of Azure::SqlDatabaseManagement::FirewallRule
      sql_server_firewalls.size.must_equal 1
      firewall = sql_server_firewalls.first
      firewall.name.must_equal 'rule2'
      firewall.end_ip_address.must_equal '10.20.30.255'
      firewall.start_ip_address.must_equal '10.20.30.0'
    end

    it 'errors if the sql server does not exist' do
      assert_raises(Azure::SqlDatabaseManagement::ServerDoesNotExist) {
        subject.delete_sql_server_firewall_rule('unknown-server', 'rule1')
      }
    end

    it 'returns false if the sql server firewall rule does not exist when deleting' do
      assert_raises(Azure::SqlDatabaseManagement::RuleDoesNotExist) {
        subject.delete_sql_server_firewall_rule(sql_server.name, rule10)
      }
    end

  end

end

