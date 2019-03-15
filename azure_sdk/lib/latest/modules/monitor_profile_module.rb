# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Profiles::Latest
  module Monitor
    module Mgmt
      ActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::ActivityLogs
      AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
      EventCategories = Azure::Monitor::Mgmt::V2015_04_01::EventCategories
      TenantActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::TenantActivityLogs
      Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
      AlertRules = Azure::Monitor::Mgmt::V2016_03_01::AlertRules
      AlertRuleIncidents = Azure::Monitor::Mgmt::V2016_03_01::AlertRuleIncidents
      LogProfiles = Azure::Monitor::Mgmt::V2016_03_01::LogProfiles
      ActivityLogAlerts = Azure::Monitor::Mgmt::V2017_04_01::ActivityLogAlerts
      DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations
      DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
      MetricBaseline = Azure::Monitor::Mgmt::V2017_11_01_preview::MetricBaseline
      MetricDefinitions = Azure::Monitor::Mgmt::V2018_01_01::MetricDefinitions
      Metrics = Azure::Monitor::Mgmt::V2018_01_01::Metrics
      MetricAlerts = Azure::Monitor::Mgmt::V2018_03_01::MetricAlerts
      MetricAlertsStatus = Azure::Monitor::Mgmt::V2018_03_01::MetricAlertsStatus
      ActionGroups = Azure::Monitor::Mgmt::V2018_03_01::ActionGroups
      ScheduledQueryRules = Azure::Monitor::Mgmt::V2018_04_16::ScheduledQueryRules

      module Models
        ScaleRule = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
        AutoscaleSettingResourcePatch = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
        EventDataCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
        AutoscaleSettingResourceCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
        MetricTrigger = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
        EventCategoryCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
        HttpRequestInfo = Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
        TimeWindow = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
        AutoscaleSettingResource = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
        MetricStatisticType = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
        TimeAggregationType = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
        ComparisonOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
        ScaleDirection = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
        ScaleType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
        OperationDisplay = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
        Operation = Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
        OperationListResult = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
        EventLevel = Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
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
        LocationThresholdRuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::LocationThresholdRuleCondition
        ThresholdRuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ThresholdRuleCondition
        RuleEmailAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleEmailAction
        ManagementEventRuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventRuleCondition
        AlertRuleResource = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResource
        RuleWebhookAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleWebhookAction
        ConditionOperator = Azure::Monitor::Mgmt::V2016_03_01::Models::ConditionOperator
        LogProfileResource = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResource
        TimeAggregationOperator = Azure::Monitor::Mgmt::V2016_03_01::Models::TimeAggregationOperator
        ActivityLogAlertLeafCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
        ActivityLogAlertAllOfCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
        ActivityLogAlertActionGroup = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
        ActivityLogAlertActionList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
        ActivityLogAlertPatchBody = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
        ActivityLogAlertList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
        ActivityLogAlertResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
        RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
        ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
        CategoryType = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
        MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
        LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
        DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
        DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
        DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
        DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
        Baseline = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Baseline
        BaselineResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineResponse
        BaselineMetadataValue = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineMetadataValue
        TimeSeriesInformation = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::TimeSeriesInformation
        CalculateBaselineResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::CalculateBaselineResponse
        Sensitivity = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Sensitivity
        MetricDefinitionCollection = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
        Response = Azure::Monitor::Mgmt::V2018_01_01::Models::Response
        MetricAvailability = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
        LocalizableString = Azure::Monitor::Mgmt::V2018_01_01::Models::LocalizableString
        MetricValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
        MetadataValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
        TimeSeriesElement = Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
        Unit = Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
        AggregationType = Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
        Metric = Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
        ResultType = Azure::Monitor::Mgmt::V2018_01_01::Models::ResultType
        MetricDefinition = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
        EnableRequest = Azure::Monitor::Mgmt::V2018_03_01::Models::EnableRequest
        EmailReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::EmailReceiver
        ActionGroupPatchBody = Azure::Monitor::Mgmt::V2018_03_01::Models::ActionGroupPatchBody
        WebhookReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::WebhookReceiver
        MetricDimension = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricDimension
        AzureAppPushReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::AzureAppPushReceiver
        AutomationRunbookReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::AutomationRunbookReceiver
        ItsmReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::ItsmReceiver
        SmsReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::SmsReceiver
        MetricAlertCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertCriteria
        MetricAlertResourcePatch = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourcePatch
        MetricAlertStatusProperties = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusProperties
        MetricAlertStatusCollection = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatusCollection
        MetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricCriteria
        VoiceReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::VoiceReceiver
        LogicAppReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::LogicAppReceiver
        MetricAlertAction = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertAction
        AzureFunctionReceiver = Azure::Monitor::Mgmt::V2018_03_01::Models::AzureFunctionReceiver
        MetricAlertStatus = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatus
        MetricAlertResourceCollection = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourceCollection
        MetricAlertResource = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResource
        MetricAlertSingleResourceMultipleMetricCriteria = Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertSingleResourceMultipleMetricCriteria
        ReceiverStatus = Azure::Monitor::Mgmt::V2018_03_01::Models::ReceiverStatus
        ActionGroupList = Azure::Monitor::Mgmt::V2018_03_01::Models::ActionGroupList
        ActionGroupResource = Azure::Monitor::Mgmt::V2018_03_01::Models::ActionGroupResource
        Schedule = Azure::Monitor::Mgmt::V2018_04_16::Models::Schedule
        ProvisioningState = Azure::Monitor::Mgmt::V2018_04_16::Models::ProvisioningState
        ErrorResponse = Azure::Monitor::Mgmt::V2018_04_16::Models::ErrorResponse
        LogMetricTrigger = Azure::Monitor::Mgmt::V2018_04_16::Models::LogMetricTrigger
        TriggerCondition = Azure::Monitor::Mgmt::V2018_04_16::Models::TriggerCondition
        AzNsActionGroup = Azure::Monitor::Mgmt::V2018_04_16::Models::AzNsActionGroup
        LogSearchRuleResourcePatch = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourcePatch
        LogSearchRuleResource = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResource
        Action = Azure::Monitor::Mgmt::V2018_04_16::Models::Action
        AlertingAction = Azure::Monitor::Mgmt::V2018_04_16::Models::AlertingAction
        Enabled = Azure::Monitor::Mgmt::V2018_04_16::Models::Enabled
        QueryType = Azure::Monitor::Mgmt::V2018_04_16::Models::QueryType
        LogSearchRuleResourceCollection = Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourceCollection
        MetricTriggerType = Azure::Monitor::Mgmt::V2018_04_16::Models::MetricTriggerType
        Resource = Azure::Monitor::Mgmt::V2018_04_16::Models::Resource
        AlertSeverity = Azure::Monitor::Mgmt::V2018_04_16::Models::AlertSeverity
        ConditionalOperator = Azure::Monitor::Mgmt::V2018_04_16::Models::ConditionalOperator
        Source = Azure::Monitor::Mgmt::V2018_04_16::Models::Source
      end

      class MonitorManagementClass
        attr_reader :activity_logs, :autoscale_settings, :event_categories, :tenant_activity_logs, :operations, :alert_rules, :alert_rule_incidents, :log_profiles, :activity_log_alerts, :diagnostic_settings_operations, :diagnostic_settings_category_operations, :metric_baseline, :metric_definitions, :metrics, :metric_alerts, :metric_alerts_status, :action_groups, :scheduled_query_rules, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Monitor::Mgmt::V2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @activity_logs = @client_0.activity_logs
          @autoscale_settings = @client_0.autoscale_settings
          @event_categories = @client_0.event_categories
          @tenant_activity_logs = @client_0.tenant_activity_logs
          @operations = @client_0.operations

          @client_1 = Azure::Monitor::Mgmt::V2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @alert_rules = @client_1.alert_rules
          @alert_rule_incidents = @client_1.alert_rule_incidents
          @log_profiles = @client_1.log_profiles

          @client_2 = Azure::Monitor::Mgmt::V2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @activity_log_alerts = @client_2.activity_log_alerts

          @client_3 = Azure::Monitor::Mgmt::V2017_05_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @diagnostic_settings_operations = @client_3.diagnostic_settings_operations
          @diagnostic_settings_category_operations = @client_3.diagnostic_settings_category_operations

          @client_4 = Azure::Monitor::Mgmt::V2017_11_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
          if(@client_4.respond_to?(:subscription_id))
            @client_4.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_4)
          @metric_baseline = @client_4.metric_baseline

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
          @action_groups = @client_6.action_groups

          @client_7 = Azure::Monitor::Mgmt::V2018_04_16::MonitorClient.new(configurable.credentials, base_url, options)
          if(@client_7.respond_to?(:subscription_id))
            @client_7.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_7)
          @scheduled_query_rules = @client_7.scheduled_query_rules

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Monitor/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_7.respond_to?method
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
          def time_window
            Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
          end
          def autoscale_setting_resource
            Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
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
          def operation_display
            Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
          end
          def operation
            Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
          end
          def operation_list_result
            Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
          end
          def event_level
            Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
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
          def location_threshold_rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::LocationThresholdRuleCondition
          end
          def threshold_rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::ThresholdRuleCondition
          end
          def rule_email_action
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleEmailAction
          end
          def management_event_rule_condition
            Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventRuleCondition
          end
          def alert_rule_resource
            Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResource
          end
          def rule_webhook_action
            Azure::Monitor::Mgmt::V2016_03_01::Models::RuleWebhookAction
          end
          def condition_operator
            Azure::Monitor::Mgmt::V2016_03_01::Models::ConditionOperator
          end
          def log_profile_resource
            Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResource
          end
          def time_aggregation_operator
            Azure::Monitor::Mgmt::V2016_03_01::Models::TimeAggregationOperator
          end
          def activity_log_alert_leaf_condition
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
          end
          def activity_log_alert_all_of_condition
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
          end
          def activity_log_alert_action_group
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
          end
          def activity_log_alert_action_list
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
          end
          def activity_log_alert_patch_body
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
          end
          def activity_log_alert_list
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
          end
          def activity_log_alert_resource
            Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
          end
          def retention_policy
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
          end
          def proxy_only_resource
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
          end
          def category_type
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
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
          def diagnostic_settings_resource
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
          end
          def diagnostic_settings_category_resource
            Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
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
          def metric_definition_collection
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
          end
          def response
            Azure::Monitor::Mgmt::V2018_01_01::Models::Response
          end
          def metric_availability
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
          end
          def localizable_string
            Azure::Monitor::Mgmt::V2018_01_01::Models::LocalizableString
          end
          def metric_value
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
          end
          def metadata_value
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
          end
          def time_series_element
            Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
          end
          def unit
            Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
          end
          def aggregation_type
            Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
          end
          def metric
            Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
          end
          def result_type
            Azure::Monitor::Mgmt::V2018_01_01::Models::ResultType
          end
          def metric_definition
            Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
          end
          def enable_request
            Azure::Monitor::Mgmt::V2018_03_01::Models::EnableRequest
          end
          def email_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::EmailReceiver
          end
          def action_group_patch_body
            Azure::Monitor::Mgmt::V2018_03_01::Models::ActionGroupPatchBody
          end
          def webhook_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::WebhookReceiver
          end
          def metric_dimension
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricDimension
          end
          def azure_app_push_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::AzureAppPushReceiver
          end
          def automation_runbook_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::AutomationRunbookReceiver
          end
          def itsm_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::ItsmReceiver
          end
          def sms_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::SmsReceiver
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
          def voice_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::VoiceReceiver
          end
          def logic_app_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::LogicAppReceiver
          end
          def metric_alert_action
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertAction
          end
          def azure_function_receiver
            Azure::Monitor::Mgmt::V2018_03_01::Models::AzureFunctionReceiver
          end
          def metric_alert_status
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertStatus
          end
          def metric_alert_resource_collection
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResourceCollection
          end
          def metric_alert_resource
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertResource
          end
          def metric_alert_single_resource_multiple_metric_criteria
            Azure::Monitor::Mgmt::V2018_03_01::Models::MetricAlertSingleResourceMultipleMetricCriteria
          end
          def receiver_status
            Azure::Monitor::Mgmt::V2018_03_01::Models::ReceiverStatus
          end
          def action_group_list
            Azure::Monitor::Mgmt::V2018_03_01::Models::ActionGroupList
          end
          def action_group_resource
            Azure::Monitor::Mgmt::V2018_03_01::Models::ActionGroupResource
          end
          def schedule
            Azure::Monitor::Mgmt::V2018_04_16::Models::Schedule
          end
          def provisioning_state
            Azure::Monitor::Mgmt::V2018_04_16::Models::ProvisioningState
          end
          def error_response
            Azure::Monitor::Mgmt::V2018_04_16::Models::ErrorResponse
          end
          def log_metric_trigger
            Azure::Monitor::Mgmt::V2018_04_16::Models::LogMetricTrigger
          end
          def trigger_condition
            Azure::Monitor::Mgmt::V2018_04_16::Models::TriggerCondition
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
          def action
            Azure::Monitor::Mgmt::V2018_04_16::Models::Action
          end
          def alerting_action
            Azure::Monitor::Mgmt::V2018_04_16::Models::AlertingAction
          end
          def enabled
            Azure::Monitor::Mgmt::V2018_04_16::Models::Enabled
          end
          def query_type
            Azure::Monitor::Mgmt::V2018_04_16::Models::QueryType
          end
          def log_search_rule_resource_collection
            Azure::Monitor::Mgmt::V2018_04_16::Models::LogSearchRuleResourceCollection
          end
          def metric_trigger_type
            Azure::Monitor::Mgmt::V2018_04_16::Models::MetricTriggerType
          end
          def resource
            Azure::Monitor::Mgmt::V2018_04_16::Models::Resource
          end
          def alert_severity
            Azure::Monitor::Mgmt::V2018_04_16::Models::AlertSeverity
          end
          def conditional_operator
            Azure::Monitor::Mgmt::V2018_04_16::Models::ConditionalOperator
          end
          def source
            Azure::Monitor::Mgmt::V2018_04_16::Models::Source
          end
        end
      end
    end
  end
end
