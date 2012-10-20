#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "azure/storage/blob/blob_service"

describe Azure::Storage::Blob::BlobService do
  subject { Azure::Storage::Blob::BlobService.new }
  
  describe '#create_blob_pages' do
    let(:container_name) { ContainerNameHelper.name }
    let(:blob_name) { "blobname" }
    let(:length) { 1536 }
    before { 
      subject.create_container container_name
      subject.create_page_blob container_name, blob_name, length
    }
    after { TableNameHelper.clean }

    it 'creates pages in a page blob' do
      content = ""
      512.times.each{|i| content << "@" }

      subject.create_blob_pages container_name, blob_name, 0, 511, content
      subject.create_blob_pages container_name, blob_name, 1024, 1535, content

      ranges = subject.list_page_blob_ranges container_name, blob_name, 0, 1536
      ranges[0][0].must_equal 0
      ranges[0][1].must_equal 511
      ranges[1][0].must_equal 1024
      ranges[1][1].must_equal 1535
    end
    
    describe 'when the options hash is used' do
      it '' do
        skip "TODO"
      end
    end
  end
end
