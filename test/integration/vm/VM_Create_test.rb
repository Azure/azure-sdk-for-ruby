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
require "integration/test_helper"

describe Azure::VirtualMachineService do
  subject { Azure::VirtualMachineService.new }
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first }
  let(:cloud_service_name) { names.last }
  let(:storage_account_name) { StorageAccountName }
  let(:username) { 'adminuser' }
  let(:password) { 'Admin123' }
  let(:certificate) { Fixtures["certificate.pem"] }
  let(:private_key) { Fixtures["privatekey.key"] }
  let(:params){
    {
      :vm_name => virtual_machine_name,
      :vm_user => username,
      :image => LinuxImage.name,
      :password => password,
      :location => LinuxImageLocation
    }
  }

  let(:windows_params){
    {
      :vm_name => virtual_machine_name,
      :vm_user => username,
      :image => WindowsImage.name,
      :password => password,
      :location => WindowsImageLocation
    }
  }

  let(:options){
    {
      :storage_account_name => storage_account_name
    }
  }

  let(:default_options) {
    {
      :storage_account_name => storage_account_name,
      :cloud_service_name => cloud_service_name
    }
  }

  before{
    Loggerx.expects(:puts).returns(nil).at_least(0)
  }

  describe "#deployment" do

    it "creates virtual machine and checks list" do
      result = subject.create_virtual_machine(params, options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      virtualMachineLst = subject.list_virtual_machines
      virtualmachine = virtualMachineLst.select {|x| x.vm_name == virtual_machine_name}.first
      virtualmachine.wont_be_nil
      virtualmachine.vm_name.must_equal virtual_machine_name
    end

    it "creates Windows virtual machine." do
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows' ,"Error in the OS type of VI created")
    end

    it "creates Linux virtual machine." do
      subject.create_virtual_machine(params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux',"Error in the OS type of VI created")
    end

    it "should set options hash with valid cloud_service_name, deployment_name, storage_account_name." do
      virtual_machine = subject.create_virtual_machine(params, options)
      virtual_machine.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      virtual_machine.cloud_service_name.wont_be_nil
      virtual_machine.vm_name.must_equal virtual_machine_name
      virtual_machine.deployment_name.wont_be_nil
      virtual_machine.deployment_name.must_equal virtual_machine.cloud_service_name
      virtual_machine.os_type.must_equal 'Linux'
      options[:storage_account_name].wont_be_nil
      assert_match(/^#{params[:vm_name]+'-service'}*/, "#{options[:cloud_service_name]}")
    end

    it "throws Runtime error as port value is beyond or less than actual range" do
      default_options.merge!(:tcp_endpoints => '80,166535:166535')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/invalid. Allowed values are 'a number between 1 to 65535'./i, msg)

      default_options.merge!(:tcp_endpoints => '80,0:0')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/invalid. Allowed values are 'a number between 1 to 65535'./i, msg)

      Azure::CloudService.new.delete_cloud_service(cloud_service_name)
    end

    it "throws error when multiple VMs created under same DNS" do
      subject.create_virtual_machine(params, default_options)
      msg = subject.create_virtual_machine(windows_params, default_options)
      assert_match(/The specified deployment slot Production is occupied./i,msg)
    end

    it "creates VMs with same parameters in different DNS" do
      subject.create_virtual_machine(params, default_options)
      result1 = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      csn = "#{virtual_machine_name}-service-test"
      options2 = default_options.merge!(:cloud_service_name => csn)
      sleep 30
      subject.create_virtual_machine(params, options2)
      result2 = subject.get_virtual_machine(virtual_machine_name, csn)
      assert_equal(result1.vm_name, result2.vm_name)
      refute_equal(result1.cloud_service_name, result2.cloud_service_name)
      sleep 30
    end

    it "throws SystemExit error when vm_user not provided" do
      params.delete(:vm_user)
      msg = subject.create_virtual_machine(params)
      assert_match(/You did not provide a valid 'vm_user' value./i, msg)
    end

    it "throws Runtime error when image not provide" do
      params.delete(:image)
      msg = subject.create_virtual_machine(params)
      assert_match(/The virtual machine image source is not valid/i, msg)
    end

    it "error thrown when invalid storage account name provide" do
      default_options.merge!(:storage_account_name=>'storageuse_91')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/The name is not a valid storage account name./i, msg)
      Azure::CloudService.new.delete_cloud_service(cloud_service_name)
    end

    it "error thrown when invalid cloud name provide" do
      default_options.merge!(:cloud_service_name => 'cloud-server-test_91')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/The hosted service name is invalid/i, msg)
    end

    it "error thrown when invalid deployment name provided" do
      default_options.merge!(:deployment_name => 'instance_B')
      msg = subject.create_virtual_machine(params, default_options)
      assert_match(/The deployment name is invalid/i, msg)
      Azure::CloudService.new.delete_cloud_service(cloud_service_name)
    end

    it "error thrown when invalid Virtual Machine name for Windows OS provided" do
      windows_params.merge!(:vm_name => "MSServerInstnce01")
      msg = subject.create_virtual_machine(windows_params, default_options)
      assert_match(/The computer name cannot be more than 15 characters long, be entirely numeric, or contain the following characters/i, msg)
      Azure::CloudService.new.delete_cloud_service(cloud_service_name)
    end

    it "error thrown when blank password for Windows OS provided" do
      windows_params.delete(:password)
      msg = subject.create_virtual_machine(windows_params, default_options)
      assert_match(/You did not provide a valid 'password' value./i, msg)
    end

    it "For linux OS vm should be accessible only using certificate" do
      params.delete(:password)
      default_options.merge!(:private_key_file => private_key, :certificate_file => certificate)
      result = subject.create_virtual_machine(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux',"Error in the OS type of VI created")
    end

    it "should creates http and https enabled winrm virtual machine." do
      default_options.merge!(:winrm_transport => ['https','http'], :private_key_file => private_key, :certificate_file => certificate)
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the OS type of VI created")
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint["Name"]
      end
      tcp_endpoints_names.must_include "WinRm-Https"
      tcp_endpoints_names.must_include "WinRm-Http"
      sleep 30
    end

    it "should creates only http enabled winrm virtual machine." do
      default_options.merge!(:winrm_transport => ['http'], :private_key_file => private_key, :certificate_file => certificate)
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the OS type of VI created")
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint["Name"]
      end
      tcp_endpoints_names.must_include "WinRm-Http"
    end

    it "should creates only https enabled winrm virtual machine." do
      default_options.merge!(:winrm_transport => ['https'], :private_key_file => private_key, :certificate_file => certificate)
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the OS type of VI created")
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint["Name"]
      end
      tcp_endpoints_names.must_include "WinRm-Https"
    end

    it "should creates virtual machine without winrm." do
      default_options.merge!(:winrm_transport => ['none'])
      subject.create_virtual_machine(windows_params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the OS type of VI created")
      tcp_endpoints_names = []
      result.tcp_endpoints.each do |tcp_endpoint|
        tcp_endpoints_names << tcp_endpoint["Name"]
      end
      assert (not tcp_endpoints_names.include? "WinRm-Https")
      assert (not tcp_endpoints_names.include? "WinRm-Http")
    end

    it "created vm should be accessible using password and certificate" do
      default_options.merge!(:private_key_file => private_key, :certificate_file => certificate)
      subject.create_virtual_machine(params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux',"Error in the OS type of VI created")
    end

    it "should create medium size vm" do
      default_options.merge!(:vm_size => 'Medium')
      subject.create_virtual_machine(params, default_options)
      result = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.role_size, 'Medium')
    end

    it "ssh should be accesible other than 22 port" do
      default_options.merge!(:ssh_port => '2222')
      result = subject.create_virtual_machine(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      endpoints = {}
      result.tcp_endpoints.each do |tcp_endpoint|
        endpoints[tcp_endpoint["Name"]] =
          {
          "PublicPort" => tcp_endpoint["PublicPort"],
          "LocalPort" => tcp_endpoint["LocalPort"]
        }
      end
      endpoints.keys.must_include "SSH"
      assert_equal(endpoints["SSH"]["PublicPort"], "2222")
      assert_equal(endpoints["SSH"]["LocalPort"], "22")
    end
  end #deployment

end


