# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_web'


module Azure::Profiles::WebModule::Management::Profile_2016_08_01
  module Web
    WebApps = Azure::ARM::Web::Api_2016_08_01::WebApps

    module Models
      PerfMonSet = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSet
      ApiDefinitionInfo = Azure::ARM::Web::Api_2016_08_01::Models::ApiDefinitionInfo
      PerfMonResponse = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonResponse
      AzureTableStorageApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::AzureTableStorageApplicationLogsConfig
      PerfMonCounterCollection = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonCounterCollection
      ApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::ApplicationLogsConfig
      HttpLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::HttpLogsConfig
      SlotDifferenceCollection = Azure::ARM::Web::Api_2016_08_01::Models::SlotDifferenceCollection
      RequestsBasedTrigger = Azure::ARM::Web::Api_2016_08_01::Models::RequestsBasedTrigger
      SiteMachineKey = Azure::ARM::Web::Api_2016_08_01::Models::SiteMachineKey
      SlowRequestsBasedTrigger = Azure::ARM::Web::Api_2016_08_01::Models::SlowRequestsBasedTrigger
      SiteExtensionInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfoCollection
      AutoHealRules = Azure::ARM::Web::Api_2016_08_01::Models::AutoHealRules
      IdentifierCollection = Azure::ARM::Web::Api_2016_08_01::Models::IdentifierCollection
      DatabaseBackupSetting = Azure::ARM::Web::Api_2016_08_01::Models::DatabaseBackupSetting
      IpSecurityRestriction = Azure::ARM::Web::Api_2016_08_01::Models::IpSecurityRestriction
      BackupItemCollection = Azure::ARM::Web::Api_2016_08_01::Models::BackupItemCollection
      SiteCloneabilityCriterion = Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneabilityCriterion
      AutoHealTriggers = Azure::ARM::Web::Api_2016_08_01::Models::AutoHealTriggers
      AzureBlobStorageHttpLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageHttpLogsConfig
      ConnStringInfo = Azure::ARM::Web::Api_2016_08_01::Models::ConnStringInfo
      ConnStringValueTypePair = Azure::ARM::Web::Api_2016_08_01::Models::ConnStringValueTypePair
      Resource = Azure::ARM::Web::Api_2016_08_01::Models::Resource
      SnapshotCollection = Azure::ARM::Web::Api_2016_08_01::Models::SnapshotCollection
      BackupSchedule = Azure::ARM::Web::Api_2016_08_01::Models::BackupSchedule
      CorsSettings = Azure::ARM::Web::Api_2016_08_01::Models::CorsSettings
      ResourceMetricName = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricName
      CsmSlotEntity = Azure::ARM::Web::Api_2016_08_01::Models::CsmSlotEntity
      MSDeployLogEntry = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntry
      CsmUsageQuota = Azure::ARM::Web::Api_2016_08_01::Models::CsmUsageQuota
      SiteCloneability = Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneability
      ErrorEntity = Azure::ARM::Web::Api_2016_08_01::Models::ErrorEntity
      SlotSwapStatus = Azure::ARM::Web::Api_2016_08_01::Models::SlotSwapStatus
      ResourceMetricAvailability = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricAvailability
      SiteConfigResourceCollection = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResourceCollection
      EnabledConfig = Azure::ARM::Web::Api_2016_08_01::Models::EnabledConfig
      SnapshotRecoveryTarget = Azure::ARM::Web::Api_2016_08_01::Models::SnapshotRecoveryTarget
      Experiments = Azure::ARM::Web::Api_2016_08_01::Models::Experiments
      NameValuePair = Azure::ARM::Web::Api_2016_08_01::Models::NameValuePair
      ResourceMetric = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetric
      SiteConfig = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfig
      ResourceMetricValue = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricValue
      SiteLimits = Azure::ARM::Web::Api_2016_08_01::Models::SiteLimits
      ResourceMetricProperty = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricProperty
      VirtualApplication = Azure::ARM::Web::Api_2016_08_01::Models::VirtualApplication
      HostNameSslState = Azure::ARM::Web::Api_2016_08_01::Models::HostNameSslState
      VirtualDirectory = Azure::ARM::Web::Api_2016_08_01::Models::VirtualDirectory
      AutoHealActions = Azure::ARM::Web::Api_2016_08_01::Models::AutoHealActions
      Operation = Azure::ARM::Web::Api_2016_08_01::Models::Operation
      CloningInfo = Azure::ARM::Web::Api_2016_08_01::Models::CloningInfo
      PerfMonSample = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSample
      ContinuousWebJobCollection = Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobCollection
      FileSystemApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::FileSystemApplicationLogsConfig
      LocalizableString = Azure::ARM::Web::Api_2016_08_01::Models::LocalizableString
      AzureBlobStorageApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
      ResourceMetricCollection = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricCollection
      AutoHealCustomAction = Azure::ARM::Web::Api_2016_08_01::Models::AutoHealCustomAction
      RampUpRule = Azure::ARM::Web::Api_2016_08_01::Models::RampUpRule
      FunctionEnvelopeCollection = Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelopeCollection
      WebJobCollection = Azure::ARM::Web::Api_2016_08_01::Models::WebJobCollection
      HostNameBindingCollection = Azure::ARM::Web::Api_2016_08_01::Models::HostNameBindingCollection
      WebAppInstanceCollection = Azure::ARM::Web::Api_2016_08_01::Models::WebAppInstanceCollection
      StatusCodesBasedTrigger = Azure::ARM::Web::Api_2016_08_01::Models::StatusCodesBasedTrigger
      WebAppCollection = Azure::ARM::Web::Api_2016_08_01::Models::WebAppCollection
      CsmPublishingProfileOptions = Azure::ARM::Web::Api_2016_08_01::Models::CsmPublishingProfileOptions
      ProcessInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfoCollection
      DeploymentCollection = Azure::ARM::Web::Api_2016_08_01::Models::DeploymentCollection
      ProcessModuleInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfoCollection
      HandlerMapping = Azure::ARM::Web::Api_2016_08_01::Models::HandlerMapping
      ProcessThreadInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfoCollection
      ResourceMetricDefinitionCollection = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricDefinitionCollection
      ProxyOnlyResource = Azure::ARM::Web::Api_2016_08_01::Models::ProxyOnlyResource
      FileSystemHttpLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::FileSystemHttpLogsConfig
      TriggeredWebJobCollection = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobCollection
      CsmUsageQuotaCollection = Azure::ARM::Web::Api_2016_08_01::Models::CsmUsageQuotaCollection
      PublicCertificateCollection = Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateCollection
      HostingEnvironmentProfile = Azure::ARM::Web::Api_2016_08_01::Models::HostingEnvironmentProfile
      TriggeredJobHistoryCollection = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistoryCollection
      BackupItem = Azure::ARM::Web::Api_2016_08_01::Models::BackupItem
      BackupRequest = Azure::ARM::Web::Api_2016_08_01::Models::BackupRequest
      ConnectionStringDictionary = Azure::ARM::Web::Api_2016_08_01::Models::ConnectionStringDictionary
      ContinuousWebJob = Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJob
      CustomHostnameAnalysisResult = Azure::ARM::Web::Api_2016_08_01::Models::CustomHostnameAnalysisResult
      Deployment = Azure::ARM::Web::Api_2016_08_01::Models::Deployment
      FunctionEnvelope = Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelope
      FunctionSecrets = Azure::ARM::Web::Api_2016_08_01::Models::FunctionSecrets
      HostNameBinding = Azure::ARM::Web::Api_2016_08_01::Models::HostNameBinding
      HybridConnection = Azure::ARM::Web::Api_2016_08_01::Models::HybridConnection
      HybridConnectionKey = Azure::ARM::Web::Api_2016_08_01::Models::HybridConnectionKey
      Identifier = Azure::ARM::Web::Api_2016_08_01::Models::Identifier
      MSDeploy = Azure::ARM::Web::Api_2016_08_01::Models::MSDeploy
      MSDeployLog = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLog
      MSDeployStatus = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployStatus
      MigrateMySqlRequest = Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlRequest
      MigrateMySqlStatus = Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlStatus
      VnetRoute = Azure::ARM::Web::Api_2016_08_01::Models::VnetRoute
      VnetInfo = Azure::ARM::Web::Api_2016_08_01::Models::VnetInfo
      RelayServiceConnectionEntity = Azure::ARM::Web::Api_2016_08_01::Models::RelayServiceConnectionEntity
      NetworkFeatures = Azure::ARM::Web::Api_2016_08_01::Models::NetworkFeatures
      PremierAddOn = Azure::ARM::Web::Api_2016_08_01::Models::PremierAddOn
      ProcessThreadInfo = Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfo
      ProcessModuleInfo = Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfo
      ProcessInfo = Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfo
      PublicCertificate = Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificate
      PushSettings = Azure::ARM::Web::Api_2016_08_01::Models::PushSettings
      ResourceMetricDefinition = Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricDefinition
      RestoreRequest = Azure::ARM::Web::Api_2016_08_01::Models::RestoreRequest
      RestoreResponse = Azure::ARM::Web::Api_2016_08_01::Models::RestoreResponse
      SnapshotRecoveryRequest = Azure::ARM::Web::Api_2016_08_01::Models::SnapshotRecoveryRequest
      Site = Azure::ARM::Web::Api_2016_08_01::Models::Site
      SiteAuthSettings = Azure::ARM::Web::Api_2016_08_01::Models::SiteAuthSettings
      SiteConfigResource = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResource
      SiteConfigurationSnapshotInfo = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigurationSnapshotInfo
      SiteExtensionInfo = Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfo
      SiteInstance = Azure::ARM::Web::Api_2016_08_01::Models::SiteInstance
      SiteLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::SiteLogsConfig
      SitePhpErrorLogFlag = Azure::ARM::Web::Api_2016_08_01::Models::SitePhpErrorLogFlag
      SiteSourceControl = Azure::ARM::Web::Api_2016_08_01::Models::SiteSourceControl
      SlotConfigNamesResource = Azure::ARM::Web::Api_2016_08_01::Models::SlotConfigNamesResource
      SlotDifference = Azure::ARM::Web::Api_2016_08_01::Models::SlotDifference
      Snapshot = Azure::ARM::Web::Api_2016_08_01::Models::Snapshot
      StorageMigrationOptions = Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationOptions
      StorageMigrationResponse = Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationResponse
      StringDictionary = Azure::ARM::Web::Api_2016_08_01::Models::StringDictionary
      TriggeredJobRun = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobRun
      TriggeredJobHistory = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistory
      TriggeredWebJob = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJob
      User = Azure::ARM::Web::Api_2016_08_01::Models::User
      VnetGateway = Azure::ARM::Web::Api_2016_08_01::Models::VnetGateway
      WebJob = Azure::ARM::Web::Api_2016_08_01::Models::WebJob
      LogLevel = Azure::ARM::Web::Api_2016_08_01::Models::LogLevel
      AutoHealActionType = Azure::ARM::Web::Api_2016_08_01::Models::AutoHealActionType
      BackupItemStatus = Azure::ARM::Web::Api_2016_08_01::Models::BackupItemStatus
      DatabaseType = Azure::ARM::Web::Api_2016_08_01::Models::DatabaseType
      FrequencyUnit = Azure::ARM::Web::Api_2016_08_01::Models::FrequencyUnit
      BackupRestoreOperationType = Azure::ARM::Web::Api_2016_08_01::Models::BackupRestoreOperationType
      ConnectionStringType = Azure::ARM::Web::Api_2016_08_01::Models::ConnectionStringType
      ContinuousWebJobStatus = Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobStatus
      WebJobType = Azure::ARM::Web::Api_2016_08_01::Models::WebJobType
      PublishingProfileFormat = Azure::ARM::Web::Api_2016_08_01::Models::PublishingProfileFormat
      DnsVerificationTestResult = Azure::ARM::Web::Api_2016_08_01::Models::DnsVerificationTestResult
      AzureResourceType = Azure::ARM::Web::Api_2016_08_01::Models::AzureResourceType
      CustomHostNameDnsRecordType = Azure::ARM::Web::Api_2016_08_01::Models::CustomHostNameDnsRecordType
      HostNameType = Azure::ARM::Web::Api_2016_08_01::Models::HostNameType
      SslState = Azure::ARM::Web::Api_2016_08_01::Models::SslState
      HostType = Azure::ARM::Web::Api_2016_08_01::Models::HostType
      MSDeployLogEntryType = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntryType
      MSDeployProvisioningState = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployProvisioningState
      MySqlMigrationType = Azure::ARM::Web::Api_2016_08_01::Models::MySqlMigrationType
      OperationStatus = Azure::ARM::Web::Api_2016_08_01::Models::OperationStatus
      RouteType = Azure::ARM::Web::Api_2016_08_01::Models::RouteType
      PublicCertificateLocation = Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateLocation
      UsageState = Azure::ARM::Web::Api_2016_08_01::Models::UsageState
      SiteAvailabilityState = Azure::ARM::Web::Api_2016_08_01::Models::SiteAvailabilityState
      ScmType = Azure::ARM::Web::Api_2016_08_01::Models::ScmType
      ManagedPipelineMode = Azure::ARM::Web::Api_2016_08_01::Models::ManagedPipelineMode
      SiteLoadBalancing = Azure::ARM::Web::Api_2016_08_01::Models::SiteLoadBalancing
      UnauthenticatedClientAction = Azure::ARM::Web::Api_2016_08_01::Models::UnauthenticatedClientAction
      BuiltInAuthenticationProvider = Azure::ARM::Web::Api_2016_08_01::Models::BuiltInAuthenticationProvider
      CloneAbilityResult = Azure::ARM::Web::Api_2016_08_01::Models::CloneAbilityResult
      SiteExtensionType = Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionType
      TriggeredWebJobStatus = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobStatus
    end

    #
    # Web
    #
    class WebClass
      attr_accessor :web_apps, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Web::Api_2016_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.web_apps = Azure::ARM::Web::Api_2016_08_01::WebApps.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-08-01'
            client = Azure::ARM::Web::Api_2016_08_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def perf_mon_set
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSet
        end
        def api_definition_info
          Azure::ARM::Web::Api_2016_08_01::Models::ApiDefinitionInfo
        end
        def perf_mon_response
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonResponse
        end
        def azure_table_storage_application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::AzureTableStorageApplicationLogsConfig
        end
        def perf_mon_counter_collection
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonCounterCollection
        end
        def application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::ApplicationLogsConfig
        end
        def http_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::HttpLogsConfig
        end
        def slot_difference_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SlotDifferenceCollection
        end
        def requests_based_trigger
          Azure::ARM::Web::Api_2016_08_01::Models::RequestsBasedTrigger
        end
        def site_machine_key
          Azure::ARM::Web::Api_2016_08_01::Models::SiteMachineKey
        end
        def slow_requests_based_trigger
          Azure::ARM::Web::Api_2016_08_01::Models::SlowRequestsBasedTrigger
        end
        def site_extension_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfoCollection
        end
        def auto_heal_rules
          Azure::ARM::Web::Api_2016_08_01::Models::AutoHealRules
        end
        def identifier_collection
          Azure::ARM::Web::Api_2016_08_01::Models::IdentifierCollection
        end
        def database_backup_setting
          Azure::ARM::Web::Api_2016_08_01::Models::DatabaseBackupSetting
        end
        def ip_security_restriction
          Azure::ARM::Web::Api_2016_08_01::Models::IpSecurityRestriction
        end
        def backup_item_collection
          Azure::ARM::Web::Api_2016_08_01::Models::BackupItemCollection
        end
        def site_cloneability_criterion
          Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneabilityCriterion
        end
        def auto_heal_triggers
          Azure::ARM::Web::Api_2016_08_01::Models::AutoHealTriggers
        end
        def azure_blob_storage_http_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageHttpLogsConfig
        end
        def conn_string_info
          Azure::ARM::Web::Api_2016_08_01::Models::ConnStringInfo
        end
        def conn_string_value_type_pair
          Azure::ARM::Web::Api_2016_08_01::Models::ConnStringValueTypePair
        end
        def resource
          Azure::ARM::Web::Api_2016_08_01::Models::Resource
        end
        def snapshot_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SnapshotCollection
        end
        def backup_schedule
          Azure::ARM::Web::Api_2016_08_01::Models::BackupSchedule
        end
        def cors_settings
          Azure::ARM::Web::Api_2016_08_01::Models::CorsSettings
        end
        def resource_metric_name
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricName
        end
        def csm_slot_entity
          Azure::ARM::Web::Api_2016_08_01::Models::CsmSlotEntity
        end
        def msdeploy_log_entry
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntry
        end
        def csm_usage_quota
          Azure::ARM::Web::Api_2016_08_01::Models::CsmUsageQuota
        end
        def site_cloneability
          Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneability
        end
        def error_entity
          Azure::ARM::Web::Api_2016_08_01::Models::ErrorEntity
        end
        def slot_swap_status
          Azure::ARM::Web::Api_2016_08_01::Models::SlotSwapStatus
        end
        def resource_metric_availability
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricAvailability
        end
        def site_config_resource_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResourceCollection
        end
        def enabled_config
          Azure::ARM::Web::Api_2016_08_01::Models::EnabledConfig
        end
        def snapshot_recovery_target
          Azure::ARM::Web::Api_2016_08_01::Models::SnapshotRecoveryTarget
        end
        def experiments
          Azure::ARM::Web::Api_2016_08_01::Models::Experiments
        end
        def name_value_pair
          Azure::ARM::Web::Api_2016_08_01::Models::NameValuePair
        end
        def resource_metric
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetric
        end
        def site_config
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfig
        end
        def resource_metric_value
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricValue
        end
        def site_limits
          Azure::ARM::Web::Api_2016_08_01::Models::SiteLimits
        end
        def resource_metric_property
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricProperty
        end
        def virtual_application
          Azure::ARM::Web::Api_2016_08_01::Models::VirtualApplication
        end
        def host_name_ssl_state
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameSslState
        end
        def virtual_directory
          Azure::ARM::Web::Api_2016_08_01::Models::VirtualDirectory
        end
        def auto_heal_actions
          Azure::ARM::Web::Api_2016_08_01::Models::AutoHealActions
        end
        def operation
          Azure::ARM::Web::Api_2016_08_01::Models::Operation
        end
        def cloning_info
          Azure::ARM::Web::Api_2016_08_01::Models::CloningInfo
        end
        def perf_mon_sample
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSample
        end
        def continuous_web_job_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobCollection
        end
        def file_system_application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::FileSystemApplicationLogsConfig
        end
        def localizable_string
          Azure::ARM::Web::Api_2016_08_01::Models::LocalizableString
        end
        def azure_blob_storage_application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
        end
        def resource_metric_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricCollection
        end
        def auto_heal_custom_action
          Azure::ARM::Web::Api_2016_08_01::Models::AutoHealCustomAction
        end
        def ramp_up_rule
          Azure::ARM::Web::Api_2016_08_01::Models::RampUpRule
        end
        def function_envelope_collection
          Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelopeCollection
        end
        def web_job_collection
          Azure::ARM::Web::Api_2016_08_01::Models::WebJobCollection
        end
        def host_name_binding_collection
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameBindingCollection
        end
        def web_app_instance_collection
          Azure::ARM::Web::Api_2016_08_01::Models::WebAppInstanceCollection
        end
        def status_codes_based_trigger
          Azure::ARM::Web::Api_2016_08_01::Models::StatusCodesBasedTrigger
        end
        def web_app_collection
          Azure::ARM::Web::Api_2016_08_01::Models::WebAppCollection
        end
        def csm_publishing_profile_options
          Azure::ARM::Web::Api_2016_08_01::Models::CsmPublishingProfileOptions
        end
        def process_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfoCollection
        end
        def deployment_collection
          Azure::ARM::Web::Api_2016_08_01::Models::DeploymentCollection
        end
        def process_module_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfoCollection
        end
        def handler_mapping
          Azure::ARM::Web::Api_2016_08_01::Models::HandlerMapping
        end
        def process_thread_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfoCollection
        end
        def resource_metric_definition_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricDefinitionCollection
        end
        def proxy_only_resource
          Azure::ARM::Web::Api_2016_08_01::Models::ProxyOnlyResource
        end
        def file_system_http_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::FileSystemHttpLogsConfig
        end
        def triggered_web_job_collection
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobCollection
        end
        def csm_usage_quota_collection
          Azure::ARM::Web::Api_2016_08_01::Models::CsmUsageQuotaCollection
        end
        def public_certificate_collection
          Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateCollection
        end
        def hosting_environment_profile
          Azure::ARM::Web::Api_2016_08_01::Models::HostingEnvironmentProfile
        end
        def triggered_job_history_collection
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistoryCollection
        end
        def backup_item
          Azure::ARM::Web::Api_2016_08_01::Models::BackupItem
        end
        def backup_request
          Azure::ARM::Web::Api_2016_08_01::Models::BackupRequest
        end
        def connection_string_dictionary
          Azure::ARM::Web::Api_2016_08_01::Models::ConnectionStringDictionary
        end
        def continuous_web_job
          Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJob
        end
        def custom_hostname_analysis_result
          Azure::ARM::Web::Api_2016_08_01::Models::CustomHostnameAnalysisResult
        end
        def deployment
          Azure::ARM::Web::Api_2016_08_01::Models::Deployment
        end
        def function_envelope
          Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelope
        end
        def function_secrets
          Azure::ARM::Web::Api_2016_08_01::Models::FunctionSecrets
        end
        def host_name_binding
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameBinding
        end
        def hybrid_connection
          Azure::ARM::Web::Api_2016_08_01::Models::HybridConnection
        end
        def hybrid_connection_key
          Azure::ARM::Web::Api_2016_08_01::Models::HybridConnectionKey
        end
        def identifier
          Azure::ARM::Web::Api_2016_08_01::Models::Identifier
        end
        def msdeploy
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeploy
        end
        def msdeploy_log
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLog
        end
        def msdeploy_status
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployStatus
        end
        def migrate_my_sql_request
          Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlRequest
        end
        def migrate_my_sql_status
          Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlStatus
        end
        def vnet_route
          Azure::ARM::Web::Api_2016_08_01::Models::VnetRoute
        end
        def vnet_info
          Azure::ARM::Web::Api_2016_08_01::Models::VnetInfo
        end
        def relay_service_connection_entity
          Azure::ARM::Web::Api_2016_08_01::Models::RelayServiceConnectionEntity
        end
        def network_features
          Azure::ARM::Web::Api_2016_08_01::Models::NetworkFeatures
        end
        def premier_add_on
          Azure::ARM::Web::Api_2016_08_01::Models::PremierAddOn
        end
        def process_thread_info
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfo
        end
        def process_module_info
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfo
        end
        def process_info
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfo
        end
        def public_certificate
          Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificate
        end
        def push_settings
          Azure::ARM::Web::Api_2016_08_01::Models::PushSettings
        end
        def resource_metric_definition
          Azure::ARM::Web::Api_2016_08_01::Models::ResourceMetricDefinition
        end
        def restore_request
          Azure::ARM::Web::Api_2016_08_01::Models::RestoreRequest
        end
        def restore_response
          Azure::ARM::Web::Api_2016_08_01::Models::RestoreResponse
        end
        def snapshot_recovery_request
          Azure::ARM::Web::Api_2016_08_01::Models::SnapshotRecoveryRequest
        end
        def site
          Azure::ARM::Web::Api_2016_08_01::Models::Site
        end
        def site_auth_settings
          Azure::ARM::Web::Api_2016_08_01::Models::SiteAuthSettings
        end
        def site_config_resource
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResource
        end
        def site_configuration_snapshot_info
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigurationSnapshotInfo
        end
        def site_extension_info
          Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfo
        end
        def site_instance
          Azure::ARM::Web::Api_2016_08_01::Models::SiteInstance
        end
        def site_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::SiteLogsConfig
        end
        def site_php_error_log_flag
          Azure::ARM::Web::Api_2016_08_01::Models::SitePhpErrorLogFlag
        end
        def site_source_control
          Azure::ARM::Web::Api_2016_08_01::Models::SiteSourceControl
        end
        def slot_config_names_resource
          Azure::ARM::Web::Api_2016_08_01::Models::SlotConfigNamesResource
        end
        def slot_difference
          Azure::ARM::Web::Api_2016_08_01::Models::SlotDifference
        end
        def snapshot
          Azure::ARM::Web::Api_2016_08_01::Models::Snapshot
        end
        def storage_migration_options
          Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationOptions
        end
        def storage_migration_response
          Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationResponse
        end
        def string_dictionary
          Azure::ARM::Web::Api_2016_08_01::Models::StringDictionary
        end
        def triggered_job_run
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobRun
        end
        def triggered_job_history
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistory
        end
        def triggered_web_job
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJob
        end
        def user
          Azure::ARM::Web::Api_2016_08_01::Models::User
        end
        def vnet_gateway
          Azure::ARM::Web::Api_2016_08_01::Models::VnetGateway
        end
        def web_job
          Azure::ARM::Web::Api_2016_08_01::Models::WebJob
        end
        def log_level
          Azure::ARM::Web::Api_2016_08_01::Models::LogLevel
        end
        def auto_heal_action_type
          Azure::ARM::Web::Api_2016_08_01::Models::AutoHealActionType
        end
        def backup_item_status
          Azure::ARM::Web::Api_2016_08_01::Models::BackupItemStatus
        end
        def database_type
          Azure::ARM::Web::Api_2016_08_01::Models::DatabaseType
        end
        def frequency_unit
          Azure::ARM::Web::Api_2016_08_01::Models::FrequencyUnit
        end
        def backup_restore_operation_type
          Azure::ARM::Web::Api_2016_08_01::Models::BackupRestoreOperationType
        end
        def connection_string_type
          Azure::ARM::Web::Api_2016_08_01::Models::ConnectionStringType
        end
        def continuous_web_job_status
          Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobStatus
        end
        def web_job_type
          Azure::ARM::Web::Api_2016_08_01::Models::WebJobType
        end
        def publishing_profile_format
          Azure::ARM::Web::Api_2016_08_01::Models::PublishingProfileFormat
        end
        def dns_verification_test_result
          Azure::ARM::Web::Api_2016_08_01::Models::DnsVerificationTestResult
        end
        def azure_resource_type
          Azure::ARM::Web::Api_2016_08_01::Models::AzureResourceType
        end
        def custom_host_name_dns_record_type
          Azure::ARM::Web::Api_2016_08_01::Models::CustomHostNameDnsRecordType
        end
        def host_name_type
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameType
        end
        def ssl_state
          Azure::ARM::Web::Api_2016_08_01::Models::SslState
        end
        def host_type
          Azure::ARM::Web::Api_2016_08_01::Models::HostType
        end
        def msdeploy_log_entry_type
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntryType
        end
        def msdeploy_provisioning_state
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployProvisioningState
        end
        def my_sql_migration_type
          Azure::ARM::Web::Api_2016_08_01::Models::MySqlMigrationType
        end
        def operation_status
          Azure::ARM::Web::Api_2016_08_01::Models::OperationStatus
        end
        def route_type
          Azure::ARM::Web::Api_2016_08_01::Models::RouteType
        end
        def public_certificate_location
          Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateLocation
        end
        def usage_state
          Azure::ARM::Web::Api_2016_08_01::Models::UsageState
        end
        def site_availability_state
          Azure::ARM::Web::Api_2016_08_01::Models::SiteAvailabilityState
        end
        def scm_type
          Azure::ARM::Web::Api_2016_08_01::Models::ScmType
        end
        def managed_pipeline_mode
          Azure::ARM::Web::Api_2016_08_01::Models::ManagedPipelineMode
        end
        def site_load_balancing
          Azure::ARM::Web::Api_2016_08_01::Models::SiteLoadBalancing
        end
        def unauthenticated_client_action
          Azure::ARM::Web::Api_2016_08_01::Models::UnauthenticatedClientAction
        end
        def built_in_authentication_provider
          Azure::ARM::Web::Api_2016_08_01::Models::BuiltInAuthenticationProvider
        end
        def clone_ability_result
          Azure::ARM::Web::Api_2016_08_01::Models::CloneAbilityResult
        end
        def site_extension_type
          Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionType
        end
        def triggered_web_job_status
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobStatus
        end
      end
    end
  end
end
