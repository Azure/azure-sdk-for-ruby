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
	let(:get_storage_account_properties) { Fixtures["get_storage_account_properties_new"] }
	let(:responseStorageProps) {
		responseStorageProps = mock()
		responseStorageProps.stubs(:body).returns(get_storage_account_properties)
		responseStorageProps
	}
	let(:responseStorageProps_body) {Nokogiri::XML responseStorageProps.body}
  	let(:create_storage_name_error) { Fixtures["create_storage_name_error"] }
	let(:response) {
		response = mock()
		response.stubs(:body).returns(create_storage_name_error)
		response
	}
	let(:response_body) {Nokogiri::XML response.body}
	
  	let(:create_storage_location_error) { Fixtures["create_storage_location_error"] }
	let(:responseLoc) {
		responseLoc = mock()
		responseLoc.stubs(:body).returns(create_storage_location_error)
		responseLoc
	}	
	let(:responseLoc_body) {Nokogiri::XML responseLoc.body}
	let(:create_storage_desc_error) { Fixtures["create_storage_desc_error"] }
	let(:responseDescErr) {
		responseDescErr = mock()
		responseDescErr.stubs(:body).returns(create_storage_desc_error)
		responseDescErr
	}
	let(:responseDescErr_body) {Nokogiri::XML responseDescErr.body}
	
	let(:create_storage_extendedprop_error) { Fixtures["create_storage_extendedprop_error"] }
	let(:responseExtndErr) {
		responseExtndErr = mock()
		responseExtndErr.stubs(:body).returns(create_storage_extendedprop_error)
		responseExtndErr
	}
	let(:responseExtndErr_body) {Nokogiri::XML responseExtndErr.body}
	let(:create_storage_extendedpropname_error) { Fixtures["create_storage_extendedpropname_error"] }
	let(:responseExtndNameErr) {
		responseExtndNameErr = mock()
		responseExtndNameErr.stubs(:body).returns(create_storage_extendedpropname_error)
		responseExtndNameErr
	}
	
	let(:responseExtndNameErr_body) {Nokogiri::XML responseExtndNameErr.body}
	
	let(:create_storage_label_error) { Fixtures["create_storage_label_error"] }
	let(:responseLabelErr) {
		responseLabelErr = mock()
		responseLabelErr.stubs(:body).returns(create_storage_label_error)
		responseLabelErr
	}
	
	let(:responseLabelErr_body) {Nokogiri::XML responseLabelErr.body}
    let(:paramsLocInvalid){
    {
      :location => "West 	US",
    }
	}
	let(:paramsLoc){
    {
      :location => "West US",
    }
  }
  let(:paramsDesc){
    {
      :description => "Description",
	  :location => "West US",
    }
  }
   let(:paramsDescInvalid){
    {
	  :location => "West US",
      :description => "..............................................................................................................................................................................................................................................................................................................",
    }
  }
   let(:paramsAffinityGrp){
    {
      :affinity_group_name => "agbabu1"
    }
  }
   let(:paramslocGeoTrue){
    {
      :location => "West US",
	  :geo_replication_enabled => 'true',
    }
  }
  let(:paramslocGeoFalse){
    {
      :location => "West US",
	  :geo_replication_enabled => 'false',
    }
  }
  let(:paramsExtendedPropsValue){
    {
      :location => "West US",
	  :extended_properties =>{:blobs =>'verbose...............................................
	  ........................................................................................
	  .........................This is a lengthy value...............................................................
	  ........................................................................................
	  ',:test =>'test'},
    }
  }
    let(:paramsExtendedProps){
    {
      :location => "West US",
	  :extended_properties =>{:blobs =>'verbose',:test =>'test'},
    }
  }
    let(:paramsExtendedPropsName){
    {
      :location => "West US",
	  :extended_properties =>{:blobnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnns =>'verbose',:test =>'test'},
    }
  }
  let(:paramsLabel){
    {
      :location => "West US",
	  :label => "ValidLabel"
    }
  }
  
    let(:paramsLabelInvalid){
    {
      :location => "West US",
	  :label => "ValidLabel.................................................................................................................
 ............................................
 ...................................
 ...............................",
    }
  }
  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }
  
