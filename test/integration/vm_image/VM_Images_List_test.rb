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
require "azure/virtual_machine_image_management/virtual_machine_image_management_service"

describe Azure::ServiceManagement::ServiceManagementService do
  subject { Azure::ServiceManagement::ServiceManagementService.new  }

  describe "#virtual_machine_images" do
    let(:mock_request){ mock() }
    before{
      Tilt.stubs(:new).returns(mock_request)
      mock_request.stubs(:render).returns(nil)
    }

    it "returns a list of virtual machine images" do
      virtualImages = subject.virtual_machine_images
      virtualImages.wont_be_nil
      virtualImages.must_be_kind_of Array
      image =  virtualImages.first
      image.must_be_kind_of Azure::VirtualMachineImageManagement::VirtualMachineImageManagementService
      image.os_type.wont_be_nil
      image.category.wont_be_nil
      image.name.wont_be_nil
      refute_equal virtualImages.length, 0
    end

  end 

end