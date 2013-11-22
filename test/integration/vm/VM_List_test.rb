#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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

describe Azure::VirtualMachineManagementService do

  subject { Azure::VirtualMachineManagementService.new }

  describe "#list_virtual_machines" do
    let(:names) { VirtualMachineNameHelper.name }
    let(:virtual_machine_name) { names.first}
    let(:cloud_service_name) { names.last }

    before {
      Loggerx.expects(:puts).at_least_once.returns(nil)
      params = {
        :vm_name => virtual_machine_name,
        :vm_user => 'user',
        :image => LinuxImage.name,
        :password => 'User123',
        :location => LinuxImageLocation
      }
      options = {
        :storage_account_name => StorageAccountName,
        :cloud_service_name => cloud_service_name,
      }
      subject.create_virtual_machine(params,options)
      sleep 60
    }

    it "returns a list of virtual machine images" do
      virtualmachines = subject.list_virtual_machines
      virtualmachine = virtualmachines.select {|x| x.vm_name == virtual_machine_name && x.cloud_service_name == cloud_service_name}.first

      virtualmachines.wont_be_nil
      virtualmachines.must_be_kind_of Array
      virtualmachine.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
      virtualmachine.hostname.must_equal virtual_machine_name unless virtualmachine.hostname.empty?
      ["RoleStateUnknown","ReadyRole","Provisioning"].must_include virtualmachine.status

      assert_equal(virtualmachine.vm_name, virtual_machine_name, "difference in VM name")
      assert_equal(virtualmachine.role_size, 'Small', "difference in VM rolesize")
      assert_equal(virtualmachine.cloud_service_name, cloud_service_name, "difference in cludservicename")
      assert_equal(virtualmachine.deployment_name, cloud_service_name, "difference in dployment")
      assert_equal(virtualmachine.deployment_status, 'Running', "difference in dployment status")

      refute_equal(virtualmachine.vm_name, 'abctest', "VM names must not same")
      refute_equal(virtualmachine.status, 'StoppedVM'," VM status must not same")
      refute_equal(virtualmachine.role_size, 'big', "VM rolesizes must not same")
      refute_equal(virtualmachine.hostname, 'abctest3', "VM hostname must not same")
      refute_equal(virtualmachine.cloud_service_name, 'service1', "cloudservice name must not same")
      refute_equal(virtualmachine.deployment_name, 'xyz123', "VM deployment name must not same")
      refute_equal(virtualmachine.deployment_status, 'Stopped', "VM deployment_status must not same")
      refute_equal(virtualmachine.ipaddress, '157.56.164.134', "VM ipaddress must not same")
    end

  end

end
