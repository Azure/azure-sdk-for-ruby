# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mysql'

module Azure::Mysql::Profiles::Latest
  module Mgmt
    Servers = Azure::Mysql::Mgmt::V2017_12_01::Servers
    Replicas = Azure::Mysql::Mgmt::V2017_12_01::Replicas
    FirewallRules = Azure::Mysql::Mgmt::V2017_12_01::FirewallRules
    VirtualNetworkRules = Azure::Mysql::Mgmt::V2017_12_01::VirtualNetworkRules
    Databases = Azure::Mysql::Mgmt::V2017_12_01::Databases
    Configurations = Azure::Mysql::Mgmt::V2017_12_01::Configurations
    LogFiles = Azure::Mysql::Mgmt::V2017_12_01::LogFiles
    LocationBasedPerformanceTier = Azure::Mysql::Mgmt::V2017_12_01::LocationBasedPerformanceTier
    CheckNameAvailability = Azure::Mysql::Mgmt::V2017_12_01::CheckNameAvailability
    ServerSecurityAlertPolicies = Azure::Mysql::Mgmt::V2017_12_01::ServerSecurityAlertPolicies
    Operations = Azure::Mysql::Mgmt::V2017_12_01::Operations

    module Models
      VirtualNetworkRuleListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRuleListResult
      FirewallRuleListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::FirewallRuleListResult
      NameAvailabilityRequest = Azure::Mysql::Mgmt::V2017_12_01::Models::NameAvailabilityRequest
      StorageProfile = Azure::Mysql::Mgmt::V2017_12_01::Models::StorageProfile
      ProxyResource = Azure::Mysql::Mgmt::V2017_12_01::Models::ProxyResource
      NameAvailability = Azure::Mysql::Mgmt::V2017_12_01::Models::NameAvailability
      PerformanceTierListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::PerformanceTierListResult
      Operation = Azure::Mysql::Mgmt::V2017_12_01::Models::Operation
      PerformanceTierServiceLevelObjectives = Azure::Mysql::Mgmt::V2017_12_01::Models::PerformanceTierServiceLevelObjectives
      ServerPropertiesForCreate = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForCreate
      LogFileListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::LogFileListResult
      OperationListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::OperationListResult
      ServerUpdateParameters = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerUpdateParameters
      PerformanceTierProperties = Azure::Mysql::Mgmt::V2017_12_01::Models::PerformanceTierProperties
      DatabaseListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::DatabaseListResult
      ServerForCreate = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerForCreate
      Sku = Azure::Mysql::Mgmt::V2017_12_01::Models::Sku
      ConfigurationListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::ConfigurationListResult
      ServerListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerListResult
      OperationDisplay = Azure::Mysql::Mgmt::V2017_12_01::Models::OperationDisplay
      TrackedResource = Azure::Mysql::Mgmt::V2017_12_01::Models::TrackedResource
      ServerPropertiesForDefaultCreate = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForDefaultCreate
      ServerPropertiesForRestore = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForRestore
      ServerPropertiesForGeoRestore = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForGeoRestore
      ServerPropertiesForReplica = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForReplica
      Server = Azure::Mysql::Mgmt::V2017_12_01::Models::Server
      FirewallRule = Azure::Mysql::Mgmt::V2017_12_01::Models::FirewallRule
      VirtualNetworkRule = Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRule
      Database = Azure::Mysql::Mgmt::V2017_12_01::Models::Database
      Configuration = Azure::Mysql::Mgmt::V2017_12_01::Models::Configuration
      LogFile = Azure::Mysql::Mgmt::V2017_12_01::Models::LogFile
      ServerSecurityAlertPolicy = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerSecurityAlertPolicy
      ServerVersion = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerVersion
      SslEnforcementEnum = Azure::Mysql::Mgmt::V2017_12_01::Models::SslEnforcementEnum
      ServerState = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerState
      GeoRedundantBackup = Azure::Mysql::Mgmt::V2017_12_01::Models::GeoRedundantBackup
      StorageAutogrow = Azure::Mysql::Mgmt::V2017_12_01::Models::StorageAutogrow
      SkuTier = Azure::Mysql::Mgmt::V2017_12_01::Models::SkuTier
      VirtualNetworkRuleState = Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRuleState
      OperationOrigin = Azure::Mysql::Mgmt::V2017_12_01::Models::OperationOrigin
      ServerSecurityAlertPolicyState = Azure::Mysql::Mgmt::V2017_12_01::Models::ServerSecurityAlertPolicyState
    end

    #
    # MysqlManagementClass
    #
    class MysqlManagementClass
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

        @client_0 = Azure::Mysql::Mgmt::V2017_12_01::MySQLManagementClient.new(configurable.credentials, base_url, options)
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
        profile_information = 'Profiles/Latest/Mysql/Mgmt'
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
        Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRuleListResult
      end
      def firewall_rule_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::FirewallRuleListResult
      end
      def name_availability_request
        Azure::Mysql::Mgmt::V2017_12_01::Models::NameAvailabilityRequest
      end
      def storage_profile
        Azure::Mysql::Mgmt::V2017_12_01::Models::StorageProfile
      end
      def proxy_resource
        Azure::Mysql::Mgmt::V2017_12_01::Models::ProxyResource
      end
      def name_availability
        Azure::Mysql::Mgmt::V2017_12_01::Models::NameAvailability
      end
      def performance_tier_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::PerformanceTierListResult
      end
      def operation
        Azure::Mysql::Mgmt::V2017_12_01::Models::Operation
      end
      def performance_tier_service_level_objectives
        Azure::Mysql::Mgmt::V2017_12_01::Models::PerformanceTierServiceLevelObjectives
      end
      def server_properties_for_create
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForCreate
      end
      def log_file_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::LogFileListResult
      end
      def operation_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::OperationListResult
      end
      def server_update_parameters
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerUpdateParameters
      end
      def performance_tier_properties
        Azure::Mysql::Mgmt::V2017_12_01::Models::PerformanceTierProperties
      end
      def database_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::DatabaseListResult
      end
      def server_for_create
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerForCreate
      end
      def sku
        Azure::Mysql::Mgmt::V2017_12_01::Models::Sku
      end
      def configuration_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::ConfigurationListResult
      end
      def server_list_result
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerListResult
      end
      def operation_display
        Azure::Mysql::Mgmt::V2017_12_01::Models::OperationDisplay
      end
      def tracked_resource
        Azure::Mysql::Mgmt::V2017_12_01::Models::TrackedResource
      end
      def server_properties_for_default_create
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForDefaultCreate
      end
      def server_properties_for_restore
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForRestore
      end
      def server_properties_for_geo_restore
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForGeoRestore
      end
      def server_properties_for_replica
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerPropertiesForReplica
      end
      def server
        Azure::Mysql::Mgmt::V2017_12_01::Models::Server
      end
      def firewall_rule
        Azure::Mysql::Mgmt::V2017_12_01::Models::FirewallRule
      end
      def virtual_network_rule
        Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRule
      end
      def database
        Azure::Mysql::Mgmt::V2017_12_01::Models::Database
      end
      def configuration
        Azure::Mysql::Mgmt::V2017_12_01::Models::Configuration
      end
      def log_file
        Azure::Mysql::Mgmt::V2017_12_01::Models::LogFile
      end
      def server_security_alert_policy
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerSecurityAlertPolicy
      end
      def server_version
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerVersion
      end
      def ssl_enforcement_enum
        Azure::Mysql::Mgmt::V2017_12_01::Models::SslEnforcementEnum
      end
      def server_state
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerState
      end
      def geo_redundant_backup
        Azure::Mysql::Mgmt::V2017_12_01::Models::GeoRedundantBackup
      end
      def storage_autogrow
        Azure::Mysql::Mgmt::V2017_12_01::Models::StorageAutogrow
      end
      def sku_tier
        Azure::Mysql::Mgmt::V2017_12_01::Models::SkuTier
      end
      def virtual_network_rule_state
        Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRuleState
      end
      def operation_origin
        Azure::Mysql::Mgmt::V2017_12_01::Models::OperationOrigin
      end
      def server_security_alert_policy_state
        Azure::Mysql::Mgmt::V2017_12_01::Models::ServerSecurityAlertPolicyState
      end
    end
  end
end
