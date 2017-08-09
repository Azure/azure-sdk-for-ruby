# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'ms_rest_azure'

module MsRestAzure
  describe 'MSI Active Directory Service Settings' do
    it 'should initialize with Azure Cloud properties' do
      msi_msi_aad_settings = MSIActiveDirectoryServiceSettings.get_azure_settings

      expect(msi_msi_aad_settings).to be_a(ActiveDirectoryServiceSettings)
      expect(msi_msi_aad_settings.authentication_endpoint).to eq(MsRestAzure::AzureEnvironments::AzureCloud.active_directory_endpoint_url)
      expect(msi_msi_aad_settings.token_audience).to eq(MsRestAzure::AzureEnvironments::AzureCloud.resource_manager_endpoint_url)
    end

    it 'should initialize with Azure China Cloud properties' do
      msi_aad_settings = MSIActiveDirectoryServiceSettings.get_azure_china_settings

      expect(msi_aad_settings).to be_a(ActiveDirectoryServiceSettings)
      expect(msi_aad_settings.authentication_endpoint).to eq(MsRestAzure::AzureEnvironments::AzureChinaCloud.active_directory_endpoint_url)
      expect(msi_aad_settings.token_audience).to eq(MsRestAzure::AzureEnvironments::AzureChinaCloud.resource_manager_endpoint_url)
    end

    it 'should initialize with Azure US Government Cloud properties' do
      msi_aad_settings = MSIActiveDirectoryServiceSettings.get_azure_us_government_settings

      expect(msi_aad_settings).to be_a(ActiveDirectoryServiceSettings)
      expect(msi_aad_settings.authentication_endpoint).to eq(MsRestAzure::AzureEnvironments::AzureUSGovernment.active_directory_endpoint_url)
      expect(msi_aad_settings.token_audience).to eq(MsRestAzure::AzureEnvironments::AzureUSGovernment.resource_manager_endpoint_url)
    end

    it 'should initialize with Azure German Cloud properties' do
      msi_aad_settings = MSIActiveDirectoryServiceSettings.get_azure_german_settings

      expect(msi_aad_settings).to be_a(ActiveDirectoryServiceSettings)
      expect(msi_aad_settings.authentication_endpoint).to eq(MsRestAzure::AzureEnvironments::AzureGermanCloud.active_directory_endpoint_url)
      expect(msi_aad_settings.token_audience).to eq(MsRestAzure::AzureEnvironments::AzureGermanCloud.resource_manager_endpoint_url)
    end
  end
end
