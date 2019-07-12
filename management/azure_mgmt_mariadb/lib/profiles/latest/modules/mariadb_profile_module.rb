# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mariadb'

module Azure::MariaDB::Profiles::Latest
  module Mgmt
    Servers = Azure::MariaDB::Mgmt::V2018_06_01::Servers
    Replicas = Azure::MariaDB::Mgmt::V2018_06_01::Replicas
    FirewallRules = Azure::MariaDB::Mgmt::V2018_06_01::FirewallRules
    VirtualNetworkRules = Azure::MariaDB::Mgmt::V2018_06_01::VirtualNetworkRules
    Databases = Azure::MariaDB::Mgmt::V2018_06_01::Databases
    Configurations = Azure::MariaDB::Mgmt::V2018_06_01::Configurations
    LogFiles = Azure::MariaDB::Mgmt::V2018_06_01::LogFiles
    LocationBasedPerformanceTier = Azure::MariaDB::Mgmt::V2018_06_01::LocationBasedPerformanceTier
    CheckNameAvailability = Azure::MariaDB::Mgmt::V2018_06_01::CheckNameAvailability
    ServerSecurityAlertPolicies = Azure::MariaDB::Mgmt::V2018_06_01::ServerSecurityAlertPolicies
    Operations = Azure::MariaDB::Mgmt::V2018_06_01::Operations

    module Models
      VirtualNetworkRuleListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::VirtualNetworkRuleListResult
      FirewallRuleListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::FirewallRuleListResult
      NameAvailabilityRequest = Azure::MariaDB::Mgmt::V2018_06_01::Models::NameAvailabilityRequest
      StorageProfile = Azure::MariaDB::Mgmt::V2018_06_01::Models::StorageProfile
      ProxyResource = Azure::MariaDB::Mgmt::V2018_06_01::Models::ProxyResource
      NameAvailability = Azure::MariaDB::Mgmt::V2018_06_01::Models::NameAvailability
      PerformanceTierListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::PerformanceTierListResult
      Operation = Azure::MariaDB::Mgmt::V2018_06_01::Models::Operation
      PerformanceTierServiceLevelObjectives = Azure::MariaDB::Mgmt::V2018_06_01::Models::PerformanceTierServiceLevelObjectives
      ServerPropertiesForCreate = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForCreate
      LogFileListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::LogFileListResult
      OperationListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::OperationListResult
      ServerUpdateParameters = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerUpdateParameters
      PerformanceTierProperties = Azure::MariaDB::Mgmt::V2018_06_01::Models::PerformanceTierProperties
      DatabaseListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::DatabaseListResult
      ServerForCreate = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerForCreate
      Sku = Azure::MariaDB::Mgmt::V2018_06_01::Models::Sku
      ConfigurationListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::ConfigurationListResult
      ServerListResult = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerListResult
      OperationDisplay = Azure::MariaDB::Mgmt::V2018_06_01::Models::OperationDisplay
      TrackedResource = Azure::MariaDB::Mgmt::V2018_06_01::Models::TrackedResource
      ServerPropertiesForDefaultCreate = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForDefaultCreate
      ServerPropertiesForRestore = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForRestore
      ServerPropertiesForGeoRestore = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForGeoRestore
      ServerPropertiesForReplica = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForReplica
      Server = Azure::MariaDB::Mgmt::V2018_06_01::Models::Server
      FirewallRule = Azure::MariaDB::Mgmt::V2018_06_01::Models::FirewallRule
      VirtualNetworkRule = Azure::MariaDB::Mgmt::V2018_06_01::Models::VirtualNetworkRule
      Database = Azure::MariaDB::Mgmt::V2018_06_01::Models::Database
      Configuration = Azure::MariaDB::Mgmt::V2018_06_01::Models::Configuration
      LogFile = Azure::MariaDB::Mgmt::V2018_06_01::Models::LogFile
      ServerSecurityAlertPolicy = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerSecurityAlertPolicy
      ServerVersion = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerVersion
      SslEnforcementEnum = Azure::MariaDB::Mgmt::V2018_06_01::Models::SslEnforcementEnum
      ServerState = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerState
      GeoRedundantBackup = Azure::MariaDB::Mgmt::V2018_06_01::Models::GeoRedundantBackup
      StorageAutogrow = Azure::MariaDB::Mgmt::V2018_06_01::Models::StorageAutogrow
      SkuTier = Azure::MariaDB::Mgmt::V2018_06_01::Models::SkuTier
      VirtualNetworkRuleState = Azure::MariaDB::Mgmt::V2018_06_01::Models::VirtualNetworkRuleState
      OperationOrigin = Azure::MariaDB::Mgmt::V2018_06_01::Models::OperationOrigin
      ServerSecurityAlertPolicyState = Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerSecurityAlertPolicyState
    end

    #
    # MariaDBManagementClass
    #
    class MariaDBManagementClass
      attr_reader :servers, :replicas, :firewall_rules, :virtual_network_rules, :databases, :configurations, :log_files, :location_based_performance_tier, :check_name_availability, :server_security_alert_policies, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::MariaDB::Mgmt::V2018_06_01::MariaDBManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @servers = @client_0.servers
        @replicas = @client_0.replicas
        @firewall_rules = @client_0.firewall_rules
        @virtual_network_rules = @client_0.virtual_network_rules
        @databases = @client_0.databases
        @configurations = @client_0.configurations
        @log_files = @client_0.log_files
        @location_based_performance_tier = @client_0.location_based_performance_tier
        @check_name_availability = @client_0.check_name_availability
        @server_security_alert_policies = @client_0.server_security_alert_policies
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/MariaDB/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def virtual_network_rule_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::VirtualNetworkRuleListResult
      end
      def firewall_rule_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::FirewallRuleListResult
      end
      def name_availability_request
        Azure::MariaDB::Mgmt::V2018_06_01::Models::NameAvailabilityRequest
      end
      def storage_profile
        Azure::MariaDB::Mgmt::V2018_06_01::Models::StorageProfile
      end
      def proxy_resource
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ProxyResource
      end
      def name_availability
        Azure::MariaDB::Mgmt::V2018_06_01::Models::NameAvailability
      end
      def performance_tier_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::PerformanceTierListResult
      end
      def operation
        Azure::MariaDB::Mgmt::V2018_06_01::Models::Operation
      end
      def performance_tier_service_level_objectives
        Azure::MariaDB::Mgmt::V2018_06_01::Models::PerformanceTierServiceLevelObjectives
      end
      def server_properties_for_create
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForCreate
      end
      def log_file_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::LogFileListResult
      end
      def operation_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::OperationListResult
      end
      def server_update_parameters
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerUpdateParameters
      end
      def performance_tier_properties
        Azure::MariaDB::Mgmt::V2018_06_01::Models::PerformanceTierProperties
      end
      def database_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::DatabaseListResult
      end
      def server_for_create
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerForCreate
      end
      def sku
        Azure::MariaDB::Mgmt::V2018_06_01::Models::Sku
      end
      def configuration_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ConfigurationListResult
      end
      def server_list_result
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerListResult
      end
      def operation_display
        Azure::MariaDB::Mgmt::V2018_06_01::Models::OperationDisplay
      end
      def tracked_resource
        Azure::MariaDB::Mgmt::V2018_06_01::Models::TrackedResource
      end
      def server_properties_for_default_create
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForDefaultCreate
      end
      def server_properties_for_restore
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForRestore
      end
      def server_properties_for_geo_restore
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForGeoRestore
      end
      def server_properties_for_replica
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerPropertiesForReplica
      end
      def server
        Azure::MariaDB::Mgmt::V2018_06_01::Models::Server
      end
      def firewall_rule
        Azure::MariaDB::Mgmt::V2018_06_01::Models::FirewallRule
      end
      def virtual_network_rule
        Azure::MariaDB::Mgmt::V2018_06_01::Models::VirtualNetworkRule
      end
      def database
        Azure::MariaDB::Mgmt::V2018_06_01::Models::Database
      end
      def configuration
        Azure::MariaDB::Mgmt::V2018_06_01::Models::Configuration
      end
      def log_file
        Azure::MariaDB::Mgmt::V2018_06_01::Models::LogFile
      end
      def server_security_alert_policy
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerSecurityAlertPolicy
      end
      def server_version
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerVersion
      end
      def ssl_enforcement_enum
        Azure::MariaDB::Mgmt::V2018_06_01::Models::SslEnforcementEnum
      end
      def server_state
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerState
      end
      def geo_redundant_backup
        Azure::MariaDB::Mgmt::V2018_06_01::Models::GeoRedundantBackup
      end
      def storage_autogrow
        Azure::MariaDB::Mgmt::V2018_06_01::Models::StorageAutogrow
      end
      def sku_tier
        Azure::MariaDB::Mgmt::V2018_06_01::Models::SkuTier
      end
      def virtual_network_rule_state
        Azure::MariaDB::Mgmt::V2018_06_01::Models::VirtualNetworkRuleState
      end
      def operation_origin
        Azure::MariaDB::Mgmt::V2018_06_01::Models::OperationOrigin
      end
      def server_security_alert_policy_state
        Azure::MariaDB::Mgmt::V2018_06_01::Models::ServerSecurityAlertPolicyState
      end
    end
  end
end
