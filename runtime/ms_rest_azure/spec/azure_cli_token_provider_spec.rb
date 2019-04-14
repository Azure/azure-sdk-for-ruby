# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'ms_rest_azure'
require 'ostruct'
require 'securerandom'

module MsRestAzure

  describe AzureCliTokenProvider do
    let(:cli_path) { '/az.exe' }
    let(:cli_settings) { OpenStruct.new(:token_audience => 'http://azure') }

    before(:each) do
      allow(ENV).to receive(:[]).with('PATHEXT').and_return('.exe')
      allow(ENV).to receive(:[]).with('PATH').and_return('/')
      allow(ActiveDirectoryServiceSettings).to receive(:get_azure_settings).and_return(cli_settings)
      allow(File).to receive(:executable?).with('/az.exe').and_return(true)
      allow(File).to receive(:directory?).with('/az.exe').and_return(false)
    end

    it 'should return a new AzureCliTokenProvider instance if the CLI executable is found' do
      expect(File).to receive(:executable?).with('/az.exe').and_return(true)
      expect(File).to receive(:directory?).with('/az.exe').and_return(false)

      AzureCliTokenProvider.new
    end

    it 'should raise an AzureCliError if the CLI executable is not found' do
      allow(File).to receive(:executable?).and_return(false)

      expect {AzureCliTokenProvider.new}.to raise_error(AzureCliError, 'Azure CLI is not installed')
    end

    describe '.get_authentication_header' do
      let(:azure_cli_token_provider) { AzureCliTokenProvider.new }
      let(:access_token) { SecureRandom.hex }
      let(:token_type) { 'Bearer' }
      
      let(:expected_command) do
        "#{cli_path} account get-access-token -o json --resource #{cli_settings.token_audience}"
      end

      let(:response_body) do
        {
          'accessToken' => access_token,
          'tokenType' => token_type,
          'expiresOn' => DateTime.now
        }.to_json
      end

      let(:expired_response_body) do
        {
          'accessToken' => access_token,
          'tokenType' => token_type,
          'expiresOn' => (DateTime.now - 90)
        }.to_json
      end

      let(:expected_auth_header) { "#{token_type} #{access_token}" }

      before(:each) do
        allow(azure_cli_token_provider).to receive(:`).with(expected_command).and_return(response_body)
      end

      it 'should request an access token from the command line' do
        expect(azure_cli_token_provider).to receive(:`).with(expected_command).and_return(response_body)
        azure_cli_token_provider.get_authentication_header
      end

      it 'should not request an access token from the command line if one already has been requested' do
        azure_cli_token_provider.get_authentication_header

        expect(azure_cli_token_provider).to_not receive(:`).with(expected_command)
        
        azure_cli_token_provider.get_authentication_header
      end

      it 'should request a new access token if the current one is expired' do
        expect(azure_cli_token_provider).to receive(:`).with(expected_command).and_return(expired_response_body)
        azure_cli_token_provider.get_authentication_header

        expect(azure_cli_token_provider).to receive(:`).with(expected_command).and_return(response_body)
        azure_cli_token_provider.get_authentication_header
      end

      it 'should return a valid authentication header string with the token given from the CLI' do
        expect(azure_cli_token_provider.get_authentication_header).to eq(expected_auth_header)
      end

      it 'should throw an AzureCliError if the CLI does not return an access token' do
        expect(azure_cli_token_provider).to receive(:`).with(expected_command).and_return(nil)
        expect { azure_cli_token_provider.get_authentication_header }
          .to raise_error(AzureCliError, 'Error acquiring token from the Azure CLI')
      end
    end
  end

end
