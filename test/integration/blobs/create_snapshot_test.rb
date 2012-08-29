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

describe "Create Blob Snapshots" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to get a range of bytes" do
    result = Azure::Blobs.create_snapshot(@blob)
    result.must_be :kind_of?, Azure::Blobs::Snapshot
  end
end
