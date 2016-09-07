# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

describe 'Azure Sdk' do
  describe 'Management plane' do
    before(:each) do
      @tenant_id = '22222222-2222-2222-2222-222222222222'
      @client_id = '22222222-2222-2222-2222-222222222222'
      @client_secret = 'VERY_SECRET'
      @subscription_id = '22222222-2222-2222-2222-222222222222'
      @active_directory_settings = MsRestAzure::ActiveDirectoryServiceSettings.get_azure_china_settings
      @minimum_valid_options = {
          :tenant_id => @tenant_id,
          :client_id => @client_id,
          :client_secret => @client_secret,
          :subscription_id => @subscription_id,
          :active_directory_settings => @active_directory_settings
      }
    end

    after(:each) do
      Azure::ARM.client.reset!
    end

    it 'should initialize with client constructor' do
      arm_client = Azure::ARM.client(@minimum_valid_options)
      verify_client_defaults(arm_client)
      verify_management_clients(arm_client)
    end

    it 'should initialize by defaulting to ENV' do
      arm_client = Azure::ARM.client()
      expect(arm_client).not_to be_nil
      expect(arm_client).to be_instance_of(Azure::ARM::Client)
      expect(arm_client.tenant_id).to eq(ENV['AZURE_TENANT_ID'])
      expect(arm_client.client_id).to eq(ENV['AZURE_CLIENT_ID'])
      expect(arm_client.client_secret).to eq(ENV['AZURE_CLIENT_SECRET'])
      expect(arm_client.subscription_id).to eq(ENV['AZURE_SUBSCRIPTION_ID'])
      expect(arm_client.credentials).to  be_kind_of(MsRest::ServiceClientCredentials)
      verify_management_clients(arm_client)
    end

    it 'should initialize with credentials and subscription id' do
      Azure::ARM.credentials = MsRest::TokenCredentials.new(MsRestAzure::ApplicationTokenProvider.new(
          @tenant_id, @client_id, @client_secret, @active_directory_settings))
      Azure::ARM.subscription_id = @subscription_id

      verify_management_clients(Azure::ARM)
      expect(Azure::ARM.credentials).to eq(Azure::ARM.credentials)
    end

    it 'should return same client when options are same' do
      arm_client = Azure::ARM.client(@minimum_valid_options)
      arm_client_again = Azure::ARM.client(@minimum_valid_options)
      expect(arm_client).to eq(arm_client_again)
      expect(arm_client.options).to eq(arm_client_again.options)
      expect(arm_client.compute).to eq(arm_client_again.compute)
    end

    def verify_client_defaults(arm_client)
      expect(arm_client).not_to be_nil
      expect(arm_client).to be_instance_of(Azure::ARM::Client)
      expect(arm_client.tenant_id).to eq(@tenant_id)
      expect(arm_client.client_id).to eq(@client_id)
      expect(arm_client.client_secret).to eq(@client_secret)
      expect(arm_client.subscription_id).to eq(@subscription_id)
      expect(arm_client.credentials).to  be_kind_of(MsRest::ServiceClientCredentials)
    end

    def verify_management_clients(arm_client)
      expect(arm_client).not_to be_nil
      expect(arm_client.authorization).to be_instance_of(Azure::ARM::Authorization::AuthorizationManagementClient)
      expect(arm_client.batch).to be_instance_of(Azure::ARM::Batch::BatchManagementClient)
      expect(arm_client.cdn).to be_instance_of(Azure::ARM::CDN::CdnManagementClient)
      expect(arm_client.cognitive_services).to be_instance_of(Azure::ARM::CognitiveServices::CognitiveServicesManagementClient)
      expect(arm_client.commerce).to be_instance_of(Azure::ARM::Commerce::UsageManagementClient)
      expect(arm_client.compute).to be_instance_of(Azure::ARM::Compute::ComputeManagementClient)
      expect(arm_client.datalake_analytics).to be_instance_of(Azure::ARM::DataLakeAnalytics::DataLakeAnalyticsAccountManagementClient)
      expect(arm_client.datalake_store).to be_instance_of(Azure::ARM::DataLakeStore::DataLakeStoreAccountManagementClient)
      expect(arm_client.devtestlabs).to be_instance_of(Azure::ARM::DevTestLabs::DevTestLabsClient)
      expect(arm_client.dns).to be_instance_of(Azure::ARM::Dns::DnsManagementClient)
      expect(arm_client.features).to be_instance_of(Azure::ARM::Features::FeatureClient)
      expect(arm_client.graph_rbac).to be_instance_of(Azure::ARM::Graph::GraphRbacManagementClient)
      expect(arm_client.iot_hub).to be_instance_of(Azure::ARM::IotHub::IotHubClient)
      expect(arm_client.key_vault).to be_instance_of(Azure::ARM::KeyVault::KeyVaultManagementClient)
      expect(arm_client.locks).to be_instance_of(Azure::ARM::Locks::ManagementLockClient)
      expect(arm_client.logic).to be_instance_of(Azure::ARM::Logic::LogicManagementClient)
      expect(arm_client.machine_learning).to be_instance_of(Azure::ARM::MachineLearning::AzureMLWebServicesManagementClient)
      expect(arm_client.media_services).to be_instance_of(Azure::ARM::MediaServices::MediaServicesManagementClient)
      expect(arm_client.mobile_engagement).to be_instance_of(Azure::ARM::MobileEngagement::EngagementManagementClient)
      expect(arm_client.network).to be_instance_of(Azure::ARM::Network::NetworkManagementClient)
      expect(arm_client.notification_hubs).to be_instance_of(Azure::ARM::NotificationHubs::NotificationHubsManagementClient)
      expect(arm_client.policy).to be_instance_of(Azure::ARM::Policy::PolicyClient)
      expect(arm_client.powerbi_embedded).to be_instance_of(Azure::ARM::PowerBiEmbedded::PowerBIEmbeddedManagementClient)
      expect(arm_client.redis).to be_instance_of(Azure::ARM::Redis::RedisManagementClient)
      expect(arm_client.resources).to be_instance_of(Azure::ARM::Resources::ResourceManagementClient)
      expect(arm_client.scheduler).to be_instance_of(Azure::ARM::Scheduler::SchedulerManagementClient)
      expect(arm_client.search).to be_instance_of(Azure::ARM::Search::SearchManagementClient)
      expect(arm_client.server_management).to be_instance_of(Azure::ARM::ServerManagement::ServerManagement)
      expect(arm_client.service_bus).to be_instance_of(Azure::ARM::ServiceBus::ServiceBusManagementClient)
      expect(arm_client.sql).to be_instance_of(Azure::ARM::SQL::SqlManagementClient)
      expect(arm_client.storage).to be_instance_of(Azure::ARM::Storage::StorageManagementClient)
      expect(arm_client.subscription).to be_instance_of(Azure::ARM::Subscriptions::SubscriptionClient)
      expect(arm_client.traffic_manager).to be_instance_of(Azure::ARM::TrafficManager::TrafficManagerManagementClient)
      expect(arm_client.web).to be_instance_of(Azure::ARM::Web::WebSiteManagementClient)
    end
  end

  describe 'Storage plane' do
    before(:each) do
      @storage_account_name = 'AZURE_STORAGE_ACCOUNT'
      @storage_access_key = 'dfhjkdsafdsf'
    end

    it 'should create a storage client' do
      storage_client = Azure::Storage::Client.new(:storage_account_name => @storage_account_name, :storage_access_key => @storage_access_key)
      expect(storage_client).not_to be_nil
      expect(storage_client.blobClient).not_to be_nil
      expect(storage_client.queueClient).not_to be_nil
      expect(storage_client.tableClient).not_to be_nil
    end
  end
end
