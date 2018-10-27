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
        tenant_id: @tenant_id,
        client_id: @client_id,
        client_secret: @client_secret,
        subscription_id: @subscription_id,
        active_directory_settings: @active_directory_settings
      }
      @credentials = MsRest::TokenCredentials.new(
        MsRestAzure::ApplicationTokenProvider.new(
          @tenant_id, @client_id, @client_secret, @active_directory_settings
        )
      )
      @options = {
        credentials: @credentials,
        subscription_id: @subscription_id
      }
    end

    it 'should initialize with client constructor' do
      arm_client = Azure::Profiles::Latest::Client.new(@options)
      verify_client_defaults(arm_client)
      verify_management_clients(arm_client)
    end

    it 'should initialize by defaulting to ENV' do
      arm_client = Azure::Profiles::Latest::Client.new
      expect(arm_client).not_to be_nil
      expect(arm_client).to be_instance_of(Azure::Profiles::Latest::Client)
      expect(arm_client.credentials).to be_kind_of(MsRest::ServiceClientCredentials)
      verify_management_clients(arm_client)
    end

    def verify_client_defaults(arm_client)
      expect(arm_client).not_to be_nil
      expect(arm_client).to be_instance_of(Azure::Profiles::Latest::Client)
      expect(arm_client.credentials).to be_kind_of(MsRest::ServiceClientCredentials)
    end

    def verify_management_clients(arm_client)
      expect(arm_client).not_to be_nil
      expect(arm_client.authorization.mgmt).to be_instance_of(Azure::Profiles::Latest::Authorization::Mgmt::AuthorizationManagementClass)
      expect(arm_client.batch.mgmt).to be_instance_of(Azure::Profiles::Latest::Batch::Mgmt::BatchManagementClass)
      expect(arm_client.cdn.mgmt).to be_instance_of(Azure::Profiles::Latest::CDN::Mgmt::CDNManagementClass)
      expect(arm_client.cognitive_services.mgmt).to be_instance_of(Azure::Profiles::Latest::CognitiveServices::Mgmt::CognitiveServicesManagementClass)
      expect(arm_client.commerce.mgmt).to be_instance_of(Azure::Profiles::Latest::Commerce::Mgmt::CommerceManagementClass)
      expect(arm_client.compute.mgmt).to be_instance_of(Azure::Profiles::Latest::Compute::Mgmt::ComputeManagementClass)
      expect(arm_client.data_lake_analytics.mgmt).to be_instance_of(Azure::Profiles::Latest::DataLakeAnalytics::Mgmt::DataLakeAnalyticsManagementClass)
      expect(arm_client.data_lake_store.mgmt).to be_instance_of(Azure::Profiles::Latest::DataLakeStore::Mgmt::DataLakeStoreManagementClass)
      expect(arm_client.dev_test_labs.mgmt).to be_instance_of(Azure::Profiles::Latest::DevTestLabs::Mgmt::DevTestLabsManagementClass)
      expect(arm_client.dns.mgmt).to be_instance_of(Azure::Profiles::Latest::Dns::Mgmt::DnsManagementClass)
      expect(arm_client.features.mgmt).to be_instance_of(Azure::Profiles::Latest::Features::Mgmt::FeaturesManagementClass)
      expect(arm_client.graph_rbac).to be_instance_of(Azure::Profiles::Latest::Client::GraphRbacAdapter)
      expect(arm_client.iot_hub.mgmt).to be_instance_of(Azure::Profiles::Latest::IotHub::Mgmt::IotHubManagementClass)
      expect(arm_client.key_vault.mgmt).to be_instance_of(Azure::Profiles::Latest::KeyVault::Mgmt::KeyVaultManagementClass)
      expect(arm_client.locks.mgmt).to be_instance_of(Azure::Profiles::Latest::Locks::Mgmt::LocksManagementClass)
      expect(arm_client.logic.mgmt).to be_instance_of(Azure::Profiles::Latest::Logic::Mgmt::LogicManagementClass)
      expect(arm_client.machine_learning.mgmt).to be_instance_of(Azure::Profiles::Latest::MachineLearning::Mgmt::MachineLearningManagementClass)
      expect(arm_client.media_services.mgmt).to be_instance_of(Azure::Profiles::Latest::MediaServices::Mgmt::MediaServicesManagementClass)
      # expect(arm_client.mobile_engagement.mgmt).to be_instance_of(Azure::Profiles::Latest::MobileEngagement::Mgmt::MobileEngagementManagementClass)
      expect(arm_client.network.mgmt).to be_instance_of(Azure::Profiles::Latest::Network::Mgmt::NetworkManagementClass)
      expect(arm_client.notification_hubs.mgmt).to be_instance_of(Azure::Profiles::Latest::NotificationHubs::Mgmt::NotificationHubsManagementClass)
      expect(arm_client.policy.mgmt).to be_instance_of(Azure::Profiles::Latest::Policy::Mgmt::PolicyManagementClass)
      expect(arm_client.power_bi_embedded.mgmt).to be_instance_of(Azure::Profiles::Latest::PowerBiEmbedded::Mgmt::PowerBiEmbeddedManagementClass)
      expect(arm_client.redis.mgmt).to be_instance_of(Azure::Profiles::Latest::Redis::Mgmt::RedisManagementClass)
      expect(arm_client.resources.mgmt).to be_instance_of(Azure::Profiles::Latest::Resources::Mgmt::ResourcesManagementClass)
      expect(arm_client.scheduler.mgmt).to be_instance_of(Azure::Profiles::Latest::Scheduler::Mgmt::SchedulerManagementClass)
      expect(arm_client.search.mgmt).to be_instance_of(Azure::Profiles::Latest::Search::Mgmt::SearchManagementClass)
      # expect(arm_client.server_management.mgmt).to be_instance_of(Azure::Profiles::Latest::ServerManagement::Mgmt::ServerManagementManagementClass)
      expect(arm_client.service_bus.mgmt).to be_instance_of(Azure::Profiles::Latest::ServiceBus::Mgmt::ServiceBusManagementClass)
      expect(arm_client.sql.mgmt).to be_instance_of(Azure::Profiles::Latest::SQL::Mgmt::SQLManagementClass)
      expect(arm_client.storage.mgmt).to be_instance_of(Azure::Profiles::Latest::Storage::Mgmt::StorageManagementClass)
      expect(arm_client.subscriptions.mgmt).to be_instance_of(Azure::Profiles::Latest::Subscriptions::Mgmt::SubscriptionsManagementClass)
      expect(arm_client.traffic_manager.mgmt).to be_instance_of(Azure::Profiles::Latest::TrafficManager::Mgmt::TrafficManagerManagementClass)
      expect(arm_client.web.mgmt).to be_instance_of(Azure::Profiles::Latest::Web::Mgmt::WebManagementClass)
    end
  end

  describe 'Storage plane' do
    before(:each) do
      @storage_account_name = 'AZURE_STORAGE_ACCOUNT'
      @storage_access_key = 'dfhjkdsafdsf'
    end

    it 'should create a storage client' do
      storage_client = Azure::Storage::Client.new(storage_account_name: @storage_account_name, storage_access_key: @storage_access_key)
      expect(storage_client).not_to be_nil
      expect(storage_client.blob_client).not_to be_nil
      expect(storage_client.queue_client).not_to be_nil
      expect(storage_client.table_client).not_to be_nil
    end
  end
end
