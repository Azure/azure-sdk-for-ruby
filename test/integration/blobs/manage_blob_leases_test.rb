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

describe "Manage Blob Leases" do

  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_block_blob(@container, "myBlob", nil)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to acquire a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.must_be_nil
    @blob.lease_id.wont_be_nil
  end

  it "should fail trying to acquire a lease in a blob with an active lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.wont_be_nil
  end

  it "should be able to renew a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :renew)
    @blob.error.must_be_nil
  end

  it "should be able to release a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :release)
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.must_be_nil
  end

  it "should be able to break a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :break)
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.wont_be_nil
  end
end
