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
require "azure/service_management/service_management_service"

describe Azure::ServiceManagement::ServiceManagementService do
  subject { Azure::ServiceManagement::ServiceManagementService.new  }


  describe "#locations" do
    let(:mock_request){ mock() }
    before{
      Tilt.stubs(:new).returns(mock_request)
      mock_request.stubs(:render).returns(nil)
    }

    it "check locations list present " do
      result = subject.locations.compact
      result.wont_be_nil
    end

    it "returns a list of locations" do
      locations = subject.locations
      locations.must_be_kind_of Array
      location = locations.first
      location.must_be_kind_of Azure::ServiceManagement::Location
      refute_equal locations.length, 0
      location.name.wont_be_nil
      location.available_services.wont_be_nil
    end

  end #locations

end