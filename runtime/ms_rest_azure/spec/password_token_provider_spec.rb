# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'uri'
require 'ms_rest_azure'

module MsRestAzure
  describe PasswordTokenProvider do
    subject { described_class.new('tenant_id', 'client_id', 'username', 'password') }

    it 'should throw error if nil data is passed into constructor' do
      expect { described_class.new(nil, 'client_id', 'username', 'password') }.to raise_error(ArgumentError)
      expect { described_class.new('tenant_id', nil, 'username', 'password') }.to raise_error(ArgumentError)
      expect { described_class.new('tenant_id', 'client_id', nil, 'password') }.to raise_error(ArgumentError)
      expect { described_class.new('tenant_id', 'client_id', 'username', nil) }.to raise_error(ArgumentError)
    end

    describe '.get_authentication_header' do
      before { allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(response) }

      let(:response) { double('token_response', :status => 200, :body => body.to_json) }
      let(:body)     { { 'access_token' => token, 'expires_on' => expires, 'token_type' => 'Bearer' } }
      let(:expires)  { '16754388016' } # year 2500
      let(:token)    { '123' }
      let(:status)   { 200 }

      context 'valid token' do
        it 'sets authentication header' do
          expect(subject.get_authentication_header).to eq('Bearer 123')
        end

        it 'fetches token only once' do
          expect(subject).to receive(:acquire_token).once.and_call_original
          subject.get_authentication_header
          subject.get_authentication_header
        end
      end

      context 'expired token' do
        let(:expires) { '0' } # year 1970
        it 'refreshes expired token' do
          expect(subject).to receive(:acquire_token).twice.and_call_original
          subject.get_authentication_header
          subject.get_authentication_header
        end
      end
    end
  end

end
