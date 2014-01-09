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

describe Azure::SqlDatabaseManagement::Serialization do
  subject { Azure::SqlDatabaseManagement::Serialization }

  let(:sql_servers_xml) { Fixtures['list_sql_database'] }
  before do
    Azure.config.sql_database_authentication_mode = :sql_server
  end
  describe '#databases_from_xml' do

    it 'accepts an XML string' do
      subject.databases_from_xml Nokogiri::XML(sql_servers_xml)
    end

    it 'returns an Array of SqlDatabaseServer instances' do
      results = subject.databases_from_xml Nokogiri::XML(sql_servers_xml)
      results.must_be_kind_of Array
      results[0].must_be_kind_of Azure::SqlDatabaseManagement::SqlDatabase
      results.count.must_equal 3
    end
  end

  describe '#database_to_xml' do
    let(:login) { 'administrator' }
    let(:password) { 'Password@123' }
    let(:location) { 'West US' }

    it 'accepts an name and options hash' do
      subject.database_to_xml(login, password, location)
    end

    it 'serializes the argument to xml' do
      results = subject.database_to_xml login, password, location
      doc = Nokogiri::XML results
      doc.css('AdministratorLogin').text.must_equal login
      doc.css('AdministratorLoginPassword').text.must_equal password
      doc.css('Location').text.must_equal location
      results.must_be_kind_of String
    end

  end

  describe '#firewall_rule_to_xml' do
    let(:options) do
      {
        start_ip_address: '10.0.0.1',
        end_ip_address: '10.0.0.255'
      }
    end

    it 'accepts a ip range' do
      subject.firewall_rule_to_xml(options)
    end

    it 'serializes the argument to xml' do
      results = subject.firewall_rule_to_xml options
      doc = Nokogiri::XML results
      doc.css('StartIpAddress').text.must_equal options[:start_ip_address]
      doc.css('EndIpAddress').text.must_equal options[:end_ip_address]
      results.must_be_kind_of String
    end

  end

  describe '#database_firewall_from_xml' do
    let(:sql_server_firewall_xml) { Fixtures['list_sql_server_firewall'] }

    it 'accepts an XML string' do
      subject.database_firewall_from_xml Nokogiri::XML(sql_server_firewall_xml)
    end

    it 'returns an Array of SqlDatabaseServer instances with firewall' do
      results = subject.database_firewall_from_xml(
        Nokogiri::XML(sql_server_firewall_xml)
      )
      results.must_be_kind_of Array
      results[0].must_be_kind_of Hash
      results.count.must_equal 4
    end

  end
end
