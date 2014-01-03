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
  let(:delete_storage_error) { Fixtures["delete_storage_error"] }
	let(:responseResourceNotFound) {
		responseResourceNotFound = mock()
		responseResourceNotFound.stubs(:body).returns(delete_storage_error)
		responseResourceNotFound
	}
	let(:responseResourceNotFound_body) {Nokogiri::XML responseResourceNotFound.body}
	let(:delete_storage_container_error) { Fixtures["delete_storage_container_error"] }
	let(:responseBadRequest) {
		responseBadRequest = mock()
		responseBadRequest.stubs(:body).returns(delete_storage_container_error)
		responseBadRequest
	}
	let(:responseBadRequest_body) {Nokogiri::XML responseBadRequest.body}
  	
  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }
  
  describe "#delete_storage_account" do

    it "Delete non existing storage account" do		
      ManagementHttpRequest.any_instance.expects(:call).returns responseResourceNotFound_body
      subject.delete_storage_account 'invalidstorageacc'
      msg = responseResourceNotFound_body.at('Error')
      assert_match(/^ResourceNotFound*/, msg.at('Code').text)
    end
	
    it "Delete storage account with containers having disks" do
      ManagementHttpRequest.any_instance.expects(:call).returns responseBadRequest_body
      subject.delete_storage_account 'storagewithcontainer'
      msg = responseBadRequest_body.at('Error')
      assert_match(/^BadRequest*/, msg.at('Code').text)
    end
  end
end
