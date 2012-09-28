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

describe "Listing blobs" do
  let :container do
    Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "returns an empty list if there are no blobs in the container" do
    blobs = container.blobs
    blobs.must_be_empty
  end

  it "returns a list of blobs if one or more exist" do
    blob_1 = create_block_blob(:container=> container, :name=> "blob_1.jpg")
    blob_2 = create_block_blob(:container=> container, :name=> "blob_2.jpg")

    blobs = container.blobs
    blobs.must_include(blob_1)
    blobs.must_include(blob_2)
  end

  it "includes the properties of the blobs" do
    create_block_blob(:container => container)

    blob = container.blobs.first
    blob.properties.wont_be_empty
  end

  it "includes any metadata set in the blob" do
    create_block_blob(:container => container, :metadata => {"Key" => "Value"})

    blob = container.blobs.first
    blob.metadata["Key"].must_equal "Value"
  end
end
