# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Profiles::Latest
  module Mgmt
    EventCategories = Azure::Monitor::Mgmt::V2015_04_01::EventCategories
    Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
    TenantActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::TenantActivityLogs
    ActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::ActivityLogs
    AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
    LogProfiles = Azure::Monitor::Mgmt::V2016_03_01::LogProfiles
    AlertRules = Azure::Monitor::Mgmt::V2016_03_01::AlertRules
    AlertRuleIncidents = Azure::Monitor::Mgmt::V2016_03_01::AlertRuleIncidents
    ActionGroups = Azure::Monitor::Mgmt::V2017_04_01::ActionGroups
    ActivityLogAlerts = Azure::Monitor::Mgmt::V2017_04_01::ActivityLogAlerts
    Metrics = Azure::Monitor::Mgmt::V2017_05_01_preview::Metrics
    MetricDefinitions = Azure::Monitor::Mgmt::V2017_05_01_preview::MetricDefinitions
    DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations
    DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
    MetricBaseline = Azure::Monitor::Mgmt::V2017_11_01_preview::MetricBaseline

    module Models
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
      RecurrenceFrequency = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
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
      LogProfileResource = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResource
      AlertRuleResource = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResource
      TimeAggregationOperator = Azure::Monitor::Mgmt::V2016_03_01::Models::TimeAggregationOperator
      ConditionOperator = Azure::Monitor::Mgmt::V2016_03_01::Models::ConditionOperator
      ActivityLogAlertAllOfCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
      AutomationRunbookReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::AutomationRunbookReceiver
      ActivityLogAlertActionGroup = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
      ItsmReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::ItsmReceiver
      ActivityLogAlertLeafCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
      ActivityLogAlertActionList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
      SmsReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::SmsReceiver
      ActivityLogAlertPatchBody = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
      ActionGroupList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupList
      ActivityLogAlertList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
      ActionGroupResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupResource
      Resource = Azure::Monitor::Mgmt::V2017_04_01::Models::Resource
      ReceiverStatus = Azure::Monitor::Mgmt::V2017_04_01::Models::ReceiverStatus
      ActivityLogAlertResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
      EnableRequest = Azure::Monitor::Mgmt::V2017_04_01::Models::EnableRequest
      EmailReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::EmailReceiver
      ActionGroupPatchBody = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupPatchBody
      WebhookReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::WebhookReceiver
      AzureAppPushReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::AzureAppPushReceiver
      MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      MetricValue = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricValue
      DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      MetadataValue = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetadataValue
      TimeSeriesElement = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::TimeSeriesElement
      Response = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::Response
      DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      Metric = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::Metric
      CategoryType = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      MetricDefinition = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricDefinition
      MetricDefinitionCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricDefinitionCollection
      MetricAvailability = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricAvailability
      RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      Unit = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::Unit
      AggregationType = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::AggregationType
      Sensitivity = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Sensitivity
      LocalizableString = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::LocalizableString
      ResultType = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::ResultType
      ErrorResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::ErrorResponse
      Baseline = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Baseline
      BaselineResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineResponse
      BaselineMetadataValue = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::BaselineMetadataValue
      TimeSeriesInformation = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::TimeSeriesInformation
      CalculateBaselineResponse = Azure::Monitor::Mgmt::V2017_11_01_preview::Models::CalculateBaselineResponse
    end

    #
    # MonitorManagementClass
    #
    class MonitorManagementClass
      attr_reader :event_categories, :operations, :tenant_activity_logs, :activity_logs, :autoscale_settings, :log_profiles, :alert_rules, :alert_rule_incidents, :action_groups, :activity_log_alerts, :metrics, :metric_definitions, :diagnostic_settings_operations, :diagnostic_settings_category_operations, :metric_baseline, :configurable, :base_url, :options, :model_classes

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
        @event_categories = @client_0.event_categories
        @operations = @client_0.operations
        @tenant_activity_logs = @client_0.tenant_activity_logs
        @activity_logs = @client_0.activity_logs
        @autoscale_settings = @client_0.autoscale_settings

        @client_1 = Azure::Monitor::Mgmt::V2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @log_profiles = @client_1.log_profiles
        @alert_rules = @client_1.alert_rules
        @alert_rule_incidents = @client_1.alert_rule_incidents

        @client_2 = Azure::Monitor::Mgmt::V2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @action_groups = @client_2.action_groups
        @activity_log_alerts = @client_2.activity_log_alerts

        @client_3 = Azure::Monitor::Mgmt::V2017_05_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @metrics = @client_3.metrics
        @metric_definitions = @client_3.metric_definitions
        @diagnostic_settings_operations = @client_3.diagnostic_settings_operations
        @diagnostic_settings_category_operations = @client_3.diagnostic_settings_category_operations

        @client_4 = Azure::Monitor::Mgmt::V2017_11_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_4.respond_to?(:subscription_id))
          @client_4.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_4)
        @metric_baseline = @client_4.metric_baseline

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Monitor/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_4.respond_to?method
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
      def recurrence_frequency
        Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
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
      def log_profile_resource
        Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResource
      end
      def alert_rule_resource
        Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResource
      end
      def time_aggregation_operator
        Azure::Monitor::Mgmt::V2016_03_01::Models::TimeAggregationOperator
      end
      def condition_operator
        Azure::Monitor::Mgmt::V2016_03_01::Models::ConditionOperator
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
      def activity_log_alert_leaf_condition
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
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
      def resource
        Azure::Monitor::Mgmt::V2017_04_01::Models::Resource
      end
      def receiver_status
        Azure::Monitor::Mgmt::V2017_04_01::Models::ReceiverStatus
      end
      def activity_log_alert_resource
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
      end
      def enable_request
        Azure::Monitor::Mgmt::V2017_04_01::Models::EnableRequest
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
      def azure_app_push_receiver
        Azure::Monitor::Mgmt::V2017_04_01::Models::AzureAppPushReceiver
      end
      def metric_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      end
      def log_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      end
      def proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      end
      def diagnostic_settings_category_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      end
      def metric_value
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricValue
      end
      def diagnostic_settings_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      end
      def metadata_value
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetadataValue
      end
      def time_series_element
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::TimeSeriesElement
      end
      def response
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::Response
      end
      def diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      end
      def metric
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::Metric
      end
      def category_type
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      end
      def diagnostic_settings_category_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      end
      def metric_definition
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricDefinition
      end
      def metric_definition_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricDefinitionCollection
      end
      def metric_availability
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricAvailability
      end
      def retention_policy
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      end
      def unit
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::Unit
      end
      def aggregation_type
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::AggregationType
      end
      def sensitivity
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::Sensitivity
      end
      def localizable_string
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::LocalizableString
      end
      def result_type
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::ResultType
      end
      def error_response
        Azure::Monitor::Mgmt::V2017_11_01_preview::Models::ErrorResponse
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
    end
  end
end
