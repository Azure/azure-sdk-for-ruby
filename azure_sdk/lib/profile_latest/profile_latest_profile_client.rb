# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profile_latest/profile_latest_module_definition.rb'
require 'profile_latest/modules/analysisservices_profile_module'
require 'profile_latest/modules/authorization_profile_module'
require 'profile_latest/modules/automation_profile_module'
require 'profile_latest/modules/batch_profile_module'
require 'profile_latest/modules/billing_profile_module'
require 'profile_latest/modules/cdn_profile_module'
require 'profile_latest/modules/cognitiveservices_profile_module'
require 'profile_latest/modules/commerce_profile_module'
require 'profile_latest/modules/compute_profile_module'
require 'profile_latest/modules/consumption_profile_module'
require 'profile_latest/modules/containerinstance_profile_module'
require 'profile_latest/modules/containerregistry_profile_module'
require 'profile_latest/modules/containerservice_profile_module'
require 'profile_latest/modules/customerinsights_profile_module'
require 'profile_latest/modules/datalakeanalytics_profile_module'
require 'profile_latest/modules/datalakestore_profile_module'
require 'profile_latest/modules/devtestlabs_profile_module'
require 'profile_latest/modules/dns_profile_module'
require 'profile_latest/modules/eventgrid_profile_module'
require 'profile_latest/modules/eventhub_profile_module'
require 'profile_latest/modules/features_profile_module'
require 'profile_latest/modules/graph_profile_module'
require 'profile_latest/modules/iothub_profile_module'
require 'profile_latest/modules/keyvault_profile_module'
require 'profile_latest/modules/links_profile_module'
require 'profile_latest/modules/locks_profile_module'
require 'profile_latest/modules/logic_profile_module'
require 'profile_latest/modules/machinelearning_profile_module'
require 'profile_latest/modules/managedapplications_profile_module'
require 'profile_latest/modules/marketplaceordering_profile_module'
require 'profile_latest/modules/mediaservices_profile_module'
require 'profile_latest/modules/mobileengagement_profile_module'
require 'profile_latest/modules/monitor_profile_module'
require 'profile_latest/modules/network_profile_module'
require 'profile_latest/modules/notificationhubs_profile_module'
require 'profile_latest/modules/operationalinsights_profile_module'
require 'profile_latest/modules/policy_profile_module'
require 'profile_latest/modules/powerbiembedded_profile_module'
require 'profile_latest/modules/recoveryservices_profile_module'
require 'profile_latest/modules/recoveryservicesbackup_profile_module'
require 'profile_latest/modules/recoveryservicessiterecovery_profile_module'
require 'profile_latest/modules/redis_profile_module'
require 'profile_latest/modules/relay_profile_module'
require 'profile_latest/modules/resources_profile_module'
require 'profile_latest/modules/resourcesmanagement_profile_module'
require 'profile_latest/modules/scheduler_profile_module'
require 'profile_latest/modules/search_profile_module'
require 'profile_latest/modules/servermanagement_profile_module'
require 'profile_latest/modules/servicebus_profile_module'
require 'profile_latest/modules/servicefabric_profile_module'
require 'profile_latest/modules/sql_profile_module'
require 'profile_latest/modules/storsimple8000series_profile_module'
require 'profile_latest/modules/storage_profile_module'
require 'profile_latest/modules/streamanalytics_profile_module'
require 'profile_latest/modules/subscriptions_profile_module'
require 'profile_latest/modules/trafficmanager_profile_module'
require 'profile_latest/modules/web_profile_module'
require 'common/configurable'
require 'common/default'

