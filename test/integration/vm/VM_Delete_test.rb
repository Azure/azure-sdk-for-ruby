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

  subject { Azure::ServiceManagement::ServiceManagementService.new  }
  after {VirtualMachineNameHelper.clean}
  let(:names) { VirtualMachineNameHelper.name }
  let(:virtual_machine_name) { names.first}
  let(:cloud_service_name) { names.last }
  let(:mock_request){ mock() }
  let(:username) {'admin'}
  before {
    Tilt.stubs(:new).returns(mock_request)
    mock_request.stubs(:render).returns(nil)
    Loggerx.expects(:puts).at_least_once.returns(nil)
    Azure::VirtualMachineService.expects(:puts).returns(nil).at_least(0)
    image = subject.virtual_machine_images.select{|x|  x.os_type == 'Linux'}.first
    params = {
      :vm_name=> virtual_machine_name,
      :ssh_user=> username,
      :image=> image.name,
      :password => 'User123'
    }
    options = {
      :storage_account_name=>'integrationteststorage',
      :cloud_service_name=> cloud_service_name,
    }
    subject.deployment(params,options)
  }

  describe "#delete_virtual_machine" do

    it "delete existing virtual machine and cloud service" do
      subject.delete_virtual_machine( virtual_machine_name, cloud_service_name)
      vm = Azure::VirtualMachineService.find(virtual_machine_name, cloud_service_name)
      vm.must_be_nil
      cloud_presence = Azure::CloudService.get_cloud_service(cloud_service_name)
      cloud_presence.must_equal  false
    end

  end

end

