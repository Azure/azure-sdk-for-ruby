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

describe "Listing containers" do
  after do
    ContainerNameHelper.clean
  end

  it "returns an empty list if there are no containers" do
    all_containers = Azure::Blobs.containers
    all_containers.must_be_empty
  end

  it "returns a list of containers if one or more exist" do
    container_1 = Azure::Blobs.create_container(ContainerNameHelper.name)
    container_2 = Azure::Blobs.create_container(ContainerNameHelper.name)

    all_containers = Azure::Blobs.containers
    all_containers.must_include(container_1)
    all_containers.must_include(container_2)
  end

  it "loads the properties of each container" do
    Azure::Blobs.create_container(ContainerNameHelper.name)
    container = Azure::Blobs.containers.first

    container.properties.wont_be_empty
  end
end
