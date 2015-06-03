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
  include Azure::Core::Utility

  subject { Azure::VirtualMachineManagementService.new }
  let(:cloud_service) { Azure::CloudServiceManagementService.new }
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first }
  let(:cloud_service_name) { names.last }
  let(:storage_account_name) { StorageAccountName }
  let(:username) { 'adminuser' }
  let(:password) { 'Admin123' }
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
      vm_size: 'Basic_A0'
    }
  end

  let(:default_options) do
    {
      storage_account_name: storage_account_name,
      cloud_service_name: cloud_service_name
    }
  end

  before do
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
  end

  describe '#deployment' do

    describe '#add_role' do
      before do
        @vm_obj = subject.create_virtual_machine(params, options)
        params[:cloud_service_name] = options[:cloud_service_name]
        options.delete(:cloud_service_name)
        params.delete(:location)
        params[:vm_name] = "add-#{virtual_machine_name}"
      end

      it 'should add role to existing storage account and cloud service' do
        vm = subject.add_role(params, options)
        vm.cloud_service_name.must_equal params[:cloud_service_name]
        vm.vm_name.must_equal params[:vm_name]
        vm.deployment_name.must_equal @vm_obj.deployment_name
        vm.os_type.must_equal 'Linux'
      end

      it 'should add role and create new storage account' do
        params[:vm_name] = "Add-storage-#{virtual_machine_name}"
        vm = subject.add_role(params)
        vm.cloud_service_name.must_equal params[:cloud_service_name]
        vm.vm_name.must_equal params[:vm_name]
        vm.deployment_name.must_equal @vm_obj.deployment_name
      end
    end

    describe '#virtual_network' do
      let(:subnet_name) { 'Subnet-1' }
      let(:geo_location) { LinuxImageLocation }
      let(:static_virtual_network_ipaddress){'172.16.0.10'}
      before do
        options[:virtual_network_name] = 'v-net'
        inputoptions = {
          subnet: [{ name: subnet_name, ip_address: '172.16.0.0', cidr: 12 }],
          dns: [{ name: 'DNS', ip_address: '1.2.3.4' }]
        }
        vnet_service = Azure::VirtualNetworkManagementService
        vnet_service.new.set_network_configuration(
          options[:virtual_network_name],
          geo_location,
          ['172.16.0.0/12'],
          inputoptions
        ) rescue nil
        options[:subnet_name] = subnet_name
        options[:static_virtual_network_ipaddress] = '172.16.0.10'
        subject.create_virtual_machine(params, options)
      end

      it 'should provision virtual machine in a existing virtual network' do
        virtual_machine = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
        virtual_machine.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
        virtual_machine.vm_name.must_equal virtual_machine_name
        virtual_machine.virtual_network_name.must_equal options[:virtual_network_name]
        virtual_machine.subnet.must_equal subnet_name
        virtual_machine.static_virtual_network_ipaddress.must_equal static_virtual_network_ipaddress
      end
    end

    it 'should set options hash with valid cloud_service_name, deployment_name, storage_account_name and virtual network' do
      csn = options[:cloud_service_name]
      options[:availability_set_name] = 'aval-set-test'
      vm = subject.create_virtual_machine(params, options)
      vm.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      vm.cloud_service_name.wont_be_nil
      vm.vm_name.must_equal virtual_machine_name
      vm.deployment_name.wont_be_nil
      vm.deployment_name.must_equal vm.cloud_service_name
      vm.os_type.must_equal 'Linux'
      vm.role_size.must_equal 'Basic_A0'
      vm.availability_set_name.must_equal 'aval-set-test'
      options[:storage_account_name].wont_be_nil
      assert_match(/^#{params[:vm_name] + '-service'}*/, csn)
    end

    it 'should creates http and https enabled winrm virtual machine without certificate.' do
      default_options.merge!(winrm_transport: %w(https http))
      result = subject.create_virtual_machine(windows_params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows')
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint[:name]
      end
      tcp_endpoints_names.must_include 'PowerShell'
      tcp_endpoints_names.must_include 'WinRm-Http'
    end

    it 'should creates https enabled winrm virtual machine using certificate.' do
      default_options.merge!(
        winrm_transport: ['https'],
        private_key_file: private_key
      )
      result = subject.create_virtual_machine(windows_params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows')
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint[:name]
      end
      tcp_endpoints_names.must_include 'PowerShell'
    end

    it 'should creates windows virtual machine without winrm.' do
      default_options.merge!(winrm_transport: ['none'])
      result = subject.create_virtual_machine(windows_params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows')
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint['Name']
      end
      assert !tcp_endpoints_names.include?('PowerShell')
      assert !tcp_endpoints_names.include?('WinRm-Http')
    end

    it 'created linux virtual machine should be accessible using password and certificate' do
      default_options.merge!(
        private_key_file: private_key
      )
      result = subject.create_virtual_machine(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux')
    end

    it 'throws error as port value is beyond or less than actual range' do
      default_options.merge!(tcp_endpoints: '80,166535:166535')
      ex = assert_raises(RuntimeError){subject.create_virtual_machine(params, default_options)}
      error_msg = "invalid. Allowed values are 'a number between 1 to 65535'."
      assert_match(/#{error_msg}/i, ex.message)

      default_options.merge!(tcp_endpoints: '80,0:0')
      ex = assert_raises(RuntimeError){subject.create_virtual_machine(params, default_options)}
      assert_match(/#{error_msg}/i,ex.message)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'throws error when multiple VMs created under same DNS' do
      subject.create_virtual_machine(params, default_options)
      ex = assert_raises(RuntimeError){subject.create_virtual_machine(windows_params, default_options)}
      error_msg = 'The specified deployment slot Production is occupied.'
      assert_match(/#{error_msg}/i, ex.message)
    end

    it 'throws SystemExit error when vm_user not provided' do
      params.delete(:vm_user)
      ex = assert_raises(RuntimeError){subject.create_virtual_machine(params)}
      assert_match(/You did not provide a valid 'vm_user' value./i, ex.message)
    end

    it 'throws Runtime error when image not provide' do
      params.delete(:image)
      ex = assert_raises(RuntimeError){ subject.create_virtual_machine(params)}
      assert_match(/The virtual machine image source is not valid/i, ex.message)
    end

    it 'error thrown when invalid storage account name is given' do
      default_options.merge!(storage_account_name: 'storageuse_91')
      ex = assert_raises(RuntimeError){subject.create_virtual_machine(params, default_options)}
      assert_match(/The name is not a valid storage account name./i, ex.message)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'error thrown when invalid cloud name is given' do
      default_options.merge!(cloud_service_name: 'cloud-server-test_91')
      ex = assert_raises(RuntimeError){ subject.create_virtual_machine(params, default_options)}
      assert_match(/The hosted service name is invalid/i, ex.message)
    end

    it 'error thrown when invalid deployment name provided' do
      default_options.merge!(deployment_name: 'instance_B')
      ex = assert_raises(RuntimeError){subject.create_virtual_machine(params, default_options)}
      assert_match(/The deployment name is invalid/i,ex.message)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'error thrown when invalid VM name given for Windows OS' do
      windows_params.merge!(vm_name: 'MSServerInstnce01')
      ex = assert_raises(RuntimeError) {subject.create_virtual_machine(windows_params, default_options)}
      error_msg = 'The computer name cannot be more than 15 characters long'
      assert_match(/#{error_msg}/i, ex.message)
      cloud_service.delete_cloud_service(cloud_service_name)
    end

    it 'error thrown when blank password for Windows OS provided' do
      windows_params.delete(:password)
      ex = assert_raises(RuntimeError){ subject.create_virtual_machine(windows_params, default_options)}
      assert_match(/You did not provide a valid 'password' value./i, ex.message)
    end

  end # deployment

end
