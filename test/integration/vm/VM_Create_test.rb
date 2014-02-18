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
require 'integration/test_helper'

describe Azure::VirtualMachineManagementService do
  subject { Azure::VirtualMachineManagementService.new }
  let(:cloud_service) { Azure::CloudServiceManagementService.new }
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first }
  let(:cloud_service_name) { names.last }
  let(:storage_account_name) { StorageAccountName }
  let(:username) { 'adminuser' }
  let(:password) { 'Admin123' }
  let(:certificate) { Fixtures['certificate.pem'] }
  let(:private_key) { Fixtures['privatekey.key'] }

  let(:params)do
    {
      vm_name: virtual_machine_name,
      vm_user: username,
      image: LinuxImage.name,
      password: password,
      location: LinuxImageLocation
    }
  end

  let(:windows_params)do
    {
      vm_name: virtual_machine_name,
      vm_user: username,
      image: WindowsImage.name,
      password: password,
      location: WindowsImageLocation
    }
  end

  let(:options)do
    {
      storage_account_name: storage_account_name,
      cloud_service_name: cloud_service_name,
      vm_size: 'Small'
    }
  end

  let(:default_options) do
    {
      storage_account_name: storage_account_name,
      cloud_service_name: cloud_service_name
    }
  end

  
  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
    
  end

  describe '#deployment' do

    it 'should set options hash with valid cloud_service_name, deployment_name, storage_account_name and virtual network' do
      cloud_name = options[:cloud_service_name]
      options[:availability_set_name] = 'aval-set-test'
      subject.create_virtual_machine(params, options, false)
      virtual_machine = subject.get_virtual_machine(virtual_machine_name, cloud_name)
      virtual_machine.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      virtual_machine.cloud_service_name.wont_be_nil
      virtual_machine.vm_name.must_equal virtual_machine_name
      virtual_machine.deployment_name.wont_be_nil
      virtual_machine.deployment_name.must_equal virtual_machine.cloud_service_name
      virtual_machine.os_type.must_equal 'Linux'
      virtual_machine.role_size.must_equal 'Small'
      virtual_machine.availability_set_name.must_equal 'aval-set-test'
      options[:storage_account_name].wont_be_nil
      assert_match(/^#{params[:vm_name] + '-service'}*/, cloud_name)
      # Test for add role
      params[:vm_name] = 'test-add-role-vm'
      options[:ssh_port] = 2222
      vm = subject.create_virtual_machine(params, options, true)
      vm.cloud_service_name.must_equal cloud_name
      vm.vm_name.must_equal params[:vm_name]
      virtual_machine.deployment_name.wont_be_nil
      virtual_machine.os_type.must_equal 'Linux'
    end

    it 'should creates http and https enabled winrm virtual machine without certificate.' do
      default_options.merge!(winrm_transport: %w(https http))
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows', 'Error in the OS type of VI created')
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint['Name']
      end
      tcp_endpoints_names.must_include 'WinRm-Https'
      tcp_endpoints_names.must_include 'WinRm-Http'
      sleep 30
    end

    it 'should creates https enabled winrm virtual machine using certificate.' do
      default_options.merge!(winrm_transport: ['https'], private_key_file: private_key, certificate_file: certificate)
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows', 'Error in the OS type of VI created')
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint['Name']
      end
      tcp_endpoints_names.must_include 'WinRm-Https'
    end

    it 'should creates windows virtual machine without winrm.' do
      default_options.merge!(winrm_transport: ['none'])
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows', 'Error in the OS type of VI created')
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint['Name']
      end
      assert (!tcp_endpoints_names.include? 'WinRm-Https')
      assert (!tcp_endpoints_names.include? 'WinRm-Http')
    end

    it 'created linux virtual machine should be accessible using password and certificate' do
      default_options.merge!(private_key_file: private_key, certificate_file: certificate)
      subject.create_virtual_machine(params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux', 'Error in the OS type of VI created')
      sleep 30
    end

    it 'throws Runtime error as port value is beyond or less than actual range' do
      default_options.merge!(tcp_endpoints: '80,166535:166535')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/invalid. Allowed values are 'a number between 1 to 65535'./i, msg)

      default_options.merge!(tcp_endpoints: '80,0:0')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/invalid. Allowed values are 'a number between 1 to 65535'./i, msg)

      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'throws error when multiple VMs created under same DNS' do
      subject.create_virtual_machine(params, default_options)
      msg = subject.create_virtual_machine(windows_params, default_options)
      assert_match(/The specified deployment slot Production is occupied./i, msg)
    end

    it 'throws SystemExit error when vm_user not provided' do
      params.delete(:vm_user)
      msg = subject.create_virtual_machine(params)
      assert_match(/You did not provide a valid 'vm_user' value./i, msg)
    end

    it 'throws Runtime error when image not provide' do
      params.delete(:image)
      msg = subject.create_virtual_machine(params)
      assert_match(/The virtual machine image source is not valid/i, msg)
    end

    it 'error thrown when invalid storage account name is given' do
      default_options.merge!(storage_account_name: 'storageuse_91')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/The name is not a valid storage account name./i, msg)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'error thrown when invalid cloud name is given' do
      default_options.merge!(cloud_service_name: 'cloud-server-test_91')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/The hosted service name is invalid/i, msg)
    end

    it 'error thrown when invalid deployment name provided' do
      default_options.merge!(deployment_name: 'instance_B')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/The deployment name is invalid/i, msg)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'error thrown when invalid Virtual Machine name for Windows OS provided' do
      windows_params.merge!(vm_name: 'MSServerInstnce01')
      msg = subject.create_virtual_machine(windows_params, default_options)
      assert_match(/The computer name cannot be more than 15 characters long, be entirely numeric, or contain the following characters/i, msg)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'error thrown when blank password for Windows OS provided' do
      windows_params.delete(:password)
      msg = subject.create_virtual_machine(windows_params, default_options)
      assert_match(/You did not provide a valid 'password' value./i, msg)
    end

  end # deployment

end
