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
require "test_helper"

describe Azure::StorageManagementService do

  subject { Azure::StorageManagementService.new }
  let(:request_path) {'/services/storageservices'}
  let(:storage_accounts_xml) { Fixtures["list_storage_accounts"] }
  let(:one_storage_account_xml) { Fixtures['list_storage_account_single']}
  let(:method) { :get }
  let(:mock_request){ mock() }

  let(:response) {
    response = mock()
    response.stubs(:body).returns(storage_accounts_xml)
    response
  }

  let(:single_response) {
    single_response = mock()
    single_response.stubs(:body).returns(one_storage_account_xml)
    single_response
  }

  let(:response_body) {Nokogiri::XML response.body}
  let(:single_response_body) { Nokogiri::XML single_response.body }

  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }

  describe "#list_storage_accounts" do
    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    }

    it "assembles a URI for the request" do
      subject.list_storage_accounts
    end

    it "sets the properties of the storage accounts" do
      storage_account = subject.list_storage_accounts.first
      storage_account.name.must_equal 'storage1'
    end

    it "returns a list of storage accounts for the subscription" do
      results = subject.list_storage_accounts
      results.must_be_kind_of Array
      results.length.must_equal 2
      results.first.must_be_kind_of Azure::StorageManagement::StorageAccount
    end
  end

  describe "#list_storage_accounts_single" do
    before {
      ManagementHttpRequest.stubs(:new).with(
        method, request_path, nil
      ).returns(mock_request)
      mock_request.expects(:call).returns(single_response_body)
    }

    it "returns an array even if single account exists" do
      results = subject.list_storage_accounts
      results.must_be_kind_of Array
      results.length.must_equal 1
      results.first.must_be_kind_of Azure::StorageManagement::StorageAccount
      results.first.name.must_equal 'storage1'
    end
  end

  describe "#get_storage_account" do
    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    }

    it "assembles a URI for the request" do
      subject.get_storage_account 'storage1'
    end

    it "returns true if found storage account with given name" do
      result = subject.get_storage_account 'storage1'
      result.must_equal true
    end

    it "returns false if storage account with given name doesn't exists" do
      result = subject.get_storage_account 'storage3'
      result.must_equal false
    end
  end

  describe "#create_storage_account" do
    let(:options) {
      {
        location: 'East Asia',
        description: 'Test Storage Description'
      }
    }

    it 'Checks if name is provided' do
      exception = assert_raises(RuntimeError) do
        subject.create_storage_account(options)
      end
      assert_match('Name not specified', exception.message)
    end

    it 'Checks if name is not nil' do
      exception = assert_raises(RuntimeError) do
        subject.create_storage_account('', options)
      end
      assert_match('Name not specified', exception.message)
    end

    it 'Checks if name is not empty' do
      exception = assert_raises(RuntimeError) do
        subject.create_storage_account('', options)
      end
      assert_match('Name not specified', exception.message)
    end

    it "Create storage account return message if storage account exists of given name." do
      ManagementHttpRequest.any_instance.expects(:call).returns response_body
      msg = subject.create_storage_account 'storage1'
      assert_match(/^Storage Account storage1 already exist.*/, msg)
    end

    it "Create storage account if storage account doesn't exists of given name." do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storage3').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns nil
      subject.create_storage_account 'storage3'
    end

  end

  describe "#update_storage_account" do
    let(:updated_accounts_xml) { Fixtures["updated_storage_accounts"] }
    let(:no_options_specified) { 'No options specified' }
    let(:update_storage_account_req) { Fixtures["update_storage_account"] }

    let(:updated_storage_account_mock_request){ mock() }
    let(:updated_storage_account_response) {
      updated_storage_account_response = mock()
      updated_storage_account_response.stubs(:body).returns(updated_accounts_xml)
      updated_storage_account_response
    }
    let(:updated_storage_account_response_body) {Nokogiri::XML updated_storage_account_response.body}

    let(:update_request) {
      update_request = mock()
      update_request.stubs(:body).returns('')
      update_request
    }

    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)

      Azure::StorageManagement::Serialization.stubs(:update_storage_account).returns(update_storage_account_req)
    }

    let(:options) { {
        description: 'Test Description',
        label: 'Test Label',
        geo_replication_enabled: false,
        extended_properties: {
          prop_1_name: 'prop_1_value',
          prop_2_name: 'prop_2_value'
        }
      }
    }

    it "checks if nil options is provided" do
      exception = assert_raises RuntimeError do
        subject.update_storage_account 'storage2', nil
      end
      assert_match no_options_specified, exception.message
    end

    it "checks if empty options is provided" do
      exception = assert_raises RuntimeError do
        subject.update_storage_account 'storage2', Hash.new
      end
      assert_match no_options_specified, exception.message
    end

    it "checks if account exists before updating" do
      ret_val = subject.update_storage_account 'storage3', Hash.new
      ret_val.must_equal "Storage Account 'storage3' does not exist. Skipped..."
    end

    it "updates the specified account" do
      ManagementHttpRequest.stubs(:new).with(:put, "#{request_path}/storage2", update_storage_account_req).returns(update_request)
      update_request.expects(:call).returns('')

      subject.update_storage_account 'storage2', options

      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(updated_storage_account_mock_request)
      updated_storage_account_mock_request.expects(:call).returns(updated_storage_account_response_body)

      accounts = subject.list_storage_accounts

      accounts.each { |account|
        next unless account.name == 'storage2'

        account.name.must_equal 'storage2'
        account.label.must_equal options[:label]
        account.geo_replication_enabled.must_equal "#{options[:geo_replication_enabled]}"

        account.extended_properties.each { |prop|
          prop[:value].must_equal "#{options[:extended_properties][:"#{prop[:name]}"]}"
        }
      }
    end
  end

  describe '#get_storage_account_properties' do
    let(:account_name) { 'storage2' }
    let(:label) { 'ValidLabel' }
    let(:request_path) { "/services/storageservices/#{account_name}" }
    let(:account_xml) { Fixtures['get_storage_account_properties'] }

    let(:get_account_mock_request) { mock() }
    let(:get_account_response) {
      get_account_response = mock()
      get_account_response.stubs(:body).returns(account_xml)
      get_account_response
    }
    let(:get_account_response_body) {
      Nokogiri::XML(get_account_response.body)
    }

    before {
      ManagementHttpRequest.stubs(:new).with(
        :get, request_path, nil
      ).returns(get_account_mock_request)
      get_account_mock_request.expects(:call).returns(
        get_account_response_body
      )
    }

    it 'returns the label as a Base64 decoded string' do
      account = subject.get_storage_account_properties(account_name)
      account.label.must_be_kind_of(String)
      account.label.must_equal(label)
    end
  end
end
