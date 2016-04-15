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
require 'test_helper'

describe Azure::ClientServices do

  describe 'default configuration for a client instance' do
    subject { Azure.client }

    describe 'overriding configuration in child client' do
      it 'should have the overridden value rather than the parents value' do
        subject.base_management(storage_access_key: 'blah').client.storage_access_key.must_equal 'blah'
      end

      it 'should have the default after requesting an overridden client' do
        overridden = subject.base_management(storage_access_key: 'blah').client
        default = subject.base_management.client
        refute_equal(overridden.storage_access_key, default.storage_access_key)
      end
    end
  end

  describe 'create client with options' do
    let(:azure_storage_account) {"testStorageAccount"}
    let(:azure_storage_access_key) {"testKey1"}
    subject {Azure.client(storage_account_name: azure_storage_account, storage_access_key: azure_storage_access_key)}

    it 'should create a blob' do
      subject.storage_blob_host = "https://#{azure_storage_account}.blob.core.windows.net"
      blob = subject.blobs
      blob.client.storage_account_name.must_equal azure_storage_account
    end

    it 'sould create a table' do
        subject.storage_table_host = "https://#{azure_storage_account}.blob.core.windows.net"
        table = subject.tables
        table.client.storage_account_name.must_equal azure_storage_account
    end
  end
end