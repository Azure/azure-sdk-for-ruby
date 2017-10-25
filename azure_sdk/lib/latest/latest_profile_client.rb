# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'latest/module_definition'
require 'latest/modules/analysisservices_profile_module'
require 'latest/modules/authorization_profile_module'
require 'latest/modules/automation_profile_module'
require 'latest/modules/batch_profile_module'
require 'latest/modules/billing_profile_module'
require 'latest/modules/cdn_profile_module'
require 'latest/modules/cognitiveservices_profile_module'
require 'latest/modules/commerce_profile_module'
require 'latest/modules/compute_profile_module'
require 'latest/modules/consumption_profile_module'
require 'latest/modules/containerinstance_profile_module'
require 'latest/modules/containerregistry_profile_module'
require 'latest/modules/containerservice_profile_module'
require 'latest/modules/customerinsights_profile_module'
require 'latest/modules/datalakeanalytics_profile_module'
require 'latest/modules/datalakestore_profile_module'
require 'latest/modules/devtestlabs_profile_module'
require 'latest/modules/dns_profile_module'
require 'latest/modules/eventgrid_profile_module'
require 'latest/modules/eventhub_profile_module'
require 'latest/modules/features_profile_module'
require 'latest/modules/graph_profile_module'
require 'latest/modules/iothub_profile_module'
require 'latest/modules/keyvault_profile_module'
require 'latest/modules/links_profile_module'
require 'latest/modules/locks_profile_module'
require 'latest/modules/logic_profile_module'
require 'latest/modules/machinelearning_profile_module'
require 'latest/modules/managedapplications_profile_module'
require 'latest/modules/marketplaceordering_profile_module'
require 'latest/modules/mediaservices_profile_module'
require 'latest/modules/mobileengagement_profile_module'
require 'latest/modules/monitor_profile_module'
require 'latest/modules/network_profile_module'
require 'latest/modules/notificationhubs_profile_module'
require 'latest/modules/operationalinsights_profile_module'
require 'latest/modules/policy_profile_module'
require 'latest/modules/powerbiembedded_profile_module'
require 'latest/modules/recoveryservices_profile_module'
require 'latest/modules/recoveryservicesbackup_profile_module'
require 'latest/modules/recoveryservicessiterecovery_profile_module'
require 'latest/modules/redis_profile_module'
require 'latest/modules/relay_profile_module'
require 'latest/modules/resources_profile_module'
require 'latest/modules/resourcesmanagement_profile_module'
require 'latest/modules/scheduler_profile_module'
require 'latest/modules/search_profile_module'
require 'latest/modules/servermanagement_profile_module'
require 'latest/modules/servicebus_profile_module'
require 'latest/modules/servicefabric_profile_module'
require 'latest/modules/sql_profile_module'
require 'latest/modules/storsimple8000series_profile_module'
require 'latest/modules/storage_profile_module'
require 'latest/modules/streamanalytics_profile_module'
require 'latest/modules/subscriptions_profile_module'
require 'latest/modules/trafficmanager_profile_module'
require 'latest/modules/web_profile_module'
require 'common/configurable'
require 'common/default'

