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
require 'azure/blob/auth/shared_access_signature'
require 'base64'
require 'uri'

describe Azure::Blob::Auth::SharedAccessSignature do
  let(:path) { 'example/path' }
  let(:options) {
    {
      permissions:         'rwd',
      expiry:              '2013-12-11',
      resource:            'b',
      version:             '2014-02-14',
      content_disposition: 'inline, filename=nyan.cat'
    }
  }
  let(:access_account_name) { 'account-name' }
  let(:access_key_base64) { Base64.strict_encode64('access-key') }

  subject { Azure::Blob::Auth::SharedAccessSignature.new(access_account_name, access_key_base64) }

  it 'decodes the base64 encoded access_key' do
    subject.access_key.must_equal 'access-key'
  end

  describe '#signable_string' do

    it 'constructs a string in the required format' do
      subject.signable_string(path, options).must_equal(
        "rwd\n\n2013-12-11\n/account-name/example/path\n\n2014-02-14\n\ninline, filename=nyan.cat\n\n\n"
      )
    end
  end

  describe '#canonicalized_resource' do
    it 'prefixes and concatenates account name and resource path with forward slashes' do
      subject.canonicalized_resource(path).must_equal '/account-name/example/path'
    end
  end

  describe '#signed_uri' do
    let(:uri) { URI(subject.signed_uri(URI(path), options)) }
    let(:query_hash) { Hash[URI.decode_www_form(uri.query)] }

    it 'maps options to the abbreviated API versions' do
      query_hash['sp'].must_equal 'rwd'
      query_hash['se'].must_equal '2013-12-11'
      query_hash['sr'].must_equal 'b'
      query_hash['rscd'].must_equal 'inline, filename=nyan.cat'
    end

    it 'includes the signature' do
      query_hash['sig'].must_equal subject.sign(subject.signable_string(path, options))
    end

  end
end
