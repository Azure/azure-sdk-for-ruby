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
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first}
  let(:cloud_service_name) { names.last }
  
  subject {Azure::VirtualMachineService.new }
 
  before :all do
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
    subject.create_virtual_machine(params, options)
  end

  describe "#shutdown_virtual_machine" do

    it "shuts down virtual machine if it exists in service" do
      subject.shutdown_virtual_machine(virtual_machine_name, cloud_service_name ) rescue nil
      virtualmachine = subject.get_virtual_machine(virtual_machine_name, cloud_service_name )
      ["StoppedVM","StoppedDeallocated"].must_include  virtualmachine.status

      #raises an error if virtual machine doesn't exist under give cloud service name.
      vm_name = 'test-shutdown'
      msg = subject.shutdown_virtual_machine(vm_name, cloud_service_name )
      assert_match(/Cannot find virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"/, msg)

      #raises an error if virtual machine is already in stopped state.
      msg = subject.shutdown_virtual_machine(virtual_machine_name, cloud_service_name )
      assert_match(/Cannot perform the shutdown operation on a stopped virtual machine./, msg)
    end
  
  end #shutdown_virtual_machine
end #end

