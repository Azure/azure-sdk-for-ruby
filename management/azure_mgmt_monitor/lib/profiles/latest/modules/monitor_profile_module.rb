# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Profiles::Latest
  module Mgmt
    AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
    Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
    AlertRuleIncidents = Azure::Monitor::Mgmt::V2016_03_01::AlertRuleIncidents
    AlertRules = Azure::Monitor::Mgmt::V2016_03_01::AlertRules
    LogProfiles = Azure::Monitor::Mgmt::V2016_03_01::LogProfiles
    ActionGroups = Azure::Monitor::Mgmt::V2017_04_01::ActionGroups
    ActivityLogAlerts = Azure::Monitor::Mgmt::V2017_04_01::ActivityLogAlerts
    DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
    DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations

    module Models
      EmailNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      WebhookNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      ScaleCapacity = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
      AutoscaleNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
      ScaleAction = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
      ScaleRule = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
      RecurrentSchedule = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      AutoscaleSettingResourcePatch = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      AutoscaleProfile = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      AutoscaleSettingResourceCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
      MetricTrigger = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
      Recurrence = Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
      OperationDisplay = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
      TimeWindow = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
      Operation = Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
      OperationListResult = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
      AutoscaleSettingResource = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
      MetricStatisticType = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
      TimeAggregationType = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
      ComparisonOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
      ScaleDirection = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      ScaleType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      RecurrenceFrequency = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
      AlertRuleResourcePatch = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourcePatch
      Incident = Azure::Monitor::Mgmt::V2016_03_01::Models::Incident
      AlertRuleResourceCollection = Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourceCollection
      ManagementEventAggregationCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventAggregationCondition
      RuleCondition = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleCondition
      RuleManagementEventClaimsDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventClaimsDataSource
      RuleAction = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleAction
      IncidentListResult = Azure::Monitor::Mgmt::V2016_03_01::Models::IncidentListResult
      LogProfileCollection = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileCollection
      RuleDataSource = Azure::Monitor::Mgmt::V2016_03_01::Models::RuleDataSource
      LogProfileResourcePatch = Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResourcePatch
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
      ActivityLogAlertLeafCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
      EmailReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::EmailReceiver
      ActivityLogAlertAllOfCondition = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
      WebhookReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::WebhookReceiver
      ActivityLogAlertActionGroup = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
      ActionGroupList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupList
      ActivityLogAlertActionList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
      Resource = Azure::Monitor::Mgmt::V2017_04_01::Models::Resource
      SmsReceiver = Azure::Monitor::Mgmt::V2017_04_01::Models::SmsReceiver
      EnableRequest = Azure::Monitor::Mgmt::V2017_04_01::Models::EnableRequest
      ActivityLogAlertList = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
      ActivityLogAlertPatchBody = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
      ActionGroupResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupResource
      ActivityLogAlertResource = Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertResource
      ReceiverStatus = Azure::Monitor::Mgmt::V2017_04_01::Models::ReceiverStatus
      RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      ErrorResponse = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ErrorResponse
      LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      CategoryType = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
    end

    #
    # MonitorManagementClass
    #
    class MonitorManagementClass
      attr_reader :autoscale_settings, :operations, :alert_rule_incidents, :alert_rules, :log_profiles, :action_groups, :activity_log_alerts, :diagnostic_settings_category_operations, :diagnostic_settings_operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Monitor::Mgmt::V2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @autoscale_settings = client_0.autoscale_settings
        @operations = client_0.operations

        client_1 = Azure::Monitor::Mgmt::V2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_1)
        @alert_rule_incidents = client_1.alert_rule_incidents
        @alert_rules = client_1.alert_rules
        @log_profiles = client_1.log_profiles

        client_2 = Azure::Monitor::Mgmt::V2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client_2.respond_to?(:subscription_id))
          client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_2)
        @action_groups = client_2.action_groups
        @activity_log_alerts = client_2.activity_log_alerts

        client_3 = Azure::Monitor::Mgmt::V2017_05_01_preview::MonitorClient.new(configurable.credentials, base_url, options)
        if(client_3.respond_to?(:subscription_id))
          client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_3)
        @diagnostic_settings_category_operations = client_3.diagnostic_settings_category_operations
        @diagnostic_settings_operations = client_3.diagnostic_settings_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Mgmt/Monitor'
        profile_information = "#{profile_information}/Latest"
        client.add_user_agent_information(profile_information)
      end

    end

    class ModelClasses
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
      def recurrent_schedule
        Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      end
      def autoscale_setting_resource_patch
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      end
      def autoscale_profile
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      end
      def autoscale_setting_resource_collection
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
      end
      def metric_trigger
        Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
      end
      def recurrence
        Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
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
      def alert_rule_resource_patch
        Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourcePatch
      end
      def incident
        Azure::Monitor::Mgmt::V2016_03_01::Models::Incident
      end
      def alert_rule_resource_collection
        Azure::Monitor::Mgmt::V2016_03_01::Models::AlertRuleResourceCollection
      end
      def management_event_aggregation_condition
        Azure::Monitor::Mgmt::V2016_03_01::Models::ManagementEventAggregationCondition
      end
      def rule_condition
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleCondition
      end
      def rule_management_event_claims_data_source
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleManagementEventClaimsDataSource
      end
      def rule_action
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleAction
      end
      def incident_list_result
        Azure::Monitor::Mgmt::V2016_03_01::Models::IncidentListResult
      end
      def log_profile_collection
        Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileCollection
      end
      def rule_data_source
        Azure::Monitor::Mgmt::V2016_03_01::Models::RuleDataSource
      end
      def log_profile_resource_patch
        Azure::Monitor::Mgmt::V2016_03_01::Models::LogProfileResourcePatch
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
      def activity_log_alert_leaf_condition
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertLeafCondition
      end
      def email_receiver
        Azure::Monitor::Mgmt::V2017_04_01::Models::EmailReceiver
      end
      def activity_log_alert_all_of_condition
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertAllOfCondition
      end
      def webhook_receiver
        Azure::Monitor::Mgmt::V2017_04_01::Models::WebhookReceiver
      end
      def activity_log_alert_action_group
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionGroup
      end
      def action_group_list
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActionGroupList
      end
      def activity_log_alert_action_list
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertActionList
      end
      def resource
        Azure::Monitor::Mgmt::V2017_04_01::Models::Resource
      end
      def sms_receiver
        Azure::Monitor::Mgmt::V2017_04_01::Models::SmsReceiver
      end
      def enable_request
        Azure::Monitor::Mgmt::V2017_04_01::Models::EnableRequest
      end
      def activity_log_alert_list
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertList
      end
      def activity_log_alert_patch_body
        Azure::Monitor::Mgmt::V2017_04_01::Models::ActivityLogAlertPatchBody
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
      def retention_policy
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      end
      def metric_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      end
      def proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      end
      def error_response
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ErrorResponse
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
      def diagnostic_settings_category_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      end
      def diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      end
      def category_type
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      end
    end
  end
end
