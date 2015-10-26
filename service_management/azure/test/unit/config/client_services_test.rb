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

end