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

describe Azure::VirtualMachineManagementService do
  VirtualMachine = Azure::VirtualMachineManagement::VirtualMachine

  subject do
    Azure::VirtualMachineManagementService.new
  end

  let(:params) do
    {
        vm_name: 'instance1',
        vm_user: 'root',
        image: '5112500ae3b842c8b9c604889f8753c3__OpenLogic-CentOS-63APR20130415',
        password: 'root',
        location: 'West US'
    }
  end

  let(:windows_params) do
    {
        vm_name: 'instance1',
        vm_user: 'administrator',
        image: 'a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-Datacenter-201304.01-en.us-127GB.vhd',
        password: 'Admin123',
        location: 'West US'
    }
  end

  let(:location_request_path) { '/locations' }
  let(:locations_xml) { Fixtures['list_locations'] }
  let(:location_response) do
    response = mock
    response.stubs(:body).returns(locations_xml)
    response
  end
  let(:location_response_body) { Nokogiri::XML location_response.body }
  let(:mock_virtual_machine_request) { mock }
  let(:mock_request) { mock }
  let(:os_image_response_body) do
    response = mock
    response.stubs(:body).returns(Fixtures['list_os_images'])
    Nokogiri::XML response.body
  end
  let(:vm_image_response_body) do
    response = mock
    response.stubs(:body).returns(Fixtures['list_vm_images'])
    Nokogiri::XML response.body
  end

  before do
    Azure::BaseManagement::ManagementHttpRequest.stubs(:new).with(
        :get,
        '/services/images',
        anything
    ).returns(mock_request)
    mock_request.expects(:call).returns(os_image_response_body).at_least(0)
    vm_request = mock
    Azure::BaseManagement::ManagementHttpRequest.stubs(:new).with(
        :get,
        '/services/vmimages',
        anything
    ).returns(vm_request)
    vm_request.expects(:call).returns(vm_image_response_body).at_least(0)
  end

  describe '#list_virtual_machines' do
    before do
      Azure::Loggerx.stubs(:info).returns(nil)
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
    end

    let(:request_path) { '/services/hostedservices' }
    let(:cloud_services_xml) { Fixtures['list_cloud_services'] }
    let(:virtual_machine_xml) { Fixtures['virtual_machine'] }
    let(:deployment_error_xml) { Fixtures['deployment_error'] }
    let(:verb) { :get }
    let(:mock_cloud_service_request) { mock }
    let(:cloud_service_response) do
      cloud_service_response = mock
      cloud_service_response.stubs(:body).returns(cloud_services_xml)
      cloud_service_response
    end
    let(:virtual_machine_response) do
      virtual_machine_response = mock
      virtual_machine_response.stubs(:body).returns(virtual_machine_xml)
      virtual_machine_response
    end
    let(:deployment_error_response) do
      http_error_response = mock
      http_error_response.stubs(:body).returns(deployment_error_xml)
      http_error_response
    end
    let(:cloud_service_response_body) { Nokogiri::XML cloud_service_response.body }
    let(:virtual_machine_response_body) { Nokogiri::XML virtual_machine_response.body }

    before do
      Azure::BaseManagement::ManagementHttpRequest.stubs(:new).with(verb, request_path, anything).returns(mock_cloud_service_request)
      mock_cloud_service_request.expects(:call).returns(cloud_service_response_body)
      Azure::BaseManagement::ManagementHttpRequest.stubs(:new)
          .with(verb, regexp_matches(/\/services\/hostedservices\/(.+)\/deploymentslots\/production/), anything)
          .returns(mock_virtual_machine_request)
      mock_virtual_machine_request.stubs(:warn=).returns(true).twice
      mock_virtual_machine_request.expects(:call).twice.returns(virtual_machine_response_body).returns(Nokogiri::XML deployment_error_response.body)
    end

    it 'assembles a URI for the request' do
      subject.list_virtual_machines
    end

    it "returns a virtual_machine, with it's attribute populated" do
      virtual_machine = subject.list_virtual_machines.first
      virtual_machine.vm_name.must_equal 'instance-name'
      virtual_machine.role_size.must_equal 'Small'
      virtual_machine.hostname.must_equal 'host-name'
      virtual_machine.cloud_service_name.must_equal 'cloud-service-1'
      virtual_machine.deployment_name.must_equal 'deployment-name'
      virtual_machine.ipaddress.must_equal '137.116.17.187'
      virtual_machine.virtual_network_name.must_equal 'test-virtual-network'
      virtual_machine.subnet.must_equal 'test-subnet'
      virtual_machine.static_virtual_network_ipaddress.must_equal '100.65.164.123'
    end

    it 'returns a list of virtual machines for the subscription' do
      results = subject.list_virtual_machines
      results.must_be_kind_of Array
      results.length.must_equal 1
      results.first.must_be_kind_of VirtualMachine
    end

    it "returns a virtual_machine, with it's tcp_endpoints attribute" do
      virtual_machine = subject.list_virtual_machines.first
      virtual_machine.tcp_endpoints.must_be_kind_of Array
      virtual_machine.tcp_endpoints.must_include(
          name: 'SSH',
          vip: '137.116.17.187',
          public_port: '22',
          local_port: '22',
          protocol: 'tcp'
      )
      virtual_machine.tcp_endpoints.must_include(
          name: 'tcp-port-80',
          vip: '137.117.17.187',
          public_port: '80',
          local_port: '80',
          protocol: 'tcp'
      )
      virtual_machine.tcp_endpoints.must_include(
          name: 'tcp-port-3889',
          vip: '137.116.17.187',
          public_port: '3889',
          local_port: '3889',
          protocol: 'tcp'
      )
    end
  end

  describe '#get_virtual_machine' do

    before do
      Azure::Loggerx.stubs(:info).returns(nil)
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      virtual_machine = VirtualMachine.new do |vm|
        vm.vm_name = 'instance-name'
        vm.cloud_service_name = 'cloud-service-1'
      end
      Azure::VirtualMachineManagementService.any_instance.stubs(
          :list_virtual_machines
      ).returns([virtual_machine])
    end

    it 'return nil if virtual machine and cloud server does not exist ' do
      virtual_machine = subject.get_virtual_machine 'name', 'cloud-service'
      virtual_machine.must_equal nil
    end

    it 'return nil if virtual machine or cloud server does not exist ' do
      vm = subject.get_virtual_machine 'name', 'cloud-service-1'
      vm.must_equal nil
      vm = subject.get_virtual_machine 'name2', 'cloud_service_name'
      vm.must_equal nil
    end

    it 'return virtual machine instance if virtual machine name and cloud server name are valid ' do
      vm = subject.get_virtual_machine 'instance-name', 'cloud-service-1'
      vm.must_be_kind_of VirtualMachine
    end
  end

  describe '#create_virtual_machine' do
    let(:verb) { :get }

    before do
      Azure::Loggerx.expects(:error_with_exit).returns(nil).at_least(0)
      mock_request = mock
      Azure::BaseManagement::ManagementHttpRequest.stubs(:new).with(
          verb,
          location_request_path,
          anything
      ).returns(mock_request)
      mock_request.expects(:call).returns(location_response_body).at_least(0)
      Azure::CloudServiceManagementService.any_instance.stubs(:create_cloud_service)
      Azure::CloudServiceManagementService.any_instance.stubs(:upload_certificate)
      Azure::StorageManagementService.any_instance.stubs(:create_storage_account)
      mock_request = mock
      Azure::BaseManagement::ManagementHttpRequest.expects(:new).with(
          :post,
          anything,
          anything
      ).returns(mock_request)
      mock_request.expects(:call).returns(nil)
      virtual_machine = VirtualMachine.new do |vm|
        vm.vm_name = 'instance-name'
        vm.ipaddress = '192.168.1.1'
      end
      Azure::VirtualMachineManagementService.stubs(
          :get_virtual_machine
      ).returns(virtual_machine)
    end

    it 'should set options hash with valid cloud_service_name, deployment_name, storage_account_name.' do
      options = {}
      subject.create_virtual_machine(params, options)
      csn = options[:cloud_service_name]
      csn.wont_be_nil
      options[:storage_account_name].wont_be_nil
      options[:deployment_name].wont_be_nil
      options[:os_type].must_equal 'Linux'
      assert_match(/^#{params[:vm_name] + '-service'}*/, csn)
    end

    it 'should set options hash with valid cloud service name.' do
      options = {
          storage_account_name: 'storage_account_name',
          deployment_name: 'unique_deployment_name',
          tcp_endpoints: '80,3889:3889'
      }
      subject.create_virtual_machine(params, options)
      csn = options[:cloud_service_name]
      csn.wont_be_nil
      assert_match(/^#{params[:vm_name] + '-service-'}*/, csn)
      options[:os_type].must_equal 'Linux'
    end

  end

  describe '#create_virtual_machine with invalid parameters for windows machine' do
    let(:virtual_machine_xml) { Fixtures['virtual_machine'] }
    let(:verb) { :get }

    before do
      windows_params[:cloud_service_name] = 'cloud-service-1'
      mock_request = mock
      Azure::BaseManagement::ManagementHttpRequest.stubs(:new).with(
          verb,
          location_request_path,
          anything
      ).returns(mock_request)
      mock_request.expects(:call).returns(location_response_body).at_least(0)
      Azure::CloudServiceManagementService.any_instance.stubs(:create_cloud_service)
      Azure::CloudServiceManagementService.any_instance.stubs(:upload_certificate)
      Azure::StorageManagementService.any_instance.stubs(:create_storage_account)
      mock_request = mock
      Azure::BaseManagement::ManagementHttpRequest.expects(:new).with(
          :post,
          anything,
          anything
      ).returns(mock_request).at_least(0)
      mock_request.expects(:call).returns(nil).at_least(0)
      virtual_machine_obj = VirtualMachine.new do |virtual_machine|
        virtual_machine.vm_name = 'windows-instance'
        virtual_machine.ipaddress = '192.168.1.1'
      end
      Azure::VirtualMachineManagementService.any_instance.stubs(
          :get_virtual_machine
      ).returns(virtual_machine_obj)
    end

    it 'should set options os_type with windows.' do
      options = {}
      subject.create_virtual_machine(windows_params, options)
      csn = options[:cloud_service_name]
      csn.wont_be_nil
      options[:storage_account_name].wont_be_nil
      options[:deployment_name].wont_be_nil
      options[:os_type].must_equal 'Windows'
      assert_match(/^#{params[:vm_name] + '-service'}*/, csn)
    end

    it 'throws error when vm_user is not given' do
      windows_params.delete(:vm_user)
      options = {}
      ex = assert_raises(RuntimeError) {subject.create_virtual_machine(windows_params, options)}
      error_msg = "You did not provide a valid 'vm_user' value"
      assert_match(/#{error_msg}*/,ex.message)
    end

    it 'self-signed certificate is generated by vm and used for the virtual machine when certificate path is not given.' do
      options = {winrm_transport: %w(https http)}
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      virtual_machine.wont_be_nil
    end

    it 'throws error when certificate path is not invalid.' do
      options = {
          winrm_transport: %w(https http),
          private_key_file: 'f:/invalid_path/private_key',
          certificate_file: 'f:/invalid_path/certificate.pem'
      }
      ex = assert_raises(RuntimeError) {subject.create_virtual_machine(windows_params, options)}
      error_msg = 'No such file or directory -'
      assert_match(/#{error_msg}*/,ex.message)
    end

    it 'should not throws certificate error when wirnm_transport is http' do
      options = {
          winrm_transport: ['http'],
          private_key_file: 'f:/invalid_path/private_key',
          certificate_file: 'f:/invalid_path/certificate.pem'
      }
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      virtual_machine.must_be_kind_of VirtualMachine
      virtual_machine.wont_be_nil
    end

    it 'throws error when location is not given' do
      params.delete(:location)
      ex=assert_raises(RuntimeError){subject.create_virtual_machine(params)}
      error_msg = "You did not provide a valid 'location' value"
      assert_match(/#{error_msg}*/,ex.message)
    end

    it 'throws error when wrong location is given' do
      params.merge!(location: 'wrong location')
      ex = assert_raises(RuntimeError) {subject.create_virtual_machine(params)}
      error_msg = "Value 'wrong location' specified for parameter 'location' is invalid"
      assert_match(/#{error_msg}*/,ex.message)
    end

    it 'throws error when empty location is given' do
      params.merge!(location: nil)
      ex = assert_raises(RuntimeError) {subject.create_virtual_machine(params)}
      error_msg = "You did not provide a valid 'location' value"
      assert_match(/#{error_msg}*/,ex.message)
    end

    it 'location should be case insensitive' do
      params.merge!(location: 'west us')
      subject.create_virtual_machine(params)
    end

    it 'throw error when available_services has not persistentvmrole for given location' do
      params.merge!(location: 'West Europe')
      ex = assert_raises(RuntimeError) {subject.create_virtual_machine(params)}
      error_msg = 'Persistentvmrole not enabled for "West Europe"'
      assert_match(/#{error_msg}*/,ex.message)
    end

    it 'warns if vm_size is not in the correct case' do
      options = {
          vm_size: 'extralarge'
      }

      out, err = capture_io do
        msg = subject.create_virtual_machine(params, options)
      end
      error_msg = "'extralarge' specified for parameter 'vm_size' is not in the list of valid VM role sizes."
      assert_match(/#{error_msg}*/, out)
    end

    it 'warns when wrong role size is given' do
      options = {
          vm_size: 'wrong size'
      }
      out, err = capture_io do
        virtual_machine = subject.create_virtual_machine(params, options)
      end
      error_msg = "'wrong size' specified for parameter 'vm_size' is not in the list of valid VM role sizes."
      assert_match(/#{error_msg}*/, out)
    end

    it 'should warn if role size is empty' do
      options = {
          vm_size: ''
      }
      out, err = capture_io do
        subject.create_virtual_machine(params, options)
      end
      error_msg = "'' specified for parameter 'vm_size' is not in the list of valid VM role sizes."
      assert_match(/#{error_msg}*/, out)
    end
  end

  describe '#get_image' do

    before do
      Azure::Loggerx.stubs(:info).returns(nil)
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      subject.class.send(:public, *subject.class.private_instance_methods)
    end

    it 'returns os type of given virtual machine image' do
      result = subject.get_image 'RightImage-CentOS-6.2-x64-v5.8.8.1'
      result.os_type.must_equal 'Linux'
    end

    it 'errors if the virtual machine image does not exist' do
      exception = assert_raises(RuntimeError) do
        subject.get_image 'invalid-image-name'
      end
      error_msg = 'The virtual machine image source is not valid'
      assert_match(/#{error_msg}/i, exception.message)
    end
  end

  describe '#add_role' do

    let(:verb) { :get }

    before do
      Azure::Loggerx.stubs(:info).returns(nil)
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      windows_params[:cloud_service_name] = 'cloud-service-1'
      mock_request = mock
      Azure::BaseManagement::ManagementHttpRequest.stubs(:new).with(
          verb,
          location_request_path,
          anything
      ).returns(mock_request)
      mock_request.expects(:call).returns(location_response_body).at_least(0)
    end

    it 'should throws error when cloud service name is empty' do
      windows_params.delete(:cloud_service_name)
      exception = assert_raises(RuntimeError) do
        subject.add_role(params)
      end
      error_msg = 'You did not provide a valid \'cloud_service_name\' value'
      assert_match(/#{error_msg}/i, exception.message)
    end

    it 'throws error when vm_user is not given' do
      windows_params.delete(:vm_user)
      exception = assert_raises(RuntimeError) do
        subject.add_role(windows_params)
      end
      error_msg = 'You did not provide a valid \'vm_user\' value'
      assert_match(/#{error_msg}/i, exception.message)
    end

    it 'throws error when certificate path is not invalid.' do
      options = {
          winrm_transport: %w(https http),
          private_key_file: 'f:/invalid_path/private_key',
          certificate_file: 'f:/invalid_path/certificate.pem'
      }
      exception = assert_raises(RuntimeError) do
        subject.add_role(windows_params, options)
      end
      error_msg = 'No such file or directory'
      assert_match(/#{error_msg}/i, exception.message)
    end

  end

end