module Azure::Profiles::Latest::Mgmt
  #
  # Client class for the Latest profile SDK.
  #
  class Client
    include Azure::Common::Configurable

    attr_reader  :analysis_services, :authorization, :automation, :batch, :billing, :cdn, :cognitive_services, :commerce, :compute, :consumption, :container_instance, :container_registry, :container_service, :customer_insights, :data_lake_analytics, :data_lake_store, :dev_test_labs, :dns, :event_grid, :event_hub, :features, :graph, :iot_hub, :key_vault, :links, :locks, :logic, :machine_learning, :managed_applications, :marketplace_ordering, :media_services, :mobile_engagement, :monitor, :network, :notification_hubs, :operational_insights, :policy, :power_bi_embedded, :recovery_services, :recovery_services_backup, :recovery_services_site_recovery, :redis, :relay, :resources, :resources_management, :scheduler, :search, :server_management, :service_bus, :service_fabric, :sql, :stor_simple8000_series, :storage, :stream_analytics, :subscriptions, :traffic_manager, :web

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @analysis_services = Azure::Profiles::Latest::AnalysisServices::Mgmt::AnalysisServicesClass.new(self)
      @authorization = Azure::Profiles::Latest::Authorization::Mgmt::AuthorizationClass.new(self)
      @automation = Azure::Profiles::Latest::Automation::Mgmt::AutomationClass.new(self)
      @batch = Azure::Profiles::Latest::Batch::Mgmt::BatchClass.new(self)
      @billing = Azure::Profiles::Latest::Billing::Mgmt::BillingClass.new(self)
      @cdn = Azure::Profiles::Latest::CDN::Mgmt::CDNClass.new(self)
      @cognitive_services = Azure::Profiles::Latest::CognitiveServices::Mgmt::CognitiveServicesClass.new(self)
      @commerce = Azure::Profiles::Latest::Commerce::Mgmt::CommerceClass.new(self)
      @compute = Azure::Profiles::Latest::Compute::Mgmt::ComputeClass.new(self)
      @consumption = Azure::Profiles::Latest::Consumption::Mgmt::ConsumptionClass.new(self)
      @container_instance = Azure::Profiles::Latest::ContainerInstance::Mgmt::ContainerInstanceClass.new(self)
      @container_registry = Azure::Profiles::Latest::ContainerRegistry::Mgmt::ContainerRegistryClass.new(self)
      @container_service = Azure::Profiles::Latest::ContainerService::Mgmt::ContainerServiceClass.new(self)
      @customer_insights = Azure::Profiles::Latest::CustomerInsights::Mgmt::CustomerInsightsClass.new(self)
      @data_lake_analytics = Azure::Profiles::Latest::DataLakeAnalytics::Mgmt::DataLakeAnalyticsClass.new(self)
      @data_lake_store = Azure::Profiles::Latest::DataLakeStore::Mgmt::DataLakeStoreClass.new(self)
      @dev_test_labs = Azure::Profiles::Latest::DevTestLabs::Mgmt::DevTestLabsClass.new(self)
      @dns = Azure::Profiles::Latest::Dns::Mgmt::DnsClass.new(self)
      @event_grid = Azure::Profiles::Latest::EventGrid::Mgmt::EventGridClass.new(self)
      @event_hub = Azure::Profiles::Latest::EventHub::Mgmt::EventHubClass.new(self)
      @features = Azure::Profiles::Latest::Features::Mgmt::FeaturesClass.new(self)
      @graph = Azure::Profiles::Latest::Graph::Mgmt::GraphClass.new(self)
      @iot_hub = Azure::Profiles::Latest::IotHub::Mgmt::IotHubClass.new(self)
      @key_vault = Azure::Profiles::Latest::KeyVault::Mgmt::KeyVaultClass.new(self)
      @links = Azure::Profiles::Latest::Links::Mgmt::LinksClass.new(self)
      @locks = Azure::Profiles::Latest::Locks::Mgmt::LocksClass.new(self)
      @logic = Azure::Profiles::Latest::Logic::Mgmt::LogicClass.new(self)
      @machine_learning = Azure::Profiles::Latest::MachineLearning::Mgmt::MachineLearningClass.new(self)
      @managed_applications = Azure::Profiles::Latest::ManagedApplications::Mgmt::ManagedApplicationsClass.new(self)
      @marketplace_ordering = Azure::Profiles::Latest::MarketplaceOrdering::Mgmt::MarketplaceOrderingClass.new(self)
      @media_services = Azure::Profiles::Latest::MediaServices::Mgmt::MediaServicesClass.new(self)
      @mobile_engagement = Azure::Profiles::Latest::MobileEngagement::Mgmt::MobileEngagementClass.new(self)
      @monitor = Azure::Profiles::Latest::Monitor::Mgmt::MonitorClass.new(self)
      @network = Azure::Profiles::Latest::Network::Mgmt::NetworkClass.new(self)
      @notification_hubs = Azure::Profiles::Latest::NotificationHubs::Mgmt::NotificationHubsClass.new(self)
      @operational_insights = Azure::Profiles::Latest::OperationalInsights::Mgmt::OperationalInsightsClass.new(self)
      @policy = Azure::Profiles::Latest::Policy::Mgmt::PolicyClass.new(self)
      @power_bi_embedded = Azure::Profiles::Latest::PowerBiEmbedded::Mgmt::PowerBiEmbeddedClass.new(self)
      @recovery_services = Azure::Profiles::Latest::RecoveryServices::Mgmt::RecoveryServicesClass.new(self)
      @recovery_services_backup = Azure::Profiles::Latest::RecoveryServicesBackup::Mgmt::RecoveryServicesBackupClass.new(self)
      @recovery_services_site_recovery = Azure::Profiles::Latest::RecoveryServicesSiteRecovery::Mgmt::RecoveryServicesSiteRecoveryClass.new(self)
      @redis = Azure::Profiles::Latest::Redis::Mgmt::RedisClass.new(self)
      @relay = Azure::Profiles::Latest::Relay::Mgmt::RelayClass.new(self)
      @resources = Azure::Profiles::Latest::Resources::Mgmt::ResourcesClass.new(self)
      @resources_management = Azure::Profiles::Latest::ResourcesManagement::Mgmt::ResourcesManagementClass.new(self)
      @scheduler = Azure::Profiles::Latest::Scheduler::Mgmt::SchedulerClass.new(self)
      @search = Azure::Profiles::Latest::Search::Mgmt::SearchClass.new(self)
      @server_management = Azure::Profiles::Latest::ServerManagement::Mgmt::ServerManagementClass.new(self)
      @service_bus = Azure::Profiles::Latest::ServiceBus::Mgmt::ServiceBusClass.new(self)
      @service_fabric = Azure::Profiles::Latest::ServiceFabric::Mgmt::ServiceFabricClass.new(self)
      @sql = Azure::Profiles::Latest::SQL::Mgmt::SQLClass.new(self)
      @stor_simple8000_series = Azure::Profiles::Latest::StorSimple8000Series::Mgmt::StorSimple8000SeriesClass.new(self)
      @storage = Azure::Profiles::Latest::Storage::Mgmt::StorageClass.new(self)
      @stream_analytics = Azure::Profiles::Latest::StreamAnalytics::Mgmt::StreamAnalyticsClass.new(self)
      @subscriptions = Azure::Profiles::Latest::Subscriptions::Mgmt::SubscriptionsClass.new(self)
      @traffic_manager = Azure::Profiles::Latest::TrafficManager::Mgmt::TrafficManagerClass.new(self)
      @web = Azure::Profiles::Latest::Web::Mgmt::WebClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::Common::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
