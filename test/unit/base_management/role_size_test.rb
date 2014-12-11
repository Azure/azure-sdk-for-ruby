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

describe Azure::BaseManagement::RoleSize do

  subject do
    Azure::BaseManagementService.new
  end

  describe '#list_rolesizes' do
    let(:request_path) { '/rolesizes' }
    let(:rolesizes_xml) { Fixtures['role_sizes'] }
    let(:method) { :get }
    let(:mock_request) { mock }
    let(:response) do
      response = mock
      response.stubs(:body).returns(rolesizes_xml)
      response
    end
    let(:response_body) { Nokogiri::XML response.body }

    before do
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    end

    it 'assembles a URI for the request' do
      subject.list_rolesizes
    end

    it 'gets properties of the role size' do
      location = subject.list_rolesizes.first
      location.name.must_equal 'A5'
    end

    it 'returns a list of role sizes that are valid for given subscription' do
      results = subject.list_rolesizes
      results.must_be_kind_of Array
      results.length.must_equal 23
      results.first.must_be_kind_of Azure::BaseManagement::RoleSize
    end
  end

end