describe "#create_storage_account" do

    it "Create storage account with long name" do
		Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('longstoragename..............................................').returns(false)		
		ManagementHttpRequest.any_instance.expects(:call).returns response_body
		subject.create_storage_account 'longstoragename..............................................'
		msg = response_body.at('Error')
		assert_match(/^The name is not a valid storage account name. Storage account names must be between 3 and 24 characters in\nlength and use numbers and lower-case letters only.*/, msg.at('Message').text)
	end
	
	it "Create storage account name with spl characters" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('%^%$$^$^').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns response_body
      subject.create_storage_account '%^%$$^$^'
	  msg = response_body.at('Error')
	  assert_match(/^The name is not a valid storage account name. Storage account names must be between 3 and 24 characters in
length and use numbers and lower-case letters only.*/, msg.at('Message').text)
    end
	
	it "Create storage account with valid name and invalid location" do
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('invalidlocation').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns responseLoc
      subject.create_storage_account('invalidlocation',paramsLocInvalid)
	  msg = responseLoc_body.at('Error')
	  assert_match(/^The location constraint is not valid*/, msg.at('Message').text)
    end
	
	
	it "Create valid storage account with only name and valid location" do
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns 'succeeded'
      subject.create_storage_account('storageacc',paramsLoc)	  
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account_properties).with('storageacc').returns(responseStorageProps)		
      subject.get_storage_account_properties('storageacc')
	  msg = responseStorageProps_body.at('StorageServiceProperties')
	  assert_match(/^Created*/, msg.at('Status').text)
    end
	
	it "Create valid storage account with only name and valid description" do
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('validdesc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns responseLoc
      subject.create_storage_account('validdesc',paramsDesc)	  
	  msg = responseLoc_body.at('Error')
	  assert_match(/^The location constraint is not valid*/, msg.at('Message').text)
    end
    
	it "Create valid storage account with only name, location and long description" do
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('longdesc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns responseDescErr_body
      subject.create_storage_account('longdesc',paramsDescInvalid)
	  msg = responseDescErr_body.at('Error')
	  assert_match(/^The description is too long*/, msg.at('Message').text)
    end
	
	it "Create storage account with name and affinity group" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns ""
      subject.create_storage_account('storageacc',paramsAffinityGrp)
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account_properties).with('storageacc').returns(responseStorageProps)		
      subject.get_storage_account_properties('storageacc')
	  msg = responseStorageProps_body.at('StorageServiceProperties')
	  assert_match(/^Created*/, msg.at('Status').text)
	  assert_match(/^agbabu1*/, msg.at('AffinityGroup').text)
    end
	
	it "Create storage account with name, location and geo_replication_enabled true" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns ""
      subject.create_storage_account('storageacc',paramslocGeoTrue)
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account_properties).with('storageacc').returns(responseStorageProps)		
      subject.get_storage_account_properties('storageacc')
	  msg = responseStorageProps_body.at('StorageServiceProperties')
	  assert_match(/^Created*/, msg.at('Status').text)
    end
	
	it "Create storage account with name, location and geo_replication_enabled false" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns ""
      subject.create_storage_account('storageacc',paramslocGeoFalse)
	  Azure::StorageManagementService.any_instance.stubs(:get_storage_account_properties).with('storageacc').returns(responseStorageProps)		
      subject.get_storage_account_properties('storageacc')
	  msg = responseStorageProps_body.at('StorageServiceProperties')
	  assert_match(/^Created*/, msg.at('Status').text)
	  assert_match(/^false*/, msg.at('GeoReplicationEnabled').text)
    end
	
	it "Create storage account with name, location and extended properties" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns "succeeded"
      msg = subject.create_storage_account('storageacc',paramsExtendedProps)	  
	  assert_match(/^succeeded*/, msg)
    end
	
	it "Create storage account with name, location and lengthy extended property value" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns responseExtndErr
      subject.create_storage_account('storageacc',paramsExtendedPropsValue)
	  msg = responseExtndErr_body.at('Error')
	  assert_match(/^verbose...............................................
	  ........................................................................................
	  .........................This is a lengthy value...............................................................
	  ........................................................................................ value is too long. Only 255 characters are permitted*/, msg.at('Message').text)
    end
	
	it "Create storage account with name, location and lengthy extended property name" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns responseExtndNameErr
      subject.create_storage_account('storageacc',paramsExtendedPropsName)
	  msg = responseExtndNameErr_body.at('Error')
	  assert_match(/^Extended property name blobnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
nnnnnnnnns is too long. Only 64 characters are permitted.*/, msg.at('Message').text)
    end
	
	it "Create storage account with name, location and label" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns ""
      subject.create_storage_account('storageacc',paramsLabel)
	  msg = responseExtndNameErr_body.at('Error')
	  assert_match(/^*/, "")
    end
	
	it "Create storage account with name, location and lengthy label" do
      Azure::StorageManagementService.any_instance.stubs(:get_storage_account).with('storageacc').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns responseLabelErr
      subject.create_storage_account('storageacc',paramsLabelInvalid)
	  msg = responseLabelErr_body.at('Error')
	  assert_match(/^The label is not a valid storage account label.*/, msg.at('Message').text)
    end
	
	end
end