# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative './module_definition'
require_relative 'modules/analysisservices_profile_module'
require_relative 'modules/apimanagement_profile_module'
require_relative 'modules/authorization_profile_module'
require_relative 'modules/automation_profile_module'
require_relative 'modules/batch_profile_module'
require_relative 'modules/billing_profile_module'
require_relative 'modules/cdn_profile_module'
require_relative 'modules/cognitiveservices_profile_module'
require_relative 'modules/commerce_profile_module'
require_relative 'modules/compute_profile_module'
require_relative 'modules/consumption_profile_module'
require_relative 'modules/containerinstance_profile_module'
require_relative 'modules/containerregistry_profile_module'
require_relative 'modules/containerservice_profile_module'
require_relative 'modules/customerinsights_profile_module'
require_relative 'modules/datalakeanalytics_profile_module'
require_relative 'modules/datalakestore_profile_module'
require_relative 'modules/devtestlabs_profile_module'
require_relative 'modules/dns_profile_module'
require_relative 'modules/eventgrid_profile_module'
require_relative 'modules/eventhub_profile_module'
require_relative 'modules/features_profile_module'
require_relative 'modules/graph_profile_module'
require_relative 'modules/iothub_profile_module'
require_relative 'modules/keyvault_profile_module'
require_relative 'modules/links_profile_module'
require_relative 'modules/locks_profile_module'
require_relative 'modules/logic_profile_module'
require_relative 'modules/machinelearning_profile_module'
require_relative 'modules/managedapplications_profile_module'
require_relative 'modules/marketplaceordering_profile_module'
require_relative 'modules/mediaservices_profile_module'
require_relative 'modules/mobileengagement_profile_module'
require_relative 'modules/monitor_profile_module'
require_relative 'modules/network_profile_module'
require_relative 'modules/notificationhubs_profile_module'
require_relative 'modules/operationalinsights_profile_module'
require_relative 'modules/policy_profile_module'
require_relative 'modules/powerbiembedded_profile_module'
require_relative 'modules/recoveryservices_profile_module'
require_relative 'modules/recoveryservicesbackup_profile_module'
require_relative 'modules/recoveryservicessiterecovery_profile_module'
require_relative 'modules/redis_profile_module'
require_relative 'modules/resources_profile_module'
require_relative 'modules/resourcesmanagement_profile_module'
require_relative 'modules/search_profile_module'
require_relative 'modules/servermanagement_profile_module'
require_relative 'modules/servicebus_profile_module'
require_relative 'modules/servicefabric_profile_module'
require_relative 'modules/sql_profile_module'
require_relative 'modules/storsimple8000series_profile_module'
require_relative 'modules/storage_profile_module'
require_relative 'modules/streamanalytics_profile_module'
require_relative 'modules/subscriptions_profile_module'
require_relative 'modules/web_profile_module'
require_relative '../utils/configurable'
require_relative '../utils/default'

