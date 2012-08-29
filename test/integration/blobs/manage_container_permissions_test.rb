#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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

describe "Managing a container's permissions" do
  after do
    ContainerNameHelper.clean
  end

  it "can grant temporary anonymous access to a blob via shared access signstures" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    blob = create_block_blob(:container => container)

    url = blob.shared_access_signature("r", 10 * 60) # read permissions, 10 minutes

    response = Net::HTTP.get_response(url)
    response.code.must_equal "200"
  end
end
