# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mysql'

module Azure::Mysql::Profiles::Latest
  module Mgmt
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
    Advisors = Azure::Mysql::Mgmt::V2018_06_01::Advisors
    RecommendedActions = Azure::Mysql::Mgmt::V2018_06_01::RecommendedActions
    LocationBasedRecommendedActionSessionsOperationStatus = Azure::Mysql::Mgmt::V2018_06_01::LocationBasedRecommendedActionSessionsOperationStatus
    LocationBasedRecommendedActionSessionsResult = Azure::Mysql::Mgmt::V2018_06_01::LocationBasedRecommendedActionSessionsResult
    PrivateEndpointConnections = Azure::Mysql::Mgmt::V2018_06_01::PrivateEndpointConnections
    PrivateLinkResources = Azure::Mysql::Mgmt::V2018_06_01::PrivateLinkResources
    ServerKeys = Azure::Mysql::Mgmt::V2020_01_01::ServerKeys
    Servers = Azure::Mysql::Mgmt::V2020_01_01::Servers

    module Models
      VirtualNetworkRuleListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::VirtualNetworkRuleListResult
      FirewallRuleListResult = Azure::Mysql::Mgmt::V2017_12_01::Models::FirewallRuleListResult
      NameAvailabilityRequest = Azure::Mysql::Mgmt::V2017_12_01::Models::NameAvailabilityRequest
      StorageProfile = Azure::Mysql::Mgmt::V2017_12_01::Models::StorageProfile
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
      PrivateEndpointProperty = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateEndpointProperty
      PrivateLinkServiceConnectionStateProperty = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkServiceConnectionStateProperty
      AdvisorsResultList = Azure::Mysql::Mgmt::V2018_06_01::Models::AdvisorsResultList
      RecommendedActionSessionsOperationStatus = Azure::Mysql::Mgmt::V2018_06_01::Models::RecommendedActionSessionsOperationStatus
      TagsObject = Azure::Mysql::Mgmt::V2018_06_01::Models::TagsObject
      PrivateLinkResourceProperties = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkResourceProperties
      PrivateLinkResourceListResult = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkResourceListResult
      RecommendationActionsResultList = Azure::Mysql::Mgmt::V2018_06_01::Models::RecommendationActionsResultList
      PrivateEndpointConnectionListResult = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateEndpointConnectionListResult
      Advisor = Azure::Mysql::Mgmt::V2018_06_01::Models::Advisor
      RecommendationAction = Azure::Mysql::Mgmt::V2018_06_01::Models::RecommendationAction
      PrivateEndpointConnection = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateEndpointConnection
      PrivateLinkResource = Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkResource
      ErrorResponse = Azure::Mysql::Mgmt::V2020_01_01::Models::ErrorResponse
      ServerKeyListResult = Azure::Mysql::Mgmt::V2020_01_01::Models::ServerKeyListResult
      Resource = Azure::Mysql::Mgmt::V2020_01_01::Models::Resource
      ErrorAdditionalInfo = Azure::Mysql::Mgmt::V2020_01_01::Models::ErrorAdditionalInfo
      ServerUpgradeParameters = Azure::Mysql::Mgmt::V2020_01_01::Models::ServerUpgradeParameters
      ServerKey = Azure::Mysql::Mgmt::V2020_01_01::Models::ServerKey
      TrackedResource = Azure::Mysql::Mgmt::V2020_01_01::Models::TrackedResource
      AzureEntityResource = Azure::Mysql::Mgmt::V2020_01_01::Models::AzureEntityResource
      ProxyResource = Azure::Mysql::Mgmt::V2020_01_01::Models::ProxyResource
    end

    #
    # MysqlManagementClass
    #
    class MysqlManagementClass
      attr_reader :replicas, :firewall_rules, :virtual_network_rules, :databases, :configurations, :log_files, :location_based_performance_tier, :check_name_availability, :server_security_alert_policies, :operations, :advisors, :recommended_actions, :location_based_recommended_action_sessions_operation_status, :location_based_recommended_action_sessions_result, :private_endpoint_connections, :private_link_resources, :server_keys, :servers, :configurable, :base_url, :options, :model_classes

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

        @client_1 = Azure::Mysql::Mgmt::V2018_06_01::MySQLManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @advisors = @client_1.advisors
        @recommended_actions = @client_1.recommended_actions
        @location_based_recommended_action_sessions_operation_status = @client_1.location_based_recommended_action_sessions_operation_status
        @location_based_recommended_action_sessions_result = @client_1.location_based_recommended_action_sessions_result
        @private_endpoint_connections = @client_1.private_endpoint_connections
        @private_link_resources = @client_1.private_link_resources

        @client_2 = Azure::Mysql::Mgmt::V2020_01_01::MySQLManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @server_keys = @client_2.server_keys
        @servers = @client_2.servers

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Mysql/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_2.respond_to?method
          @client_2.send(method, *args)
        elsif @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
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
      def private_endpoint_property
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateEndpointProperty
      end
      def private_link_service_connection_state_property
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkServiceConnectionStateProperty
      end
      def advisors_result_list
        Azure::Mysql::Mgmt::V2018_06_01::Models::AdvisorsResultList
      end
      def recommended_action_sessions_operation_status
        Azure::Mysql::Mgmt::V2018_06_01::Models::RecommendedActionSessionsOperationStatus
      end
      def tags_object
        Azure::Mysql::Mgmt::V2018_06_01::Models::TagsObject
      end
      def private_link_resource_properties
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkResourceProperties
      end
      def private_link_resource_list_result
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkResourceListResult
      end
      def recommendation_actions_result_list
        Azure::Mysql::Mgmt::V2018_06_01::Models::RecommendationActionsResultList
      end
      def private_endpoint_connection_list_result
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateEndpointConnectionListResult
      end
      def advisor
        Azure::Mysql::Mgmt::V2018_06_01::Models::Advisor
      end
      def recommendation_action
        Azure::Mysql::Mgmt::V2018_06_01::Models::RecommendationAction
      end
      def private_endpoint_connection
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateEndpointConnection
      end
      def private_link_resource
        Azure::Mysql::Mgmt::V2018_06_01::Models::PrivateLinkResource
      end
      def error_response
        Azure::Mysql::Mgmt::V2020_01_01::Models::ErrorResponse
      end
      def server_key_list_result
        Azure::Mysql::Mgmt::V2020_01_01::Models::ServerKeyListResult
      end
      def resource
        Azure::Mysql::Mgmt::V2020_01_01::Models::Resource
      end
      def error_additional_info
        Azure::Mysql::Mgmt::V2020_01_01::Models::ErrorAdditionalInfo
      end
      def server_upgrade_parameters
        Azure::Mysql::Mgmt::V2020_01_01::Models::ServerUpgradeParameters
      end
      def server_key
        Azure::Mysql::Mgmt::V2020_01_01::Models::ServerKey
      end
      def tracked_resource
        Azure::Mysql::Mgmt::V2020_01_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Mysql::Mgmt::V2020_01_01::Models::AzureEntityResource
      end
      def proxy_resource
        Azure::Mysql::Mgmt::V2020_01_01::Models::ProxyResource
      end
    end
  end
end
