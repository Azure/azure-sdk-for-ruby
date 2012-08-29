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

describe "Deleting a container" do
  after do
    ContainerNameHelper.clean
  end

  it "should return false if the container cannot be deleted" do
    container = Azure::Blobs::Container.new(ContainerNameHelper.name)
    response = container.delete

    response.must_equal false
    refute container.valid?
    refute container.frozen?
  end

  it "should return true if the container can be deleted" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    response = container.delete

    response.must_equal true
    assert container.frozen?
  end
end
