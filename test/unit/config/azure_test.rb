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

describe Azure do

  describe 'default configuration for the azure module' do
    subject { Azure }

    it 'should provide itself as the base configuration through the config method' do
      subject.config.must_equal Azure
    end

    it 'should provide access to the configuration through the config method' do
      subject.config.management_endpoint.must_equal Azure.management_endpoint
    end

    it 'should start with the default management endpoint' do
      Azure.management_endpoint.must_equal Azure::Default.management_endpoint
    end

    describe 'configuration of management certificates with files and strings' do
      let(:private_key) {Azure.http_private_key}
      let(:public_key) {Azure.http_certificate_key}

      describe 'using a pfx' do

        describe 'loaded as a string' do
          before do
            Azure.management_certificate = File.binread(Fixtures['management_certificate.pfx'])
          end

          it 'should populate the private key' do
            refute_nil(private_key)
            private_key.must_be_kind_of(OpenSSL::PKey::RSA)
          end

          it 'should populate the public key' do
            refute_nil(public_key)
            public_key.must_be_kind_of(OpenSSL::X509::Certificate)
          end

        end

        describe 'loaded as a file' do
          before do
            Azure.management_certificate = Fixtures['management_certificate.pfx']
          end

          it 'should populate the private key' do
            refute_nil(private_key)
            private_key.must_be_kind_of(OpenSSL::PKey::RSA)
          end

          it 'should populate the public key' do
            refute_nil(public_key)
            public_key.must_be_kind_of(OpenSSL::X509::Certificate)
          end
        end
      end

      describe 'using a pem' do

        describe 'loaded as a string' do
          before do
            Azure.management_certificate = File.read(Fixtures['management_certificate.pem'])
          end

          it 'should populate the private key' do
            refute_nil(private_key)
            private_key.must_be_kind_of(OpenSSL::PKey::RSA)
          end

          it 'should populate the public key' do
            refute_nil(public_key)
            public_key.must_be_kind_of(OpenSSL::X509::Certificate)
          end

        end

        describe 'loaded as a file' do
          before do
            Azure.management_certificate = Fixtures['management_certificate.pem']
          end

          it 'should populate the private key' do
            refute_nil(private_key)
            private_key.must_be_kind_of(OpenSSL::PKey::RSA)
          end

          it 'should populate the public key' do
            refute_nil(public_key)
            public_key.must_be_kind_of(OpenSSL::X509::Certificate)
          end
        end
      end
    end
  end

end