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

describe Azure::CloudService do

  subject do
    ServiceManagement.new
    Azure::CloudService
  end

  describe "#list_cloud_services" do
    let(:request_path) {'/services/hostedservices'}
    let(:cloud_services_xml)  { Fixtures["list_cloud_services"] }
    let(:method) { :get }
    let(:mock_request){ mock() }
    let(:response) {
      response = mock()
      response.stubs(:body).returns(cloud_services_xml)
      response
    }
    let(:response_body) {Nokogiri::XML  response.body}
  
    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    }
  
    it "assembles a URI for the request" do
      subject.list_cloud_services
    end
  
    it "sets the properties of the CloudService instance" do
      cloud_service = subject.list_cloud_services.first
      cloud_service.name.must_equal 'cloud-service-1'
    end
  
    it "returns a list of cloud services for the subscription" do
      results = subject.list_cloud_services
      results.must_be_kind_of Array
      results.length.must_equal 2
      results.first.must_be_kind_of Azure::CloudServiceManagement::CloudService
    end
  end

end
