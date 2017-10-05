# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'


module Azure::Profiles::Management::Profile_Latest
  module Web
    AppServiceEnvironments = Azure::ARM::Web::Api_2016_09_01::AppServiceEnvironments
    AppServicePlans = Azure::ARM::Web::Api_2016_09_01::AppServicePlans

    module Models
      RampUpRule = Azure::ARM::Web::Api_2016_09_01::Models::RampUpRule
      Experiments = Azure::ARM::Web::Api_2016_09_01::Models::Experiments
      AddressResponse = Azure::ARM::Web::Api_2016_09_01::Models::AddressResponse
      HandlerMapping = Azure::ARM::Web::Api_2016_09_01::Models::HandlerMapping
      VirtualNetworkProfile = Azure::ARM::Web::Api_2016_09_01::Models::VirtualNetworkProfile
      HostNameSslState = Azure::ARM::Web::Api_2016_09_01::Models::HostNameSslState
      StampCapacity = Azure::ARM::Web::Api_2016_09_01::Models::StampCapacity
      HostingEnvironmentDiagnostics = Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentDiagnostics
      NameValuePair = Azure::ARM::Web::Api_2016_09_01::Models::NameValuePair
      IpSecurityRestriction = Azure::ARM::Web::Api_2016_09_01::Models::IpSecurityRestriction
      AppServiceEnvironmentCollection = Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentCollection
      MetricAvailabilily = Azure::ARM::Web::Api_2016_09_01::Models::MetricAvailabilily
      HostingEnvironmentProfile = Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentProfile
      Capability = Azure::ARM::Web::Api_2016_09_01::Models::Capability
      Operation = Azure::ARM::Web::Api_2016_09_01::Models::Operation
      UsageCollection = Azure::ARM::Web::Api_2016_09_01::Models::UsageCollection
      AppServicePlanCollection = Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlanCollection
      ProxyOnlyResource = Azure::ARM::Web::Api_2016_09_01::Models::ProxyOnlyResource
      AutoHealActions = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActions
      ResourceCollection = Azure::ARM::Web::Api_2016_09_01::Models::ResourceCollection
      StatusCodesBasedTrigger = Azure::ARM::Web::Api_2016_09_01::Models::StatusCodesBasedTrigger
      Resource = Azure::ARM::Web::Api_2016_09_01::Models::Resource
      AutoHealTriggers = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealTriggers
      ResourceMetricName = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricName
      CloningInfo = Azure::ARM::Web::Api_2016_09_01::Models::CloningInfo
      ResourceMetricProperty = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricProperty
      CorsSettings = Azure::ARM::Web::Api_2016_09_01::Models::CorsSettings
      ResourceMetricValue = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricValue
      CsmUsageQuota = Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuota
      ResourceMetric = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetric
      ErrorEntity = Azure::ARM::Web::Api_2016_09_01::Models::ErrorEntity
      ResourceMetricAvailability = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricAvailability
      ApiDefinitionInfo = Azure::ARM::Web::Api_2016_09_01::Models::ApiDefinitionInfo
      ResourceMetricCollection = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricCollection
      NetworkAccessControlEntry = Azure::ARM::Web::Api_2016_09_01::Models::NetworkAccessControlEntry
      HybridConnectionCollection = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionCollection
      StampCapacityCollection = Azure::ARM::Web::Api_2016_09_01::Models::StampCapacityCollection
      SkuCapacity = Azure::ARM::Web::Api_2016_09_01::Models::SkuCapacity
      ResourceMetricDefinitionCollection = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinitionCollection
      AutoHealCustomAction = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealCustomAction
      SiteMachineKey = Azure::ARM::Web::Api_2016_09_01::Models::SiteMachineKey
      SlowRequestsBasedTrigger = Azure::ARM::Web::Api_2016_09_01::Models::SlowRequestsBasedTrigger
      VirtualDirectory = Azure::ARM::Web::Api_2016_09_01::Models::VirtualDirectory
      ConnStringInfo = Azure::ARM::Web::Api_2016_09_01::Models::ConnStringInfo
      VirtualApplication = Azure::ARM::Web::Api_2016_09_01::Models::VirtualApplication
      CsmUsageQuotaCollection = Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuotaCollection
      SiteLimits = Azure::ARM::Web::Api_2016_09_01::Models::SiteLimits
      WorkerPool = Azure::ARM::Web::Api_2016_09_01::Models::WorkerPool
      SiteConfig = Azure::ARM::Web::Api_2016_09_01::Models::SiteConfig
      SkuDescription = Azure::ARM::Web::Api_2016_09_01::Models::SkuDescription
      SnapshotRecoveryTarget = Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryTarget
      AutoHealRules = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealRules
      WorkerPoolCollection = Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolCollection
      VirtualIPMapping = Azure::ARM::Web::Api_2016_09_01::Models::VirtualIPMapping
      SlotSwapStatus = Azure::ARM::Web::Api_2016_09_01::Models::SlotSwapStatus
      RequestsBasedTrigger = Azure::ARM::Web::Api_2016_09_01::Models::RequestsBasedTrigger
      WebAppCollection = Azure::ARM::Web::Api_2016_09_01::Models::WebAppCollection
      AppServiceEnvironment = Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironment
      SkuInfo = Azure::ARM::Web::Api_2016_09_01::Models::SkuInfo
      LocalizableString = Azure::ARM::Web::Api_2016_09_01::Models::LocalizableString
      SkuInfoCollection = Azure::ARM::Web::Api_2016_09_01::Models::SkuInfoCollection
      AppServiceEnvironmentResource = Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentResource
      AppServicePlan = Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlan
      MetricDefinition = Azure::ARM::Web::Api_2016_09_01::Models::MetricDefinition
      PushSettings = Azure::ARM::Web::Api_2016_09_01::Models::PushSettings
      ResourceMetricDefinition = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinition
      SnapshotRecoveryRequest = Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryRequest
      Site = Azure::ARM::Web::Api_2016_09_01::Models::Site
      Usage = Azure::ARM::Web::Api_2016_09_01::Models::Usage
      WorkerPoolResource = Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolResource
      HybridConnection = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnection
      HybridConnectionKey = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionKey
      HybridConnectionLimits = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionLimits
      VnetGateway = Azure::ARM::Web::Api_2016_09_01::Models::VnetGateway
      VnetRoute = Azure::ARM::Web::Api_2016_09_01::Models::VnetRoute
      VnetInfo = Azure::ARM::Web::Api_2016_09_01::Models::VnetInfo
      ProvisioningState = Azure::ARM::Web::Api_2016_09_01::Models::ProvisioningState
      HostingEnvironmentStatus = Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentStatus
      InternalLoadBalancingMode = Azure::ARM::Web::Api_2016_09_01::Models::InternalLoadBalancingMode
      ComputeModeOptions = Azure::ARM::Web::Api_2016_09_01::Models::ComputeModeOptions
      WorkerSizeOptions = Azure::ARM::Web::Api_2016_09_01::Models::WorkerSizeOptions
      AccessControlEntryAction = Azure::ARM::Web::Api_2016_09_01::Models::AccessControlEntryAction
      StatusOptions = Azure::ARM::Web::Api_2016_09_01::Models::StatusOptions
      AutoHealActionType = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActionType
      ConnectionStringType = Azure::ARM::Web::Api_2016_09_01::Models::ConnectionStringType
      SslState = Azure::ARM::Web::Api_2016_09_01::Models::SslState
      HostType = Azure::ARM::Web::Api_2016_09_01::Models::HostType
      OperationStatus = Azure::ARM::Web::Api_2016_09_01::Models::OperationStatus
      UsageState = Azure::ARM::Web::Api_2016_09_01::Models::UsageState
      SiteAvailabilityState = Azure::ARM::Web::Api_2016_09_01::Models::SiteAvailabilityState
      ScmType = Azure::ARM::Web::Api_2016_09_01::Models::ScmType
      ManagedPipelineMode = Azure::ARM::Web::Api_2016_09_01::Models::ManagedPipelineMode
      SiteLoadBalancing = Azure::ARM::Web::Api_2016_09_01::Models::SiteLoadBalancing
      RouteType = Azure::ARM::Web::Api_2016_09_01::Models::RouteType
    end

    #
    # Web
    #
    class WebClass
      attr_accessor :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Web::Api_2016_09_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.app_service_environments = Azure::ARM::Web::Api_2016_09_01::AppServiceEnvironments.new(client)
        self.app_service_plans = Azure::ARM::Web::Api_2016_09_01::AppServicePlans.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-09-01'
            client = Azure::ARM::Web::Api_2016_09_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def ramp_up_rule
          Azure::ARM::Web::Api_2016_09_01::Models::RampUpRule
        end
        def experiments
          Azure::ARM::Web::Api_2016_09_01::Models::Experiments
        end
        def address_response
          Azure::ARM::Web::Api_2016_09_01::Models::AddressResponse
        end
        def handler_mapping
          Azure::ARM::Web::Api_2016_09_01::Models::HandlerMapping
        end
        def virtual_network_profile
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualNetworkProfile
        end
        def host_name_ssl_state
          Azure::ARM::Web::Api_2016_09_01::Models::HostNameSslState
        end
        def stamp_capacity
          Azure::ARM::Web::Api_2016_09_01::Models::StampCapacity
        end
        def hosting_environment_diagnostics
          Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentDiagnostics
        end
        def name_value_pair
          Azure::ARM::Web::Api_2016_09_01::Models::NameValuePair
        end
        def ip_security_restriction
          Azure::ARM::Web::Api_2016_09_01::Models::IpSecurityRestriction
        end
        def app_service_environment_collection
          Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentCollection
        end
        def metric_availabilily
          Azure::ARM::Web::Api_2016_09_01::Models::MetricAvailabilily
        end
        def hosting_environment_profile
          Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentProfile
        end
        def capability
          Azure::ARM::Web::Api_2016_09_01::Models::Capability
        end
        def operation
          Azure::ARM::Web::Api_2016_09_01::Models::Operation
        end
        def usage_collection
          Azure::ARM::Web::Api_2016_09_01::Models::UsageCollection
        end
        def app_service_plan_collection
          Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlanCollection
        end
        def proxy_only_resource
          Azure::ARM::Web::Api_2016_09_01::Models::ProxyOnlyResource
        end
        def auto_heal_actions
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActions
        end
        def resource_collection
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceCollection
        end
        def status_codes_based_trigger
          Azure::ARM::Web::Api_2016_09_01::Models::StatusCodesBasedTrigger
        end
        def resource
          Azure::ARM::Web::Api_2016_09_01::Models::Resource
        end
        def auto_heal_triggers
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealTriggers
        end
        def resource_metric_name
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricName
        end
        def cloning_info
          Azure::ARM::Web::Api_2016_09_01::Models::CloningInfo
        end
        def resource_metric_property
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricProperty
        end
        def cors_settings
          Azure::ARM::Web::Api_2016_09_01::Models::CorsSettings
        end
        def resource_metric_value
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricValue
        end
        def csm_usage_quota
          Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuota
        end
        def resource_metric
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetric
        end
        def error_entity
          Azure::ARM::Web::Api_2016_09_01::Models::ErrorEntity
        end
        def resource_metric_availability
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricAvailability
        end
        def api_definition_info
          Azure::ARM::Web::Api_2016_09_01::Models::ApiDefinitionInfo
        end
        def resource_metric_collection
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricCollection
        end
        def network_access_control_entry
          Azure::ARM::Web::Api_2016_09_01::Models::NetworkAccessControlEntry
        end
        def hybrid_connection_collection
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionCollection
        end
        def stamp_capacity_collection
          Azure::ARM::Web::Api_2016_09_01::Models::StampCapacityCollection
        end
        def sku_capacity
          Azure::ARM::Web::Api_2016_09_01::Models::SkuCapacity
        end
        def resource_metric_definition_collection
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinitionCollection
        end
        def auto_heal_custom_action
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealCustomAction
        end
        def site_machine_key
          Azure::ARM::Web::Api_2016_09_01::Models::SiteMachineKey
        end
        def slow_requests_based_trigger
          Azure::ARM::Web::Api_2016_09_01::Models::SlowRequestsBasedTrigger
        end
        def virtual_directory
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualDirectory
        end
        def conn_string_info
          Azure::ARM::Web::Api_2016_09_01::Models::ConnStringInfo
        end
        def virtual_application
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualApplication
        end
        def csm_usage_quota_collection
          Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuotaCollection
        end
        def site_limits
          Azure::ARM::Web::Api_2016_09_01::Models::SiteLimits
        end
        def worker_pool
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerPool
        end
        def site_config
          Azure::ARM::Web::Api_2016_09_01::Models::SiteConfig
        end
        def sku_description
          Azure::ARM::Web::Api_2016_09_01::Models::SkuDescription
        end
        def snapshot_recovery_target
          Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryTarget
        end
        def auto_heal_rules
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealRules
        end
        def worker_pool_collection
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolCollection
        end
        def virtual_ipmapping
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualIPMapping
        end
        def slot_swap_status
          Azure::ARM::Web::Api_2016_09_01::Models::SlotSwapStatus
        end
        def requests_based_trigger
          Azure::ARM::Web::Api_2016_09_01::Models::RequestsBasedTrigger
        end
        def web_app_collection
          Azure::ARM::Web::Api_2016_09_01::Models::WebAppCollection
        end
        def app_service_environment
          Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironment
        end
        def sku_info
          Azure::ARM::Web::Api_2016_09_01::Models::SkuInfo
        end
        def localizable_string
          Azure::ARM::Web::Api_2016_09_01::Models::LocalizableString
        end
        def sku_info_collection
          Azure::ARM::Web::Api_2016_09_01::Models::SkuInfoCollection
        end
        def app_service_environment_resource
          Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentResource
        end
        def app_service_plan
          Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlan
        end
        def metric_definition
          Azure::ARM::Web::Api_2016_09_01::Models::MetricDefinition
        end
        def push_settings
          Azure::ARM::Web::Api_2016_09_01::Models::PushSettings
        end
        def resource_metric_definition
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinition
        end
        def snapshot_recovery_request
          Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryRequest
        end
        def site
          Azure::ARM::Web::Api_2016_09_01::Models::Site
        end
        def usage
          Azure::ARM::Web::Api_2016_09_01::Models::Usage
        end
        def worker_pool_resource
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolResource
        end
        def hybrid_connection
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnection
        end
        def hybrid_connection_key
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionKey
        end
        def hybrid_connection_limits
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionLimits
        end
        def vnet_gateway
          Azure::ARM::Web::Api_2016_09_01::Models::VnetGateway
        end
        def vnet_route
          Azure::ARM::Web::Api_2016_09_01::Models::VnetRoute
        end
        def vnet_info
          Azure::ARM::Web::Api_2016_09_01::Models::VnetInfo
        end
        def provisioning_state
          Azure::ARM::Web::Api_2016_09_01::Models::ProvisioningState
        end
        def hosting_environment_status
          Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentStatus
        end
        def internal_load_balancing_mode
          Azure::ARM::Web::Api_2016_09_01::Models::InternalLoadBalancingMode
        end
        def compute_mode_options
          Azure::ARM::Web::Api_2016_09_01::Models::ComputeModeOptions
        end
        def worker_size_options
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerSizeOptions
        end
        def access_control_entry_action
          Azure::ARM::Web::Api_2016_09_01::Models::AccessControlEntryAction
        end
        def status_options
          Azure::ARM::Web::Api_2016_09_01::Models::StatusOptions
        end
        def auto_heal_action_type
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActionType
        end
        def connection_string_type
          Azure::ARM::Web::Api_2016_09_01::Models::ConnectionStringType
        end
        def ssl_state
          Azure::ARM::Web::Api_2016_09_01::Models::SslState
        end
        def host_type
          Azure::ARM::Web::Api_2016_09_01::Models::HostType
        end
        def operation_status
          Azure::ARM::Web::Api_2016_09_01::Models::OperationStatus
        end
        def usage_state
          Azure::ARM::Web::Api_2016_09_01::Models::UsageState
        end
        def site_availability_state
          Azure::ARM::Web::Api_2016_09_01::Models::SiteAvailabilityState
        end
        def scm_type
          Azure::ARM::Web::Api_2016_09_01::Models::ScmType
        end
        def managed_pipeline_mode
          Azure::ARM::Web::Api_2016_09_01::Models::ManagedPipelineMode
        end
        def site_load_balancing
          Azure::ARM::Web::Api_2016_09_01::Models::SiteLoadBalancing
        end
        def route_type
          Azure::ARM::Web::Api_2016_09_01::Models::RouteType
        end
      end
    end
  end
end
