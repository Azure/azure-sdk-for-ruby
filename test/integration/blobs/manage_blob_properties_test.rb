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

describe "Managing the blob's properties" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should set blob properties" do
    # FIXME: Why do this if we're not checking for any property getting set?
    blob = create_block_blob(:container => @container)
    result = blob.save_properties!
    result.must_equal true
  end

  it "force-loads the properties" do
    blob = create_block_blob(:container => @container)
    blob.properties.clear
    blob.load_properties!
    blob.properties["etag"].wont_be_nil
  end
end
