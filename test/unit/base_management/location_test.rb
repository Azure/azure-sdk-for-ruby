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

describe Azure::BaseManagement::Location do

  subject do
    Azure::BaseManagementService.new
  end

  describe "#list_locations" do
    let(:request_path) { '/locations' }
    let(:locations_xml) { Fixtures['list_locations'] }
    let(:method) { :get }
    let(:mock_request){ mock() }
    let(:response) {
      response = mock()
      response.stubs(:body).returns(locations_xml)
      response
    }
    let(:response_body) { Nokogiri::XML response.body }

    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    }

    it "assembles a URI for the request" do
      subject.list_locations
    end

    it "sets the properties of the location" do
      location = subject.list_locations.first
      location.name.must_equal 'West US'
    end

    it "returns a list of locations data center locations that are valid for given subscription" do
      results = subject.list_locations
      results.must_be_kind_of Array
      results.length.must_equal 6
      results.first.must_be_kind_of Azure::BaseManagement::Location
    end
  end

end
