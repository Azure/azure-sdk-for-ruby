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
require 'azure/core/auth/shared_key_lite'

describe Azure::Core::Auth::SharedKeyLite do
  subject { Azure::Core::Auth::SharedKeyLite.new 'account-name', 'YWNjZXNzLWtleQ==' }

  let(:verb) { 'POST' }
  let(:uri) { URI.parse 'http://dummy.uri/resource' }
  let(:headers) do
    {
      'Content-MD5' => 'foo',
      'Content-Type' => 'foo',
      'Date' => 'foo'
    }
  end
  let(:headers_without_date) {
    headers_without_date = headers.clone
    headers_without_date.delete 'Date'
    headers_without_date
  }

  describe 'sign' do
    it 'creates a signature from the provided HTTP method, uri, and reduced set of standard headers' do
      subject.sign(verb, uri, headers).must_equal 'account-name:vVFnj/+27JFABZgpt5H8g/JVU2HuWFnjv5aeUIxQvBE='
    end

    it 'ignores standard headers other than Content-MD5, Content-Type, and Date' do
      subject.sign(verb, uri, headers.merge({'Content-Encoding' => 'foo'})).must_equal 'account-name:vVFnj/+27JFABZgpt5H8g/JVU2HuWFnjv5aeUIxQvBE='
    end

    it 'throws IndexError when there is no Date header' do
      assert_raises IndexError do
        subject.sign(verb, uri, headers_without_date)
      end
    end
  end
end
