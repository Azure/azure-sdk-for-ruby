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
require 'azure/storage_management/storage_account'

describe Azure::StorageManagementService do

  subject { Azure::StorageManagementService.new }
	let(:request_path) {'/services/storageservices'}  
	let(:method) { :get }
	let(:mock_request){ mock() }
  	let(:get_storage_account_properties) { Fixtures["get_storage_account_properties_new"] }
	let(:responseStorageProps) {
		responseStorageProps = mock()
		responseStorageProps.stubs(:body).returns(get_storage_account_properties)
		responseStorageProps
	}
	let(:responseStorageProps_body) {Nokogiri::XML responseStorageProps.body}
  
  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }
  
describe "#create_storage_account" do

	it "Get storage account properties" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account_properties).with('storageacc').returns(responseStorageProps)		
      subject.get_storage_account_properties('storageacc')
	  msg = responseStorageProps_body.at('StorageServiceProperties')
	  
	  #Description assertion fails as there is a bug in RDFE for the description value not getting updated accordingly 
	  assert_match(/^Description*/, msg.at('Description').text)
	  assert_match(/^agbabu1*/, msg.at('AffinityGroup').text)
	  assert_match(/^VmFsaWRMYWJlbA==*/, msg.at('Label').text)
	  assert_match(/^Created*/, msg.at('Created').text)
	  assert_match(/^false*/, msg.at('GeoReplicationEnabled').text)
	  assert_match(/^false*/, msg.at('GeoPrimaryRegion').text)
	  msg = responseStorageProps_body.at('ExtendedProperty')
	  assert_match(/^verbose*/, msg.at('blob').text)
    end
	
	end
end