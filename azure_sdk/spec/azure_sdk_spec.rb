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
      @credentials = MsRest::TokenCredentials.new(
        MsRestAzure::ApplicationTokenProvider.new(
          @tenant_id, @client_id, @client_secret, @active_directory_settings))
      @options = {
        credentials: @credentials,
        subscription_id: @subscription_id
      }
    end

    it 'should initialize with client constructor' do
      arm_client = Azure::Profiles::Latest::Mgmt::Client.new(@options)
      verify_client_defaults(arm_client)
      verify_management_clients(arm_client)
    end

    it 'should initialize by defaulting to ENV' do
      arm_client = Azure::Profiles::Latest::Mgmt::Client.new
      expect(arm_client).not_to be_nil
      expect(arm_client).to be_instance_of(Azure::Profiles::Latest::Mgmt::Client)
      expect(arm_client.credentials).to  be_kind_of(MsRest::ServiceClientCredentials)
      verify_management_clients(arm_client)
    end

    def verify_client_defaults(arm_client)
      expect(arm_client).not_to be_nil
      expect(arm_client).to be_instance_of(Azure::Profiles::Latest::Mgmt::Client)
      expect(arm_client.credentials).to  be_kind_of(MsRest::ServiceClientCredentials)
    end

    def verify_management_clients(arm_client)
      expect(arm_client).not_to be_nil
      expect(arm_client.authorization).to be_instance_of(Azure::Profiles::Latest::Authorization::Mgmt::AuthorizationClass)
      expect(arm_client.batch).to be_instance_of(Azure::Profiles::Latest::Batch::Mgmt::BatchClass)
      expect(arm_client.cdn).to be_instance_of(Azure::Profiles::Latest::CDN::Mgmt::CDNClass)
      expect(arm_client.cognitive_services).to be_instance_of(Azure::Profiles::Latest::CognitiveServices::Mgmt::CognitiveServicesClass)
      expect(arm_client.commerce).to be_instance_of(Azure::Profiles::Latest::Commerce::Mgmt::CommerceClass)
      expect(arm_client.compute).to be_instance_of(Azure::Profiles::Latest::Compute::Mgmt::ComputeClass)
      expect(arm_client.data_lake_analytics).to be_instance_of(Azure::Profiles::Latest::DataLakeAnalytics::Mgmt::DataLakeAnalyticsClass)
      expect(arm_client.data_lake_store).to be_instance_of(Azure::Profiles::Latest::DataLakeStore::Mgmt::DataLakeStoreClass)
      expect(arm_client.dev_test_labs).to be_instance_of(Azure::Profiles::Latest::DevTestLabs::Mgmt::DevTestLabsClass)
      expect(arm_client.dns).to be_instance_of(Azure::Profiles::Latest::Dns::Mgmt::DnsClass)
      expect(arm_client.features).to be_instance_of(Azure::Profiles::Latest::Features::Mgmt::FeaturesClass)
      expect(arm_client.graph).to be_instance_of(Azure::Profiles::Latest::Graph::Mgmt::GraphClass)
      expect(arm_client.iot_hub).to be_instance_of(Azure::Profiles::Latest::IotHub::Mgmt::IotHubClass)
      expect(arm_client.key_vault).to be_instance_of(Azure::Profiles::Latest::KeyVault::Mgmt::KeyVaultClass)
      expect(arm_client.locks).to be_instance_of(Azure::Profiles::Latest::Locks::Mgmt::LocksClass)
      expect(arm_client.logic).to be_instance_of(Azure::Profiles::Latest::Logic::Mgmt::LogicClass)
      expect(arm_client.machine_learning).to be_instance_of(Azure::Profiles::Latest::MachineLearning::Mgmt::MachineLearningClass)
      expect(arm_client.media_services).to be_instance_of(Azure::Profiles::Latest::MediaServices::Mgmt::MediaServicesClass)
      expect(arm_client.mobile_engagement).to be_instance_of(Azure::Profiles::Latest::MobileEngagement::Mgmt::MobileEngagementClass)
      expect(arm_client.network).to be_instance_of(Azure::Profiles::Latest::Network::Mgmt::NetworkClass)
      expect(arm_client.notification_hubs).to be_instance_of(Azure::Profiles::Latest::NotificationHubs::Mgmt::NotificationHubsClass)
      expect(arm_client.policy).to be_instance_of(Azure::Profiles::Latest::Policy::Mgmt::PolicyClass)
      expect(arm_client.power_bi_embedded).to be_instance_of(Azure::Profiles::Latest::PowerBiEmbedded::Mgmt::PowerBiEmbeddedClass)
      expect(arm_client.redis).to be_instance_of(Azure::Profiles::Latest::Redis::Mgmt::RedisClass)
      expect(arm_client.resources).to be_instance_of(Azure::Profiles::Latest::Resources::Mgmt::ResourcesClass)
      expect(arm_client.scheduler).to be_instance_of(Azure::Profiles::Latest::Scheduler::Mgmt::SchedulerClass)
      expect(arm_client.search).to be_instance_of(Azure::Profiles::Latest::Search::Mgmt::SearchClass)
      expect(arm_client.server_management).to be_instance_of(Azure::Profiles::Latest::ServerManagement::Mgmt::ServerManagementClass)
      expect(arm_client.service_bus).to be_instance_of(Azure::Profiles::Latest::ServiceBus::Mgmt::ServiceBusClass)
      expect(arm_client.sql).to be_instance_of(Azure::Profiles::Latest::SQL::Mgmt::SQLClass)
      expect(arm_client.storage).to be_instance_of(Azure::Profiles::Latest::Storage::Mgmt::StorageClass)
      expect(arm_client.subscriptions).to be_instance_of(Azure::Profiles::Latest::Subscriptions::Mgmt::SubscriptionsClass)
      expect(arm_client.traffic_manager).to be_instance_of(Azure::Profiles::Latest::TrafficManager::Mgmt::TrafficManagerClass)
      expect(arm_client.web).to be_instance_of(Azure::Profiles::Latest::Web::Mgmt::WebClass)
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
      expect(storage_client.blob_client).not_to be_nil
      expect(storage_client.queue_client).not_to be_nil
      expect(storage_client.table_client).not_to be_nil
    end
  end
end
