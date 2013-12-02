#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
require "azure/blob/blob_service"
require "azure/core/http/http_error"

describe Azure::Blob::BlobService do
  subject { Azure::Blob::BlobService.new }

  let(:container_name) { "$root" }
  let(:blob_name1) { "blobname1" }
  let(:length) { 1024 }
  let(:blob_name2) { "blobname2" }
  let(:length) { 1024 }
  let(:blob_name3) { "blobname3" }
  let(:length) { 1024 }

  after {
    subject.delete_container '$root'
  }

  it 'creates the container with explicit name and some blobs' do
    begin
      container = subject.create_container container_name
      container.name.must_equal container_name

      # explicit root container name
      blob = subject.create_page_blob container_name, blob_name1, length
      blob.name.must_equal blob_name1

      # nil container name
      blob = subject.create_page_blob nil, blob_name2, length
      blob.name.must_equal blob_name2

      # empty string container name
      blob = subject.create_page_blob "", blob_name3, length
      blob.name.must_equal blob_name3
    rescue Azure::Core::Http::HTTPError => error
      error.status_code.must_equal 409
    end
  end
end