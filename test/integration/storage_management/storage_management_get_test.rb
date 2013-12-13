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
  let(:get_storage_accounts_xml) { Fixtures["get_storage_properties"] }
  let(:method) { :get }
  let(:mock_request){ mock() }
  let(:response) {
    response = mock()
    response.stubs(:body).returns(get_storage_accounts_xml)
    response
  }
    let(:get_storage_account_error_xml) { Fixtures["get_storage_account_error"] }
	let(:response1) {
		response1 = mock()
		response1.stubs(:body).returns(get_storage_account_error_xml)
		response1
	}
  let(:response_body) {Nokogiri::XML response.body}
  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }
  
describe "#get_storage_account" do
	it "Get storage account by specifying null" do
	result = subject.get_storage_account nil
	result.must_equal false
	end
	
	it "Get storage account with valid name" do
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validname').returns(true)
      result = subject.get_storage_account 'validname'
	  result.must_equal true
    end
	
	it "Get storage account with invalid name - spl characters" do
       Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('invalidname@@@@@@@@@@@@@@@@@@').returns(false)
       result = subject.get_storage_account 'invalidname@@@@@@@@@@@@@@@@@@'
	   result.must_equal false
    end
	
	it "Get storage account with invalid name - long name" do
       Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('invalidname....................................').returns(false)
       result = subject.get_storage_account 'invalidname....................................'
	   result.must_equal false
    end
end
end
	
	
	