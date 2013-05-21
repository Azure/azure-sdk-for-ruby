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

describe Azure::StorageService do

  subject do
    ServiceManagement.new
    Azure::StorageService
  end

  describe "#list_storage_accounts" do
    let(:request_path) {"/services/storageservices"}
    let(:storage_accounts_xml)  { Fixtures["list_storage_accounts"] }
    let(:method) { :get }
    let(:mock_request){ mock() }
    let(:response) {
      response = mock()
      response.stubs(:body).returns(storage_accounts_xml)
      response
    }
    let(:response_body) {Nokogiri::XML  response.body}

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

end