module Azure::Profiles::Management::Profile_Latest
  #
  # Client class for the Profile_Latest profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :analysis_services, :authorization, :automation, :batch, :billing, :cdn, :cognitive_services, :commerce, :compute, :consumption, :container_instance, :container_registry, :container_service, :customer_insights, :data_lake_analytics, :data_lake_store, :dev_test_labs, :dns, :event_grid, :event_hub, :features, :graph, :iot_hub, :key_vault, :links, :locks, :logic, :machine_learning, :managed_applications, :marketplace_ordering, :media_services, :mobile_engagement, :monitor, :network, :notification_hubs, :operational_insights, :policy, :power_bi_embedded, :recovery_services, :recovery_services_backup, :recovery_services_site_recovery, :redis, :relay, :resources, :resources_management, :scheduler, :search, :server_management, :service_bus, :service_fabric, :sql, :stor_simple8000_series, :storage, :stream_analytics, :subscriptions, :traffic_manager, :web

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @analysis_services = AnalysisServices::AnalysisServicesClass.new(self)
      @authorization = Authorization::AuthorizationClass.new(self)
      @automation = Automation::AutomationClass.new(self)
      @batch = Batch::BatchClass.new(self)
      @billing = Billing::BillingClass.new(self)
      @cdn = CDN::CDNClass.new(self)
      @cognitive_services = CognitiveServices::CognitiveServicesClass.new(self)
      @commerce = Commerce::CommerceClass.new(self)
      @compute = Compute::ComputeClass.new(self)
      @consumption = Consumption::ConsumptionClass.new(self)
      @container_instance = ContainerInstance::ContainerInstanceClass.new(self)
      @container_registry = ContainerRegistry::ContainerRegistryClass.new(self)
      @container_service = ContainerService::ContainerServiceClass.new(self)
      @customer_insights = CustomerInsights::CustomerInsightsClass.new(self)
      @data_lake_analytics = DataLakeAnalytics::DataLakeAnalyticsClass.new(self)
      @data_lake_store = DataLakeStore::DataLakeStoreClass.new(self)
      @dev_test_labs = DevTestLabs::DevTestLabsClass.new(self)
      @dns = Dns::DnsClass.new(self)
      @event_grid = EventGrid::EventGridClass.new(self)
      @event_hub = EventHub::EventHubClass.new(self)
      @features = Features::FeaturesClass.new(self)
      @graph = Graph::GraphClass.new(self)
      @iot_hub = IotHub::IotHubClass.new(self)
      @key_vault = KeyVault::KeyVaultClass.new(self)
      @links = Links::LinksClass.new(self)
      @locks = Locks::LocksClass.new(self)
      @logic = Logic::LogicClass.new(self)
      @machine_learning = MachineLearning::MachineLearningClass.new(self)
      @managed_applications = ManagedApplications::ManagedApplicationsClass.new(self)
      @marketplace_ordering = MarketplaceOrdering::MarketplaceOrderingClass.new(self)
      @media_services = MediaServices::MediaServicesClass.new(self)
      @mobile_engagement = MobileEngagement::MobileEngagementClass.new(self)
      @monitor = Monitor::MonitorClass.new(self)
      @network = Network::NetworkClass.new(self)
      @notification_hubs = NotificationHubs::NotificationHubsClass.new(self)
      @operational_insights = OperationalInsights::OperationalInsightsClass.new(self)
      @policy = Policy::PolicyClass.new(self)
      @power_bi_embedded = PowerBiEmbedded::PowerBiEmbeddedClass.new(self)
      @recovery_services = RecoveryServices::RecoveryServicesClass.new(self)
      @recovery_services_backup = RecoveryServicesBackup::RecoveryServicesBackupClass.new(self)
      @recovery_services_site_recovery = RecoveryServicesSiteRecovery::RecoveryServicesSiteRecoveryClass.new(self)
      @redis = Redis::RedisClass.new(self)
      @relay = Relay::RelayClass.new(self)
      @resources = Resources::ResourcesClass.new(self)
      @resources_management = ResourcesManagement::ResourcesManagementClass.new(self)
      @scheduler = Scheduler::SchedulerClass.new(self)
      @search = Search::SearchClass.new(self)
      @server_management = ServerManagement::ServerManagementClass.new(self)
      @service_bus = ServiceBus::ServiceBusClass.new(self)
      @service_fabric = ServiceFabric::ServiceFabricClass.new(self)
      @sql = SQL::SQLClass.new(self)
      @stor_simple8000_series = StorSimple8000Series::StorSimple8000SeriesClass.new(self)
      @storage = Storage::StorageClass.new(self)
      @stream_analytics = StreamAnalytics::StreamAnalyticsClass.new(self)
      @subscriptions = Subscriptions::SubscriptionsClass.new(self)
      @traffic_manager = TrafficManager::TrafficManagerClass.new(self)
      @web = Web::WebClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
