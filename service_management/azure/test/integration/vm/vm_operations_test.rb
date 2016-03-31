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
  let(:vm_name) { 'testvm2321' }
  let(:vm_image) { '03f55de797f546a1b29d1b8d66be687a__CoreCLR-x64-Beta5-Linux-PartsUnlimited-Demo-App-201504.29' }
  let(:geo_location) { 'Southeast Asia' }
  let(:cloud_service) { 'testcloudservice2321' }
  let(:storage_account) { 'sa4375943275' }

  describe 'virtual machine' do
    before do
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      VCR.insert_cassette "vm/#{name}"
      params = {
          vm_name: vm_name,
          vm_user: 'user',
          image: vm_image,
          password: 'User123',
          location: geo_location
      }
      options = {
          storage_account_name: storage_account,
          cloud_service_name: cloud_service,
      }
      subject.create_virtual_machine(params, options)
    end

    after do
      subject.delete_virtual_machine(vm_name, cloud_service)
      Azure::StorageManagementService.new.delete_storage_account(storage_account)
      VCR.eject_cassette
    end

    it 'should return list of vms' do
      vms = subject.list_virtual_machines
      vms.wont_be_nil
      vms.must_be_kind_of Array
      vm = vms.first
      vm.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      vms.map(&:vm_name).must_include  vm.vm_name
    end

    it 'should add data disk to vm' do
      others = {disk_size: 100}
      subject.add_data_disk(vm_name, cloud_service, others)
      vm_disk_service = VirtualMachineDiskManagementService.new
      disks = vm_disk_service.list_virtual_machine_disks
      disks = disks.select { |x| (/#{cloud_service}/ =~ x.name) && x.os_type.empty? }
      assert_operator disks.size, :>=, 1
      disks.first.size.must_equal others[:disk_size].to_s
    end

    it 'should add endpoints to vm' do
      ep1 = {
          name: 'endpoint-1',
          public_port: 777,
          local_port: 777,
          protocol: 'UDP',
      }
      ep2 = {
          name: 'endpoint-2',
          public_port: 888,
          local_port: 889,
          protocol: 'UDP',
          load_balancer_name: 'lb',
          load_balancer: {protocol: 'http', path: 'mypath'}
      }
      subject.update_endpoints(vm_name, cloud_service, ep1, ep2)
      vm = subject.get_virtual_machine(vm_name, cloud_service)
      vm.udp_endpoints.size.must_equal 2
      vm.udp_endpoints.first[:name].must_equal 'endpoint-1'
      vm.udp_endpoints.last[:name].must_equal 'endpoint-2'
    end

    it 'should update existing endpoints of vm' do
      ep1 = {
          name: 'SSH',
          public_port: 2222,
          local_port: 22,
          protocol: 'TCP',
      }
      subject.update_endpoints(vm_name, cloud_service, ep1)
      vm = subject.get_virtual_machine(vm_name, cloud_service)
      vm.tcp_endpoints.size.must_equal 1
      vm.tcp_endpoints.first[:name].must_equal 'SSH'
      vm.tcp_endpoints.first[:public_port].must_equal '2222'
    end

    it 'should delete endpoint of vm' do
      subject.delete_endpoint(vm_name, cloud_service, 'SSH')
      vm = subject.get_virtual_machine(vm_name, cloud_service)
      vm.tcp_endpoints.size.must_equal 0
    end

    it 'should start vm' do
      subject.shutdown_virtual_machine(vm_name, cloud_service)
      subject.start_virtual_machine(vm_name, cloud_service)
      vm = subject.get_virtual_machine(vm_name, cloud_service)
      statuses = %w(ReadyRole Provisioning CreatingVM RoleStateUnknown)
      statuses.must_include vm.status
    end

    it 'should shutdown vm' do
      subject.shutdown_virtual_machine(vm_name, cloud_service)
      vm = subject.get_virtual_machine(vm_name, cloud_service)
      %w(StoppedVM StoppedDeallocated).must_include vm.status

      msg = subject.shutdown_virtual_machine(vm_name, cloud_service)
      error_msg = 'Cannot perform the shutdown operation on a stopped virtual machine'
      assert_match(/#{error_msg}/, msg)
    end

    it 'should restart vm' do
      subject.restart_virtual_machine(vm_name, cloud_service)
      vm = subject.get_virtual_machine(vm_name, cloud_service)
      %w(ReadyRole Provisioning RoleStateUnknown).must_include vm.status
    end

    it 'raises an error if virtual machine doesn\'t exists' do
      name = 'test-shutdown'
      msg = subject.shutdown_virtual_machine(name, cloud_service)
      assert_match(/Cannot find virtual machine \"#{name}\" under cloud service \"#{cloud_service}\"/, msg)
    end
  end
end
