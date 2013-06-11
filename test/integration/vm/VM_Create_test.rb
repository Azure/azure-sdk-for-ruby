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
require "azure/virtual_machine_management/virtual_machine_management_service"

describe Azure::ServiceManagement::ServiceManagementService do
  subject {Azure::ServiceManagement::ServiceManagementService.new }
  after {VirtualMachineNameHelper.clean}
  let(:images)  {subject.virtual_machine_images}
  let(:linux_image) {images.select{|x|  x.os_type == 'Linux'}.first.name }
  let(:windows_image) {images.select{|x|  x.os_type == 'Windows'}.first.name }
  let(:mock_request){ mock() }
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first}
  let(:cloud_service_name) { names.last }
  let(:storage_account_name) { 'integrationteststorage' }
  let(:username) {'admin-user'}
  let(:password) {'Admin123'}
  let(:certificate) {Fixtures["certificate.pem"]}
  let(:private_key) {Fixtures["privatekey.key"]}
  let(:params){
    {
      :vm_name => virtual_machine_name,
      :ssh_user => username,
      :image => linux_image,
      :password => password
    }
  }
  let(:options){
    {
      :storage_account_name => storage_account_name
    }
  }

  let(:default_options)  {
    {
      :storage_account_name => storage_account_name,
      :cloud_service_name => cloud_service_name,
      :deployment_name => 'test-service-deployment',
      :tcp_endpoints => '80,3889:3889',
      :service_location => 'West Europe'
    }
  }

  before{
    Tilt.stubs(:new).returns(mock_request)
    mock_request.stubs(:render).returns(nil)
    Loggerx.expects(:puts).returns(nil).at_least(0)
    Azure::VirtualMachineService.expects(:puts).returns(nil).at_least(0)
  }

  describe "#deployment" do

    it "creates virtual machine and checks list" do
      result = subject.deployment(params, options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      virtualMachineLst = subject.virtual_machines
      virtualmachine = virtualMachineLst.select {|x| x.vm_name == virtual_machine_name}.first
      virtualmachine.wont_be_nil
      virtualmachine.vm_name.must_equal virtual_machine_name
    end

    it "creates Windows virtual machine." do
      params.merge!(:image => windows_image, :admin_user=>username)
      result = subject.deployment(params, options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows' ,"Error in the  OS type of VI created")
    end

    it "creates Linux virtual machine." do
      result = subject.deployment(params, options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux',"Error in the  OS type of VI created")
    end

    it "should set options hash with valid cloud_service_name, deployment_name, storage_account_name." do
      virtual_machine = subject.deployment(params, options)
      virtual_machine.cloud_service_name.wont_be_nil
      virtual_machine.vm_name.must_equal virtual_machine_name
      virtual_machine.deployment_name.wont_be_nil
      virtual_machine.deployment_name.must_equal virtual_machine.cloud_service_name
      virtual_machine.os_type.must_equal 'Linux'
      options[:storage_account_name].wont_be_nil
      assert_match(/^#{params[:vm_name]+'-service'}*/,  "#{options[:cloud_service_name]}")
    end

    it "throws Runtime error as port value is beyond or less than actual range" do
      default_options.merge!(:tcp_endpoints => '80,166535:166535')
      msg = subject.deployment(params,default_options)
      assert_match(/invalid. Allowed values are 'a number between 1 to 65535'./i, msg)

      default_options.merge!(:tcp_endpoints => '80,0:0')
      msg =   subject.deployment(params,default_options)
      assert_match(/invalid. Allowed values are 'a number between 1 to 65535'./i, msg)

      Azure::CloudService.delete_cloud_service(cloud_service_name)
    end

    it "throws error when multiple VMs created under same DNS" do
      subject.deployment(params, default_options)
      params.merge!(:image => windows_image, :admin_user=>username)
      msg =   subject.deployment(params ,default_options)
      assert_match(/ConflictError : The specified deployment slot Production is occupied./i,msg)
    end

    it "creates VMs with same parameters in different DNS" do
      result1 = subject.deployment(params, default_options)
      options2 = default_options.merge!(:cloud_service_name=>"#{virtual_machine_name}-service-test")
      result2 = subject.deployment(params, options2)
      assert_equal(result1.vm_name, result2.vm_name)
      refute_equal(result1.cloud_service_name, result2.cloud_service_name)
    end

    it "throws SystemExit error when ssh_user not provided" do
      params.delete(:ssh_user)
      msg = subject.deployment(params)
      assert_match(/You did not provided a valid 'ssh_user' value./i, msg)
    end

    it "throws Runtime error when image not provided" do
      params.delete(:image)
      msg = subject.deployment(params)
      assert_match(/The Virtual machine image source is not valid/i, msg)
    end

    it "error thrown when invalid storage account name provided" do
      default_options.merge!(:storage_account_name=>'storageuse_91')
      msg = subject.deployment(params,default_options)
      assert_match(/The name is not a valid storage account name./i, msg)
      Azure::CloudService.delete_cloud_service(cloud_service_name)
    end

    it "error thrown when invalid cloud name provided" do
      default_options.merge!(:cloud_service_name => 'cloud-server-test_91')
      msg = subject.deployment(params,default_options)
      assert_match(/BadRequest : The hosted service name is invalid/i, msg)
    end

    it "error thrown when invalid deployment name provided" do
      default_options.merge!(:deployment_name => 'instance_B')
      msg = subject.deployment(params,default_options)
      assert_match(/BadRequest : The deployment name is invalid/i, msg)
      Azure::CloudService.delete_cloud_service(cloud_service_name)
    end

    it "error thrown when invalid Virtual Machine name for Windows OS  provided" do
      params.merge!(:vm_name => "MSServerInstnce01", :image => windows_image, :admin_user=>username)
      msg =  subject.deployment(params, default_options)
      assert_match(/The computer name cannot be more than 15 characters long, be entirely numeric, or contain the following characters/i, msg)
      Azure::CloudService.delete_cloud_service(cloud_service_name)
    end

    it "error thrown when blank password for Windows OS  provided" do
      params.merge!(:image => windows_image, :admin_user=>username)
      params.delete(:password)
      msg =  subject.deployment(params, default_options)
      assert_match(/You did not provided a valid 'password' value./i, msg)
    end

    it "creates vm when certificate are provided for Linux OS  provided" do
      params.delete(:password)
      default_options.merge!(:private_key_file => private_key, :certificate_file => certificate)
      result =  subject.deployment(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Linux',"Error in the  OS type of VI created")
    end

    it "should creates http and https enabled winrm virtual machine." do
      params.merge!(:image => windows_image, :admin_user=>username)
      default_options.merge!(:winrm_transport =>  ['https','http'], :private_key_file => private_key, :certificate_file => certificate)
      result =  subject.deployment(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the  OS type of VI created")
    end

    it "should creates only http enabled winrm virtual machine." do
      params.merge!(:image => windows_image, :admin_user=>username)
      default_options.merge!(:winrm_transport =>  ['http'], :private_key_file => private_key, :certificate_file => certificate)
      result =  subject.deployment(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the  OS type of VI created")
    end

    it "should creates only https enabled winrm virtual machine." do
      params.merge!(:image => windows_image, :admin_user=>username)
      default_options.merge!(:winrm_transport =>  ['https'], :private_key_file => private_key, :certificate_file => certificate)
      result =  subject.deployment(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the  OS type of VI created")
    end

    it "should creates virtual machine without winrm." do
      params.merge!(:image => windows_image, :admin_user=>username)
      default_options.merge!(:winrm_transport =>  ['none'])
      result =  subject.deployment(params, default_options)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      assert_equal(result.os_type, 'Windows',"Error in the  OS type of VI created")
    end
  end #deployment

end