module Azure::Profiles::Management::Profile_Latest
  #
  # Client class for the Profile_Latest profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :analysisservices, :apimanagement, :authorization, :automation, :batch, :billing, :cdn, :cognitiveservices, :commerce, :compute, :consumption, :containerinstance, :containerregistry, :containerservice, :customerinsights, :datalakeanalytics, :datalakestore, :devtestlabs, :dns, :eventgrid, :eventhub, :features, :graph, :iothub, :keyvault, :links, :locks, :logic, :machinelearning, :managedapplications, :marketplaceordering, :mediaservices, :mobileengagement, :monitor, :network, :notificationhubs, :operationalinsights, :policy, :powerbiembedded, :recoveryservices, :recoveryservicesbackup, :recoveryservicessiterecovery, :redis, :resources, :resourcesmanagement, :search, :servermanagement, :servicebus, :servicefabric, :sql, :storsimple8000series, :storage, :streamanalytics, :subscriptions, :web

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.analysisservices = AnalysisServices::AnalysisServicesClass.new(self, nil, nil)
      self.apimanagement = ApiManagement::ApiManagementClass.new(self, nil, nil)
      self.authorization = Authorization::AuthorizationClass.new(self, nil, nil)
      self.automation = Automation::AutomationClass.new(self, nil, nil)
      self.batch = Batch::BatchClass.new(self, nil, nil)
      self.billing = Billing::BillingClass.new(self, nil, nil)
      self.cdn = CDN::CDNClass.new(self, nil, nil)
      self.cognitiveservices = CognitiveServices::CognitiveServicesClass.new(self, nil, nil)
      self.commerce = Commerce::CommerceClass.new(self, nil, nil)
      self.compute = Compute::ComputeClass.new(self, nil, nil)
      self.consumption = Consumption::ConsumptionClass.new(self, nil, nil)
      self.containerinstance = ContainerInstance::ContainerInstanceClass.new(self, nil, nil)
      self.containerregistry = ContainerRegistry::ContainerRegistryClass.new(self, nil, nil)
      self.containerservice = ContainerService::ContainerServiceClass.new(self, nil, nil)
      self.customerinsights = CustomerInsights::CustomerInsightsClass.new(self, nil, nil)
      self.datalakeanalytics = DataLakeAnalytics::DataLakeAnalyticsClass.new(self, nil, nil)
      self.datalakestore = DataLakeStore::DataLakeStoreClass.new(self, nil, nil)
      self.devtestlabs = DevTestLabs::DevTestLabsClass.new(self, nil, nil)
      self.dns = Dns::DnsClass.new(self, nil, nil)
      self.eventgrid = EventGrid::EventGridClass.new(self, nil, nil)
      self.eventhub = EventHub::EventHubClass.new(self, nil, nil)
      self.features = Features::FeaturesClass.new(self, nil, nil)
      self.graph = Graph::GraphClass.new(self, nil, nil)
      self.iothub = IotHub::IotHubClass.new(self, nil, nil)
      self.keyvault = KeyVault::KeyVaultClass.new(self, nil, nil)
      self.links = Links::LinksClass.new(self, nil, nil)
      self.locks = Locks::LocksClass.new(self, nil, nil)
      self.logic = Logic::LogicClass.new(self, nil, nil)
      self.machinelearning = MachineLearning::MachineLearningClass.new(self, nil, nil)
      self.managedapplications = ManagedApplications::ManagedApplicationsClass.new(self, nil, nil)
      self.marketplaceordering = MarketplaceOrdering::MarketplaceOrderingClass.new(self, nil, nil)
      self.mediaservices = MediaServices::MediaServicesClass.new(self, nil, nil)
      self.mobileengagement = MobileEngagement::MobileEngagementClass.new(self, nil, nil)
      self.monitor = Monitor::MonitorClass.new(self, nil, nil)
      self.network = Network::NetworkClass.new(self, nil, nil)
      self.notificationhubs = NotificationHubs::NotificationHubsClass.new(self, nil, nil)
      self.operationalinsights = OperationalInsights::OperationalInsightsClass.new(self, nil, nil)
      self.policy = Policy::PolicyClass.new(self, nil, nil)
      self.powerbiembedded = PowerBiEmbedded::PowerBiEmbeddedClass.new(self, nil, nil)
      self.recoveryservices = RecoveryServices::RecoveryServicesClass.new(self, nil, nil)
      self.recoveryservicesbackup = RecoveryServicesBackup::RecoveryServicesBackupClass.new(self, nil, nil)
      self.recoveryservicessiterecovery = RecoveryServicesSiteRecovery::RecoveryServicesSiteRecoveryClass.new(self, nil, nil)
      self.redis = Redis::RedisClass.new(self, nil, nil)
      self.resources = Resources::ResourcesClass.new(self, nil, nil)
      self.resourcesmanagement = ResourcesManagement::ResourcesManagementClass.new(self, nil, nil)
      self.search = Search::SearchClass.new(self, nil, nil)
      self.servermanagement = ServerManagement::ServerManagementClass.new(self, nil, nil)
      self.servicebus = ServiceBus::ServiceBusClass.new(self, nil, nil)
      self.servicefabric = ServiceFabric::ServiceFabricClass.new(self, nil, nil)
      self.sql = SQL::SQLClass.new(self, nil, nil)
      self.storsimple8000series = StorSimple8000Series::StorSimple8000SeriesClass.new(self, nil, nil)
      self.storage = Storage::StorageClass.new(self, nil, nil)
      self.streamanalytics = StreamAnalytics::StreamAnalyticsClass.new(self, nil, nil)
      self.subscriptions = Subscriptions::SubscriptionsClass.new(self, nil, nil)
      self.web = Web::WebClass.new(self, nil, nil)
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
