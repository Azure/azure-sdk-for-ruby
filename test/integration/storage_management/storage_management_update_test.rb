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
	let(:method) { :post }
	let(:mock_request){ mock() }
  	let(:update_storage_error) { Fixtures["update_storage_error"] }
	let(:response) {
		response = mock()
		response.stubs(:body).returns(update_storage_error)
		response
	}
	let(:response_body) {Nokogiri::XML response.body}
	let(:params){
    {
      :label => "SampleLabel",
	  :description => "SampleDescription",
	  
    }
	}
	let(:params1){
    {
      :label => "SampleLabel",
	  :geo_replication_enabled => 'invalid',	  
    }
	}
	let(:params2){
    {
      :label => "SampleLabel",
	  :description => "..............................................
	  ...............................................................
	  ................................................................
	  ................................................................
	  ..................................................................",
	  :geo_replication_enabled => 'invalid',	  
    }
	}
	let(:params3){
    {
      :label => "..............................................
	  ...............................................................
	  ................................................................
	  ................................................................
	  ..................................................................",
	  :description => "sampledescription",
	  :geo_replication_enabled => 'invalid',	  
    }
	}
	let(:params4){
    {
      :label => "@#@#@#@#@",
	  :description => nil,
	  :geo_replication_enabled => nil,	  
    }
	}
  	
  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }
  
describe "update_storage_account" do

    it "Update non existing storage account" do		
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('nonexistantstorageacc').returns(false)
		msg = subject.update_storage_account('nonexistantstorageacc',params)
		assert_match(/^Storage Account 'nonexistantstorageacc' does not exist. Skipped...*/, msg)
	end
	
	
    it "Update invalid geo_replication_enabled value" do	
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validstoragename').returns(true)
		ManagementHttpRequest.any_instance.expects(:call).returns response_body
		subject.update_storage_account('validstoragename',params1)		
		msg = response_body.at('Error')
		assert_match(/^InvalidXmlRequest*/, msg.at('Code').text)
	end
	
	
    it "Update long description" do		
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validstoragename').returns(true)
		ManagementHttpRequest.any_instance.expects(:call).returns response_body
		subject.update_storage_account('validstoragename',params2)	
		msg = response_body.at('Error')
		assert_match(/^InvalidXmlRequest*/, msg.at('Code').text)
	end
	
	it "Update long label" do		
		storagename='nonexistantstorageacc'
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validstoragename').returns(true)
		ManagementHttpRequest.any_instance.expects(:call).returns response_body
		subject.update_storage_account('validstoragename',params3)	
		msg = response_body.at('Error')
		assert_match(/^InvalidXmlRequest*/, msg.at('Code').text)
	end
	
	it "Update long description" do		
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validstoragename').returns(true)
		ManagementHttpRequest.any_instance.expects(:call).returns response_body
		subject.update_storage_account('validstoragename',params2)	
		msg = response_body.at('Error')
		assert_match(/^InvalidXmlRequest*/, msg.at('Code').text)
	end
	
	it "Update label with spl characters" do
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validstoragename').returns(true)
		ManagementHttpRequest.any_instance.expects(:call).returns response_body
		subject.update_storage_account('validstoragename',params3)	
		msg = response_body.at('Error')
		assert_match(/^InvalidXmlRequest*/, msg.at('Code').text)
	end
	
	it "Update valid geo_location_enabled" do		
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validstoragename').returns(true)
		ManagementHttpRequest.any_instance.expects(:call).returns ""
		subject.update_storage_account('validstoragename',params3)
		assert_match(/^*/, "")
	end
  end
end