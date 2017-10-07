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
require 'utils/configurable'
require 'utils/default'

module Azure::Profiles::Management::Profile_Latest
  #
  # Client class for the Profile_Latest profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :analysisservices, :authorization, :automation, :batch, :billing, :cdn, :cognitiveservices, :commerce, :compute, :consumption, :containerinstance, :containerregistry, :containerservice, :customerinsights, :datalakeanalytics, :datalakestore, :devtestlabs, :dns, :eventgrid, :eventhub, :features, :graph, :iothub, :keyvault, :links, :locks, :logic, :machinelearning, :managedapplications, :marketplaceordering, :mediaservices, :mobileengagement, :monitor, :network, :notificationhubs, :operationalinsights, :policy, :powerbiembedded, :recoveryservices, :recoveryservicesbackup, :recoveryservicessiterecovery, :redis, :relay, :resources, :resourcesmanagement, :scheduler, :search, :servermanagement, :servicebus, :servicefabric, :sql, :storsimple8000series, :storage, :streamanalytics, :subscriptions, :trafficmanager, :web

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.analysisservices = AnalysisServices::AnalysisServicesClass.new(self)
      self.authorization = Authorization::AuthorizationClass.new(self)
      self.automation = Automation::AutomationClass.new(self)
      self.batch = Batch::BatchClass.new(self)
      self.billing = Billing::BillingClass.new(self)
      self.cdn = CDN::CDNClass.new(self)
      self.cognitiveservices = CognitiveServices::CognitiveServicesClass.new(self)
      self.commerce = Commerce::CommerceClass.new(self)
      self.compute = Compute::ComputeClass.new(self)
      self.consumption = Consumption::ConsumptionClass.new(self)
      self.containerinstance = ContainerInstance::ContainerInstanceClass.new(self)
      self.containerregistry = ContainerRegistry::ContainerRegistryClass.new(self)
      self.containerservice = ContainerService::ContainerServiceClass.new(self)
      self.customerinsights = CustomerInsights::CustomerInsightsClass.new(self)
      self.datalakeanalytics = DataLakeAnalytics::DataLakeAnalyticsClass.new(self)
      self.datalakestore = DataLakeStore::DataLakeStoreClass.new(self)
      self.devtestlabs = DevTestLabs::DevTestLabsClass.new(self)
      self.dns = Dns::DnsClass.new(self)
      self.eventgrid = EventGrid::EventGridClass.new(self)
      self.eventhub = EventHub::EventHubClass.new(self)
      self.features = Features::FeaturesClass.new(self)
      self.graph = Graph::GraphClass.new(self)
      self.iothub = IotHub::IotHubClass.new(self)
      self.keyvault = KeyVault::KeyVaultClass.new(self)
      self.links = Links::LinksClass.new(self)
      self.locks = Locks::LocksClass.new(self)
      self.logic = Logic::LogicClass.new(self)
      self.machinelearning = MachineLearning::MachineLearningClass.new(self)
      self.managedapplications = ManagedApplications::ManagedApplicationsClass.new(self)
      self.marketplaceordering = MarketplaceOrdering::MarketplaceOrderingClass.new(self)
      self.mediaservices = MediaServices::MediaServicesClass.new(self)
      self.mobileengagement = MobileEngagement::MobileEngagementClass.new(self)
      self.monitor = Monitor::MonitorClass.new(self)
      self.network = Network::NetworkClass.new(self)
      self.notificationhubs = NotificationHubs::NotificationHubsClass.new(self)
      self.operationalinsights = OperationalInsights::OperationalInsightsClass.new(self)
      self.policy = Policy::PolicyClass.new(self)
      self.powerbiembedded = PowerBiEmbedded::PowerBiEmbeddedClass.new(self)
      self.recoveryservices = RecoveryServices::RecoveryServicesClass.new(self)
      self.recoveryservicesbackup = RecoveryServicesBackup::RecoveryServicesBackupClass.new(self)
      self.recoveryservicessiterecovery = RecoveryServicesSiteRecovery::RecoveryServicesSiteRecoveryClass.new(self)
      self.redis = Redis::RedisClass.new(self)
      self.relay = Relay::RelayClass.new(self)
      self.resources = Resources::ResourcesClass.new(self)
      self.resourcesmanagement = ResourcesManagement::ResourcesManagementClass.new(self)
      self.scheduler = Scheduler::SchedulerClass.new(self)
      self.search = Search::SearchClass.new(self)
      self.servermanagement = ServerManagement::ServerManagementClass.new(self)
      self.servicebus = ServiceBus::ServiceBusClass.new(self)
      self.servicefabric = ServiceFabric::ServiceFabricClass.new(self)
      self.sql = SQL::SQLClass.new(self)
      self.storsimple8000series = StorSimple8000Series::StorSimple8000SeriesClass.new(self)
      self.storage = Storage::StorageClass.new(self)
      self.streamanalytics = StreamAnalytics::StreamAnalyticsClass.new(self)
      self.subscriptions = Subscriptions::SubscriptionsClass.new(self)
      self.trafficmanager = TrafficManager::TrafficManagerClass.new(self)
      self.web = Web::WebClass.new(self)
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
