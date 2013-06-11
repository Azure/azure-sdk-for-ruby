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
  after {VirtualMachineNameHelper.clean}
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first}
  let(:cloud_service_name) { names.last }
  let(:mock_request){ mock() }
  
  subject { Azure::ServiceManagement::ServiceManagementService.new  }
 
  before :all do
    Tilt.stubs(:new).returns(mock_request)
    mock_request.stubs(:render).returns(nil)
    Loggerx.expects(:puts).at_least_once.returns(nil)
    Azure::VirtualMachineService.expects(:puts).returns(nil).at_least(0)
    image = subject.virtual_machine_images.select{|x|  x.os_type == 'Linux'}.first
    params = {
      :vm_name=> virtual_machine_name,
      :ssh_user=> 'user',
      :image=> image.name,
      :password => 'User123'
    }
    options = {
      :storage_account_name=>'integrationteststorage',
      :cloud_service_name=> cloud_service_name,
    }
    subject.deployment(params,options)
  end

  describe "#shutdown_virtual_machine" do

    it "shuts down virtual machine if it exists in service"  do
      subject.shutdown_virtual_machine(virtual_machine_name, cloud_service_name )
      virtualmachine = Azure::VirtualMachineService.find(virtual_machine_name, cloud_service_name )
      assert_equal(virtualmachine.status , 'StoppedVM', "VM status is same")

      #raises an error if virtual machine doesn't exist under give cloud service name.
      vm_name= 'test-shutdown'
      msg = subject.shutdown_virtual_machine(vm_name , cloud_service_name )
      assert_match(/Couldn't found Virtual machine \"#{vm_name}\" under cloud service \"#{cloud_service_name}\"/, msg)

      #raises an error if virtual machine is already in stopped state.
      msg = subject.shutdown_virtual_machine(virtual_machine_name , cloud_service_name )
      assert_match(/Cannot perform the shutdown operation on a stopped virtual machine./, msg)
    end
  
  end #shutdown_virtual_machine
end #end

