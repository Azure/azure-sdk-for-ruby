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

describe Azure::VirtualMachineManagementService do

  subject { Azure::VirtualMachineManagementService.new }
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first}
  let(:cloud_service_name) { names.last }
  let(:username) {'admin'}
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
    subject.create_virtual_machine(params, options)
    sleep 60
  }

  describe "#delete_virtual_machine" do

    it "delete existing virtual machine and cloud service" do
      subject.delete_virtual_machine(virtual_machine_name, cloud_service_name)
      sleep 60
      vm = subject.get_virtual_machine(virtual_machine_name, cloud_service_name)
      vm.must_be_nil
      cloud_presence = Azure::CloudServiceManagementService.new.get_cloud_service(cloud_service_name)
      cloud_presence.must_equal false
    end

  end

end

