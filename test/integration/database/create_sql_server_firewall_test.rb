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

  subject { Azure::SqlDatabaseManagementService.new }
  let(:login_name) {'test_login_user'}
  let(:sql_server) { subject.create_server(login_name, 'User1@123', WindowsImageLocation) }
  let(:start_ip_address) { '0.0.0.0' }
  let(:end_ip_address) { '255.255.255.255' }

  describe '#set_sql_server_firewall_rule' do

    before {
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
    }

    after {
      subject.delete_server(sql_server.name)
    }

    it "should adds a new server-level firewall rule for a SQL Database server with requester's IP address." do
      subject.set_sql_server_firewall_rule(sql_server.name, 'rule1', start_ip_address, end_ip_address)
      sql_server_firewalls = subject.list_sql_server_firewall_rules(sql_server.name)
      sql_server_firewalls.must_be_kind_of Array
      sql_server_firewalls.first.must_be_kind_of Azure::SqlDatabaseManagement::FirewallRule
      sql_server_firewalls.size.must_equal 1
      firewall = sql_server_firewalls.first
      firewall.name.must_equal 'rule1'
      firewall.end_ip_address.wont_be_nil
      firewall.start_ip_address.wont_be_nil
    end

    it 'should adds a new server-level firewall rule for a SQL Database server with given IP range.' do
      subject.set_sql_server_firewall_rule(sql_server.name, 'rule2', '10.20.30.0', '10.20.30.255')
      sql_server_firewalls = subject.list_sql_server_firewall_rules(sql_server.name)
      sql_server_firewalls.must_be_kind_of Array
      sql_server_firewalls.first.must_be_kind_of Azure::SqlDatabaseManagement::FirewallRule
      sql_server_firewalls.size.must_equal 1

      firewall = sql_server_firewalls.last
      firewall.name.must_equal 'rule2'
      firewall.end_ip_address.must_equal '10.20.30.255'
      firewall.start_ip_address.must_equal '10.20.30.0'
    end

    it 'should updates an existing server-level firewall rule for a SQL Database server.' do
      subject.set_sql_server_firewall_rule(sql_server.name, 'rule2', '10.20.30.100', '10.20.30.150')
      sql_server_firewalls = subject.list_sql_server_firewall_rules(sql_server.name)
      sql_server_firewalls.must_be_kind_of Array
      sql_server_firewalls.first.must_be_kind_of Azure::SqlDatabaseManagement::FirewallRule
      sql_server_firewalls.size.must_equal 1

      firewall = sql_server_firewalls.last
      firewall.name.must_equal 'rule2'
      firewall.end_ip_address.must_equal '10.20.30.150'
      firewall.start_ip_address.must_equal '10.20.30.100'
    end

    it 'errors if the sql server does not exist' do
      assert_raises(Azure::SqlDatabaseManagement::ServerDoesNotExist) do
        subject.set_sql_server_firewall_rule('unknown-server', 'rule1')
      end
    end
  end

end
