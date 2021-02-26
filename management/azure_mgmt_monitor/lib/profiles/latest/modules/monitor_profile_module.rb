# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Profiles::Latest
  module Mgmt
    ActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::ActivityLogs
    AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
    EventCategories = Azure::Monitor::Mgmt::V2015_04_01::EventCategories
    Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
    TenantActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::TenantActivityLogs
    AlertRuleIncidents = Azure::Monitor::Mgmt::V2016_03_01::AlertRuleIncidents
    AlertRules = Azure::Monitor::Mgmt::V2016_03_01::AlertRules
    LogProfiles = Azure::Monitor::Mgmt::V2016_03_01::LogProfiles
    DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
    DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations
    SubscriptionDiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::SubscriptionDiagnosticSettingsOperations
    MetricBaseline = Azure::Monitor::Mgmt::V2017_11_01_preview::MetricBaseline
    MetricNamespaces = Azure::Monitor::Mgmt::V2017_12_01_preview::MetricNamespaces
    MetricDefinitions = Azure::Monitor::Mgmt::V2018_01_01::MetricDefinitions
    Metrics = Azure::Monitor::Mgmt::V2018_01_01::Metrics
    MetricAlerts = Azure::Monitor::Mgmt::V2018_03_01::MetricAlerts
    MetricAlertsStatus = Azure::Monitor::Mgmt::V2018_03_01::MetricAlertsStatus
    ScheduledQueryRules = Azure::Monitor::Mgmt::V2018_04_16::ScheduledQueryRules
    VMInsights = Azure::Monitor::Mgmt::V2018_11_27_preview::VMInsights
    Baselines = Azure::Monitor::Mgmt::V2019_03_01::Baselines
    ActionGroups = Azure::Monitor::Mgmt::V2019_06_01::ActionGroups
    PrivateLinkScopes = Azure::Monitor::Mgmt::V2019_10_17_preview::PrivateLinkScopes
    PrivateLinkScopeOperationStatus = Azure::Monitor::Mgmt::V2019_10_17_preview::PrivateLinkScopeOperationStatus
    PrivateLinkResources = Azure::Monitor::Mgmt::V2019_10_17_preview::PrivateLinkResources
    PrivateEndpointConnections = Azure::Monitor::Mgmt::V2019_10_17_preview::PrivateEndpointConnections
    PrivateLinkScopedResources = Azure::Monitor::Mgmt::V2019_10_17_preview::PrivateLinkScopedResources
    ActivityLogAlerts = Azure::Monitor::Mgmt::V2020_10_01::ActivityLogAlerts

    module Models
      RecurrentSchedule = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      Recurrence = Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
      HttpRequestInfo = Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
      AutoscaleProfile = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      EventDataCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
      EmailNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      WebhookNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      ScaleRuleMetricDimension = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimension
      AutoscaleNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
      ScaleAction = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
      ScaleRule = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
      SenderAuthorization = Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
      AutoscaleSettingResourcePatch = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      AutoscaleSettingResourceCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
      MetricTrigger = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
      EventCategoryCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
      EventData = Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
      OperationDisplay = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
      TimeWindow = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
      Operation = Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
      ScaleCapacity = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
      OperationListResult = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
      AutoscaleSettingResource = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
      EventLevel = Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
      MetricStatisticType = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
      TimeAggregationType = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
      ComparisonOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
      ScaleRuleMetricDimensionOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimensionOperationType
      ScaleDirection = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      ScaleType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      RecurrenceFrequency = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
      Incident = Azure::Monitor::Mgmt::V2016_03_01::Models::Incident
      RuleAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleAction
      RuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleCondition
      RuleManagementEventClaimsDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventClaimsDataSource
      LogProfileCollection = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileCollection
      LogProfileResourcePatch = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResourcePatch
      IncidentListResult = Azure::Monitor::Mgmt::V2016_03_01::Models::IncidentListResult
      ManagementEventAggregationCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventAggregationCondition
      AlertRuleResourcePatch = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourcePatch
      RuleDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleDataSource
      AlertRuleResourceCollection = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourceCollection
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
      ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      SubscriptionProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionProxyOnlyResource
      MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      SubscriptionDiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResourceCollection
      SubscriptionLogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionLogSettings
      DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      SubscriptionDiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResource
      CategoryType = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      Baseline = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Baseline
      BaselineResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineResponse
      BaselineMetadataValue = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineMetadataValue
      TimeSeriesInformation = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::TimeSeriesInformation
      CalculateBaselineResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::CalculateBaselineResponse
      Sensitivity = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Sensitivity
      MetricNamespaceCollection = Azure::Monitor::Mgmt::V2017_12_01_preview::Models::MetricNamespaceCollection
      MetricNamespaceName = Azure::Monitor::Mgmt::V2017_12_01_preview::Models::MetricNamespaceName
      MetricNamespace = Azure::Monitor::Mgmt::V2017_12_01_preview::Models::MetricNamespace
      MetricValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
      LocalizableString = Azure::Monitor::Mgmt::V2018_01_01::Models::LocalizableString
      MetadataValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
      MetricDefinition = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
      TimeSeriesElement = Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
      Metric = Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
      MetricDefinitionCollection = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
      Response = Azure::Monitor::Mgmt::V2018_01_01::Models::Response
      MetricAvailability = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
      Unit = Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
      AggregationType = Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
      MetricAlertAction = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertAction
      MetricAlertCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertCriteria
      MetricAlertResourcePatch = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourcePatch
      MetricAlertResourceCollection = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourceCollection
      MetricAlertStatusProperties = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusProperties
      MetricAlertStatus = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatus
      MetricDimension = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricDimension
      MetricAlertStatusCollection = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusCollection
      DynamicThresholdFailingPeriods = Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicThresholdFailingPeriods
      MultiMetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MultiMetricCriteria
      MetricAlertResource = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResource
      MetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricCriteria
      MetricAlertSingleResourceMultipleMetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertSingleResourceMultipleMetricCriteria
      WebtestLocationAvailabilityCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::WebtestLocationAvailabilityCriteria
      MetricAlertMultipleResourceMultipleMetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertMultipleResourceMultipleMetricCriteria
      DynamicMetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicMetricCriteria
      Operator = Azure::Monitor::Mgmt::V2018_03_01::Models::Operator
      DynamicThresholdOperator = Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicThresholdOperator
      DynamicThresholdSensitivity = Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicThresholdSensitivity
      LogMetricTrigger = Azure::Monitor::Mgmt::V2018_04_16::Models::LogMetricTrigger
      TriggerCondition = Azure::Monitor::Mgmt::V2018_04_16::Models::TriggerCondition
      Source = Azure::Monitor::Mgmt::V2018_04_16::Models::Source
      AzNsActionGroup = Azure::Monitor::Mgmt::V2018_04_16::Models::AzNsActionGroup
      Action = Azure::Monitor::Mgmt::V2018_04_16::Models::Action
      Schedule = Azure::Monitor::Mgmt::V2018_04_16::Models::Schedule
      LogSearchRuleResourceCollection = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourceCollection
      LogSearchRuleResourcePatch = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourcePatch
      Dimension = Azure::Monitor::Mgmt::V2018_04_16::Models::Dimension
      Criteria = Azure::Monitor::Mgmt::V2018_04_16::Models::Criteria
      LogSearchRuleResource = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResource
      AlertingAction = Azure::Monitor::Mgmt::V2018_04_16::Models::AlertingAction
      LogToMetricAction = Azure::Monitor::Mgmt::V2018_04_16::Models::LogToMetricAction
      Enabled = Azure::Monitor::Mgmt::V2018_04_16::Models::Enabled
      ProvisioningState = Azure::Monitor::Mgmt::V2018_04_16::Models::ProvisioningState
      QueryType = Azure::Monitor::Mgmt::V2018_04_16::Models::QueryType
      ConditionalOperator = Azure::Monitor::Mgmt::V2018_04_16::Models::ConditionalOperator
      MetricTriggerType = Azure::Monitor::Mgmt::V2018_04_16::Models::MetricTriggerType
      AlertSeverity = Azure::Monitor::Mgmt::V2018_04_16::Models::AlertSeverity
      WorkspaceInfo = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::WorkspaceInfo
      DataContainer = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::DataContainer
      ResponseWithError = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::ResponseWithError
      Error = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::Error
      VMInsightsOnboardingStatus = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::VMInsightsOnboardingStatus
      OnboardingStatus = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::OnboardingStatus
      DataStatus = Azure::Monitor::Mgmt::V2018_11_27_preview::Models::DataStatus
      MetricSingleDimension = Azure::Monitor::Mgmt::V2019_03_01::Models::MetricSingleDimension
      SingleBaseline = Azure::Monitor::Mgmt::V2019_03_01::Models::SingleBaseline
      BaselineMetadata = Azure::Monitor::Mgmt::V2019_03_01::Models::BaselineMetadata
      TimeSeriesBaseline = Azure::Monitor::Mgmt::V2019_03_01::Models::TimeSeriesBaseline
      SingleMetricBaseline = Azure::Monitor::Mgmt::V2019_03_01::Models::SingleMetricBaseline
      MetricBaselinesResponse = Azure::Monitor::Mgmt::V2019_03_01::Models::MetricBaselinesResponse
      BaselineSensitivity = Azure::Monitor::Mgmt::V2019_03_01::Models::BaselineSensitivity
      ResultType = Azure::Monitor::Mgmt::V2019_03_01::Models::ResultType
      LogicAppReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::LogicAppReceiver
      Resource = Azure::Monitor::Mgmt::V2019_06_01::Models::Resource
      AzureFunctionReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::AzureFunctionReceiver
      SmsReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::SmsReceiver
      ArmRoleReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::ArmRoleReceiver
      ItsmReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::ItsmReceiver
      AzureAppPushReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::AzureAppPushReceiver
      VoiceReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::VoiceReceiver
      ActionGroupList = Azure::Monitor::Mgmt::V2019_06_01::Models::ActionGroupList
      WebhookReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::WebhookReceiver
      EnableRequest = Azure::Monitor::Mgmt::V2019_06_01::Models::EnableRequest
      EmailReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::EmailReceiver
      AutomationRunbookReceiver = Azure::Monitor::Mgmt::V2019_06_01::Models::AutomationRunbookReceiver
      ActionGroupPatchBody = Azure::Monitor::Mgmt::V2019_06_01::Models::ActionGroupPatchBody
      ActionGroupResource = Azure::Monitor::Mgmt::V2019_06_01::Models::ActionGroupResource
      ReceiverStatus = Azure::Monitor::Mgmt::V2019_06_01::Models::ReceiverStatus
      PrivateLinkServiceConnectionStateProperty = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkServiceConnectionStateProperty
      ScopedResourceListResult = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ScopedResourceListResult
      ProxyResource = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ProxyResource
      OperationStatus = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::OperationStatus
      TagsResource = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::TagsResource
      AzureMonitorPrivateLinkScopeListResult = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::AzureMonitorPrivateLinkScopeListResult
      ErrorAdditionalInfo = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ErrorAdditionalInfo
      PrivateEndpointProperty = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateEndpointProperty
      PrivateLinkResourceListResult = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkResourceListResult
      PrivateLinkScopesResource = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkScopesResource
      PrivateEndpointConnectionListResult = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateEndpointConnectionListResult
      ErrorResponseCommon = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ErrorResponseCommon
      PrivateEndpointConnection = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateEndpointConnection
      AzureMonitorPrivateLinkScope = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::AzureMonitorPrivateLinkScope
      PrivateLinkResource = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkResource
      ScopedResource = Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ScopedResource
      ActionList = Azure::Monitor::Mgmt::V2020_10_01::Models::ActionList
      AzureResource = Azure::Monitor::Mgmt::V2020_10_01::Models::AzureResource
      AlertRuleLeafCondition = Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleLeafCondition
      AlertRuleAllOfCondition = Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleAllOfCondition
      AlertRuleList = Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleList
      ErrorResponse = Azure::Monitor::Mgmt::V2020_10_01::Models::ErrorResponse
      ActionGroup = Azure::Monitor::Mgmt::V2020_10_01::Models::ActionGroup
      AlertRulePatchObject = Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRulePatchObject
      AlertRuleAnyOfOrLeafCondition = Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleAnyOfOrLeafCondition
      ActivityLogAlertResource = Azure::Monitor::Mgmt::V2020_10_01::Models::ActivityLogAlertResource
    end

    #
    # MonitorManagementClass
    #
    class MonitorManagementClass
      attr_reader :activity_logs, :autoscale_settings, :event_categories, :operations, :tenant_activity_logs, :alert_rule_incidents, :alert_rules, :log_profiles, :diagnostic_settings_category_operations, :diagnostic_settings_operations, :subscription_diagnostic_settings_operations, :metric_baseline, :metric_namespaces, :metric_definitions, :metrics, :metric_alerts, :metric_alerts_status, :scheduled_query_rules, :vminsights, :baselines, :action_groups, :private_link_scopes, :private_link_scope_operation_status, :private_link_resources, :private_endpoint_connections, :private_link_scoped_resources, :activity_log_alerts, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Monitor::Mgmt::V2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @activity_logs = @client_0.activity_logs
        @autoscale_settings = @client_0.autoscale_settings
        @event_categories = @client_0.event_categories
        @operations = @client_0.operations
        @tenant_activity_logs = @client_0.tenant_activity_logs

        @client_1 = Azure::Monitor::Mgmt::V2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @alert_rule_incidents = @client_1.alert_rule_incidents
        @alert_rules = @client_1.alert_rules
        @log_profiles = @client_1.log_profiles

        @client_2 = Azure::Monitor::Mgmt::V2017_05_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @diagnostic_settings_category_operations = @client_2.diagnostic_settings_category_operations
        @diagnostic_settings_operations = @client_2.diagnostic_settings_operations
        @subscription_diagnostic_settings_operations = @client_2.subscription_diagnostic_settings_operations

        @client_3 = Azure::Monitor::Mgmt::V2017_11_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @metric_baseline = @client_3.metric_baseline

        @client_4 = Azure::Monitor::Mgmt::V2017_12_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_4.respond_to?(:subscription_id))
          @client_4.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_4)
        @metric_namespaces = @client_4.metric_namespaces

        @client_5 = Azure::Monitor::Mgmt::V2018_01_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_5.respond_to?(:subscription_id))
          @client_5.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_5)
        @metric_definitions = @client_5.metric_definitions
        @metrics = @client_5.metrics

        @client_6 = Azure::Monitor::Mgmt::V2018_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_6.respond_to?(:subscription_id))
          @client_6.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_6)
        @metric_alerts = @client_6.metric_alerts
        @metric_alerts_status = @client_6.metric_alerts_status

        @client_7 = Azure::Monitor::Mgmt::V2018_04_16::MonitorClient.new(configurable.credentials, base_url, options)
        if(@client_7.respond_to?(:subscription_id))
          @client_7.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_7)
        @scheduled_query_rules = @client_7.scheduled_query_rules

        @client_8 = Azure::Monitor::Mgmt::V2018_11_27_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_8.respond_to?(:subscription_id))
          @client_8.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_8)
        @vminsights = @client_8.vminsights

        @client_9 = Azure::Monitor::Mgmt::V2019_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_9.respond_to?(:subscription_id))
          @client_9.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_9)
        @baselines = @client_9.baselines

        @client_10 = Azure::Monitor::Mgmt::V2019_06_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_10.respond_to?(:subscription_id))
          @client_10.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_10)
        @action_groups = @client_10.action_groups

        @client_11 = Azure::Monitor::Mgmt::V2019_10_17_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_11.respond_to?(:subscription_id))
          @client_11.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_11)
        @private_link_scopes = @client_11.private_link_scopes
        @private_link_scope_operation_status = @client_11.private_link_scope_operation_status
        @private_link_resources = @client_11.private_link_resources
        @private_endpoint_connections = @client_11.private_endpoint_connections
        @private_link_scoped_resources = @client_11.private_link_scoped_resources

        @client_12 = Azure::Monitor::Mgmt::V2020_10_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_12.respond_to?(:subscription_id))
          @client_12.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_12)
        @activity_log_alerts = @client_12.activity_log_alerts

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Monitor/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_12.respond_to?method
          @client_12.send(method, *args)
        elsif @client_11.respond_to?method
          @client_11.send(method, *args)
        elsif @client_10.respond_to?method
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

    end

    class ModelClasses
      def recurrent_schedule
        Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      end
      def recurrence
        Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
      end
      def http_request_info
        Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
      end
      def autoscale_profile
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      end
      def event_data_collection
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
      end
      def email_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      end
      def webhook_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      end
      def scale_rule_metric_dimension
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimension
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
      def sender_authorization
        Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
      end
      def autoscale_setting_resource_patch
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
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
      def event_data
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
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
      def scale_capacity
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
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
      def scale_rule_metric_dimension_operation_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimensionOperationType
      end
      def scale_direction
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      end
      def scale_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      end
      def recurrence_frequency
        Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
      end
      def incident
        Azure::Monitor::Mgmt::V2016_03_01::Models::Incident
      end
      def rule_action
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleAction
      end
      def rule_condition
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleCondition
      end
      def rule_management_event_claims_data_source
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventClaimsDataSource
      end
      def log_profile_collection
        Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileCollection
      end
      def log_profile_resource_patch
        Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResourcePatch
      end
      def incident_list_result
        Azure::Monitor::Mgmt::V2016_03_01::Models::IncidentListResult
      end
      def management_event_aggregation_condition
        Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventAggregationCondition
      end
      def alert_rule_resource_patch
        Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourcePatch
      end
      def rule_data_source
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleDataSource
      end
      def alert_rule_resource_collection
        Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourceCollection
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
      def proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      end
      def diagnostic_settings_category_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      end
      def retention_policy
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      end
      def log_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      end
      def diagnostic_settings_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      end
      def subscription_proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionProxyOnlyResource
      end
      def metric_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      end
      def subscription_diagnostic_settings_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResourceCollection
      end
      def subscription_log_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionLogSettings
      end
      def diagnostic_settings_category_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      end
      def diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      end
      def subscription_diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResource
      end
      def category_type
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      end
      def baseline
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Baseline
      end
      def baseline_response
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineResponse
      end
      def baseline_metadata_value
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineMetadataValue
      end
      def time_series_information
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::TimeSeriesInformation
      end
      def calculate_baseline_response
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::CalculateBaselineResponse
      end
      def sensitivity
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Sensitivity
      end
      def metric_namespace_collection
        Azure::Monitor::Mgmt::V2017_12_01_preview::Models::MetricNamespaceCollection
      end
      def metric_namespace_name
        Azure::Monitor::Mgmt::V2017_12_01_preview::Models::MetricNamespaceName
      end
      def metric_namespace
        Azure::Monitor::Mgmt::V2017_12_01_preview::Models::MetricNamespace
      end
      def metric_value
        Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
      end
      def localizable_string
        Azure::Monitor::Mgmt::V2018_01_01::Models::LocalizableString
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
      def metric_alert_action
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertAction
      end
      def metric_alert_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertCriteria
      end
      def metric_alert_resource_patch
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourcePatch
      end
      def metric_alert_resource_collection
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourceCollection
      end
      def metric_alert_status_properties
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusProperties
      end
      def metric_alert_status
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatus
      end
      def metric_dimension
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricDimension
      end
      def metric_alert_status_collection
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusCollection
      end
      def dynamic_threshold_failing_periods
        Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicThresholdFailingPeriods
      end
      def multi_metric_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::MultiMetricCriteria
      end
      def metric_alert_resource
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResource
      end
      def metric_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricCriteria
      end
      def metric_alert_single_resource_multiple_metric_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertSingleResourceMultipleMetricCriteria
      end
      def webtest_location_availability_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::WebtestLocationAvailabilityCriteria
      end
      def metric_alert_multiple_resource_multiple_metric_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertMultipleResourceMultipleMetricCriteria
      end
      def dynamic_metric_criteria
        Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicMetricCriteria
      end
      def operator
        Azure::Monitor::Mgmt::V2018_03_01::Models::Operator
      end
      def dynamic_threshold_operator
        Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicThresholdOperator
      end
      def dynamic_threshold_sensitivity
        Azure::Monitor::Mgmt::V2018_03_01::Models::DynamicThresholdSensitivity
      end
      def log_metric_trigger
        Azure::Monitor::Mgmt::V2018_04_16::Models::LogMetricTrigger
      end
      def trigger_condition
        Azure::Monitor::Mgmt::V2018_04_16::Models::TriggerCondition
      end
      def source
        Azure::Monitor::Mgmt::V2018_04_16::Models::Source
      end
      def az_ns_action_group
        Azure::Monitor::Mgmt::V2018_04_16::Models::AzNsActionGroup
      end
      def action
        Azure::Monitor::Mgmt::V2018_04_16::Models::Action
      end
      def schedule
        Azure::Monitor::Mgmt::V2018_04_16::Models::Schedule
      end
      def log_search_rule_resource_collection
        Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourceCollection
      end
      def log_search_rule_resource_patch
        Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourcePatch
      end
      def dimension
        Azure::Monitor::Mgmt::V2018_04_16::Models::Dimension
      end
      def criteria
        Azure::Monitor::Mgmt::V2018_04_16::Models::Criteria
      end
      def log_search_rule_resource
        Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResource
      end
      def alerting_action
        Azure::Monitor::Mgmt::V2018_04_16::Models::AlertingAction
      end
      def log_to_metric_action
        Azure::Monitor::Mgmt::V2018_04_16::Models::LogToMetricAction
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
      def workspace_info
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::WorkspaceInfo
      end
      def data_container
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::DataContainer
      end
      def response_with_error
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::ResponseWithError
      end
      def error
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::Error
      end
      def vminsights_onboarding_status
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::VMInsightsOnboardingStatus
      end
      def onboarding_status
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::OnboardingStatus
      end
      def data_status
        Azure::Monitor::Mgmt::V2018_11_27_preview::Models::DataStatus
      end
      def metric_single_dimension
        Azure::Monitor::Mgmt::V2019_03_01::Models::MetricSingleDimension
      end
      def single_baseline
        Azure::Monitor::Mgmt::V2019_03_01::Models::SingleBaseline
      end
      def baseline_metadata
        Azure::Monitor::Mgmt::V2019_03_01::Models::BaselineMetadata
      end
      def time_series_baseline
        Azure::Monitor::Mgmt::V2019_03_01::Models::TimeSeriesBaseline
      end
      def single_metric_baseline
        Azure::Monitor::Mgmt::V2019_03_01::Models::SingleMetricBaseline
      end
      def metric_baselines_response
        Azure::Monitor::Mgmt::V2019_03_01::Models::MetricBaselinesResponse
      end
      def baseline_sensitivity
        Azure::Monitor::Mgmt::V2019_03_01::Models::BaselineSensitivity
      end
      def result_type
        Azure::Monitor::Mgmt::V2019_03_01::Models::ResultType
      end
      def logic_app_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::LogicAppReceiver
      end
      def resource
        Azure::Monitor::Mgmt::V2019_06_01::Models::Resource
      end
      def azure_function_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::AzureFunctionReceiver
      end
      def sms_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::SmsReceiver
      end
      def arm_role_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::ArmRoleReceiver
      end
      def itsm_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::ItsmReceiver
      end
      def azure_app_push_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::AzureAppPushReceiver
      end
      def voice_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::VoiceReceiver
      end
      def action_group_list
        Azure::Monitor::Mgmt::V2019_06_01::Models::ActionGroupList
      end
      def webhook_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::WebhookReceiver
      end
      def enable_request
        Azure::Monitor::Mgmt::V2019_06_01::Models::EnableRequest
      end
      def email_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::EmailReceiver
      end
      def automation_runbook_receiver
        Azure::Monitor::Mgmt::V2019_06_01::Models::AutomationRunbookReceiver
      end
      def action_group_patch_body
        Azure::Monitor::Mgmt::V2019_06_01::Models::ActionGroupPatchBody
      end
      def action_group_resource
        Azure::Monitor::Mgmt::V2019_06_01::Models::ActionGroupResource
      end
      def receiver_status
        Azure::Monitor::Mgmt::V2019_06_01::Models::ReceiverStatus
      end
      def private_link_service_connection_state_property
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkServiceConnectionStateProperty
      end
      def scoped_resource_list_result
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ScopedResourceListResult
      end
      def proxy_resource
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ProxyResource
      end
      def operation_status
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::OperationStatus
      end
      def tags_resource
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::TagsResource
      end
      def azure_monitor_private_link_scope_list_result
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::AzureMonitorPrivateLinkScopeListResult
      end
      def error_additional_info
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ErrorAdditionalInfo
      end
      def private_endpoint_property
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateEndpointProperty
      end
      def private_link_resource_list_result
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkResourceListResult
      end
      def private_link_scopes_resource
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkScopesResource
      end
      def private_endpoint_connection_list_result
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateEndpointConnectionListResult
      end
      def error_response_common
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ErrorResponseCommon
      end
      def private_endpoint_connection
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateEndpointConnection
      end
      def azure_monitor_private_link_scope
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::AzureMonitorPrivateLinkScope
      end
      def private_link_resource
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::PrivateLinkResource
      end
      def scoped_resource
        Azure::Monitor::Mgmt::V2019_10_17_preview::Models::ScopedResource
      end
      def action_list
        Azure::Monitor::Mgmt::V2020_10_01::Models::ActionList
      end
      def azure_resource
        Azure::Monitor::Mgmt::V2020_10_01::Models::AzureResource
      end
      def alert_rule_leaf_condition
        Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleLeafCondition
      end
      def alert_rule_all_of_condition
        Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleAllOfCondition
      end
      def alert_rule_list
        Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleList
      end
      def error_response
        Azure::Monitor::Mgmt::V2020_10_01::Models::ErrorResponse
      end
      def action_group
        Azure::Monitor::Mgmt::V2020_10_01::Models::ActionGroup
      end
      def alert_rule_patch_object
        Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRulePatchObject
      end
      def alert_rule_any_of_or_leaf_condition
        Azure::Monitor::Mgmt::V2020_10_01::Models::AlertRuleAnyOfOrLeafCondition
      end
      def activity_log_alert_resource
        Azure::Monitor::Mgmt::V2020_10_01::Models::ActivityLogAlertResource
      end
    end
  end
end
