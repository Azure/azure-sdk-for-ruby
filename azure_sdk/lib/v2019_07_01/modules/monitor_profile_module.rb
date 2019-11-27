# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Profiles::V2019_07_01
  module Monitor
    module Mgmt
      ScheduledQueryRules = Azure::Monitor::Mgmt::V2018_04_16::ScheduledQueryRules
      AlertRules = Azure::Monitor::Mgmt::V2016_03_01::AlertRules
      AlertRuleIncidents = Azure::Monitor::Mgmt::V2016_03_01::AlertRuleIncidents
      LogProfiles = Azure::Monitor::Mgmt::V2016_03_01::LogProfiles
      MetricAlerts = Azure::Monitor::Mgmt::V2018_03_01::MetricAlerts
      MetricAlertsStatus = Azure::Monitor::Mgmt::V2018_03_01::MetricAlertsStatus
      Annotations = Azure::Monitor::Mgmt::V2015_05_01::Annotations
      APIKeys = Azure::Monitor::Mgmt::V2015_05_01::APIKeys
      ExportConfigurations = Azure::Monitor::Mgmt::V2015_05_01::ExportConfigurations
      ComponentCurrentBillingFeatures = Azure::Monitor::Mgmt::V2015_05_01::ComponentCurrentBillingFeatures
      ComponentQuotaStatus = Azure::Monitor::Mgmt::V2015_05_01::ComponentQuotaStatus
      ComponentFeatureCapabilities = Azure::Monitor::Mgmt::V2015_05_01::ComponentFeatureCapabilities
      ComponentAvailableFeatures = Azure::Monitor::Mgmt::V2015_05_01::ComponentAvailableFeatures
      ProactiveDetectionConfigurations = Azure::Monitor::Mgmt::V2015_05_01::ProactiveDetectionConfigurations
      Components = Azure::Monitor::Mgmt::V2015_05_01::Components
      WorkItemConfigurations = Azure::Monitor::Mgmt::V2015_05_01::WorkItemConfigurations
      Favorites = Azure::Monitor::Mgmt::V2015_05_01::Favorites
      WebTestLocations = Azure::Monitor::Mgmt::V2015_05_01::WebTestLocations
      WebTests = Azure::Monitor::Mgmt::V2015_05_01::WebTests
      AnalyticsItems = Azure::Monitor::Mgmt::V2015_05_01::AnalyticsItems
      ActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::ActivityLogs
      AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
      EventCategories = Azure::Monitor::Mgmt::V2015_04_01::EventCategories
      Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
      TenantActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::TenantActivityLogs
      DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations
      DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
      Workbooks = Azure::Monitor::Mgmt::V2018_06_17_preview::Workbooks
      MetricDefinitions = Azure::Monitor::Mgmt::V2018_01_01::MetricDefinitions
      Metrics = Azure::Monitor::Mgmt::V2018_01_01::Metrics
      MetricBaseline = Azure::Monitor::Mgmt::V2018_09_01::MetricBaseline
      ActionGroups = Azure::Monitor::Mgmt::V2017_04_01::ActionGroups
      ActivityLogAlerts = Azure::Monitor::Mgmt::V2017_04_01::ActivityLogAlerts
      EASubscriptionMigrateToNewPricingModel = Azure::Monitor::Mgmt::V2017_10_01_preview::EASubscriptionMigrateToNewPricingModel
      EASubscriptionRollbackToLegacyPricingModel = Azure::Monitor::Mgmt::V2017_10_01_preview::EASubscriptionRollbackToLegacyPricingModel
      EASubscriptionListMigrationDate = Azure::Monitor::Mgmt::V2017_10_01_preview::EASubscriptionListMigrationDate
      ComponentCurrentPricingPlan = Azure::Monitor::Mgmt::V2017_10_01_preview::ComponentCurrentPricingPlan

      module Models
        LogSearchRuleResourceCollection = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourceCollection
        LogMetricTrigger = Azure::Monitor::Mgmt::V2018_04_16::Models::LogMetricTrigger
        Schedule = Azure::Monitor::Mgmt::V2018_04_16::Models::Schedule
        TriggerCondition = Azure::Monitor::Mgmt::V2018_04_16::Models::TriggerCondition
        Action = Azure::Monitor::Mgmt::V2018_04_16::Models::Action
        Source = Azure::Monitor::Mgmt::V2018_04_16::Models::Source
        AzNsActionGroup = Azure::Monitor::Mgmt::V2018_04_16::Models::AzNsActionGroup
        LogSearchRuleResourcePatch = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourcePatch
        LogSearchRuleResource = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResource
        AlertingAction = Azure::Monitor::Mgmt::V2018_04_16::Models::AlertingAction
        Enabled = Azure::Monitor::Mgmt::V2018_04_16::Models::Enabled
        ProvisioningState = Azure::Monitor::Mgmt::V2018_04_16::Models::ProvisioningState
        QueryType = Azure::Monitor::Mgmt::V2018_04_16::Models::QueryType
        ConditionalOperator = Azure::Monitor::Mgmt::V2018_04_16::Models::ConditionalOperator
        MetricTriggerType = Azure::Monitor::Mgmt::V2018_04_16::Models::MetricTriggerType
        AlertSeverity = Azure::Monitor::Mgmt::V2018_04_16::Models::AlertSeverity
        RuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleCondition
        AlertRuleResourcePatch = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourcePatch
        RuleManagementEventClaimsDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventClaimsDataSource
        AlertRuleResourceCollection = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourceCollection
        RuleDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleDataSource
        LogProfileResourcePatch = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResourcePatch
        ManagementEventAggregationCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventAggregationCondition
        LogProfileCollection = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileCollection
        Incident = Azure::Monitor::Mgmt::V2016_03_01::Models::Incident
        RuleAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleAction
        IncidentListResult = Azure::Monitor::Mgmt::V2016_03_01::Models::IncidentListResult
        RuleMetricDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleMetricDataSource
        RuleManagementEventDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventDataSource
        ThresholdRuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ThresholdRuleCondition
        LocationThresholdRuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::LocationThresholdRuleCondition
        ManagementEventRuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventRuleCondition
        RuleEmailAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleEmailAction
        RuleWebhookAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleWebhookAction
        AlertRuleResource = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResource
        LogProfileResource = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResource
        ConditionOperator = Azure::Monitor::Mgmt::V2016_03_01::Models::ConditionOperator
        TimeAggregationOperator = Azure::Monitor::Mgmt::V2016_03_01::Models::TimeAggregationOperator
        MetricAlertCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertCriteria
        MetricAlertResourcePatch = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourcePatch
        MetricAlertStatusProperties = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusProperties
        MetricAlertStatusCollection = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusCollection
        MetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricCriteria
        MetricAlertAction = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertAction
        MetricAlertResourceCollection = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourceCollection
        MetricDimension = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricDimension
        MetricAlertStatus = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatus
        MetricAlertResource = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResource
        MetricAlertSingleResourceMultipleMetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertSingleResourceMultipleMetricCriteria
        ApplicationInsightsComponentListResult = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentListResult
        ComponentPurgeBodyFilters = Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeBodyFilters
        ComponentPurgeBody = Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeBody
        Annotation = Azure::Monitor::Mgmt::V2015_05_01::Models::Annotation
        ComponentPurgeResponse = Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeResponse
        InnerError = Azure::Monitor::Mgmt::V2015_05_01::Models::InnerError
        ComponentPurgeStatusResponse = Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeStatusResponse
        APIKeyRequest = Azure::Monitor::Mgmt::V2015_05_01::Models::APIKeyRequest
        WorkItemConfiguration = Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemConfiguration
        ApplicationInsightsComponentAPIKeyListResult = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAPIKeyListResult
        WorkItemConfigurationsListResult = Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemConfigurationsListResult
        ApplicationInsightsComponentExportConfiguration = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentExportConfiguration
        WorkItemCreateConfiguration = Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemCreateConfiguration
        ApplicationInsightsComponentBillingFeatures = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentBillingFeatures
        WorkItemConfigurationError = Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemConfigurationError
        ApplicationInsightsComponentFeatureCapabilities = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFeatureCapabilities
        ApplicationInsightsComponentFavorite = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFavorite
        ApplicationInsightsComponentFeature = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFeature
        ApplicationInsightsComponentWebTestLocation = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentWebTestLocation
        ApplicationInsightsComponentProactiveDetectionConfigurationRuleDefinitions = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentProactiveDetectionConfigurationRuleDefinitions
        ApplicationInsightsWebTestLocationsListResult = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsWebTestLocationsListResult
        ComponentsResource = Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentsResource
        WebtestsResource = Azure::Monitor::Mgmt::V2015_05_01::Models::WebtestsResource
        TagsResource = Azure::Monitor::Mgmt::V2015_05_01::Models::TagsResource
        AnnotationsListResult = Azure::Monitor::Mgmt::V2015_05_01::Models::AnnotationsListResult
        WebTestGeolocation = Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestGeolocation
        ApplicationInsightsComponentAPIKey = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAPIKey
        WebTestPropertiesConfiguration = Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestPropertiesConfiguration
        ApplicationInsightsComponentDataVolumeCap = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentDataVolumeCap
        ApplicationInsightsComponentFeatureCapability = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFeatureCapability
        WebTestListResult = Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestListResult
        ApplicationInsightsComponentProactiveDetectionConfiguration = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentProactiveDetectionConfiguration
        ApplicationInsightsComponentAnalyticsItemProperties = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAnalyticsItemProperties
        AnnotationError = Azure::Monitor::Mgmt::V2015_05_01::Models::AnnotationError
        ApplicationInsightsComponentAnalyticsItem = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAnalyticsItem
        ApplicationInsightsComponentQuotaStatus = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentQuotaStatus
        WorkbookResource = Azure::Monitor::Mgmt::V2015_05_01::Models::WorkbookResource
        ApplicationInsightsComponentAvailableFeatures = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAvailableFeatures
        ApplicationInsightsComponentExportRequest = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentExportRequest
        LinkProperties = Azure::Monitor::Mgmt::V2015_05_01::Models::LinkProperties
        ApplicationInsightsComponent = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponent
        WebTest = Azure::Monitor::Mgmt::V2015_05_01::Models::WebTest
        ApplicationType = Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationType
        FlowType = Azure::Monitor::Mgmt::V2015_05_01::Models::FlowType
        RequestSource = Azure::Monitor::Mgmt::V2015_05_01::Models::RequestSource
        PurgeState = Azure::Monitor::Mgmt::V2015_05_01::Models::PurgeState
        FavoriteType = Azure::Monitor::Mgmt::V2015_05_01::Models::FavoriteType
        WebTestKind = Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestKind
        ItemScope = Azure::Monitor::Mgmt::V2015_05_01::Models::ItemScope
        ItemType = Azure::Monitor::Mgmt::V2015_05_01::Models::ItemType
        FavoriteSourceType = Azure::Monitor::Mgmt::V2015_05_01::Models::FavoriteSourceType
        ItemScopePath = Azure::Monitor::Mgmt::V2015_05_01::Models::ItemScopePath
        ItemTypeParameter = Azure::Monitor::Mgmt::V2015_05_01::Models::ItemTypeParameter
        RecurrentSchedule = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
        Recurrence = Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
        SenderAuthorization = Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
        AutoscaleProfile = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
        EventData = Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
        EmailNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
        WebhookNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
        ScaleCapacity = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
        AutoscaleNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
        ScaleAction = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
        ScaleRule = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
        AutoscaleSettingResourcePatch = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
        EventDataCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
        AutoscaleSettingResourceCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
        MetricTrigger = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
        EventCategoryCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
        HttpRequestInfo = Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
        OperationDisplay = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
        TimeWindow = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
        Operation = Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
        OperationListResult = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
        AutoscaleSettingResource = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
        EventLevel = Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
        MetricStatisticType = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
        TimeAggregationType = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
        ComparisonOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
        ScaleDirection = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
        ScaleType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
        ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
        MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
        LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
        DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
        DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
        RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
        DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
        DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
        WorkbookUpdateParameters = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::WorkbookUpdateParameters
        ErrorFieldContract = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::ErrorFieldContract
        WorkbooksListResult = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::WorkbooksListResult
        WorkbookError = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::WorkbookError
        Workbook = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::Workbook
        SharedTypeKind = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::SharedTypeKind
        CategoryType = Azure::Monitor::Mgmt::V2018_06_17_preview::Models::CategoryType
        MetricValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
        MetadataValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
        MetricDefinition = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
        TimeSeriesElement = Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
        Metric = Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
        MetricDefinitionCollection = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
        Response = Azure::Monitor::Mgmt::V2018_01_01::Models::Response
        MetricAvailability = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
        Unit = Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
        AggregationType = Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
        ArmRoleReceiver = Azure::Monitor::Mgmt::V2018_09_01::Models::ArmRoleReceiver
        VoiceReceiver = Azure::Monitor::Mgmt::V2018_09_01::Models::VoiceReceiver
        AzureFunctionReceiver = Azure::Monitor::Mgmt::V2018_09_01::Models::AzureFunctionReceiver
        LocalizableString = Azure::Monitor::Mgmt::V2018_09_01::Models::LocalizableString
        BaselineMetadataValue = Azure::Monitor::Mgmt::V2018_09_01::Models::BaselineMetadataValue
        Baseline = Azure::Monitor::Mgmt::V2018_09_01::Models::Baseline
        BaselineResponse = Azure::Monitor::Mgmt::V2018_09_01::Models::BaselineResponse
        LogicAppReceiver = Azure::Monitor::Mgmt::V2018_09_01::Models::LogicAppReceiver
        TimeSeriesInformation = Azure::Monitor::Mgmt::V2018_09_01::Models::TimeSeriesInformation
        CalculateBaselineResponse = Azure::Monitor::Mgmt::V2018_09_01::Models::CalculateBaselineResponse
        Sensitivity = Azure::Monitor::Mgmt::V2018_09_01::Models::Sensitivity
        ResultType = Azure::Monitor::Mgmt::V2018_09_01::Models::ResultType
        EnableRequest = Azure::Monitor::Mgmt::V2017_04_01::Models::EnableRequest
        ErrorResponse = Azure::Monitor::Mgmt::V2017_04_01::Models::ErrorResponse
        EmailReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::EmailReceiver
        ActionGroupPatchBody = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupPatchBody
        WebhookReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::WebhookReceiver
        ActivityLogAlertLeafCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
        AzureAppPushReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::AzureAppPushReceiver
        ActivityLogAlertAllOfCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
        AutomationRunbookReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::AutomationRunbookReceiver
        ActivityLogAlertActionGroup = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
        ItsmReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::ItsmReceiver
        ActivityLogAlertActionList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
        SmsReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::SmsReceiver
        ActivityLogAlertPatchBody = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
        ActionGroupList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupList
        ActivityLogAlertList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
        ActionGroupResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupResource
        ActivityLogAlertResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
        ReceiverStatus = Azure::Monitor::Mgmt::V2017_04_01::Models::ReceiverStatus
        EASubscriptionMigrationDate = Azure::Monitor::Mgmt::V2017_10_01_preview::Models::EASubscriptionMigrationDate
        Resource = Azure::Monitor::Mgmt::V2017_10_01_preview::Models::Resource
        ApplicationInsightsComponentPricingPlan = Azure::Monitor::Mgmt::V2017_10_01_preview::Models::ApplicationInsightsComponentPricingPlan
      end

      class MonitorManagementClass
        attr_reader :scheduled_query_rules, :alert_rules, :alert_rule_incidents, :log_profiles, :metric_alerts, :metric_alerts_status, :annotations, :apikeys, :export_configurations, :component_current_billing_features, :component_quota_status, :component_feature_capabilities, :component_available_features, :proactive_detection_configurations, :components, :work_item_configurations, :favorites, :web_test_locations, :web_tests, :analytics_items, :activity_logs, :autoscale_settings, :event_categories, :operations, :tenant_activity_logs, :diagnostic_settings_operations, :diagnostic_settings_category_operations, :workbooks, :metric_definitions, :metrics, :metric_baseline, :action_groups, :activity_log_alerts, :easubscription_migrate_to_new_pricing_model, :easubscription_rollback_to_legacy_pricing_model, :easubscription_list_migration_date, :component_current_pricing_plan, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Monitor::Mgmt::V2018_04_16::MonitorClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @scheduled_query_rules = @client_0.scheduled_query_rules

          @client_1 = Azure::Monitor::Mgmt::V2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @alert_rules = @client_1.alert_rules
          @alert_rule_incidents = @client_1.alert_rule_incidents
          @log_profiles = @client_1.log_profiles

          @client_2 = Azure::Monitor::Mgmt::V2018_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @metric_alerts = @client_2.metric_alerts
          @metric_alerts_status = @client_2.metric_alerts_status

          @client_3 = Azure::Monitor::Mgmt::V2015_05_01::ApplicationInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @annotations = @client_3.annotations
          @apikeys = @client_3.apikeys
          @export_configurations = @client_3.export_configurations
          @component_current_billing_features = @client_3.component_current_billing_features
          @component_quota_status = @client_3.component_quota_status
          @component_feature_capabilities = @client_3.component_feature_capabilities
          @component_available_features = @client_3.component_available_features
          @proactive_detection_configurations = @client_3.proactive_detection_configurations
          @components = @client_3.components
          @work_item_configurations = @client_3.work_item_configurations
          @favorites = @client_3.favorites
          @web_test_locations = @client_3.web_test_locations
          @web_tests = @client_3.web_tests
          @analytics_items = @client_3.analytics_items

          @client_4 = Azure::Monitor::Mgmt::V2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_4.respond_to?(:subscription_id))
            @client_4.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_4)
          @activity_logs = @client_4.activity_logs
          @autoscale_settings = @client_4.autoscale_settings
          @event_categories = @client_4.event_categories
          @operations = @client_4.operations
          @tenant_activity_logs = @client_4.tenant_activity_logs

          @client_5 = Azure::Monitor::Mgmt::V2017_05_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_5.respond_to?(:subscription_id))
            @client_5.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_5)
          @diagnostic_settings_operations = @client_5.diagnostic_settings_operations
          @diagnostic_settings_category_operations = @client_5.diagnostic_settings_category_operations

          @client_6 = Azure::Monitor::Mgmt::V2018_06_17_preview::ApplicationInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_6.respond_to?(:subscription_id))
            @client_6.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_6)
          @workbooks = @client_6.workbooks

          @client_7 = Azure::Monitor::Mgmt::V2018_01_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_7.respond_to?(:subscription_id))
            @client_7.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_7)
          @metric_definitions = @client_7.metric_definitions
          @metrics = @client_7.metrics

          @client_8 = Azure::Monitor::Mgmt::V2018_09_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_8.respond_to?(:subscription_id))
            @client_8.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_8)
          @metric_baseline = @client_8.metric_baseline

          @client_9 = Azure::Monitor::Mgmt::V2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_9.respond_to?(:subscription_id))
            @client_9.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_9)
          @action_groups = @client_9.action_groups
          @activity_log_alerts = @client_9.activity_log_alerts

          @client_10 = Azure::Monitor::Mgmt::V2017_10_01_preview::ApplicationInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_10.respond_to?(:subscription_id))
            @client_10.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_10)
          @easubscription_migrate_to_new_pricing_model = @client_10.easubscription_migrate_to_new_pricing_model
          @easubscription_rollback_to_legacy_pricing_model = @client_10.easubscription_rollback_to_legacy_pricing_model
          @easubscription_list_migration_date = @client_10.easubscription_list_migration_date
          @component_current_pricing_plan = @client_10.component_current_pricing_plan

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Monitor/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_10.respond_to?method
            @client_10.send(method, *args)
          elsif @client_9.respond_to?method
            @client_9.send(method, *args)
          elsif @client_8.respond_to?method
            @client_8.send(method, *args)
          elsif @client_7.respond_to?method
            @client_7.send(method, *args)
          elsif @client_6.respond_to?method
            @client_6.send(method, *args)
          elsif @client_5.respond_to?method
            @client_5.send(method, *args)
          elsif @client_4.respond_to?method
            @client_4.send(method, *args)
          elsif @client_3.respond_to?method
            @client_3.send(method, *args)
          elsif @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def log_search_rule_resource_collection
            Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourceCollection
          end
          def log_metric_trigger
            Azure::Monitor::Mgmt::V2018_04_16::Models::LogMetricTrigger
          end
          def schedule
            Azure::Monitor::Mgmt::V2018_04_16::Models::Schedule
          end
          def trigger_condition
            Azure::Monitor::Mgmt::V2018_04_16::Models::TriggerCondition
          end
          def action
            Azure::Monitor::Mgmt::V2018_04_16::Models::Action
          end
          def source
            Azure::Monitor::Mgmt::V2018_04_16::Models::Source
          end
          def az_ns_action_group
            Azure::Monitor::Mgmt::V2018_04_16::Models::AzNsActionGroup
          end
          def log_search_rule_resource_patch
            Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourcePatch
          end
          def log_search_rule_resource
            Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResource
          end
          def alerting_action
            Azure::Monitor::Mgmt::V2018_04_16::Models::AlertingAction
          end
          def enabled
            Azure::Monitor::Mgmt::V2018_04_16::Models::Enabled
          end
          def provisioning_state
            Azure::Monitor::Mgmt::V2018_04_16::Models::ProvisioningState
          end
          def query_type
            Azure::Monitor::Mgmt::V2018_04_16::Models::QueryType
          end
          def conditional_operator
            Azure::Monitor::Mgmt::V2018_04_16::Models::ConditionalOperator
          end
          def metric_trigger_type
            Azure::Monitor::Mgmt::V2018_04_16::Models::MetricTriggerType
          end
          def alert_severity
            Azure::Monitor::Mgmt::V2018_04_16::Models::AlertSeverity
          end
          def rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleCondition
          end
          def alert_rule_resource_patch
            Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourcePatch
          end
          def rule_management_event_claims_data_source
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventClaimsDataSource
          end
          def alert_rule_resource_collection
            Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourceCollection
          end
          def rule_data_source
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleDataSource
          end
          def log_profile_resource_patch
            Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResourcePatch
          end
          def management_event_aggregation_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventAggregationCondition
          end
          def log_profile_collection
            Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileCollection
          end
          def incident
            Azure::Monitor::Mgmt::V2016_03_01::Models::Incident
          end
          def rule_action
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleAction
          end
          def incident_list_result
            Azure::Monitor::Mgmt::V2016_03_01::Models::IncidentListResult
          end
          def rule_metric_data_source
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleMetricDataSource
          end
          def rule_management_event_data_source
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventDataSource
          end
          def threshold_rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::ThresholdRuleCondition
          end
          def location_threshold_rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::LocationThresholdRuleCondition
          end
          def management_event_rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventRuleCondition
          end
          def rule_email_action
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleEmailAction
          end
          def rule_webhook_action
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleWebhookAction
          end
          def alert_rule_resource
            Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResource
          end
          def log_profile_resource
            Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResource
          end
          def condition_operator
            Azure::Monitor::Mgmt::V2016_03_01::Models::ConditionOperator
          end
          def time_aggregation_operator
            Azure::Monitor::Mgmt::V2016_03_01::Models::TimeAggregationOperator
          end
          def metric_alert_criteria
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertCriteria
          end
          def metric_alert_resource_patch
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourcePatch
          end
          def metric_alert_status_properties
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusProperties
          end
          def metric_alert_status_collection
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusCollection
          end
          def metric_criteria
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricCriteria
          end
          def metric_alert_action
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertAction
          end
          def metric_alert_resource_collection
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourceCollection
          end
          def metric_dimension
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricDimension
          end
          def metric_alert_status
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatus
          end
          def metric_alert_resource
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResource
          end
          def metric_alert_single_resource_multiple_metric_criteria
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertSingleResourceMultipleMetricCriteria
          end
          def application_insights_component_list_result
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentListResult
          end
          def component_purge_body_filters
            Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeBodyFilters
          end
          def component_purge_body
            Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeBody
          end
          def annotation
            Azure::Monitor::Mgmt::V2015_05_01::Models::Annotation
          end
          def component_purge_response
            Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeResponse
          end
          def inner_error
            Azure::Monitor::Mgmt::V2015_05_01::Models::InnerError
          end
          def component_purge_status_response
            Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentPurgeStatusResponse
          end
          def apikey_request
            Azure::Monitor::Mgmt::V2015_05_01::Models::APIKeyRequest
          end
          def work_item_configuration
            Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemConfiguration
          end
          def application_insights_component_apikey_list_result
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAPIKeyListResult
          end
          def work_item_configurations_list_result
            Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemConfigurationsListResult
          end
          def application_insights_component_export_configuration
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentExportConfiguration
          end
          def work_item_create_configuration
            Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemCreateConfiguration
          end
          def application_insights_component_billing_features
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentBillingFeatures
          end
          def work_item_configuration_error
            Azure::Monitor::Mgmt::V2015_05_01::Models::WorkItemConfigurationError
          end
          def application_insights_component_feature_capabilities
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFeatureCapabilities
          end
          def application_insights_component_favorite
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFavorite
          end
          def application_insights_component_feature
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFeature
          end
          def application_insights_component_web_test_location
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentWebTestLocation
          end
          def application_insights_component_proactive_detection_configuration_rule_definitions
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentProactiveDetectionConfigurationRuleDefinitions
          end
          def application_insights_web_test_locations_list_result
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsWebTestLocationsListResult
          end
          def components_resource
            Azure::Monitor::Mgmt::V2015_05_01::Models::ComponentsResource
          end
          def webtests_resource
            Azure::Monitor::Mgmt::V2015_05_01::Models::WebtestsResource
          end
          def tags_resource
            Azure::Monitor::Mgmt::V2015_05_01::Models::TagsResource
          end
          def annotations_list_result
            Azure::Monitor::Mgmt::V2015_05_01::Models::AnnotationsListResult
          end
          def web_test_geolocation
            Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestGeolocation
          end
          def application_insights_component_apikey
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAPIKey
          end
          def web_test_properties_configuration
            Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestPropertiesConfiguration
          end
          def application_insights_component_data_volume_cap
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentDataVolumeCap
          end
          def application_insights_component_feature_capability
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentFeatureCapability
          end
          def web_test_list_result
            Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestListResult
          end
          def application_insights_component_proactive_detection_configuration
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentProactiveDetectionConfiguration
          end
          def application_insights_component_analytics_item_properties
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAnalyticsItemProperties
          end
          def annotation_error
            Azure::Monitor::Mgmt::V2015_05_01::Models::AnnotationError
          end
          def application_insights_component_analytics_item
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAnalyticsItem
          end
          def application_insights_component_quota_status
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentQuotaStatus
          end
          def workbook_resource
            Azure::Monitor::Mgmt::V2015_05_01::Models::WorkbookResource
          end
          def application_insights_component_available_features
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentAvailableFeatures
          end
          def application_insights_component_export_request
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponentExportRequest
          end
          def link_properties
            Azure::Monitor::Mgmt::V2015_05_01::Models::LinkProperties
          end
          def application_insights_component
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationInsightsComponent
          end
          def web_test
            Azure::Monitor::Mgmt::V2015_05_01::Models::WebTest
          end
          def application_type
            Azure::Monitor::Mgmt::V2015_05_01::Models::ApplicationType
          end
          def flow_type
            Azure::Monitor::Mgmt::V2015_05_01::Models::FlowType
          end
          def request_source
            Azure::Monitor::Mgmt::V2015_05_01::Models::RequestSource
          end
          def purge_state
            Azure::Monitor::Mgmt::V2015_05_01::Models::PurgeState
          end
          def favorite_type
            Azure::Monitor::Mgmt::V2015_05_01::Models::FavoriteType
          end
          def web_test_kind
            Azure::Monitor::Mgmt::V2015_05_01::Models::WebTestKind
          end
          def item_scope
            Azure::Monitor::Mgmt::V2015_05_01::Models::ItemScope
          end
          def item_type
            Azure::Monitor::Mgmt::V2015_05_01::Models::ItemType
          end
          def favorite_source_type
            Azure::Monitor::Mgmt::V2015_05_01::Models::FavoriteSourceType
          end
          def item_scope_path
            Azure::Monitor::Mgmt::V2015_05_01::Models::ItemScopePath
          end
          def item_type_parameter
            Azure::Monitor::Mgmt::V2015_05_01::Models::ItemTypeParameter
          end
          def recurrent_schedule
            Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
          end
          def recurrence
            Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
          end
          def sender_authorization
            Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
          end
          def autoscale_profile
            Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
          end
          def event_data
            Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
          end
          def email_notification
            Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
          end
          def webhook_notification
            Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
          end
          def scale_capacity
            Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
          end
          def autoscale_notification
            Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
          end
          def scale_action
            Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
          end
          def scale_rule
            Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
          end
          def autoscale_setting_resource_patch
            Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
          end
          def event_data_collection
            Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
          end
          def autoscale_setting_resource_collection
            Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
          end
          def metric_trigger
            Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
          end
          def event_category_collection
            Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
          end
          def http_request_info
            Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
          end
          def operation_display
            Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
          end
          def time_window
            Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
          end
          def operation
            Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
          end
          def operation_list_result
            Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
          end
          def autoscale_setting_resource
            Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
          end
          def event_level
            Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
          end
          def metric_statistic_type
            Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
          end
          def time_aggregation_type
            Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
          end
          def comparison_operation_type
            Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
          end
          def scale_direction
            Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
          end
          def scale_type
            Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
          end
          def proxy_only_resource
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
          end
          def metric_settings
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
          end
          def log_settings
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
          end
          def diagnostic_settings_category_resource_collection
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
          end
          def diagnostic_settings_resource_collection
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
          end
          def retention_policy
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
          end
          def diagnostic_settings_resource
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
          end
          def diagnostic_settings_category_resource
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
          end
          def workbook_update_parameters
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::WorkbookUpdateParameters
          end
          def error_field_contract
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::ErrorFieldContract
          end
          def workbooks_list_result
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::WorkbooksListResult
          end
          def workbook_error
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::WorkbookError
          end
          def workbook
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::Workbook
          end
          def shared_type_kind
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::SharedTypeKind
          end
          def category_type
            Azure::Monitor::Mgmt::V2018_06_17_preview::Models::CategoryType
          end
          def metric_value
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
          end
          def metadata_value
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
          end
          def metric_definition
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
          end
          def time_series_element
            Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
          end
          def metric
            Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
          end
          def metric_definition_collection
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
          end
          def response
            Azure::Monitor::Mgmt::V2018_01_01::Models::Response
          end
          def metric_availability
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
          end
          def unit
            Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
          end
          def aggregation_type
            Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
          end
          def arm_role_receiver
            Azure::Monitor::Mgmt::V2018_09_01::Models::ArmRoleReceiver
          end
          def voice_receiver
            Azure::Monitor::Mgmt::V2018_09_01::Models::VoiceReceiver
          end
          def azure_function_receiver
            Azure::Monitor::Mgmt::V2018_09_01::Models::AzureFunctionReceiver
          end
          def localizable_string
            Azure::Monitor::Mgmt::V2018_09_01::Models::LocalizableString
          end
          def baseline_metadata_value
            Azure::Monitor::Mgmt::V2018_09_01::Models::BaselineMetadataValue
          end
          def baseline
            Azure::Monitor::Mgmt::V2018_09_01::Models::Baseline
          end
          def baseline_response
            Azure::Monitor::Mgmt::V2018_09_01::Models::BaselineResponse
          end
          def logic_app_receiver
            Azure::Monitor::Mgmt::V2018_09_01::Models::LogicAppReceiver
          end
          def time_series_information
            Azure::Monitor::Mgmt::V2018_09_01::Models::TimeSeriesInformation
          end
          def calculate_baseline_response
            Azure::Monitor::Mgmt::V2018_09_01::Models::CalculateBaselineResponse
          end
          def sensitivity
            Azure::Monitor::Mgmt::V2018_09_01::Models::Sensitivity
          end
          def result_type
            Azure::Monitor::Mgmt::V2018_09_01::Models::ResultType
          end
          def enable_request
            Azure::Monitor::Mgmt::V2017_04_01::Models::EnableRequest
          end
          def error_response
            Azure::Monitor::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def email_receiver
            Azure::Monitor::Mgmt::V2017_04_01::Models::EmailReceiver
          end
          def action_group_patch_body
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupPatchBody
          end
          def webhook_receiver
            Azure::Monitor::Mgmt::V2017_04_01::Models::WebhookReceiver
          end
          def activity_log_alert_leaf_condition
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
          end
          def azure_app_push_receiver
            Azure::Monitor::Mgmt::V2017_04_01::Models::AzureAppPushReceiver
          end
          def activity_log_alert_all_of_condition
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
          end
          def automation_runbook_receiver
            Azure::Monitor::Mgmt::V2017_04_01::Models::AutomationRunbookReceiver
          end
          def activity_log_alert_action_group
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
          end
          def itsm_receiver
            Azure::Monitor::Mgmt::V2017_04_01::Models::ItsmReceiver
          end
          def activity_log_alert_action_list
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
          end
          def sms_receiver
            Azure::Monitor::Mgmt::V2017_04_01::Models::SmsReceiver
          end
          def activity_log_alert_patch_body
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
          end
          def action_group_list
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupList
          end
          def activity_log_alert_list
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
          end
          def action_group_resource
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupResource
          end
          def activity_log_alert_resource
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
          end
          def receiver_status
            Azure::Monitor::Mgmt::V2017_04_01::Models::ReceiverStatus
          end
          def easubscription_migration_date
            Azure::Monitor::Mgmt::V2017_10_01_preview::Models::EASubscriptionMigrationDate
          end
          def resource
            Azure::Monitor::Mgmt::V2017_10_01_preview::Models::Resource
          end
          def application_insights_component_pricing_plan
            Azure::Monitor::Mgmt::V2017_10_01_preview::Models::ApplicationInsightsComponentPricingPlan
          end
        end
      end
    end
  end
end
