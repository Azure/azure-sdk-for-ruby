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

describe Azure::VirtualNetworkManagementService do

  subject { Azure::VirtualNetworkManagementService.new }

  # Setup mock parameters and return values
  let(:vmname) { 'vnet-test-unit-1' }
  let(:affinity_group) { 'RubyTest' }
  let(:address_space) { ['172.16.0.0/12'] }

  let(:non_existent_file) { '/this/file/doesnt/exist.xml' }
  let(:empty_xml_file) { './test/fixtures/empty_xml_file' }

  let(:list_networks_path) { '/services/networking/virtualnetwork' }
  let(:set_network_path) { '/services/networking/media' }

  let(:virtual_networks) { Fixtures['list_virtual_networks'] }

  let(:getmethod) { :get }
  let(:putmethod) { :put }

  let(:mock_list_virtual_networks_request) { mock }
  let(:list_networks_response) do
    list_networks_response = mock
    list_networks_response.stubs(:body).returns(virtual_networks)
    list_networks_response
  end
  let(:list_networks_response_body) do
    Nokogiri::XML list_networks_response.body
  end

  let(:mock_set_network_request) { mock }
  let(:set_network_response) do
    set_network_response = mock
    set_network_response.stubs(:body).returns(empty_xml_file)
    set_network_response
  end
  let(:set_network_response_body) do
    Nokogiri::XML set_network_response.body
  end

  describe '#list_virtual_networks' do
    before do
      ManagementHttpRequest.stubs(:new).with(
        getmethod,
        list_networks_path,
        nil
      ).returns(mock_list_virtual_networks_request)
      mock_list_virtual_networks_request.expects(:call).returns(
        list_networks_response_body
      )
    end

    it 'returns list of virtual networks' do
      results = subject.list_virtual_networks
      results.must_be_kind_of Array
      results.length.must_equal 3
    end

    it 'sets the properties of the virtual network' do
      virtual_network = subject.list_virtual_networks.first

      # Verify global properties
      virtual_network.name.must_equal 'test-virtual-network'
      virtual_network.affinity_group.must_equal 'Test'
      virtual_network.id.must_equal 'afd3a393-8fe2-4127-a834-1b2b920729fe'
      virtual_network.state.must_equal 'Created'

      # Verify address_space
      virtual_network.address_space.must_be_kind_of Array
      virtual_network.address_space.length.must_equal 1
      virtual_network.address_space.first.must_be_kind_of String
      virtual_network.address_space.first.must_equal '10.0.0.0/8'

      # Verify subnets
      virtual_network.subnets.must_be_kind_of Array
      virtual_network.subnets.length.must_equal 1
      virtual_network.subnets.first[:name].must_equal 'Subnet-1'
      virtual_network.subnets.first[:address_prefix].must_equal '10.0.0.0/11'

      # Verify DNS Servers
      virtual_network.dns_servers.must_be_kind_of Array
      virtual_network.dns_servers.length.must_equal 2
      virtual_network.dns_servers.first[:name].must_equal 'dns-server-1'
      virtual_network.dns_servers.first[:ip_address].must_equal '1.2.3.4'
    end
  end

  describe '#set_network_configuration' do
    it 'throws error if wrong number of arguments (0) passed' do
      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration
      end

      assert_match 'Wrong number of arguments', exception.message
    end

    it 'checks if the file exists' do
      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration non_existent_file
      end

      assert_match("Could not read from file '#{non_existent_file}'.",
                   exception.message)
    end

    it 'checks if the file name ends in .xml' do
      exception = assert_raises(RuntimeError) do
        subject.set_network_configuration empty_xml_file
      end

      assert_match 'File expects a .xml extension.', exception.message
    end

  end # end of describe#set_network_configuration
end
