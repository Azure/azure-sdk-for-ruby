#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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

describe Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService do

  subject {
    Azure::VirtualMachineImageManagement::VirtualMachineDiskManagementService.new
  }

  describe "#list_virtual_machine_disks" do

    it "returns a list of virtual machine disks" do
      vm_disks = subject.list_virtual_machine_disks
      vm_disks.wont_be_nil
      vm_disks.must_be_kind_of Array
      disk = vm_disks.first
      disk.must_be_kind_of Azure::VirtualMachineImageManagement::VirtualMachineDisk
      disk.name.wont_be_nil
      [true, false].must_include disk.attached
    end

  end

end
