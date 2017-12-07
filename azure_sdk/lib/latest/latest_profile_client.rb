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
require 'latest/modules/graphrbac_profile_module'
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

module Azure::Profiles::Latest
  #
  # Client class for the Latest profile SDK.
  #
  class Client
    include MsRestAzure::Common::Configurable

    attr_reader  :analysis_services, :authorization, :automation, :batch, :billing, :cdn, :cognitive_services, :commerce, :compute, :consumption, :container_instance, :container_registry, :container_service, :customer_insights, :data_lake_analytics, :data_lake_store, :dev_test_labs, :dns, :event_grid, :event_hub, :features, :graph_rbac, :iot_hub, :key_vault, :links, :locks, :logic, :machine_learning, :managed_applications, :marketplace_ordering, :media_services, :mobile_engagement, :monitor, :network, :notification_hubs, :operational_insights, :policy, :power_bi_embedded, :recovery_services, :recovery_services_backup, :recovery_services_site_recovery, :redis, :relay, :resources, :resources_management, :scheduler, :search, :server_management, :service_bus, :service_fabric, :sql, :stor_simple8000_series, :storage, :stream_analytics, :subscriptions, :traffic_manager, :web

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @analysis_services = AnalysisServicesAdapter.new(self)
      @authorization = AuthorizationAdapter.new(self)
      @automation = AutomationAdapter.new(self)
      @batch = BatchAdapter.new(self)
      @billing = BillingAdapter.new(self)
      @cdn = CDNAdapter.new(self)
      @cognitive_services = CognitiveServicesAdapter.new(self)
      @commerce = CommerceAdapter.new(self)
      @compute = ComputeAdapter.new(self)
      @consumption = ConsumptionAdapter.new(self)
      @container_instance = ContainerInstanceAdapter.new(self)
      @container_registry = ContainerRegistryAdapter.new(self)
      @container_service = ContainerServiceAdapter.new(self)
      @customer_insights = CustomerInsightsAdapter.new(self)
      @data_lake_analytics = DataLakeAnalyticsAdapter.new(self)
      @data_lake_store = DataLakeStoreAdapter.new(self)
      @dev_test_labs = DevTestLabsAdapter.new(self)
      @dns = DnsAdapter.new(self)
      @event_grid = EventGridAdapter.new(self)
      @event_hub = EventHubAdapter.new(self)
      @features = FeaturesAdapter.new(self)
      @graph_rbac = GraphRbacAdapter.new(self)
      @iot_hub = IotHubAdapter.new(self)
      @key_vault = KeyVaultAdapter.new(self)
      @links = LinksAdapter.new(self)
      @locks = LocksAdapter.new(self)
      @logic = LogicAdapter.new(self)
      @machine_learning = MachineLearningAdapter.new(self)
      @managed_applications = ManagedApplicationsAdapter.new(self)
      @marketplace_ordering = MarketplaceOrderingAdapter.new(self)
      @media_services = MediaServicesAdapter.new(self)
      @mobile_engagement = MobileEngagementAdapter.new(self)
      @monitor = MonitorAdapter.new(self)
      @network = NetworkAdapter.new(self)
      @notification_hubs = NotificationHubsAdapter.new(self)
      @operational_insights = OperationalInsightsAdapter.new(self)
      @policy = PolicyAdapter.new(self)
      @power_bi_embedded = PowerBiEmbeddedAdapter.new(self)
      @recovery_services = RecoveryServicesAdapter.new(self)
      @recovery_services_backup = RecoveryServicesBackupAdapter.new(self)
      @recovery_services_site_recovery = RecoveryServicesSiteRecoveryAdapter.new(self)
      @redis = RedisAdapter.new(self)
      @relay = RelayAdapter.new(self)
      @resources = ResourcesAdapter.new(self)
      @resources_management = ResourcesManagementAdapter.new(self)
      @scheduler = SchedulerAdapter.new(self)
      @search = SearchAdapter.new(self)
      @server_management = ServerManagementAdapter.new(self)
      @service_bus = ServiceBusAdapter.new(self)
      @service_fabric = ServiceFabricAdapter.new(self)
      @sql = SQLAdapter.new(self)
      @stor_simple8000_series = StorSimple8000SeriesAdapter.new(self)
      @storage = StorageAdapter.new(self)
      @stream_analytics = StreamAnalyticsAdapter.new(self)
      @subscriptions = SubscriptionsAdapter.new(self)
      @traffic_manager = TrafficManagerAdapter.new(self)
      @web = WebAdapter.new(self)
    end

    class AnalysisServicesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::AnalysisServices::Mgmt::AnalysisServicesManagementClass.new(context)
      end
    end

    class AuthorizationAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Authorization::Mgmt::AuthorizationManagementClass.new(context)
      end
    end

    class AutomationAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Automation::Mgmt::AutomationManagementClass.new(context)
      end
    end

    class BatchAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Batch::Mgmt::BatchManagementClass.new(context)
      end
    end

    class BillingAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Billing::Mgmt::BillingManagementClass.new(context)
      end
    end

    class CDNAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::CDN::Mgmt::CDNManagementClass.new(context)
      end
    end

    class CognitiveServicesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::CognitiveServices::Mgmt::CognitiveServicesManagementClass.new(context)
      end
    end

    class CommerceAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Commerce::Mgmt::CommerceManagementClass.new(context)
      end
    end

    class ComputeAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Compute::Mgmt::ComputeManagementClass.new(context)
      end
    end

    class ConsumptionAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Consumption::Mgmt::ConsumptionManagementClass.new(context)
      end
    end

    class ContainerInstanceAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ContainerInstance::Mgmt::ContainerInstanceManagementClass.new(context)
      end
    end

    class ContainerRegistryAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ContainerRegistry::Mgmt::ContainerRegistryManagementClass.new(context)
      end
    end

    class ContainerServiceAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ContainerService::Mgmt::ContainerServiceManagementClass.new(context)
      end
    end

    class CustomerInsightsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::CustomerInsights::Mgmt::CustomerInsightsManagementClass.new(context)
      end
    end

    class DataLakeAnalyticsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::DataLakeAnalytics::Mgmt::DataLakeAnalyticsManagementClass.new(context)
      end
    end

    class DataLakeStoreAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::DataLakeStore::Mgmt::DataLakeStoreManagementClass.new(context)
      end
    end

    class DevTestLabsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::DevTestLabs::Mgmt::DevTestLabsManagementClass.new(context)
      end
    end

    class DnsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Dns::Mgmt::DnsManagementClass.new(context)
      end
    end

    class EventGridAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::EventGrid::Mgmt::EventGridManagementClass.new(context)
      end
    end

    class EventHubAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::EventHub::Mgmt::EventHubManagementClass.new(context)
      end
    end

    class FeaturesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Features::Mgmt::FeaturesManagementClass.new(context)
      end
    end

    class GraphRbacAdapter < Azure::Profiles::Latest::GraphRbac::GraphRbacDataClass

      def initialize(context)
        super(context)
      end
    end

    class IotHubAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::IotHub::Mgmt::IotHubManagementClass.new(context)
      end
    end

    class KeyVaultAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::KeyVault::Mgmt::KeyVaultManagementClass.new(context)
      end
    end

    class LinksAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Links::Mgmt::LinksManagementClass.new(context)
      end
    end

    class LocksAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Locks::Mgmt::LocksManagementClass.new(context)
      end
    end

    class LogicAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Logic::Mgmt::LogicManagementClass.new(context)
      end
    end

    class MachineLearningAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::MachineLearning::Mgmt::MachineLearningManagementClass.new(context)
      end
    end

    class ManagedApplicationsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ManagedApplications::Mgmt::ManagedApplicationsManagementClass.new(context)
      end
    end

    class MarketplaceOrderingAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::MarketplaceOrdering::Mgmt::MarketplaceOrderingManagementClass.new(context)
      end
    end

    class MediaServicesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::MediaServices::Mgmt::MediaServicesManagementClass.new(context)
      end
    end

    class MobileEngagementAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::MobileEngagement::Mgmt::MobileEngagementManagementClass.new(context)
      end
    end

    class MonitorAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Monitor::Mgmt::MonitorManagementClass.new(context)
      end
    end

    class NetworkAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Network::Mgmt::NetworkManagementClass.new(context)
      end
    end

    class NotificationHubsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::NotificationHubs::Mgmt::NotificationHubsManagementClass.new(context)
      end
    end

    class OperationalInsightsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::OperationalInsights::Mgmt::OperationalInsightsManagementClass.new(context)
      end
    end

    class PolicyAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Policy::Mgmt::PolicyManagementClass.new(context)
      end
    end

    class PowerBiEmbeddedAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::PowerBiEmbedded::Mgmt::PowerBiEmbeddedManagementClass.new(context)
      end
    end

    class RecoveryServicesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::RecoveryServices::Mgmt::RecoveryServicesManagementClass.new(context)
      end
    end

    class RecoveryServicesBackupAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::RecoveryServicesBackup::Mgmt::RecoveryServicesBackupManagementClass.new(context)
      end
    end

    class RecoveryServicesSiteRecoveryAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::RecoveryServicesSiteRecovery::Mgmt::RecoveryServicesSiteRecoveryManagementClass.new(context)
      end
    end

    class RedisAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Redis::Mgmt::RedisManagementClass.new(context)
      end
    end

    class RelayAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Relay::Mgmt::RelayManagementClass.new(context)
      end
    end

    class ResourcesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Resources::Mgmt::ResourcesManagementClass.new(context)
      end
    end

    class ResourcesManagementAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ResourcesManagement::Mgmt::ResourcesManagementManagementClass.new(context)
      end
    end

    class SchedulerAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Scheduler::Mgmt::SchedulerManagementClass.new(context)
      end
    end

    class SearchAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Search::Mgmt::SearchManagementClass.new(context)
      end
    end

    class ServerManagementAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ServerManagement::Mgmt::ServerManagementManagementClass.new(context)
      end
    end

    class ServiceBusAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ServiceBus::Mgmt::ServiceBusManagementClass.new(context)
      end
    end

    class ServiceFabricAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::ServiceFabric::Mgmt::ServiceFabricManagementClass.new(context)
      end
    end

    class SQLAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::SQL::Mgmt::SQLManagementClass.new(context)
      end
    end

    class StorSimple8000SeriesAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::StorSimple8000Series::Mgmt::StorSimple8000SeriesManagementClass.new(context)
      end
    end

    class StorageAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Storage::Mgmt::StorageManagementClass.new(context)
      end
    end

    class StreamAnalyticsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::StreamAnalytics::Mgmt::StreamAnalyticsManagementClass.new(context)
      end
    end

    class SubscriptionsAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Subscriptions::Mgmt::SubscriptionsManagementClass.new(context)
      end
    end

    class TrafficManagerAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::TrafficManager::Mgmt::TrafficManagerManagementClass.new(context)
      end
    end

    class WebAdapter
      attr_accessor :mgmt

      def initialize(context)
        @mgmt = Azure::Profiles::Latest::Web::Mgmt::WebManagementClass.new(context)
      end
    end

  end
end
