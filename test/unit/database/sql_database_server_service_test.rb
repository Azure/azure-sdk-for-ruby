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
require 'test_helper'

describe 'Azure::SqlDatabaseManagementService' do
  subject { Azure::SqlDatabaseManagementService.new }

  let(:response_headers) { {} }
  let(:mock_request) { mock }
  let(:response) { mock }
  let(:response_xml) { nil }

  describe 'SQL Server authentication Endpoint' do
    before do
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      mock_request.stubs(:headers).returns(response_headers)
      mock_request.expects(:call).returns(Nokogiri::XML response_xml).at_least(0)
    end

    describe '#list_servers' do
      let(:response_xml) { Fixtures['list_sql_database'] }
      let(:verb) { :get }
      let(:request_path) { '/servers' }

      before do
        subject.client.stubs(:sql_management_request).with(
            verb,
            request_path,
            anything
        ).returns(mock_request)
      end

      it 'assembles a URI for the request' do
        subject.list_servers
      end

      it 'returns a list of sql servers for the account' do
        results = subject.list_servers
        results.must_be_kind_of Array
        results.length.must_equal 3
        sql_server = results.first
        sql_server.must_be_kind_of Azure::SqlDatabaseManagement::SqlServer
        sql_server.name.must_equal 'nn1koc2ney'
        sql_server.administrator_login.must_equal 'SqlServer2'
        sql_server.location.must_equal 'West US'
        sql_server.fully_qualified_domain_name.nil?.must_equal false
        sql_server.version.must_equal '12.0'
      end
    end

    describe '#delete_server' do
      before do
        Azure::SqlDatabaseManagementService.any_instance.stubs(
            :list_servers
        ).returns([])
      end

      it 'error if sql server does not exists' do
        s_name = 'unknown-server'
        exception = assert_raises(Azure::SqlDatabaseManagement::ServerDoesNotExist) do
          subject.delete_server s_name
        end
        assert_match(/Server named unknown-server does not exist./i,
                     exception.message)
      end

    end

    describe '#list_sql_server_firewall_rules' do
      let(:response_xml) { Fixtures['list_sql_server_firewall'] }
      let(:verb) { :get }
      let(:sql_server_name) { 'server1' }
      let(:request_path) { "/servers/#{sql_server_name}/firewallrules" }

      before do
        sql_server = Azure::SqlDatabaseManagement::SqlServer.new do |server|
          server.name = sql_server_name
        end
        Azure::SqlDatabaseManagementService.any_instance.stubs(
            :list_servers
        ).returns([sql_server])

        subject.client.stubs(:sql_management_request).with(
            verb,
            request_path
        ).returns(mock_request)
      end

      it 'assembles a URI for the sql server firewall request' do
        subject.list_sql_server_firewall_rules sql_server_name
      end

      it 'returns a list of firewall of given sql servers' do
        results = subject.list_sql_server_firewall_rules sql_server_name
        results.must_be_kind_of Array
        results.length.must_equal 4
        results.first.must_be_kind_of Azure::SqlDatabaseManagement::FirewallRule
      end
    end

    describe '#create_server' do
      let(:response_xml) { Fixtures['create_sql_database_server'] }
      let(:verb) { :post }
      let(:request_path) { '/servers' }
      let(:password) { 'User@123' }
      let(:login) { 'login_user' }
      let(:geo_location) { 'West US' }

      let(:sql_server_name) { 'server1' }
      let(:sql_server) {
        Azure::SqlDatabaseManagement::SqlServer.new do |server|
          server.name = sql_server_name
        end
      }
      let(:sql_server2) {
        Azure::SqlDatabaseManagement::SqlServer.new do |server|
          server.name = sql_server_name + '_blah'
        end
      }

      before do
        subject.client.stubs(:sql_management_request).with(
            verb,
            request_path,
            anything
        ).returns(mock_request)

        Azure::SqlDatabaseManagementService.any_instance.stubs(
            :list_servers
        ).returns([sql_server], [sql_server, sql_server2])

        mock_request.stubs(:headers).returns(response_headers)
        mock_request.expects(:call).returns(
            Nokogiri::XML response_xml
        ).at_least(0)
      end

      it 'create sql server' do
        sql_server = subject.create_server(login, password, geo_location)
        sql_server.name.must_equal 'gxyfzrhx2c'
        sql_server.administrator_login.must_equal login
        sql_server.location.must_equal geo_location
      end

      describe 'when catching a 500 error and verifying the server was made' do

        before do
          Azure::SqlDatabaseManagementService.any_instance.stubs(
              :list_servers
          ).returns([sql_server])

          subject.client.stubs(:sql_management_request).with(
              verb,
              request_path,
              anything
          ).returns(mock_request)
          mock_request.stubs(:headers).returns(response_headers)
          mock_request.expects(:call).raises(RuntimeError.new('Please retry the request'))
        end

        it 'will raise if nothing new is returned from the list_servers call' do
          assert_raises(RuntimeError) do
            subject.create_server(login, password, geo_location)
          end
        end

        it 'will not raise if there is a new server returned from the second list_servers call' do
          Azure::SqlDatabaseManagementService.any_instance.stubs(
              :list_servers
          ).returns([sql_server], [sql_server, sql_server2])

          subject.create_server(login, password, geo_location).must_equal sql_server2
        end
      end

    end

    describe '#set_sql_server_firewall_rule' do
      it 'create sql server' do
        exception = assert_raises(ArgumentError) do
          subject.set_sql_server_firewall_rule('zv2nfoah2t1', nil)
        end
        assert_match(/Missing or empty parameter server_name, rule_name, start_ip or end_ip/i,
                     exception.message)
      end
    end
  end

  describe 'Management Certificate authentication Endpoint' do
    before do
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      mock_request.stubs(:headers).returns(response_headers)
      mock_request.expects(:call).returns(Nokogiri::XML response_xml).at_least(0)
    end

    describe '#list_servers' do
      let(:response_xml) { Fixtures['list_sql_database'] }
      let(:verb) { :get }
      let(:request_path) { '/servers' }

      before do
        subject.client.stubs(:sql_management_request).with(verb, request_path).returns(mock_request)
      end

      it 'assembles a URI for the request' do
        subject.list_servers
      end

      it 'returns a list of sql servers for the account' do
        results = subject.list_servers
        results.must_be_kind_of Array
        results.length.must_equal 3
        sql_server = results.first
        sql_server.must_be_kind_of Azure::SqlDatabaseManagement::SqlServer
        sql_server.name.must_equal 'nn1koc2ney'
        sql_server.administrator_login.must_equal 'SqlServer2'
        sql_server.location.must_equal 'West US'
        sql_server.version.must_equal '12.0'
        sql_server.fully_qualified_domain_name.nil?.must_equal false
      end
    end

    describe '#delete_server' do
      before do
        Azure::SqlDatabaseManagementService.any_instance.stubs(
            :list_servers
        ).returns([])
      end

      it 'error if sql server does not exists' do
        s_name = 'unknown-server'
        exception = assert_raises(Azure::SqlDatabaseManagement::ServerDoesNotExist) do
          subject.delete_server s_name
        end
        assert_match(/Server named unknown-server does not exist./i,
                     exception.message)
      end

    end

    describe '#list_sql_server_firewall_rules' do
      let(:response_xml) { Fixtures['list_firewall_management_endpoint'] }
      let(:verb) { :get }
      let(:sql_server_name) { 'server1' }
      let(:request_path) { "/servers/#{sql_server_name}/firewallrules" }

      before do
        sql_server = Azure::SqlDatabaseManagement::SqlServer.new do |server|
          server.name = sql_server_name
        end
        Azure::SqlDatabaseManagementService.any_instance.stubs(
            :list_servers
        ).returns([sql_server])

        subject.client.stubs(:sql_management_request).with(
            verb,
            request_path
        ).returns(mock_request)
      end

      it 'assembles a URI for the sql server firewall request' do
        subject.list_sql_server_firewall_rules sql_server_name
      end

      it 'returns a list of firewall of given sql servers' do
        results = subject.list_sql_server_firewall_rules sql_server_name
        results.must_be_kind_of Array
        results.length.must_equal 4
        results.first.must_be_kind_of Azure::SqlDatabaseManagement::FirewallRule
      end
    end

    describe '#create_server' do
      let(:response_xml) { Fixtures['create_sql_database_server'] }
      let(:verb) { :post }
      let(:request_path) { '/servers' }
      let(:password) { 'User@123' }
      let(:login) { 'test_login' }
      let(:geo_location) { 'West US' }

      let(:sql_server_name) { 'server1' }
      let(:sql_server) {
        Azure::SqlDatabaseManagement::SqlServer.new do |server|
          server.name = sql_server_name
        end
      }
      let(:sql_server2) {
        Azure::SqlDatabaseManagement::SqlServer.new do |server|
          server.name = sql_server_name + '_blah'
        end
      }

      before do
        Azure::SqlDatabaseManagementService.any_instance.stubs(
            :list_servers
        ).returns([sql_server], [sql_server, sql_server2])

        subject.client.stubs(:sql_management_request).with(
            verb,
            request_path,
            anything
        ).returns(mock_request)

        mock_request.stubs(:headers).returns(response_headers)
        mock_request.expects(:call).returns(
            Nokogiri::XML response_xml
        ).at_least(0)
      end

      it 'create sql server' do
        sql_server = subject.create_server(login, password, geo_location)
        sql_server.name.must_equal 'gxyfzrhx2c'
        sql_server.administrator_login.must_equal login
        sql_server.location.must_equal geo_location
      end
    end

    describe '#set_sql_server_firewall_rule' do

      it 'set server firewall with a nil param' do
        exception = assert_raises(ArgumentError) do
          subject.set_sql_server_firewall_rule('zv2nfoah2t1', nil)
        end
        assert_match(/Missing or empty parameter server_name, rule_name, start_ip or end_ip/i,
                     exception.message)
      end
    end
  end
end
