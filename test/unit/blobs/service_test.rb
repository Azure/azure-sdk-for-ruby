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
require 'test_helper'
require 'azure/blobs/service'

describe "Blob Services" do
  describe "CreateBlockBlob" do
    it "should raise an error if the file is bigger than 64 Mb" do
      file_class = MiniTest::Mock.new
      file_class.stub(:size, 100000000)

      service = Azure::Blobs::Services::CreateBlockBlob.new("fake-access-key")

      proc {
        service.call("container_name", "blob_name", "filename", {}, file_class)
      }.must_raise ArgumentError, "File exceeded 64Mb limit."
    end
  end
end
