# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_postgresql'

module Azure::Profiles::V2019_07_01
  module Postgresql
    module Mgmt
      Servers = Azure::Postgresql::Mgmt::V2017_12_01_preview::Servers
      Replicas = Azure::Postgresql::Mgmt::V2017_12_01_preview::Replicas
      FirewallRules = Azure::Postgresql::Mgmt::V2017_12_01_preview::FirewallRules
      VirtualNetworkRules = Azure::Postgresql::Mgmt::V2017_12_01_preview::VirtualNetworkRules
      Databases = Azure::Postgresql::Mgmt::V2017_12_01_preview::Databases
      Configurations = Azure::Postgresql::Mgmt::V2017_12_01_preview::Configurations
      LogFiles = Azure::Postgresql::Mgmt::V2017_12_01_preview::LogFiles
      LocationBasedPerformanceTier = Azure::Postgresql::Mgmt::V2017_12_01_preview::LocationBasedPerformanceTier
      CheckNameAvailability = Azure::Postgresql::Mgmt::V2017_12_01_preview::CheckNameAvailability
      ServerSecurityAlertPolicies = Azure::Postgresql::Mgmt::V2017_12_01_preview::ServerSecurityAlertPolicies
      Operations = Azure::Postgresql::Mgmt::V2017_12_01_preview::Operations

      module Models
        VirtualNetworkRuleListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleListResult
        FirewallRuleListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::FirewallRuleListResult
        NameAvailabilityRequest = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::NameAvailabilityRequest
        StorageProfile = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::StorageProfile
        ProxyResource = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ProxyResource
        NameAvailability = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::NameAvailability
        PerformanceTierListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::PerformanceTierListResult
        Operation = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Operation
        PerformanceTierServiceLevelObjectives = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::PerformanceTierServiceLevelObjectives
        ServerPropertiesForCreate = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForCreate
        LogFileListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::LogFileListResult
        OperationListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::OperationListResult
        ServerUpdateParameters = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerUpdateParameters
        PerformanceTierProperties = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::PerformanceTierProperties
        DatabaseListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::DatabaseListResult
        ServerForCreate = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerForCreate
        Sku = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Sku
        ConfigurationListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ConfigurationListResult
        ServerListResult = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerListResult
        OperationDisplay = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::OperationDisplay
        TrackedResource = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::TrackedResource
        ServerPropertiesForDefaultCreate = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForDefaultCreate
        ServerPropertiesForRestore = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForRestore
        ServerPropertiesForGeoRestore = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForGeoRestore
        ServerPropertiesForReplica = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForReplica
        Server = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Server
        FirewallRule = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::FirewallRule
        VirtualNetworkRule = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRule
        Database = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Database
        Configuration = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Configuration
        LogFile = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::LogFile
        ServerSecurityAlertPolicy = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy
        ServerVersion = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerVersion
        SslEnforcementEnum = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::SslEnforcementEnum
        ServerState = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerState
        GeoRedundantBackup = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::GeoRedundantBackup
        StorageAutogrow = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::StorageAutogrow
        SkuTier = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::SkuTier
        VirtualNetworkRuleState = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleState
        OperationOrigin = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::OperationOrigin
        ServerSecurityAlertPolicyState = Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicyState
      end

      class PostgresqlManagementClass
        attr_reader :servers, :replicas, :firewall_rules, :virtual_network_rules, :databases, :configurations, :log_files, :location_based_performance_tier, :check_name_availability, :server_security_alert_policies, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Postgresql::Mgmt::V2017_12_01_preview::PostgreSQLManagementClient.new(configurable.credentials, base_url, options)
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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Postgresql/Mgmt"
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
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleListResult
          end
          def firewall_rule_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::FirewallRuleListResult
          end
          def name_availability_request
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::NameAvailabilityRequest
          end
          def storage_profile
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::StorageProfile
          end
          def proxy_resource
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ProxyResource
          end
          def name_availability
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::NameAvailability
          end
          def performance_tier_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::PerformanceTierListResult
          end
          def operation
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Operation
          end
          def performance_tier_service_level_objectives
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::PerformanceTierServiceLevelObjectives
          end
          def server_properties_for_create
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForCreate
          end
          def log_file_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::LogFileListResult
          end
          def operation_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::OperationListResult
          end
          def server_update_parameters
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerUpdateParameters
          end
          def performance_tier_properties
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::PerformanceTierProperties
          end
          def database_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::DatabaseListResult
          end
          def server_for_create
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerForCreate
          end
          def sku
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Sku
          end
          def configuration_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ConfigurationListResult
          end
          def server_list_result
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerListResult
          end
          def operation_display
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::OperationDisplay
          end
          def tracked_resource
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::TrackedResource
          end
          def server_properties_for_default_create
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForDefaultCreate
          end
          def server_properties_for_restore
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForRestore
          end
          def server_properties_for_geo_restore
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForGeoRestore
          end
          def server_properties_for_replica
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerPropertiesForReplica
          end
          def server
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Server
          end
          def firewall_rule
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::FirewallRule
          end
          def virtual_network_rule
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRule
          end
          def database
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Database
          end
          def configuration
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::Configuration
          end
          def log_file
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::LogFile
          end
          def server_security_alert_policy
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicy
          end
          def server_version
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerVersion
          end
          def ssl_enforcement_enum
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::SslEnforcementEnum
          end
          def server_state
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerState
          end
          def geo_redundant_backup
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::GeoRedundantBackup
          end
          def storage_autogrow
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::StorageAutogrow
          end
          def sku_tier
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::SkuTier
          end
          def virtual_network_rule_state
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::VirtualNetworkRuleState
          end
          def operation_origin
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::OperationOrigin
          end
          def server_security_alert_policy_state
            Azure::Postgresql::Mgmt::V2017_12_01_preview::Models::ServerSecurityAlertPolicyState
          end
        end
      end
    end
  end
end
