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
      Loggerx.expects(:puts).returns(nil).at_least(0)
      mock_request.stubs(:headers).returns(response_headers)
      mock_request.expects(:call).returns(Nokogiri::XML response_xml).at_least(0)
      Azure.config.sql_database_authentication_mode = :sql_server
    end

    describe '#list_servers' do
      let(:response_xml) { Fixtures['list_sql_database'] }
      let(:method) { :get }
      let(:request_path) { '/servers' }

      before do
        SqlManagementHttpRequest.stubs(:new).with(
          method,
          request_path,
          nil
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
        sql_server.must_be_kind_of Azure::SqlDatabaseManagement::SqlDatabase
        sql_server.name.must_equal 'nn1koc2ney'
        sql_server.administrator_login.must_equal 'SqlServer2'
        sql_server.location.must_equal 'West US'
        sql_server.feature_name.must_equal 'Premium Mode'
        sql_server.feature_value.must_equal 'false'
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
        exception = assert_raises(Azure::Error::Error) do
          subject.delete_server s_name
        end
        s_id = Azure.config.subscription_id
        assert_match(/Subscription #{s_id} does not have server #{s_name}./i,
                     exception.message)
      end

    end

    describe '#list_sql_server_firewall_rules' do
      let(:response_xml) { Fixtures['list_sql_server_firewall'] }
      let(:method) { :get }
      let(:sql_server_name) { 'server1' }
      let(:request_path) { "/servers/#{sql_server_name}/firewallrules" }

      before do
        sql_server = Azure::SqlDatabaseManagement::SqlDatabase.new do |server|
          server.name = sql_server_name
        end
        Azure::SqlDatabaseManagementService.any_instance.stubs(
          :list_servers
        ).returns([sql_server])

        SqlManagementHttpRequest.stubs(:new).with(
          method,
          request_path,
          nil
        ).returns(mock_request)
      end

      it 'assembles a URI for the sql server firewall request' do
        subject.list_sql_server_firewall_rules sql_server_name
      end

      it 'returns a list of firewall of given sql servers' do
        results = subject.list_sql_server_firewall_rules sql_server_name
        results.must_be_kind_of Array
        results.length.must_equal 4
        results.first.must_be_kind_of Hash
      end
    end

    describe '#create_server' do
      let(:response_xml) { Fixtures['create_sql_database_server'] }
      let(:method) { :post }
      let(:request_path) { '/servers' }
      let(:password) { 'User@123' }
      let(:login) { 'ms_open_tech' }
      let(:location) { 'West US' }

      before do
        SqlManagementHttpRequest.stubs(:new).with(
          method,
          request_path,
          anything
        ).returns(mock_request)

        mock_request.stubs(:headers).returns(response_headers)
        mock_request.expects(:call).returns(
          Nokogiri::XML response_xml
        ).at_least(0)
      end

      it 'create sql server' do
        sql_server = subject.create_server(login, password, location)
        sql_server.name.must_equal 'gxyfzrhx2c'
        sql_server.administrator_login.must_equal login
        sql_server.location.must_equal location
      end
    end

    describe '#set_sql_server_firewall_rule' do
      it 'create sql server' do
        ip_range = { start_ip_address: '0.0.0.1', end_ip_address: '0.0.0.5' }
        exception = assert_raises(RuntimeError) do
          subject.set_sql_server_firewall_rule('zv2nfoah2t1', ip_range)
        end
        assert_match(/Missing parameter server_name or rule_name/i,
                     exception.message)
      end
    end
  end

  describe 'Management Certificate authentication Endpoint' do
    before do
      Loggerx.expects(:puts).returns(nil).at_least(0)
      mock_request.stubs(:headers).returns(response_headers)
      mock_request.expects(:call).returns(Nokogiri::XML response_xml).at_least(0)
      Azure.config.sql_database_authentication_mode = :management_certificate
    end

    describe '#list_servers' do
      let(:response_xml) { Fixtures['list_sql_database'] }
      let(:method) { :get }
      let(:request_path) { '/servers' }

      before do
        SqlManagementHttpRequest.stubs(:new).with(
          method,
          request_path,
          nil
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
        sql_server.must_be_kind_of Azure::SqlDatabaseManagement::SqlDatabase
        sql_server.name.must_equal 'nn1koc2ney'
        sql_server.administrator_login.must_equal 'SqlServer2'
        sql_server.location.must_equal 'West US'
        sql_server.feature_name.must_equal 'Premium Mode'
        sql_server.feature_value.must_equal 'false'
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
        exception = assert_raises(Azure::Error::Error) do
          subject.delete_server s_name
        end
        s_id = Azure.config.subscription_id
        assert_match(/Subscription #{s_id} does not have server #{s_name}./i,
                     exception.message)
      end

    end

    describe '#list_sql_server_firewall_rules' do
      let(:response_xml) { Fixtures['list_firewall_management_endpoint'] }
      let(:method) { :get }
      let(:sql_server_name) { 'server1' }
      let(:request_path) { "/servers/#{sql_server_name}/firewallrules" }

      before do
        sql_server = Azure::SqlDatabaseManagement::SqlDatabase.new do |server|
          server.name = sql_server_name
        end
        Azure::SqlDatabaseManagementService.any_instance.stubs(
          :list_servers
        ).returns([sql_server])

        SqlManagementHttpRequest.stubs(:new).with(
          method,
          request_path,
          nil
        ).returns(mock_request)
      end

      it 'assembles a URI for the sql server firewall request' do
        subject.list_sql_server_firewall_rules sql_server_name
      end

      it 'returns a list of firewall of given sql servers' do
        results = subject.list_sql_server_firewall_rules sql_server_name
        results.must_be_kind_of Array
        results.length.must_equal 4
        results.first.must_be_kind_of Hash
      end
    end

    describe '#create_server' do
      let(:response_xml) { Fixtures['create_sql_database_server'] }
      let(:method) { :post }
      let(:request_path) { '/servers' }
      let(:password) { 'User@123' }
      let(:login) { 'ms_open_tech' }
      let(:location) { 'West US' }

      before do
        SqlManagementHttpRequest.stubs(:new).with(
          method,
          request_path,
          anything
        ).returns(mock_request)

        mock_request.stubs(:headers).returns(response_headers)
        mock_request.expects(:call).returns(
          Nokogiri::XML response_xml
        ).at_least(0)
      end

      it 'create sql server' do
        sql_server = subject.create_server(login, password, location)
        sql_server.name.must_equal 'gxyfzrhx2c'
        sql_server.administrator_login.must_equal login
        sql_server.location.must_equal location
      end
    end

    describe '#set_sql_server_firewall_rule' do
      it 'create sql server' do
        ip_range = { start_ip_address: '0.0.0.1', end_ip_address: '0.0.0.5' }
        exception = assert_raises(RuntimeError) do
          subject.set_sql_server_firewall_rule('zv2nfoah2t1', ip_range)
        end
        assert_match(/Missing parameter server_name or rule_name/i,
                     exception.message)
      end
    end
  end
end
