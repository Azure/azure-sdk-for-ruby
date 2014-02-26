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
  let(:vm_name) { 'test-operation-vm' }
  let(:csn) { vm_name + '-service-qwert' }
  subject { Azure::VirtualMachineManagementService.new }

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
    params = {
      vm_name: vm_name,
      vm_user: 'user',
      image: LinuxImage.name,
      password: 'User123',
      location: LinuxImageLocation
    }
    options = {
      storage_account_name: StorageAccountName,
      cloud_service_name: csn,
    }
    vm = subject.get_virtual_machine(vm_name, csn)
    if vm.nil?
      subject.create_virtual_machine(params, options)
      sleep 60 # Wait to finish provision.
    end
  end

  describe 'Operations on virtual machine' do

    describe '#shutdown_virtual_machine' do

      it 'shuts down virtual machine' do
        subject.shutdown_virtual_machine(vm_name, csn)
        vm = subject.get_virtual_machine(vm_name, csn)
        %w(StoppedVM StoppedDeallocated).must_include  vm.status

        msg = subject.shutdown_virtual_machine(vm_name, csn)
        emsg = 'Cannot perform the shutdown operation on a stopped virtual machine'
        assert_match(/#{emsg}/, msg)
      end

      it 'raises an error if virtual machine doesn\'t exists' do
        name = 'test-shutdown'
        msg = subject.shutdown_virtual_machine(name, csn)
        assert_match(/Cannot find virtual machine \"#{name}\" under cloud service \"#{csn}\"/, msg)
      end

    end

    describe '#start_virtual_machine' do
      before do
        subject.shutdown_virtual_machine(vm_name, csn)
      end
      it 'starts virtual machine' do
        subject.start_virtual_machine(vm_name, csn)
        vm = subject.get_virtual_machine(vm_name, csn)
        statuses = %w(ReadyRole Provisioning CreatingVM RoleStateUnknown)
        statuses.must_include  vm.status
      end

    end

    describe '#restart_virtual_machine' do
      before do
        subject.restart_virtual_machine(vm_name, csn)
      end

      it 'restarts virtual machine' do
        vm = subject.get_virtual_machine(vm_name, csn)
        %w(ReadyRole Provisioning RoleStateUnknown).must_include  vm.status
      end
    end

    describe '#get_virtual_machine' do
      it 'should return virtual machine object' do
        vm = subject.get_virtual_machine(vm_name, csn)
        vm.vm_name.must_equal vm_name
        vm.cloud_service_name.must_equal csn
      end
    end

    describe '#list_virtual_machines' do
      it 'returns a list of virtual machines' do
        vms = subject.list_virtual_machines
        vms.wont_be_nil
        vms.must_be_kind_of Array
        vm = vms.first
        vm.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
        vm_names = vms.map(&:vm_name)
        vm_names.must_include  vm.vm_name
      end
    end

  end
end # end
