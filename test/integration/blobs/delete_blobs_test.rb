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

describe "Delete Blobs" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should delete a blob without snapshots" do
    blob = create_block_blob
    blob.delete.must_equal true
  end

  it "should delete a blob with snapshots" do
    blob = create_block_blob
    snapshot = Azure::Blobs.create_snapshot(blob)
    Azure::Blobs.delete_blob(blob, true).must_equal true
    blob = Azure::Blobs.get_blob(@container, blob.name)
    blob.error.wont_be_nil
  end
end

