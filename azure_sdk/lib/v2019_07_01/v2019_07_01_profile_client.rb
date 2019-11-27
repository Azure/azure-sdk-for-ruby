# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'v2019_07_01/module_definition'
require 'v2019_07_01/modules/adhybridhealthservice_profile_module'
require 'v2019_07_01/modules/advisor_profile_module'
require 'v2019_07_01/modules/alertsmanagement_profile_module'
require 'v2019_07_01/modules/analysisservices_profile_module'
require 'v2019_07_01/modules/apimanagement_profile_module'
require 'v2019_07_01/modules/authorization_profile_module'
require 'v2019_07_01/modules/automation_profile_module'
require 'v2019_07_01/modules/azurestack_profile_module'
require 'v2019_07_01/modules/batch_profile_module'
require 'v2019_07_01/modules/batchai_profile_module'
require 'v2019_07_01/modules/botservice_profile_module'
require 'v2019_07_01/modules/cognitiveservices_profile_module'
require 'v2019_07_01/modules/compute_profile_module'
require 'v2019_07_01/modules/consumption_profile_module'
require 'v2019_07_01/modules/containerregistry_profile_module'
require 'v2019_07_01/modules/costmanagement_profile_module'
require 'v2019_07_01/modules/databox_profile_module'
require 'v2019_07_01/modules/datafactory_profile_module'
require 'v2019_07_01/modules/datamigration_profile_module'
require 'v2019_07_01/modules/eventhub_profile_module'
require 'v2019_07_01/modules/features_profile_module'
require 'v2019_07_01/modules/importexport_profile_module'
require 'v2019_07_01/modules/keyvault_profile_module'
require 'v2019_07_01/modules/logic_profile_module'
require 'v2019_07_01/modules/marketplaceordering_profile_module'
require 'v2019_07_01/modules/migrate_profile_module'
require 'v2019_07_01/modules/network_profile_module'
require 'v2019_07_01/modules/notificationhubs_profile_module'
require 'v2019_07_01/modules/operationalinsights_profile_module'
require 'v2019_07_01/modules/operationsmanagement_profile_module'
require 'v2019_07_01/modules/policyinsights_profile_module'
require 'v2019_07_01/modules/portal_profile_module'
require 'v2019_07_01/modules/recoveryservices_profile_module'
require 'v2019_07_01/modules/relay_profile_module'
require 'v2019_07_01/modules/resourcehealth_profile_module'
require 'v2019_07_01/modules/resources_profile_module'
require 'v2019_07_01/modules/scheduler_profile_module'
require 'v2019_07_01/modules/search_profile_module'
require 'v2019_07_01/modules/servicebus_profile_module'
require 'v2019_07_01/modules/servicefabric_profile_module'
require 'v2019_07_01/modules/storage_profile_module'
require 'v2019_07_01/modules/storagesync_profile_module'
require 'v2019_07_01/modules/web_profile_module'
require 'v2019_07_01/modules/redis_profile_module'
require 'v2019_07_01/modules/mysql_profile_module'
require 'v2019_07_01/modules/postgresql_profile_module'
require 'v2019_07_01/modules/iothub_profile_module'
require 'v2019_07_01/modules/monitor_profile_module'
require 'v2019_07_01/modules/mediaservices_profile_module'
require 'v2019_07_01/modules/powerbiembedded_profile_module'
require 'v2019_07_01/modules/powerbidedicated_profile_module'
require 'v2019_07_01/modules/recoveryservicessiterecovery_profile_module'
require 'v2019_07_01/modules/recoveryservicesbackup_profile_module'
require 'v2019_07_01/modules/sql_profile_module'

