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

describe Azure::BaseManagementService do

  subject { Azure::BaseManagementService.new }

  let(:mock_request) { mock }
  let(:response) { mock }
  let(:response_xml) { nil }

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
    mock_request.expects(:call).returns(Nokogiri::XML response_xml).at_least(0)
  end

  describe '#list_affinity_groups' do
    let(:request_path) { '/affinitygroups' }
    let(:response_xml) { Fixtures['list_affinity_groups'] }
    let(:method) { :get }

    before do
      ManagementHttpRequest.stubs(:new).with(method,
                                             request_path,
                                             nil).returns(mock_request)
    end

    it 'returns a list of affinity groups for the subscription' do
      results = subject.list_affinity_groups
      results.must_be_kind_of Array
      results.length.must_equal 2
      results.first.must_be_kind_of Azure::BaseManagement::AffinityGroup
      affinity_group = results.first
      affinity_group.name.must_equal 'AG1'
      affinity_group.description.must_equal 'First Affinity Group'
      affinity_group.location.must_equal 'West US'
      affinity_group.capability.must_equal %w(PersistentVMRole HighMemory)
    end
  end

  describe '#delete_affinity_group' do
    before do
      Azure::BaseManagementService.any_instance.stubs(
        :list_affinity_groups
      ).returns([])
    end

    it 'error if affinity group does not exists' do
      affinity_group_name = 'unknown-affinity-group'
      exception = assert_raises(Azure::Error::Error) do
        subject.delete_affinity_group affinity_group_name
      end
      assert_match(/The affinity group does not exist./i, exception.message)
    end

    it 'error if affinity group name is empty' do
      affinity_group_name = ''
      exception = assert_raises(Azure::Error::Error) do
        subject.delete_affinity_group affinity_group_name
      end
      assert_match(/The affinity group does not exist./i, exception.message)
    end
  end

  describe '#create_affinity_group' do
    let(:method) { :post }
    let(:request_path) { '/affinitygroups' }
    let(:name) { 'AG1' }
    let(:location) { 'West US' }
    let(:label) { 'Label Name' }

    let(:location_request_path) { '/locations' }
    let(:locations_xml) { Fixtures['list_locations'] }
    let(:location_response) do
      response = mock
      response.stubs(:body).returns(locations_xml)
      response
    end
    let(:location_response_body) { Nokogiri::XML location_response.body }

    before do
      ManagementHttpRequest.stubs(:new).with(method,
                                             request_path,
                                             anything).returns(mock_request)
      mock_request.expects(:call).returns(
        Nokogiri::XML response_xml
      ).at_least(0)
      mock_request = mock

      ManagementHttpRequest.stubs(:new).with(:get,
                                             location_request_path,
                                             nil).returns(mock_request)
      mock_request.expects(:call).returns(location_response_body).at_least(0)
      mock_request = mock

      ManagementHttpRequest.stubs(:new).with(:get,
                                             request_path,
                                             nil).returns(mock_request)
      mock_request.expects(:call).returns(
        Nokogiri::XML Fixtures['list_affinity_groups']
      ).at_least(0)
    end

    it 'error if affinity group already exists' do
      exception = assert_raises(Azure::Error::Error) do
        subject.create_affinity_group(name, location, label)
      end
      assert_match(
       /An affinity group #{name} already exists in the current subscription/i,
       exception.message
      )
    end

    it 'error if location is invalid' do
      location = 'invalid-location'
      exception = assert_raises(RuntimeError) do
        subject.create_affinity_group('AGN', location, label)
      end
      assert_match(
        /Value '#{location}' specified for parameter 'location' is invalid/i,
        exception.message
      )
    end
  end

  describe '#get_affinity_group' do
    let(:affinity_group_name) { 'AG1' }
    let(:request_path) { '/affinitygroups/' + affinity_group_name }
    let(:response_xml) { Fixtures['affinity_group'] }
    let(:method) { :get }

    before do
      Azure::BaseManagementService.any_instance.stubs(
        :affinity_group
      ).returns(true)
      ManagementHttpRequest.stubs(:new).with(
        :get,
        request_path,
        nil
      ).returns(mock_request)
      mock_request.expects(:call).returns(
        Nokogiri::XML response_xml
      ).at_least(0)
    end

    it 'returns a properties of given affinity group' do
      affinity_group = subject.get_affinity_group affinity_group_name
      affinity_group.must_be_kind_of Azure::BaseManagement::AffinityGroup
      affinity_group.name.must_equal 'AG1'
      affinity_group.label.must_equal 'AG1'
      affinity_group.description.must_equal 'First Affinity Group'
      affinity_group.location.must_equal 'West US'
      affinity_group.hosted_services.wont_be_nil
      affinity_group.hosted_services.size.must_equal 1
      affinity_group.storage_services.wont_be_nil
      affinity_group.storage_services.size.must_equal 1
      affinity_group.capability.must_equal %w[PersistentVMRole HighMemory]
    end
  end

  describe '#update_affinity_group' do
    let(:affinity_group_name) { 'AG1' }

    it 'error if affinity group label is invalid' do
      exception = assert_raises(RuntimeError) do
        subject.update_affinity_group(affinity_group_name, nil)
      end
      assert_match(/Label name cannot be empty/i, exception.message)
    end

    it 'error if affinity group does not exist' do
      exception = assert_raises(Azure::Error::Error) do
        subject.update_affinity_group(nil, 'label')
      end
      assert_match(/The affinity group does not exist./i, exception.message)
    end
  end

end
