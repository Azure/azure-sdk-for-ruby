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

describe "Copy Blobs" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @container_2 = Azure::Blobs.create_container(ContainerNameHelper.name)

    @page_blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
    @block_blob = Azure::Blobs.create_block_blob(@container, "myBlob2", Fixtures["32px-fulls-black.jpg"].to_path)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to copy a page blob" do
    result = Azure::Blobs.copy(@page_blob, @container_2, "myPageBlob", {"origin" => "copied"})
    result.must_be :kind_of?, Azure::Blobs::PageBlob
    result.metadata["origin"].must_equal "copied"
  end

  it "should be able to copy a block blob" do
    result = Azure::Blobs.copy(@block_blob, @container_2, "myBlockBlob", {"origin" => "copied"})
    result.must_be :kind_of?, Azure::Blobs::BlockBlob
    result.metadata["origin"].must_equal "copied"
  end

  it "should be able to copy a blob snapshot" do
    result = Azure::Blobs.copy(@block_blob.create_snapshot, @container_2, "myCopiedSnapshot", {"origin" => "copied"})
    result.must_be :kind_of?, Azure::Blobs::Blob
    result.metadata["origin"].must_equal "copied"
  end
end
