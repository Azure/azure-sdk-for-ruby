# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mysql'

module Azure::Profiles::V2019_07_01
  module Mysql
    module Mgmt
      Servers = Azure::Mysql::Mgmt::V2017_12_01_preview::Servers
      Replicas = Azure::Mysql::Mgmt::V2017_12_01_preview::Replicas
      FirewallRules = Azure::Mysql::Mgmt::V2017_12_01_preview::FirewallRules
      VirtualNetworkRules = Azure::Mysql::Mgmt::V2017_12_01_preview::VirtualNetworkRules
      Databases = Azure::Mysql::Mgmt::V2017_12_01_preview::Databases
      Configurations = Azure::Mysql::Mgmt::V2017_12_01_preview::Configurations
      LogFiles = Azure::Mysql::Mgmt::V2017_12_01_preview::LogFiles
      LocationBasedPerformanceTier = Azure::Mysql::Mgmt::V2017_12_01_preview::LocationBasedPerformanceTier
      CheckNameAvailability = Azure::Mysql::Mgmt::V2017_12_01_preview::CheckNameAvailability
      ServerSecurityAlertPolicies = Azure::Mysql::Mgmt::V2017_12_01_preview::ServerSecurityAlertPolicies
      Operations = Azure::Mysql::Mgmt::V2017_12_01_preview::Operations

      module Models
        VirtualNetworkRuleListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleListResult
        FirewallRuleListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::FirewallRuleListResult
        NameAvailabilityRequest = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::NameAvailabilityRequest
        StorageProfile = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::StorageProfile
        ProxyResource = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ProxyResource
        NameAvailability = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::NameAvailability
        PerformanceTierListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierListResult
        Operation = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Operation
        PerformanceTierServiceLevelObjectives = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierServiceLevelObjectives
        ServerPropertiesForCreate = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForCreate
        LogFileListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::LogFileListResult
        OperationListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::OperationListResult
        ServerUpdateParameters = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerUpdateParameters
        PerformanceTierProperties = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierProperties
        DatabaseListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::DatabaseListResult
        ServerForCreate = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerForCreate
        Sku = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Sku
        ConfigurationListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ConfigurationListResult
        ServerListResult = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerListResult
        OperationDisplay = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::OperationDisplay
        TrackedResource = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::TrackedResource
        ServerPropertiesForDefaultCreate = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForDefaultCreate
        ServerPropertiesForRestore = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForRestore
        ServerPropertiesForGeoRestore = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForGeoRestore
        ServerPropertiesForReplica = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForReplica
        Server = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Server
        FirewallRule = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::FirewallRule
        VirtualNetworkRule = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRule
        Database = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Database
        Configuration = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Configuration
        LogFile = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::LogFile
        ServerSecurityAlertPolicy = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy
        ServerVersion = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerVersion
        SslEnforcementEnum = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::SslEnforcementEnum
        ServerState = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerState
        GeoRedundantBackup = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::GeoRedundantBackup
        StorageAutogrow = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::StorageAutogrow
        SkuTier = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::SkuTier
        VirtualNetworkRuleState = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleState
        OperationOrigin = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::OperationOrigin
        ServerSecurityAlertPolicyState = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicyState
      end

      class MysqlManagementClass
        attr_reader :servers, :replicas, :firewall_rules, :virtual_network_rules, :databases, :configurations, :log_files, :location_based_performance_tier, :check_name_availability, :server_security_alert_policies, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Mysql::Mgmt::V2017_12_01_preview::MySQLManagementClient.new(configurable.credentials, base_url, options)
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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Mysql/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def virtual_network_rule_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleListResult
          end
          def firewall_rule_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::FirewallRuleListResult
          end
          def name_availability_request
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::NameAvailabilityRequest
          end
          def storage_profile
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::StorageProfile
          end
          def proxy_resource
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ProxyResource
          end
          def name_availability
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::NameAvailability
          end
          def performance_tier_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierListResult
          end
          def operation
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Operation
          end
          def performance_tier_service_level_objectives
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierServiceLevelObjectives
          end
          def server_properties_for_create
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForCreate
          end
          def log_file_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::LogFileListResult
          end
          def operation_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::OperationListResult
          end
          def server_update_parameters
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerUpdateParameters
          end
          def performance_tier_properties
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierProperties
          end
          def database_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::DatabaseListResult
          end
          def server_for_create
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerForCreate
          end
          def sku
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Sku
          end
          def configuration_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ConfigurationListResult
          end
          def server_list_result
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerListResult
          end
          def operation_display
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::OperationDisplay
          end
          def tracked_resource
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::TrackedResource
          end
          def server_properties_for_default_create
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForDefaultCreate
          end
          def server_properties_for_restore
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForRestore
          end
          def server_properties_for_geo_restore
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForGeoRestore
          end
          def server_properties_for_replica
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForReplica
          end
          def server
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Server
          end
          def firewall_rule
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::FirewallRule
          end
          def virtual_network_rule
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRule
          end
          def database
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Database
          end
          def configuration
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::Configuration
          end
          def log_file
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::LogFile
          end
          def server_security_alert_policy
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy
          end
          def server_version
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerVersion
          end
          def ssl_enforcement_enum
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::SslEnforcementEnum
          end
          def server_state
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerState
          end
          def geo_redundant_backup
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::GeoRedundantBackup
          end
          def storage_autogrow
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::StorageAutogrow
          end
          def sku_tier
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::SkuTier
          end
          def virtual_network_rule_state
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleState
          end
          def operation_origin
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::OperationOrigin
          end
          def server_security_alert_policy_state
            Azure::Mysql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicyState
          end
        end
      end
    end
  end
end
