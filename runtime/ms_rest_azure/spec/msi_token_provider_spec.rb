# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'ms_rest_azure'

module MsRestAzure

  describe MSITokenProvider do
    it 'should throw error if nil data is passed into constructor' do
      expect { MSITokenProvider.new(nil) }.to raise_error(ArgumentError)
      expect { MSITokenProvider.new(50431,nil) }.to raise_error(ArgumentError)
    end

    it 'should set defaults for managed service identity' do
      azure_cloud = MsRestAzure::AzureEnvironments::AzureCloud

      token_provider = MSITokenProvider.new
      expect(token_provider.send(:port)).to eq(50342)
      settings = token_provider.send(:settings)
      expect(settings.authentication_endpoint).to eq(azure_cloud.active_directory_endpoint_url)
      expect(settings.token_audience).to eq(azure_cloud.active_directory_resource_id)
    end

    it 'should set customs for managed service identity' do
      port = 50333
      settings = ActiveDirectoryServiceSettings.new()
      settings.authentication_endpoint = 'https://login.microsoftonline.com/'
      settings.token_audience = 'https://vault.azure.net'

      token_provider = MSITokenProvider.new(port, settings)
      expect(token_provider.send(:port)).to eq(port)
      settings = token_provider.send(:settings)
      expect(settings.authentication_endpoint).to eq(settings.authentication_endpoint)
      expect(settings.token_audience).to eq(settings.token_audience)
    end

    it 'should throw error if more than one value is passed to msi_id' do
      expect { MSITokenProvider.new(50342, ActiveDirectoryServiceSettings.get_azure_settings, {:client_id => '1234', :object_id => '5678'}) }.to raise_error(ArgumentError)
    end

    it 'should set msi_id for user assigned identity - using client_id' do
      id = '1234'
      token_provider = MSITokenProvider.new(50342, ActiveDirectoryServiceSettings.get_azure_settings, {:client_id =>  id})
      expect(token_provider.send('client_id')).to eq(id)
    end

    it 'should set msi_id for user assigned identity - using object_id' do
      id = '1234'
      token_provider = MSITokenProvider.new(50342, ActiveDirectoryServiceSettings.get_azure_settings, {:object_id => id})
      expect(token_provider.send('object_id')).to eq(id)
    end

    it 'should set msi_id for user assigned identity - using msi_res_id' do
      id = '1234'
      token_provider = MSITokenProvider.new(50342, ActiveDirectoryServiceSettings.get_azure_settings, {:msi_res_id => id})
      expect(token_provider.send('msi_res_id')).to eq(id)
    end

  end

end
