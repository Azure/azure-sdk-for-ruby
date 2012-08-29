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

describe "Managing the container's metadata" do
  after do
    ContainerNameHelper.clean
  end

  it "sets metadata on container creation (Azure changes the casing of metadata keys)" do
    Azure::Blobs.create_container(
      ContainerNameHelper.name,
      "UppercaseKey" => "U", "downcaseKey" => "D"
    )

    # FIXME: Change this once we have a way of finding a container by name.
    container = Azure::Blobs.containers.first

    container.metadata["Uppercasekey"].must_equal "U"
    container.metadata["Downcasekey"].must_equal "D"
  end

  it "gets metadata when listing containers" do
    Azure::Blobs.create_container(ContainerNameHelper.name, "Key" => "Value")

    # FIXME: Change this once we have a way of finding a container by name.
    container = Azure::Blobs.containers.first
    container.metadata["Key"].must_equal "Value"
  end

  it "force-loads the metadata when calling #metadata!" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name, "Key" => "Value")

    container.metadata.must_be_empty
    container.load_metadata!.wont_be_empty
    container.metadata.wont_be_empty
  end

  it "saves the metadata in the server if you modify the metadata hash" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    container.metadata["Key"] = "Value"
    container.save_metadata!

    # FIXME: Change this once we have a way of finding a container by name.
    loaded_container = Azure::Blobs.containers.first
    loaded_container.metadata["Key"].must_equal "Value"
  end
end
