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

describe Azure::VirtualMachineManagement::Serialization do
  subject { Azure::VirtualMachineManagement::Serialization }

  let(:vm_xml) { Nokogiri::XML(Fixtures['virtual_machine']) }
  let(:csn) { 'cloud-service-1' }

  describe '#virtual_machines_from_xml' do

    it 'accepts an XML string' do
      subject.virtual_machines_from_xml(vm_xml, csn)
    end

    it 'returns an Array of VirtualMachine instances' do
      result = subject.virtual_machines_from_xml(vm_xml, csn).first
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
    end

    it "returns a virtual_machine, with it's attribute populated" do
      virtual_machine = subject.virtual_machines_from_xml(vm_xml, csn).first
      virtual_machine.vm_name.must_equal 'instance-name'
      virtual_machine.role_size.must_equal 'Small'
      virtual_machine.hostname.must_equal 'host-name'
      virtual_machine.cloud_service_name.must_equal 'cloud-service-1'
      virtual_machine.deployment_name.must_equal 'deployment-name'
      virtual_machine.ipaddress.must_equal '137.116.17.187'
      virtual_machine.availability_set_name.must_equal 'vm-availability'
    end

    it "returns a virtual_machine, with it's tcp_endpoints attribute" do
      virtual_machine = subject.virtual_machines_from_xml(vm_xml, csn).first
      virtual_machine.tcp_endpoints.must_be_kind_of Array
      virtual_machine.tcp_endpoints.must_include(
        name: 'SSH',
        vip: '137.116.17.187',
        public_port: '22',
        local_port:  '22',
        protocol: 'tcp'
      )
      virtual_machine.tcp_endpoints.must_include(
        name: 'tcp-port-80',
        vip: '137.117.17.187',
        public_port:  '80',
        local_port:  '80',
        protocol: 'tcp'
      )
      virtual_machine.tcp_endpoints.must_include(
        name: 'tcp-port-3889',
        vip: '137.116.17.187',
        public_port:  '3889',
        local_port:  '3889',
        protocol: 'tcp'
      )
    end

  end

  describe '#shutdown_virtual_machine_to_xml' do

    it 'returns an xml for virtual machine shutdown' do
      result = subject.shutdown_virtual_machine_to_xml
      result.must_be_kind_of String
      doc = Nokogiri::XML(result)
      doc.css('OperationType').text.must_equal 'ShutdownRoleOperation'
      doc.css('PostShutdownAction').text.must_equal 'StoppedDeallocated'
    end

  end

  describe '#start_virtual_machine_to_xml' do

    it 'returns an xml for start virtual machine' do
      result = subject.start_virtual_machine_to_xml
      result.must_be_kind_of String
      doc = Nokogiri::XML(result)
      doc.css('OperationType').text.must_equal 'StartRoleOperation'
    end

  end

  describe '#restart_virtual_machine_to_xml' do

    it 'returns an xml for restart virtual machine' do
      result = subject.restart_virtual_machine_to_xml
      result.must_be_kind_of String
      doc = Nokogiri::XML(result)
      doc.css('OperationType').text.must_equal 'RestartRoleOperation'
    end

  end

  describe '#deployment_to_xml' do
    let(:params) do
      {
        vm_name: 'virtual-machine-name',
        vm_user: 'username',
        image: 'linux_image',
        password: 'password',
        location: 'West US'
      }
    end

    let(:options) do
      {
        storage_account_name: 'storageaccountname',
        cloud_service_name: 'cloud-service-name',
        tcp_endpoints: '80,3389:3390,85:85',
        availability_set_name: 'aval-set',
        winrm_https_port: '5988',
        winrm_transport: ['http','https']
      }
    end

    it 'returns an VirtualMachine object with correct tcp endpoints' do
      params[:certificate] = {fingerprint: 'CFB8C256D2986559C630547F2D0'}
      options[:os_type] = 'Windows'
      options[:existing_ports] = ['5985']
      result = subject.deployment_to_xml params, options
      doc = Nokogiri::XML(result)
      endpoints = doc.css('Deployment RoleList ConfigurationSet InputEndpoints InputEndpoint')
      tcp_endpoints = []
      endpoints.each do |endpoint|
        ep = {}
        ep[:name] = xml_content(endpoint, 'Name')
        ep[:public_port] = xml_content(endpoint, 'Port')
        ep[:local_port] = xml_content(endpoint, 'LocalPort')
        tcp_endpoints << ep
      end
      doc.css('Deployment RoleList AvailabilitySetName').text.must_equal 'aval-set'
      result.must_be_kind_of String
      tcp_endpoints.must_include(
        name: 'TCP-PORT-80',
        public_port: '80',
        local_port: '80'
      )
      tcp_endpoints.must_include(
        name: 'TCP-PORT-3390',
        public_port: '3390',
        local_port: '3389'
      )
      tcp_endpoints.must_include(
        name: 'TCP-PORT-85',
        public_port: '85',
        local_port: '85'
      )
      tcp_endpoints.must_include(
        name: 'PowerShell',
        public_port: '5988',
        local_port: '5986'
      )
    end
  end

  describe '#add_data_disk_to_xml' do

    let(:options) do
      {
        disk_size: 100,
      }
    end
    let(:media_link) { 'https://sta.blob.managment.core.net/vhds/1234.vhd' }

    before do
      Loggerx.expects(:puts).returns(nil).at_least(0)
      @vm = Azure::VirtualMachineManagement::VirtualMachine.new
      @vm.data_disks = []
      @vm.media_link = media_link
    end

    it 'returns an xml for newly created data disk' do      
      result = subject.add_data_disk_to_xml(@vm, options)
      doc = Nokogiri::XML(result)
      disk_size = doc.css('DataVirtualHardDisk LogicalDiskSizeInGB').text
      media_link = doc.css('DataVirtualHardDisk MediaLink').text
      disk_name = doc.css('DataVirtualHardDisk DiskName').text
      result.must_be_kind_of String
      disk_size.must_equal options[:disk_size].to_s
      media_link.wont_be_empty
      disk_name.must_be_empty
    end

    it 'returns an xml for existing data disk' do
      options[:import] = true
      options[:disk_name] = 'disk_name'
      result = subject.add_data_disk_to_xml(@vm, options)
      doc = Nokogiri::XML(result)
      media_link = doc.css('DataVirtualHardDisk MediaLink').text
      disk_name = doc.css('DataVirtualHardDisk DiskName').text
      result.must_be_kind_of String
      media_link.must_be_empty
      disk_name.wont_be_empty
    end

    it 'raise error when disk name is empty' do
      options[:import] = true
      exception = assert_raises(RuntimeError) do
        subject.add_data_disk_to_xml(@vm, options)
      end
      assert_match(/The data disk name is not valid/i, exception.message)
    end
  end

  describe '#assign_random_port' do
    let(:preferred_port) { '22' }
    before do
      subject.class.send(:public, *subject.class.private_instance_methods)
      Loggerx.expects(:puts).returns(nil).at_least(0)
    end

    it 'returns random port number when preferred port is in use' do
      result = subject.assign_random_port(preferred_port, [preferred_port])
      assert_operator result.to_i, :>=, 10000
      assert_operator result.to_i, :<=, 65535
    end

    it 'returns preferred port number when used ports is nil' do
      result = subject.assign_random_port(preferred_port, nil)
      result.must_equal preferred_port
    end

    it 'returns preferred port number when used ports is empty' do
      result = subject.assign_random_port(preferred_port, [])
      result.must_equal preferred_port
    end

    it 'returns random port number when preferred port is in use' do
      result = subject.assign_random_port(preferred_port, ['1', preferred_port])
      assert_operator result.to_i, :>=, 10000
      assert_operator result.to_i, :<=, 65535
    end
  end
end
