# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'
require 'azure_mgmt_batch'
require 'azure_mgmt_cdn'
require 'azure_mgmt_cognitive_services'
require 'azure_mgmt_commerce'
require 'azure_mgmt_compute'
require 'azure_mgmt_datalake_analytics'
require 'azure_mgmt_datalake_store'
require 'azure_mgmt_devtestlabs'
require 'azure_mgmt_dns'
require 'azure_mgmt_features'
require 'azure_mgmt_graph'
require 'azure_mgmt_iot_hub'
require 'azure_mgmt_key_vault'
require 'azure_data_key_vault'
require 'azure_mgmt_locks'
require 'azure_mgmt_logic'
require 'azure_mgmt_machine_learning'
require 'azure_mgmt_media_services'
require 'azure_mgmt_mobile_engagement'
require 'azure_mgmt_network'
require 'azure_mgmt_notification_hubs'
require 'azure_mgmt_policy'
require 'azure_mgmt_powerbi_embedded'
require 'azure_mgmt_redis'
require 'azure_mgmt_resources'
require 'azure_mgmt_scheduler'
require 'azure_mgmt_search'
require 'azure_mgmt_server_management'
require 'azure_mgmt_service_bus'
require 'azure_mgmt_sql'
require 'azure_mgmt_storage'
require 'azure_mgmt_subscriptions'
require 'azure_mgmt_traffic_manager'
require 'azure_mgmt_web'

module Azure::ARM
  class Client
    include Azure::ARM::Configurable

    #
    # Supported Azure::ARM clients.
    # @return [Hash] Supported Azure::ARM clients.
    #
    @@supported_clients = {
        :authorization => 'Azure::ARM::Authorization::AuthorizationManagementClient',
        :batch => 'Azure::ARM::Batch::BatchManagementClient',
        :cdn => 'Azure::ARM::CDN::CdnManagementClient',
        :cognitive_services => 'Azure::ARM::CognitiveServices::CognitiveServicesManagementClient',
        :commerce => 'Azure::ARM::Commerce::UsageManagementClient',
        :compute => 'Azure::ARM::Compute::ComputeManagementClient',
        :datalake_analytics => 'Azure::ARM::DataLakeAnalytics::DataLakeAnalyticsAccountManagementClient',
        :datalake_store => 'Azure::ARM::DataLakeStore::DataLakeStoreAccountManagementClient',
        :devtestlabs => 'Azure::ARM::DevTestLabs::DevTestLabsClient',
        :dns => 'Azure::ARM::Dns::DnsManagementClient',
        :features => 'Azure::ARM::Features::FeatureClient',
        :graph_rbac => 'Azure::ARM::Graph::GraphRbacManagementClient',
        :iot_hub => 'Azure::ARM::IotHub::IotHubClient',
        :key_vault => 'Azure::ARM::KeyVault::KeyVaultManagementClient',
        :key_vault_data => 'Azure::Data::KeyVault::KeyVaultDataClient',
        :locks => 'Azure::ARM::Locks::ManagementLockClient',
        :logic => 'Azure::ARM::Logic::LogicManagementClient',
        :machine_learning => 'Azure::ARM::MachineLearning::AzureMLWebServicesManagementClient',
        :media_services => 'Azure::ARM::MediaServices::MediaServicesManagementClient',
        :mobile_engagement => 'Azure::ARM::MobileEngagement::EngagementManagementClient',
        :network => 'Azure::ARM::Network::NetworkManagementClient',
        :notification_hubs => 'Azure::ARM::NotificationHubs::NotificationHubsManagementClient',
        :policy => 'Azure::ARM::Policy::PolicyClient',
        :powerbi_embedded => 'Azure::ARM::PowerBiEmbedded::PowerBIEmbeddedManagementClient',
        :redis => 'Azure::ARM::Redis::RedisManagementClient',
        :resources => 'Azure::ARM::Resources::ResourceManagementClient',
        :scheduler => 'Azure::ARM::Scheduler::SchedulerManagementClient',
        :search => 'Azure::ARM::Search::SearchManagementClient',
        :server_management => 'Azure::ARM::ServerManagement::ServerManagement',
        :service_bus => 'Azure::ARM::ServiceBus::ServiceBusManagementClient',
        :sql => 'Azure::ARM::SQL::SqlManagementClient',
        :storage => 'Azure::ARM::Storage::StorageManagementClient',
        :subscription => 'Azure::ARM::Subscriptions::SubscriptionClient',
        :traffic_manager => 'Azure::ARM::TrafficManager::TrafficManagerManagementClient',
        :web => 'Azure::ARM::Web::WebSiteManagementClient'
    }

    #
    # Initializes a new instance of the Client class.
    # @param options [Hash] hash of client options.
    #
    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      #
      # Dynamically create arm client methods
      #
      @@supported_clients.each do |key, value|
        create_arm_client_methods(key, value)
      end
    end

    #
    # Check if this client is configured with the same options.
    # @param opts [Hash] hash of client options.
    # @return [Boolean] True if client is configured with same set of options, False otherwise.
    #
    def same_options?(opts)
      opts.hash == @options.hash
    end

    #
    # Hash of client configured options.
    # @return [Hash] Hash of client configured options if any or empty Hash.
    #
    def options
      @options ||= {}
    end

    #
    # Creates a new instance of the MsRest::ServiceClientCredentials class if does not exists.
    # @return [MsRest::ServiceClientCredentials] Azure ARM credentials to authorize HTTP requests made by the service client.
    #
    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
            MsRestAzure::ApplicationTokenProvider.new(
                self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end

    #
    # lists the supported Azure::ARM clients.
    # @return [Array] list of the supported Azure::ARM clients.
    #
    def list_supported_clients
      @@supported_clients.keys
    end

    private

    #
    # Creates a new instance method for Azure::ARM.client class for supported Azure ARM clients.
    # @param name [Symbol] name of the method as Symbol.
    # @param name [String] name of the Azure::ARM client to be instantiated.
    #
    def create_arm_client_methods(name, client)
      self.class.class_eval do
        public
        define_method name do |base_url = nil, options = nil|
          return instance_variable_get("@#{name}") if instance_variable_defined?("@#{name}") && !instance_variable_get("@#{name}").nil?
          arm_client = instance_variable_set("@#{name}", Object.const_get("#{client}").new(credentials, base_url, options))
          arm_client.subscription_id = self.subscription_id if arm_client.respond_to?(:subscription_id)
          arm_client.tenant_id = self.tenant_id if arm_client.respond_to?(:tenant_id)
          arm_client
        end
      end
    end
  end
end