module Azure::Profiles::V2019_07_01
  #
  # Client class for the V2019_07_01 profile SDK.
  #
  class Client
    include MsRestAzure::Common::Configurable

    attr_reader  :adhybrid_health_service, :advisor, :alerts_management, :analysis_services, :api_management, :authorization, :automation, :azure_stack, :batch, :batch_ai, :bot_service, :cognitive_services, :compute, :consumption, :container_registry, :cost_management, :data_box, :data_factory, :data_migration, :event_hub, :features, :import_export, :key_vault, :logic, :marketplace_ordering, :migrate, :network, :notification_hubs, :operational_insights, :operations_management, :policy_insights, :portal, :recovery_services, :relay, :resource_health, :resources, :scheduler, :search, :service_bus, :service_fabric, :storage, :storage_sync, :web, :redis, :mysql, :postgresql, :iot_hub, :monitor, :media_services, :power_bi_embedded, :power_bi_dedicated, :recovery_services_site_recovery, :recovery_services_backup, :sql

    #
    # Initializes a new instance of the Client class.
    # @param options [Hash] hash of client options.
    #    options = {
    #      tenant_id: 'YOUR TENANT ID',
    #      client_id: 'YOUR CLIENT ID',
    #      client_secret: 'YOUR CLIENT SECRET',
    #      subscription_id: 'YOUR SUBSCRIPTION ID',
    #      credentials: credentials,
    #      active_directory_settings: active_directory_settings,
    #      base_url: 'YOUR BASE URL',
    #      options: options
    #    }
    #   'credentials' are optional and if not passed in the hash, will be obtained
    #   from MsRest::TokenCredentials using MsRestAzure::ApplicationTokenProvider.
    #
    #   Also, base_url, active_directory_settings & options are optional.
    #
    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      base_url = options[:base_url].nil? ? nil:options[:base_url]
      sdk_options = options[:options].nil? ? nil:options[:options]

      @adhybrid_health_service = ADHybridHealthServiceAdapter.new(self, base_url, sdk_options)
      @advisor = AdvisorAdapter.new(self, base_url, sdk_options)
      @alerts_management = AlertsManagementAdapter.new(self, base_url, sdk_options)
      @analysis_services = AnalysisServicesAdapter.new(self, base_url, sdk_options)
      @api_management = ApiManagementAdapter.new(self, base_url, sdk_options)
      @authorization = AuthorizationAdapter.new(self, base_url, sdk_options)
      @automation = AutomationAdapter.new(self, base_url, sdk_options)
      @azure_stack = AzureStackAdapter.new(self, base_url, sdk_options)
      @batch = BatchAdapter.new(self, base_url, sdk_options)
      @batch_ai = BatchAIAdapter.new(self, base_url, sdk_options)
      @bot_service = BotServiceAdapter.new(self, base_url, sdk_options)
      @cognitive_services = CognitiveServicesAdapter.new(self, base_url, sdk_options)
      @compute = ComputeAdapter.new(self, base_url, sdk_options)
      @consumption = ConsumptionAdapter.new(self, base_url, sdk_options)
      @container_registry = ContainerRegistryAdapter.new(self, base_url, sdk_options)
      @cost_management = CostManagementAdapter.new(self, base_url, sdk_options)
      @data_box = DataBoxAdapter.new(self, base_url, sdk_options)
      @data_factory = DataFactoryAdapter.new(self, base_url, sdk_options)
      @data_migration = DataMigrationAdapter.new(self, base_url, sdk_options)
      @event_hub = EventHubAdapter.new(self, base_url, sdk_options)
      @features = FeaturesAdapter.new(self, base_url, sdk_options)
      @import_export = ImportExportAdapter.new(self, base_url, sdk_options)
      @key_vault = KeyVaultAdapter.new(self, base_url, sdk_options)
      @logic = LogicAdapter.new(self, base_url, sdk_options)
      @marketplace_ordering = MarketplaceOrderingAdapter.new(self, base_url, sdk_options)
      @migrate = MigrateAdapter.new(self, base_url, sdk_options)
      @network = NetworkAdapter.new(self, base_url, sdk_options)
      @notification_hubs = NotificationHubsAdapter.new(self, base_url, sdk_options)
      @operational_insights = OperationalInsightsAdapter.new(self, base_url, sdk_options)
      @operations_management = OperationsManagementAdapter.new(self, base_url, sdk_options)
      @policy_insights = PolicyInsightsAdapter.new(self, base_url, sdk_options)
      @portal = PortalAdapter.new(self, base_url, sdk_options)
      @recovery_services = RecoveryServicesAdapter.new(self, base_url, sdk_options)
      @relay = RelayAdapter.new(self, base_url, sdk_options)
      @resource_health = ResourceHealthAdapter.new(self, base_url, sdk_options)
      @resources = ResourcesAdapter.new(self, base_url, sdk_options)
      @scheduler = SchedulerAdapter.new(self, base_url, sdk_options)
      @search = SearchAdapter.new(self, base_url, sdk_options)
      @service_bus = ServiceBusAdapter.new(self, base_url, sdk_options)
      @service_fabric = ServiceFabricAdapter.new(self, base_url, sdk_options)
      @storage = StorageAdapter.new(self, base_url, sdk_options)
      @storage_sync = StorageSyncAdapter.new(self, base_url, sdk_options)
      @web = WebAdapter.new(self, base_url, sdk_options)
      @redis = RedisAdapter.new(self, base_url, sdk_options)
      @mysql = MysqlAdapter.new(self, base_url, sdk_options)
      @postgresql = PostgresqlAdapter.new(self, base_url, sdk_options)
      @iot_hub = IotHubAdapter.new(self, base_url, sdk_options)
      @monitor = MonitorAdapter.new(self, base_url, sdk_options)
      @media_services = MediaServicesAdapter.new(self, base_url, sdk_options)
      @power_bi_embedded = PowerBiEmbeddedAdapter.new(self, base_url, sdk_options)
      @power_bi_dedicated = PowerBiDedicatedAdapter.new(self, base_url, sdk_options)
      @recovery_services_site_recovery = RecoveryServicesSiteRecoveryAdapter.new(self, base_url, sdk_options)
      @recovery_services_backup = RecoveryServicesBackupAdapter.new(self, base_url, sdk_options)
      @sql = SQLAdapter.new(self, base_url, sdk_options)
    end

    class ADHybridHealthServiceAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ADHybridHealthService::Mgmt::ADHybridHealthServiceManagementClass.new(context, base_url, options)
      end
    end

    class AdvisorAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Advisor::Mgmt::AdvisorManagementClass.new(context, base_url, options)
      end
    end

    class AlertsManagementAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::AlertsManagement::Mgmt::AlertsManagementManagementClass.new(context, base_url, options)
      end
    end

    class AnalysisServicesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::AnalysisServices::Mgmt::AnalysisServicesManagementClass.new(context, base_url, options)
      end
    end

    class ApiManagementAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ApiManagement::Mgmt::ApiManagementManagementClass.new(context, base_url, options)
      end
    end

    class AuthorizationAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Authorization::Mgmt::AuthorizationManagementClass.new(context, base_url, options)
      end
    end

    class AutomationAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Automation::Mgmt::AutomationManagementClass.new(context, base_url, options)
      end
    end

    class AzureStackAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::AzureStack::Mgmt::AzureStackManagementClass.new(context, base_url, options)
      end
    end

    class BatchAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Batch::Mgmt::BatchManagementClass.new(context, base_url, options)
      end
    end

    class BatchAIAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::BatchAI::Mgmt::BatchAIManagementClass.new(context, base_url, options)
      end
    end

    class BotServiceAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::BotService::Mgmt::BotServiceManagementClass.new(context, base_url, options)
      end
    end

    class CognitiveServicesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::CognitiveServices::Mgmt::CognitiveServicesManagementClass.new(context, base_url, options)
      end
    end

    class ComputeAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Compute::Mgmt::ComputeManagementClass.new(context, base_url, options)
      end
    end

    class ConsumptionAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Consumption::Mgmt::ConsumptionManagementClass.new(context, base_url, options)
      end
    end

    class ContainerRegistryAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ContainerRegistry::Mgmt::ContainerRegistryManagementClass.new(context, base_url, options)
      end
    end

    class CostManagementAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::CostManagement::Mgmt::CostManagementManagementClass.new(context, base_url, options)
      end
    end

    class DataBoxAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::DataBox::Mgmt::DataBoxManagementClass.new(context, base_url, options)
      end
    end

    class DataFactoryAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::DataFactory::Mgmt::DataFactoryManagementClass.new(context, base_url, options)
      end
    end

    class DataMigrationAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::DataMigration::Mgmt::DataMigrationManagementClass.new(context, base_url, options)
      end
    end

    class EventHubAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::EventHub::Mgmt::EventHubManagementClass.new(context, base_url, options)
      end
    end

    class FeaturesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Features::Mgmt::FeaturesManagementClass.new(context, base_url, options)
      end
    end

    class ImportExportAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ImportExport::Mgmt::ImportExportManagementClass.new(context, base_url, options)
      end
    end

    class KeyVaultAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::KeyVault::Mgmt::KeyVaultManagementClass.new(context, base_url, options)
      end
    end

    class LogicAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Logic::Mgmt::LogicManagementClass.new(context, base_url, options)
      end
    end

    class MarketplaceOrderingAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::MarketplaceOrdering::Mgmt::MarketplaceOrderingManagementClass.new(context, base_url, options)
      end
    end

    class MigrateAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Migrate::Mgmt::MigrateManagementClass.new(context, base_url, options)
      end
    end

    class NetworkAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Network::Mgmt::NetworkManagementClass.new(context, base_url, options)
      end
    end

    class NotificationHubsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::NotificationHubs::Mgmt::NotificationHubsManagementClass.new(context, base_url, options)
      end
    end

    class OperationalInsightsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::OperationalInsights::Mgmt::OperationalInsightsManagementClass.new(context, base_url, options)
      end
    end

    class OperationsManagementAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::OperationsManagement::Mgmt::OperationsManagementManagementClass.new(context, base_url, options)
      end
    end

    class PolicyInsightsAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::PolicyInsights::Mgmt::PolicyInsightsManagementClass.new(context, base_url, options)
      end
    end

    class PortalAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Portal::Mgmt::PortalManagementClass.new(context, base_url, options)
      end
    end

    class RecoveryServicesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::RecoveryServices::Mgmt::RecoveryServicesManagementClass.new(context, base_url, options)
      end
    end

    class RelayAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Relay::Mgmt::RelayManagementClass.new(context, base_url, options)
      end
    end

    class ResourceHealthAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ResourceHealth::Mgmt::ResourceHealthManagementClass.new(context, base_url, options)
      end
    end

    class ResourcesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Resources::Mgmt::ResourcesManagementClass.new(context, base_url, options)
      end
    end

    class SchedulerAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Scheduler::Mgmt::SchedulerManagementClass.new(context, base_url, options)
      end
    end

    class SearchAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Search::Mgmt::SearchManagementClass.new(context, base_url, options)
      end
    end

    class ServiceBusAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ServiceBus::Mgmt::ServiceBusManagementClass.new(context, base_url, options)
      end
    end

    class ServiceFabricAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::ServiceFabric::Mgmt::ServiceFabricManagementClass.new(context, base_url, options)
      end
    end

    class StorageAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Storage::Mgmt::StorageManagementClass.new(context, base_url, options)
      end
    end

    class StorageSyncAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::StorageSync::Mgmt::StorageSyncManagementClass.new(context, base_url, options)
      end
    end

    class WebAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Web::Mgmt::WebManagementClass.new(context, base_url, options)
      end
    end

    class RedisAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Redis::Mgmt::RedisManagementClass.new(context, base_url, options)
      end
    end

    class MysqlAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Mysql::Mgmt::MysqlManagementClass.new(context, base_url, options)
      end
    end

    class PostgresqlAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Postgresql::Mgmt::PostgresqlManagementClass.new(context, base_url, options)
      end
    end

    class IotHubAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::IotHub::Mgmt::IotHubManagementClass.new(context, base_url, options)
      end
    end

    class MonitorAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::Monitor::Mgmt::MonitorManagementClass.new(context, base_url, options)
      end
    end

    class MediaServicesAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::MediaServices::Mgmt::MediaServicesManagementClass.new(context, base_url, options)
      end
    end

    class PowerBiEmbeddedAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::PowerBiEmbedded::Mgmt::PowerBiEmbeddedManagementClass.new(context, base_url, options)
      end
    end

    class PowerBiDedicatedAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::PowerBiDedicated::Mgmt::PowerBiDedicatedManagementClass.new(context, base_url, options)
      end
    end

    class RecoveryServicesSiteRecoveryAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::RecoveryServicesSiteRecovery::Mgmt::RecoveryServicesSiteRecoveryManagementClass.new(context, base_url, options)
      end
    end

    class RecoveryServicesBackupAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::RecoveryServicesBackup::Mgmt::RecoveryServicesBackupManagementClass.new(context, base_url, options)
      end
    end

    class SQLAdapter
      attr_accessor :mgmt

      def initialize(context, base_url, options)
        @mgmt = Azure::Profiles::V2019_07_01::SQL::Mgmt::SQLManagementClass.new(context, base_url, options)
      end
    end

  end
end
