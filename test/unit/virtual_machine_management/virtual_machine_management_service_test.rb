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

describe Azure::VirtualMachineManagementService do
  VirtualMachine = Azure::VirtualMachineManagement::VirtualMachine

  subject do
    Azure::VirtualMachineManagementService.new
  end

  before{
    Loggerx.stubs(:info).returns(nil)
  }

  let(:params){
    {
      :vm_name => 'instance1',
      :vm_user => 'root',
      :image => "5112500ae3b842c8b9c604889f8753c3__OpenLogic-CentOS-63APR20130415",
      :password => 'root',
      :location => 'West US'
    }
  }

  let(:windows_params){
    {
      :vm_name => 'instance1',
      :vm_user => 'administrator',
      :image => "a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-Datacenter-201304.01-en.us-127GB.vhd",
      :password => 'Admin123',
      :location => 'West US'
    }
  }

  let(:location_request_path) { '/locations' }
  let(:locations_xml) { Fixtures['list_locations'] }
  let(:location_response) {
    response = mock()
    response.stubs(:body).returns(locations_xml)
    response
  }
  let(:location_response_body) { Nokogiri::XML location_response.body }

  describe "#list_virtual_machines" do
    let(:request_path) { '/services/hostedservices' }
    let(:cloud_services_xml) { Fixtures["list_cloud_services"] }
    let(:virtual_machine_xml) { Fixtures["virtual_machine"] }
    let(:deployment_error_xml) { Fixtures["deployment_error"] }
    let(:virtual_networks_xml) { Fixtures["list_virtual_networks"] }

    let(:method) { :get }

    let(:mock_cloud_service_request){ mock() }
    let(:mock_virtual_machine_request){ mock() }
    let(:mock_virtual_network_request){ mock() }

    let(:cloud_service_response) {
      cloud_service_response = mock()
      cloud_service_response.stubs(:body).returns(cloud_services_xml)
      cloud_service_response
    }

    let(:virtual_machine_response) {
      virtual_machine_response = mock()
      virtual_machine_response.stubs(:body).returns(virtual_machine_xml)
      virtual_machine_response
    }

    let(:deployment_error_response) {
      http_error_response = mock()
      http_error_response.stubs(:body).returns(deployment_error_xml)
      http_error_response
    }

    let(:virtual_networks_response) {
      virtual_networks_response = mock()
      virtual_networks_response.stubs(:body).returns(virtual_networks_xml)
      virtual_networks_response
    }

    let(:cloud_service_response_body) { Nokogiri::XML cloud_service_response.body }
    let(:virtual_machine_response_body) { Nokogiri::XML virtual_machine_response.body }
    let(:virtual_networks_response_body) { Nokogiri::XML virtual_networks_response.body }

    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_cloud_service_request)
      mock_cloud_service_request.expects(:call).returns(cloud_service_response_body)
      ManagementHttpRequest.stubs(:new).with(method, "/services/hostedservices/cloud-service-1/deploymentslots/production").returns(mock_virtual_machine_request)
      mock_virtual_machine_request.stubs(:warn=).returns(true).twice
      ManagementHttpRequest.stubs(:new).with(method, "/services/hostedservices/cloud-service-2/deploymentslots/production").returns(mock_virtual_machine_request)
      mock_virtual_machine_request.expects(:call).twice.returns(virtual_machine_response_body).returns(Nokogiri::XML  deployment_error_response.body)
      ManagementHttpRequest.stubs(:new).with(method, '/services/networking/virtualnetwork', nil).returns(mock_virtual_network_request)
      mock_virtual_network_request.expects(:call).returns(virtual_networks_response_body)
    }

    it "assembles a URI for the request" do
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
      virtual_machine.virtual_network.wont_be_nil
      virtual_machine.virtual_network.must_be_kind_of Azure::VirtualNetworkManagement::VirtualNetwork
    end

    it "returns a list of virtual machines for the subscription" do
      results = subject.list_virtual_machines
      results.must_be_kind_of Array
      results.length.must_equal 1
      results.first.must_be_kind_of VirtualMachine
    end

    it "returns a virtual_machine, with it's tcp_endpoints attribute" do
      virtual_machine = subject.list_virtual_machines.first
      virtual_machine.tcp_endpoints.must_be_kind_of Array
      virtual_machine.tcp_endpoints.must_include({"Name"=>"SSH", "Vip"=>"137.116.17.187", "PublicPort"=>"22", "LocalPort"=>"22"})
      virtual_machine.tcp_endpoints.must_include({"Name"=>"tcp-port-80", "Vip"=>"137.116.17.187", "PublicPort"=>"80", "LocalPort"=>"80"})
      virtual_machine.tcp_endpoints.must_include({"Name"=>"tcp-port-3889", "Vip"=>"137.116.17.187", "PublicPort"=>"3889", "LocalPort"=>"3889"})
    end
  end

  describe "#get_virtual_machine" do

    before {
      virtual_machine = VirtualMachine.new do |virtual_machine|
        virtual_machine.vm_name = 'instance-name'
        virtual_machine.cloud_service_name = 'cloud-service-1'
      end
      Azure::VirtualMachineManagementService.any_instance.stubs(:list_virtual_machines).returns([virtual_machine])
    }

    it "return nil if virtual machine and cloud server does not exist " do
      virtual_machine = subject.get_virtual_machine 'name','cloud-service'
      virtual_machine.must_equal nil
    end

    it "return nil if virtual machine or cloud server does not exist " do
      virtual_machine = subject.get_virtual_machine 'name','cloud-service-1'
      virtual_machine.must_equal nil
      virtual_machine = subject.get_virtual_machine 'instance-name','cloud_service_name'
      virtual_machine.must_equal nil
    end

    it "return virtual machine instance if virtual machine name and cloud server name are valid " do
      virtual_machine = subject.get_virtual_machine 'instance-name','cloud-service-1'
      virtual_machine.must_be_kind_of VirtualMachine
    end
  end

  describe "#create_virtual_machine" do
    let(:images_request_path) {'/services/images'}
    let(:images_xml) { Fixtures["list_images"] }
    let(:virtual_machine_xml) { Fixtures["virtual_machine"] }
    let(:method) { :get }
    let(:mock_request){ mock() }

    let(:os_response_body) {
      response = mock()
      response.stubs(:body).returns(images_xml)
      Nokogiri::XML response.body
    }

    before {
      ManagementHttpRequest.stubs(:new).with(method, images_request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(os_response_body)
      mock_request = mock()
      ManagementHttpRequest.stubs(:new).with(method, location_request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(location_response_body).at_least(0)
      Azure::CloudServiceManagementService.any_instance.stubs(:create_cloud_service)
      Azure::CloudServiceManagementService.any_instance.stubs(:upload_certificate)
      Azure::StorageManagementService.any_instance.stubs(:create_storage_account)
      mock_request = mock()
      ManagementHttpRequest.expects(:new).with(:post,anything, anything).returns(mock_request)
      mock_request.expects(:call).returns(nil)
      virtual_machine = VirtualMachine.new do |virtual_machine|
        virtual_machine.vm_name = 'instance-name'
        virtual_machine.ipaddress = '192.168.1.1'
      end
      Azure::VirtualMachineManagementService.stubs(:get_virtual_machine).returns(virtual_machine)
    }

    it "should set options hash with valid cloud_service_name, deployment_name, storage_account_name." do
      options = {}
      virtual_machine = subject.create_virtual_machine(params, options)
      options[:cloud_service_name].wont_be_nil
      options[:storage_account_name].wont_be_nil
      options[:deployment_name].wont_be_nil
      options[:os_type].must_equal 'Linux'
      assert_match(/^#{params[:vm_name]+'-service'}*/, "#{options[:cloud_service_name]}")
    end

    it "should set options hash with valid cloud service name." do
      options = {
        :storage_account_name =>'storage_account_name',
        :deployment_name =>'unique_deployment_name',
        :tcp_endpoints => '80,3889:3889'
      }
      virtual_machine = subject.create_virtual_machine(params, options)
      options[:cloud_service_name].wont_be_nil
      assert_match(/^#{params[:vm_name]+'-service-'}*/, "#{options[:cloud_service_name]}")
      options[:os_type].must_equal 'Linux'
    end

  end

  describe "#create_virtual_machine with invalid parameters for windows machine" do
    let(:images_request_path) { '/services/images' }
    let(:windows_images_xml) { Fixtures["list_images"] }
    let(:virtual_machine_xml) { Fixtures["virtual_machine"] }
    let(:method) { :get }
    let(:mock_request){ mock() }
    let(:os_response_body) {
      response = mock()
      response.stubs(:body).returns(windows_images_xml)
      Nokogiri::XML response.body
    }

    before {
      ManagementHttpRequest.stubs(:new).with(method, images_request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(os_response_body)
      mock_request = mock()
      ManagementHttpRequest.stubs(:new).with(method, location_request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(location_response_body).at_least(0)
      Azure::CloudServiceManagementService.any_instance.stubs(:create_cloud_service)
      Azure::CloudServiceManagementService.any_instance.stubs(:upload_certificate)
      Azure::StorageManagementService.any_instance.stubs(:create_storage_account)
      Loggerx.expects(:puts).returns(nil).at_least(0)
      mock_request = mock()
      ManagementHttpRequest.expects(:new).with(:post,anything, anything).returns(mock_request).at_least(0)
      mock_request.expects(:call).returns(nil).at_least(0)
      virtual_machine_obj = VirtualMachine.new do |virtual_machine|
        virtual_machine.vm_name = 'windows-instance'
        virtual_machine.ipaddress = '192.168.1.1'
      end
      Azure::VirtualMachineManagementService.any_instance.stubs(:get_virtual_machine).returns(virtual_machine_obj)
    }

    it "should set options os_type with windows." do
      options = {}
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      options[:cloud_service_name].wont_be_nil
      options[:storage_account_name].wont_be_nil
      options[:deployment_name].wont_be_nil
      options[:os_type].must_equal 'Windows'
      assert_match(/^#{params[:vm_name]+'-service'}*/, "#{options[:cloud_service_name]}")
    end

    it "throws error when vm_user is not given" do
      windows_params.delete(:vm_user)
      options = {}
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      assert_match(/You did not provide a valid 'vm_user' value*/, virtual_machine)
    end

    it "self-signed certificate is generated by vm and used for the virtual machine when certificate path is not given." do
      options = {
        :winrm_transport => ['https','http']
      }
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      virtual_machine.wont_be_nil
    end

    it "throws error when certificate path is not invalid." do
      options = {
        :winrm_transport => ['https','http'],
        :private_key_file => 'f:/invalid_path/private_key' ,
        :certificate_file => 'f:/invalid_path/certificate.pem'
      }
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      assert_match(/No such file or directory -*/, virtual_machine)
    end

    it "should not throws certificate error when wirnm_transport is http" do
      options = {
        :winrm_transport => ['http'],
        :private_key_file => 'f:/invalid_path/private_key' ,
        :certificate_file => 'f:/invalid_path/certificate.pem'
      }
      virtual_machine = subject.create_virtual_machine(windows_params, options)
      virtual_machine.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      virtual_machine.wont_be_nil
    end

    it "throws error when location is not given" do
      params.delete(:location)
      virtual_machine = subject.create_virtual_machine(params)
      assert_match(/You did not provide a valid 'location' value*/, virtual_machine)
    end

    it "throws error when wrong location is given" do
      params.merge!(:location => 'wrong location')
      virtual_machine = subject.create_virtual_machine(params)
      assert_match(/Value 'wrong location' specified for parameter 'location' is invalid.*/, virtual_machine)
    end

    it "throws error when empty location is given" do
      params.merge!(:location => nil)
      virtual_machine = subject.create_virtual_machine(params)
      assert_match(/You did not provide a valid 'location' value*/, virtual_machine)
    end

    it "location should be case insensitive" do
      params.merge!(:location => 'west us')
      subject.create_virtual_machine(params)
    end

    it "throw error when available_services has not persistentvmrole for given location" do
      params.merge!(:location => 'West Europe')
      msg = subject.create_virtual_machine(params)
      assert_match(/Persistentvmrole not enabled for "West Europe"*/, msg)
    end

    it "vm_size should be case sensitive" do
      options = {
        :vm_size => 'extralarge'
      }
      msg = subject.create_virtual_machine(params, options)
      assert_match(/Value 'extralarge' specified for parameter 'vm_size' is invalid/,msg)
    end

    it "throws error when wrong role size is given" do
      options = {
        :vm_size => 'wrong size'
      }
      virtual_machine = subject.create_virtual_machine(params, options)
      assert_match(/Value 'wrong size' specified for parameter 'vm_size' is invalid.*/, virtual_machine)
    end

    it "should not throw any error if role size is empty" do
      options = {
        :vm_size => ''
      }
      subject.create_virtual_machine(params, options)
    end
  end

  describe "#get_os_type" do
    let(:images_xml) { Fixtures["list_images"] }
    let(:mock_request){ mock() }
    let(:response) {
      response = mock()
      response.stubs(:body).returns(images_xml)
      response
    }
    let(:response_body) {Nokogiri::XML response.body}

    before {
      ManagementHttpRequest.any_instance.expects(:call).returns response_body
      subject.class.send(:public, *subject.class.private_instance_methods)
      Loggerx.expects(:puts).returns(nil).at_least(0)
    }

    it "returns os type of given virtual machine image" do
      result = subject.get_os_type '0b11de9248dd4d87b18621318e037d37__RightImage-CentOS-6.2-x64-v5.8.8.1'
      result.must_equal 'Linux'
    end

    it 'errors if the virtual machine image does not exist' do
      exception = assert_raises(RuntimeError) do
        subject.get_os_type 'invalid-image-name'
      end
      assert_match(/The virtual machine image source is not valid/i, exception.message)
    end
  end

end
